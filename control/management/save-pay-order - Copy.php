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
        $sStatus        = IO::strValue("PStatus");
        
        $sRimsStatus    = 'P';
        $CashAmt        = IO::floatValue("CashAmt"); 
        $CreditAmt      = IO::floatValue("CreditAmt"); 
        $iBillAmt       = IO::floatValue("BillAmount");  
        
        $iPaidBill      = $CreditAmt +  $CashAmt;
        
        if($iPaidBill == 0 && $iBillAmt > 0)
            $sStatus = 'B';
            
        /*function curlBySani($url)
        {
                $ch = curl_init ($url);
                curl_setopt($ch, CURLOPT_HEADER, 0);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
                $contents=curl_exec($ch);

                if (curl_errno($ch)) {
                    return curl_error($ch);
                    return "\n<br />";
                    $contents = '';
                } else {
                    curl_close($ch);
                }

                if (!is_string($contents) || !strlen($contents)) {
                    return "Failed to get contents.";
                    $contents = '';
                }

                return $contents;
        }
	

	function curlByHyne($URL, $DataToStore)
	{
		$ch = curl_init();

                curl_setopt($ch, CURLOPT_URL,$URL);
                curl_setopt($ch, CURLOPT_POST, 1);

                // in real life you should use something like:
                curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($DataToStore));

                // receive server response ...
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                $server_output = curl_exec ($ch);
                curl_close ($ch);

                return $server_output;
                // further processing ....
               // if ($server_output == "OK") { echo "OKKKK"; exit;} else { echo $server_output;  exit;}
	}*/
        
        //$sGuestName     = getDbValue("guest_name", "tbl_orders", "id='$iOrderId'");
        //$iTableNo       = getDbValue("table_id", "tbl_orders", "id='$iOrderId'");
      
        if($iPaidBill < $iBillAmt && $iPaidBill != 0)
            $_SESSION["Flag"] = "INCOMPLETE_PAYMENT";
        
        if($CashAmt == 0 && $CreditAmt > $iBillAmt)
            $_SESSION["Flag"] = "PAYMENT_EXCEEDS";
        
	if ($iOrderId == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$bFlag = $objDb->execute("BEGIN");
                
                $sSQL = "DELETE FROM tbl_payments WHERE order_id = '$iOrderId'";
                $bFlag = $objDb->execute($sSQL);
        
                if($bFlag == true && $iPaidBill != 0)
                {
                    if($iPaidBill > $iBillAmt)
                    {
                        $Balance    = $iPaidBill - $iBillAmt;
                        $Remaining  = $CashAmt - $Balance;
                    }
                    else 
                        $Remaining = $CashAmt;
                    
                    $sSQL = "INSERT INTO tbl_payments SET  order_id = '$iOrderId', received_amt='$CashAmt', amount='$Remaining', credit='$CreditAmt', marked_by='{$_SESSION["AdminId"]}', marked_at=NOW()";
                    $bFlag = $objDb->execute($sSQL);
                }
                
                /*if($bFlag == true)
                {
                    
                    $sKey      = getDbValue("rims_key", "tbl_order_keys", "date='".date("Y-m-d")."'");
                    
                    if($sKey == "")
                    {
                        $getKeyUrl 		= "http://www.rims.punjab.gov.pk/api/databaseupdate/formkey";
                        $result_json    = curlBySani($getKeyUrl);

                        $key_of_day     = json_decode($result_json);
                        $sKey           = $key_of_day->key;
                        
                        if($sKey != "")
                        {
                            $sSQL = "INSERT INTO tbl_order_keys SET  rims_key = '$sKey', date = NOW( )";
                            $bFlag = $objDb->execute($sSQL);
                        }
                    }

                    if($sKey != "")
                    {
                        //SANI: URL to post data
                        $URL = "http://dev.bapps.pitb.gov.pk/RIMS/api/databaseupdate/formdata";

                        //SANI: Query string to upload data
                        $query_string = array('key' => $sKey, 'data' => '{"pntn":"25251490","branchcode":"BR25251490496","invoice_number":"'.$iOrderId.'","invoice_date": "'.date("Y-m-d").'","invoice_time": "'.date("H:i").'","discount_percent": "0","service_charges_percent": "5","tax_percent":"16","table_no": "'.$iTableNo.'","phone": "042456456","customer_name": "'.$sGuestName.'","detail":[{"item_code":"34","item":"Piza", "quantity":"1","unit_price":"725"}, {"item_code":"23", "item":"Korma", "quantity":"12", "unit_price":"185"}]}');

                        $result = curlByHyne($URL, $query_string);

                        if($result == "OK")
                            $sRimsStatus = 'Y';
                    }
                }*/
                
                if($bFlag == true)
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