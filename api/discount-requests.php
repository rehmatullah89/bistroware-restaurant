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
                
	$aResponse           = array( );
	
	if ($sEmail == "")
		$aResponse["Message"] = "Invalid API Request";

	else if (getDbValue("COUNT(1)", "tbl_admins", "email LIKE '$sEmail' AND status='A'") > 0)
	{
            
		$sSQL = "SELECT o.id, p.discount_percent, SUM(od.net_price*od.quantity) as _ItemsNetSale, p.discount_status, p.discount_comments,
                                (SELECT name FROM tbl_admins WHERE id=o.waiter_id) as _Waiter,
                                (SELECT table_no from tbl_tables WHERE id=o.table_id) as _Table
                                 FROM tbl_orders o, tbl_order_details od, tbl_payments p
				 WHERE o.id=od.order_id AND o.id=p.order_id AND DATE_FORMAT(o.created_at,'%Y-%m-%d') = CURDATE() AND p.discount_percent > 0 AND od.status NOT IN ('V','VP','VC')
                                 GROUP BY o.id
                                 ORDER BY o.id";

                $objDb->query($sSQL);
                $iCount  = $objDb->getCount();
                
                $sResponseList = array();
                
		if ($iCount > 0)
		{
                    for($i=0; $i<$iCount; $i++)
                    {

                        $iOrderId       = $objDb->getField($i, "id");
                        $iDiscount      = $objDb->getField($i, "discount_percent");
                        $sComments      = $objDb->getField($i, "discount_comments");
                        $sStatus        = $objDb->getField($i, "discount_status");
                        $sBillAmount    = $objDb->getField($i, "_ItemsNetSale");
                        $sWaiter        = $objDb->getField($i, "_Waiter");
                        $sTableNo       = $objDb->getField($i, "_Table");
                        

                        $sResponseList[$iOrderId] = array('discount_percent'=> $iDiscount, 'discount_staus'=>$sStatus, 'bill_amount'=>$sBillAmount, 'waiter'=>$sWaiter, 'table_no'=>$sTableNo, 'discount_reason'=>$sComments); 
                    }
                    
                    $aResponse['Data'] = $sResponseList;
		}

		else
			$aResponse["Message"] = "No Record Found!";
	}
        else
            $aResponse["Message"] = "Invalid Requester";
        
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>