<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
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
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );


        $iOrderId= IO::intValue("OrderId");
	$iItemId = IO::intValue("OrderItemId");
        $sOrderAt= IO::strValue("OrderTime");

        $sCurrentTime   = date("Y-m-d H:i:s");  
        $Difference     = round(abs(strtotime($sCurrentTime) - strtotime($sOrderAt)) / 60,0);

        $sItemStatus = getDbValue("status", "tbl_order_details", "id='$iItemId'");

        if($sItemStatus == 'A')
            $sSQL = "UPDATE tbl_order_details SET status='C', serve_time='$Difference' WHERE id='$iItemId'";

        else if($sItemStatus == 'P')
            $sSQL = "UPDATE tbl_order_details SET status='PC', serve_time='$Difference' WHERE id='$iItemId'";
        
        else if($sItemStatus == 'PC')
            $sSQL = "UPDATE tbl_order_details SET status='P', serve_time='$Difference' WHERE id='$iItemId'";
        
        else if($sItemStatus == 'VC')
            $sSQL = "UPDATE tbl_order_details SET status='VP', serve_time='$Difference' WHERE id='$iItemId'";

        else if($sItemStatus == 'VP')
            $sSQL = "UPDATE tbl_order_details SET status='VC', serve_time='$Difference' WHERE id='$iItemId'";
        
        else if($sItemStatus == 'RC')
            $sSQL = "UPDATE tbl_order_details SET status='R', serve_time='$Difference' WHERE id='$iItemId'";
    
        else if($sItemStatus == 'R')
            $sSQL = "UPDATE tbl_order_details SET status='RC', serve_time='$Difference' WHERE id='$iItemId'";

        else    
            $sSQL = "UPDATE tbl_order_details SET status='A', serve_time='$Difference', bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE id='$iItemId'";

        if ($objDb->execute($sSQL) == true)
            print getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iOrderId' AND ordered_at='$sOrderAt' AND status IN ('A','R','RC','P')");
        else
            print "There is some error, while processing your request!";
                
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>