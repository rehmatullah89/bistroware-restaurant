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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );


	$iOrderId = IO::intValue("OrderId");
        $sOrderAt = IO::strValue("OrderTime");

        $sStatus = getDbValue("status", "tbl_orders", "id='$iOrderId'");
        
        if($sStatus != "C")
        {
                $bFlag = true;
                $iInCompleteOrder = (int)getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iOrderId' AND status IN ('A','R','P')");
                
                if($iInCompleteOrder == 0 && $sStatus == 'A')
                {
                    //$sSQL  = "UPDATE tbl_orders SET status=IF(status='B', 'A', 'B'), bumped_at=NOW() WHERE id='$iOrderId'";
                    $sSQL  = "UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='$iOrderId'";
                    $bFlag = $objDb->execute($sSQL);
                }
                else if($iInCompleteOrder > 0 && $sStatus == 'B')
                {
                    $sSQL  = "UPDATE tbl_orders SET status='A', bumped_at='0000-00-00 00:00:00' WHERE id='$iOrderId'";
                    $bFlag = $objDb->execute($sSQL);
                }
            
                if ($bFlag == true)
                {
                    $sDetailStatus = getDbValue("bumped", "tbl_order_details", "order_id='$iOrderId' AND ordered_at = '$sOrderAt'");

                    if($sDetailStatus == 'Y')
                        $sSQL = "UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='$iOrderId' AND ordered_at = '$sOrderAt'"; 
                    else
                        $sSQL = "UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='$iOrderId' AND ordered_at = '$sOrderAt'"; 

                    $objDb->execute($sSQL);

                    print "success|-|The selected Item status has been Toggled successfully.";
                }
        }
        else
            print "Can not Update, Completed Orders.";
                
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>