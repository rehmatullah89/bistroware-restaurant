<?php
	/****************************
	````````````````````````````
	Written By: M.Naeem
	Edited By: Rehmat Ullah 
	````````````````````````````
	****************************/

	@ini_set('display_errors', 0);
	@ini_set('log_errors', 0);
	@error_reporting(0);

	@putenv("TZ=Asia/Karachi");
	@date_default_timezone_set("Asia/Karachi");
	@ini_set("date.timezone", "Asia/Karachi");

	function fwrite_stream($fp, $string) 
	{
		for ($written = 0; $written < strlen($string); $written += $fwrite) {
			$fwrite = fwrite($fp, substr($string, $written));
			if ($fwrite === false) {
				return $written;
			}
		}
		return $written;
	}

	//Get the name of the Method
	//The method name has to be passed as Method via post
	$Request_Method		= "post";
	$aResponse          = array( );
	$order_details      = array( );
 
	//Connect to the database
	$Connection = mysql_connect("localhost","gaiapk_root","3tree") or die('Cannot connect to Database');

	//Select the database
	mysql_select_db("gaiapk_bistroware") or die('Cannot select Database');
	
	$api 			= $_REQUEST['api'];
	$total_guests  	= $_REQUEST['total_guests'];
	$table_id     	= $_REQUEST['table_id'];
	$waiter_id     	= $_REQUEST['waiter_id'];
	$guest_name   	= $_REQUEST['guest_name'];
	$created_by    	= $_REQUEST['created_by'];
	$created_at   	= $_REQUEST['created_at'];
	$modified_by   	= $_REQUEST['modified_by'];
	$modified_at   	= $_REQUEST['modified_at'];
	$order_details 	= json_decode($_REQUEST['order_detail'],true);
 
	$query_id      = "SELECT table_no FROM tbl_tables where id='$table_id'";
	$result        = mysql_query($query_id);
	$row 		   = mysql_fetch_assoc($result);
	$TableNo 	   = $row['table_no'];
			
	$sPrintStr = "";
        $sKitchenPrinter = "";      
        $sBasementPrinter = "";
        $sSushiBarPrinter = "";
        
	
	if($api=='insert')
	{
			$query_id      = "SELECT MAX(id) as id FROM tbl_orders";
			$result        = mysql_query($query_id);

			//Get the rowcount
			$row = mysql_fetch_assoc($result);

			$order_number 	= $row['id'];
			$guest_name 	= ($guest_name == ""?"Guest":$guest_name);
			$orderNumb 		= $order_number + 1;
			$oderId        	= $orderNumb;
			
			$sPrintStr .= "\n Order No: {$oderId} / Table No: {$TableNo} \n Date & Time: {$created_at} \n ------------------------- \n Qty - Item \n ------------------------\n";
			
			$query          = "INSERT INTO `tbl_orders`(id,table_id,total_guests,waiter_id,guest_name,guest_email,guest_phone,remarks,created_by,created_at,modified_by,modified_at) VALUES ($oderId,$table_id,$total_guests,$waiter_id,'$guest_name','','','',$created_by,'$created_at',$modified_by,'$modified_at')";
			
			if (mysql_query($query)== true)
			{
			
					foreach($order_details as $itemInsert) 
					{
							$product_idInsert           = $itemInsert['product_id'];
							$product_nameInsert         = $itemInsert['product_name'];
							$category_idInsert          = $itemInsert['category_id'];
							$category_nameInsert        = $itemInsert['product_name'];
							$quantityInsert             = $itemInsert['quantity'];
							$priceInsert                = $itemInsert['price'];
							$statusInsert               = 'A';
							$seat_noInsert              = $itemInsert['seat_no'];
							$void_byInsert              = '';
							$void_atInsert              = '';
							$void_reason_idInsert       = 0;
							$void_remarksInsert         = '';
							$remarksInsert              = $itemInsert['remarks'];
							$net_priceInsert            = (int)$itemInsert['net_price'];

							$dfdfd 						= base64_decode($category_nameInsert);
							$ddd 						= base64_decode($category_nameInsert);
							 
							$fddf = addslashes($product_nameInsert);
							
							$categoryName_Query = "select category from tbl_categories where id ='$category_idInsert'";
							//if (mysql_query($categoryName_Query)== true){
							$result_categoryName = mysql_query($categoryName_Query);
							$row_ategoryName = mysql_fetch_assoc($result_categoryName);
							$category_nameInsert = $row_ategoryName['category'];
							$productName_Query = "select name, cost from tbl_products where id ='$product_idInsert'";
							
							//if (mysql_query($categoryName_Query)== true){
							$result_productName = mysql_query($productName_Query);
							$row_productName = mysql_fetch_assoc($result_productName);
							$product_nameInsert = $row_productName['name'];
							$product_cost     = $row_productName['cost'];
							
							//$sPrintStr .= "{$quantityInsert} - ".$product_nameInsert."\n";
                                                        if(@in_array($category_idInsert, array(1,3,4)))
                                                                $sBasementPrinter .= "{$quantityInsert} - ".$product_nameInsert."\n";    
                                                        else if(@in_array($category_idInsert, array(7,9,14)))
                                                                $sSushiBarPrinter .= "{$quantityInsert} - ".$product_nameInsert."\n";
                                                        else
                                                                $sKitchenPrinter .= "{$quantityInsert} - ".$product_nameInsert."\n"; //2,5,6,10,11,12,13,16
                                                                
                                                                
							
							$query_order_details_Insert = 'INSERT INTO tbl_order_details SET 
															order_id = "'.$oderId.'",
															product_id="'.$product_idInsert.'",
															product_name = "'.$product_nameInsert.'",
															category_id = "'.$category_idInsert.'",
															category_name ="'.$category_nameInsert.'",
															quantity = "'.$quantityInsert.'",
															price ="'.$priceInsert.'",
															status ="'.$statusInsert.'",
															seat_no ="'.$seat_noInsert.'",
															void_by="'.$void_byInsert.'",
															void_at="'.$void_atInsert.'",
															remarks="'.$remarksInsert.'",
															net_price="'.$net_priceInsert.'",
															cost_per_item   = "'.$product_cost.'",
															ordered_at="'.$created_at.'",
															void_reason_id="'.$void_reason_idInsert.'",
															void_remarks="'.$void_remarksInsert.'"';

							$ddd = mysql_real_escape_string($query_order_details_Insert);
							 
							if (mysql_query($query_order_details_Insert)== true)
							{
										$aResponse['message']  = "Order details saved Successfully";
										$aResponse["Status"]   = "OK";
										$aResponse['orderId']     = $oderId;
							
							}
							else
							{
										$aResponse['message']  = mysql_error();
										$aResponse["Status"]   = "ERROR";
							}
					}
						
			}else{
						$aResponse['message']   = mysql_error();
						$aResponse["Status"]    = "ERROR";
			}
	}
	else if($api=='update') 
	{
			$order_id              = $_REQUEST['order_id'];
			$order_details = json_decode($_REQUEST['order_detail'],true);
			$order_details_sent = json_decode($_REQUEST['order_detail_Sent'],true);
			
			$i = 0;
			$ordered_at   = date("Y-m-d H:i:s");

			$sPrintStr .= "\n Order No: {$order_id} / Table No: {$TableNo} \n Date & Time: {$ordered_at} \n ------------------------- \n Qty - Item \n ------------------------\n";
			
			foreach($order_details as $item_update) 
			{
				$product_id            = $item_update['product_id'];
				$detail_id             = $item_update['detail_id'];
				$product_name          = $item_update['product_name'];
				$category_id           = $item_update['category_id'];
				$category_name         = $item_update['category_name'];
				$quantity              = $item_update['quantity'];
				$price                 = $item_update['price'];
				$status                = 'A';
				$seat_no               = $item_update['seat_no'];
				$void_by               = '';
				$void_at               = '';
				$void_reason_id           = 0;
				$void_remarks          = '';
				$remarks               = $item_update['remarks'];
				$net_price             = $item_update['net_price'];

				
				$dfdfd = base64_decode($category_name);
				$ddd = base64_decode($category_name);
			 
				$fddf = addslashes($product_name);
				$categoryName_Query = "select category from tbl_categories where id ='$category_id'";

				$result_categoryName = mysql_query($categoryName_Query);
				$row_ategoryName = mysql_fetch_assoc($result_categoryName);
				$category_name = $row_ategoryName['category'];
				$productName_Query = "select name, cost from tbl_products where id ='$product_id'";
			
				$result_productName = mysql_query($productName_Query);
				$row_productName = mysql_fetch_assoc($result_productName);
				$product_name = $row_productName['name'];
				$product_cost = $row_productName['cost'];
		
				$product_name = "$product_name";
				$category_name = "$category_name";
		   
				if($detail_id > 0)
				{
									$query_order_details_2 = 'UPDATE tbl_order_details SET 
											product_id="'.$product_id.'",
											product_name = "'.$product_name.'",
											category_id = "'.$category_id.'",
											category_name ="'.$category_name.'",
											quantity = "'.$quantity.'",
											price ="'.$price.'",
											seat_no ="'.$seat_no.'",
											remarks="'.$remarks.'",
											net_price="'.$net_price.'"
										WHERE id="'.$detail_id.'"';

				
				}
				else
				{
							    $query_order_details_2 = 'INSERT INTO tbl_order_details SET 
											order_id = "'.$order_id.'",
											product_id="'.$product_id.'",
											product_name = "'.$product_name.'",
											category_id = "'.$category_id.'",
											category_name ="'.$category_name.'",
											quantity = "'.$quantity.'",
											price ="'.$price.'",
											status ="'.$status.'",
											seat_no ="'.$seat_no.'",
											void_by="'.$void_by.'",
											void_at="'.$void_at.'",
											remarks="'.$remarks.'",
											net_price="'.$net_price.'",
											cost_per_item   = "'.$product_cost.'",
											ordered_at="'.$ordered_at.'",
											void_reason_id="'.$void_reason_id.'",
											 void_remarks="'.$void_remarks.'"';
                                                          
                                                          //$sPrintStr .= "{$quantity} - ".$product_name." \n";
                                                            if(@in_array($category_id, array(1,3,4)))
                                                                    $sBasementPrinter .= "{$quantity} - ".$product_name."\n";    
                                                            else if(@in_array($category_id, array(7,9,14)))
                                                                    $sSushiBarPrinter .= "{$quantity} - ".$product_name."\n";
                                                            else
                                                                    $sKitchenPrinter .= "{$quantity} - ".$product_name."\n"; //2,5,6,10,11,12,13,16
				}
			 
				$ddd = mysql_real_escape_string($query_order_details_2);

				if (mysql_query($query_order_details_2)== true)
				{					
							$aResponse['message']  = "Order details update Successfully";
							$aResponse["Status"]   = "OK";
							
							$aResponse['orderId']     = "$order_id";
						   // die($aResponse);
				}
                                else
                                {
							$aResponse['message']  = mysql_error();
							$aResponse["Status"]   = "ERROR";
				}

		 }
		 $aResponse['Count'] = $i;

	}
	
        $sFailedPrints = array();
        
        //printer #1
        if($sKitchenPrinter != "")
        {
            $sSendPrint = "";
            
            $fp = fsockopen("43.245.207.87",9100);
            $sSendPrint = "{$sPrintStr} \n {$sKitchenPrinter}\n \n \n \n \n \n \n \n \n \n";
            
            if (!$fp)
            {
                $sFailedPrints[9100] = $sSendPrint;
                    //die("Cannot open socket");
            }            
            $bytes=fwrite_stream($fp, $sSendPrint);
            fclose($fp);
        }       
        
        //printer #2
        if($sBasementPrinter != "")
        {
            $sSendPrint = "";
            
            $fp = fsockopen("43.245.207.87",9200);
            $sSendPrint = "{$sPrintStr} \n {$sBasementPrinter}\n \n \n \n \n \n \n \n \n \n";
            
            if (!$fp)
            {
                $sFailedPrints[9200] = $sSendPrint;
                    //die("Cannot open socket");
            }            
            $bytes=fwrite_stream($fp, $sSendPrint);
            fclose($fp);
        }

        //printer #3
        if($sSushiBarPrinter != "")
        {
            $sSendPrint = "";
            
            $fp = fsockopen("43.245.207.87",9300);
            $sSendPrint = "{$sPrintStr} \n {$sSushiBarPrinter}\n \n \n \n \n \n \n \n \n \n";
            
            if (!$fp)
            {
                $sFailedPrints[9300] = $sSendPrint;
                //die("Cannot open socket");
            }            
            $bytes=fwrite_stream($fp, $sSendPrint);
            fclose($fp);
        }

        //Try Again to another IP
        foreach($sFailedPrints as $iPort => $sSendPrint)
        {
            if($sSendPrint != "")
            {
                $fp = fsockopen("103.8.112.150", $iPort);            
                $bytes=fwrite_stream($fp, $sSendPrint);
                fclose($fp);
            }
        }
        
/*        //printer #4
        $fp = fsockopen("43.245.207.87",9400);
	if (!$fp)
	{
		//die("Cannot open socket");
	}
        $sPrintStr .= "\n \n \n \n \n \n \n \n \n \n";
	$bytes=fwrite_stream($fp, $sPrintStr);
	fclose($fp);*/


	//Get all Data Here
	echo json_encode($aResponse);	
  
	//close connection
	mysql_close($Connection);
 ?>