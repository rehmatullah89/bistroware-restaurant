<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bstroware.com                                                                 **
	**                                                                                           **
	**  Copyright 2015 (C) Triple Tree Solutions                                                 **
	**  http://www.3-tree.com                                                                    **
	**                                                                                           **
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Manager:                                                                         **
	**                                                                                           **
	**      Name  :  Muhammad Tahir Shahzad                                                      **
	**      Email :  mtshahzad@sw3solutions.com                                                  **
	**      Phone :  +92 333 456 0482                                                            **
	**      URL   :  http://www.mtshahzad.com                                                    **
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Developer:                                                                       **
	**                                                                                           **
	**      Name  :  Rehmatullah Bhatti                                                          **
	**      Email :  rehmatullahbhatti@gmail.com                                                 **
	**      Phone :  +92 344 404 3675                                                            **
	**      URL   :  http://www.rehmatullahbhatti.com                                            **
	***********************************************************************************************
	\*********************************************************************************************/

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );


	$sEmail   = IO::strValue("Email");
                
	$aResponse = array( );
	
	if ($sEmail == "")
		$aResponse["Message"] = "Invalid API Request";

	else if (getDbValue("COUNT(1)", "tbl_admins", "email LIKE '$sEmail' AND status='A'") > 0)
	{            
                $iCurrentOrders = getList("tbl_orders", "id", "id", "DATE_FORMAT(created_at,'%Y-%m-%d') = CURDATE()");//status != 'C'
                
                if(count($iCurrentOrders) > 0)
                {
                    $sCurrentOrders = implode(",", $iCurrentOrders);
                    
                    //foreach($iCurrentOrders as $iOrderId => $sStatus)
                    //{(SELECT name FROM tbl_admins WHERE id = tbl_order_details.void_by) as _VoidBy,
                        $sSQL = "SELECT *,
                                          (SELECT t.table_no FROM tbl_orders o, tbl_tables t WHERE t.id = o.table_id AND o.id = tbl_order_details.order_id) as _TableNo,                                          
                                          (SELECT status FROM tbl_orders WHERE id = tbl_order_details.order_id) as _OrderStatus,
                                          (SELECT reason FROM tbl_void_reasons WHERE id = tbl_order_details.void_reason_id) as _voidReason  
                                    FROM tbl_order_details
                                    WHERE status IN ('V','R','RC','P','PC','VP','VC') AND order_id IN ($sCurrentOrders) ORDER BY void_at DESC";

                        $objDb->query($sSQL);
                        $iCount  = $objDb->getCount();

                        $sResponseList = array();

                        if ($iCount > 0)
                        {
                            for($i=0; $i<$iCount; $i++)
                            {

                                $iDetailId  = $objDb->getField($i, "id");
                                $iOrderId   = $objDb->getField($i, "order_id");
                                $sVoidAt    = $objDb->getField($i, "void_at");
                                $iVoidBy    = $objDb->getField($i, "void_by");
                                $sVoidBy    = getDbValue("a.name", "tbl_admins a, tbl_orders o", "a.id=o.waiter_id AND o.id = '$iOrderId'");
                                $iVoidReason= $objDb->getField($i, "void_reason_id");
                                $sVoidReason= $objDb->getField($i, "_voidReason");
                                $sRemarks   = $objDb->getField($i, "void_remarks");
                                $sItemStatus= $objDb->getField($i, "status");
                                $iQuantity  = $objDb->getField($i, "quantity");
                                $sTableNo   = $objDb->getField($i, "_TableNo");    
                                $sStatus    = $objDb->getField($i, "_OrderStatus");    
                                $sProduct   = $objDb->getField($i, "product_name");

                                $sResponseList[] = array('order_id'=>$iOrderId, 'order_status'=>$sStatus, 'quantity'=>$iQuantity, 'table_no'=>$sTableNo, 'item_id'=>$iDetailId, 'void_at'=>$sVoidAt, 'void_by'=>$sVoidBy, 'waiter_id'=> $iVoidBy, 'item_status'=>$sItemStatus, 'void_reason_id'=>$iVoidReason, 'void_reason'=>$sVoidReason, 'remarks'=>$sRemarks, 'product'=>$sProduct); 
                            }

                            $aResponse['Data'][] = $sResponseList;
                        }

                    //}
                    
                }else
                    $aResponse['Message'] = "No Order Found";
	}
        else
            $aResponse["Message"] = "Invalid Data Requested";
        
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>