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
        
	$_SESSION["Flag"] = "";

        $iOrderId       = IO::intValue("OrderId");  
        $iToggleId      = IO::intValue("ToggleId");  
        $sStatus        = IO::strValue("PStatus");
        $sBtnSave       = IO::strValue("BtnSaveBill");
        $sRimsStatus    = 'P';
        $CashAmt        = IO::floatValue("CashAmt"); 
        $CreditAmt      = IO::floatValue("CreditAmt"); 
        $iBillAmt       = IO::floatValue("BillAmount"); 
        $iDiscount      = IO::intValue("Discount");  
        $sDiscComments  = IO::strValue("DiscountComments");  
        $sDiscStatus    = IO::strValue("Status");
        $iPaidBill      = $CreditAmt +  $CashAmt;
        $UserRightList  = getList("tbl_admins", "id", "device_id", "FIND_IN_SET(12, custom_items) AND device_id != ''", "id");
        
        if($iPaidBill == 0 && $iBillAmt > 0)
            $sStatus = 'B';
         
        if($iPaidBill < $iBillAmt && $iPaidBill != 0)
            $_SESSION["Flag"] = "INCOMPLETE_PAYMENT";
        
        if($CashAmt == 0 && $CreditAmt > $iBillAmt)
            $_SESSION["Flag"] = "PAYMENT_EXCEEDS";
        
	if ($iOrderId == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$bFlag = $objDb->execute("BEGIN");
                
                //$sSQL = "DELETE FROM tbl_payments WHERE order_id = '$iOrderId'";
                //$bFlag = $objDb->execute($sSQL);
                $iId = (int)getDbValue("id", "tbl_payments", "order_id='$iOrderId'");
        
                if($bFlag == true && ($iPaidBill != 0 || $iToggleId == 1))
                {
                    if($iPaidBill > $iBillAmt)
                    {
                        $Balance    = $iPaidBill - $iBillAmt;
                        $Remaining  = $CashAmt - $Balance;
                    }
                    else 
                        $Remaining = $CashAmt;
                    
                    if($iId >0)
                    {
                        if($sBtnSave == 'P')
                            $sSQL = "UPDATE tbl_payments SET  received_amt='$CashAmt', amount='$Remaining', credit='$CreditAmt', marked_by='{$_SESSION["AdminId"]}', marked_at=NOW() WHERE order_id = '$iOrderId'";
                        else
                        {
                            /////*************Send Notification**********/////  
                            //echo "<pre>";print_R($UserRightList);exit;
                            
                            {                                
                                try {
                                    $payload['aps'] = array('alert' => array('title' => 'Order Dicount Request', 'body' => "{$iDiscount}% of Discount has been requested against Order No#{$iOrderId}"), 'badge' => 1, 'sound' => 'default');
                                    $payload = json_encode($payload);
                                    $apnsHost = 'gateway.sandbox.push.apple.com';
                                    $apnsPort = 2195;
                                    $apnsCert = 'ios.pem';
                                    $entrustCert = "ios.cer";

                                    $streamContext = stream_context_create();
                                    stream_context_set_option($streamContext, 'ssl', 'local_cert', $apnsCert);
                                    stream_context_set_option($streamContext, 'ssl', 'passphrase', 'yntree');
                                    stream_context_set_option($streamContext, 'ssl', 'cafile', $entrustCert);

                                    $apns = stream_socket_client('ssl://' . $apnsHost . ':' . $apnsPort, $error, $errorString, 2, STREAM_CLIENT_CONNECT, $streamContext);

                                    if (!$apns)
                                            exit("Failed to connect: $error $errorString");	
//print_r($UserRightList);exit;
                                    foreach($UserRightList as $iUser => $DeviceToken)
                                    {
                                        $apnsMessage = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $DeviceToken)) . chr(0) . chr(strlen($payload)) . $payload;
                                        $result = fwrite($apns, $apnsMessage, strlen($apnsMessage));
                                    }
                                    
                                    @socket_close($apns);
                                    @fclose($apns);
                                
                                } catch (Exception $e) {
                                    //echo 'Caught exception: ',  $e->getMessage(), "\n";exit;
                                }
                                
                                  
                            }
                            ////***********************/////
                            $sSQL = "UPDATE tbl_payments SET  discount_percent='$iDiscount', discount_comments='$sDiscComments', discount_status='$sDiscStatus' WHERE order_id = '$iOrderId'";    
                        }
                    }
                    else
                    {
                        if($sBtnSave == 'D')
                        {
                            /////*************Send Notification**********/////             
                            
                            {
                                try {
                                    
                                    $payload['aps'] = array('alert' => array('title' => 'Order Dicount Request', 'body' => "{$iDiscount}% of Discount has been requested against Order No#{$iOrderId}"), 'badge' => 1, 'sound' => 'default');
                                    $payload = json_encode($payload);
                                    $apnsHost = 'gateway.sandbox.push.apple.com';
                                    $apnsPort = 2195;
                                    $apnsCert = 'ios.pem';
                                    $entrustCert = "ios.cer";

                                    $streamContext = stream_context_create();
                                    stream_context_set_option($streamContext, 'ssl', 'local_cert', $apnsCert);
                                    stream_context_set_option($streamContext, 'ssl', 'passphrase', 'yntree');
                                    stream_context_set_option($streamContext, 'ssl', 'cafile', $entrustCert);

                                    $apns = stream_socket_client('ssl://' . $apnsHost . ':' . $apnsPort, $error, $errorString, 2, STREAM_CLIENT_CONNECT, $streamContext);

                                    if (!$apns)
                                                    exit("Failed to connect: $error $errorString");	

                                    foreach($UserRightList as $iUser => $DeviceToken)
                                    {
                                        $apnsMessage = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $DeviceToken)) . chr(0) . chr(strlen($payload)) . $payload;
                                        $result = fwrite($apns, $apnsMessage, strlen($apnsMessage));
                                    }
                                    
                                    @socket_close($apns);
                                    @fclose($apns);                                    

                                } catch (Exception $e) {
                                    //echo 'Caught exception: ',  $e->getMessage(), "\n";exit;
                                }                                
                            }
                            ////***********************/////
                            $sSQL = "INSERT INTO tbl_payments SET  order_id = '$iOrderId', discount_percent='$iDiscount', discount_comments='$sDiscComments', discount_status='$sDiscStatus'";
                        }
                        else
                            $sSQL = "INSERT INTO tbl_payments SET  order_id = '$iOrderId', received_amt='$CashAmt', amount='$Remaining', credit='$CreditAmt', marked_by='{$_SESSION["AdminId"]}', marked_at=NOW()";    
                    }
                    $bFlag = $objDb->execute($sSQL);
                }
                
               
                if($bFlag == true && $iToggleId == 0)
                {
                    $sSQL = "UPDATE tbl_orders SET  rims = '$sRimsStatus', status = '$sStatus', modified_by = '{$_SESSION['AdminId']}', modified_at = NOW( ) WHERE id = '$iOrderId'";
                    $bFlag = $objDb->execute($sSQL);
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
?>
                       <script>
                           parent.$.colorbox.close( );
                           parent.showMessage("#GridMsg", "success", "<?=($iPaidBill == 0?'Paid Amount has been deleted successfully!':'The selected Order has been Paid successfully.')?>");
                           parent.updateLine(<?= $iOrderId ?>, <?= $iIndex ?>);
                       </script>    
<?
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
        }
                
?>