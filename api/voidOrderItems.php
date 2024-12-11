<?php

 //Get the name of the Method
 //The method name has to be passed as Method via post

    $Request_Method="post";
    $aResponse           = array( );
    $aResponse["Status"] = "ERROR";
    //Connect to the database
    $Connection = mysql_connect("localhost","gaiapk_root","3tree") or die('Cannot connect to Database');
    mysql_select_db("gaiapk_bistroware") or die('Cannot select Database');

    function formatPhoneNumber($sMobile)
    {
            $sMobile = str_replace(array(" ", "-", ".", "(", ")"), "", $sMobile);

            if (substr($sMobile, 0, 3) == "+03")
                    $sMobile = str_replace("+03", "+923", $sMobile);

            if (substr($sMobile, 0, 2) == "03")
                    $sMobile = substr_replace($sMobile, "+923", 0, 2);

            if (substr($sMobile, 0, 5) == "009203")
                    $sMobile = str_replace("009203", "+923", $sMobile);

            if (substr($sMobile, 0, 5) == "00923")
                    $sMobile = str_replace("00923", "+923", $sMobile);

            if (substr($sMobile, 0, 5) == "+0088")
                    $sMobile = str_replace("+0088", "+88", $sMobile);

            if (substr($sMobile, 0, 4) == "0088")
                    $sMobile = str_replace("0088", "+88", $sMobile);

            return $sMobile;
    }

  //username and password are password are passed via querystrings
 $status        = $_REQUEST['status'];
 $ItemId       = $_REQUEST['ids'];
 $voidQty       = $_REQUEST['voidQuantity'];
 $void_remarks  = $_REQUEST['remarks'];
 $void_by       = $_REQUEST['void_by'];
 $void_at       = $_REQUEST['void_at'];
 $void_reason_id= $_REQUEST['reason'];

 $sVoidComments = "";
 
 if($void_remarks != "")
     $sVoidComments = " \n Comments: \n {$void_remarks}";

 $query="select reason
          From tbl_void_reasons where id = $void_reason_id";
 $resource = mysql_query($query);		  
 $Result = mysql_fetch_object($resource); 
 
 $sReason  = $Result->reason;
 

 $query="select order_id, product_id, product_name, category_id, category_name, quantity, price, net_price, status, seat_no, remarks, ordered_at,            
            (Select price from tbl_products Where id = tbl_order_details.product_id) as _ItemPrice,
            (Select cost from tbl_products Where id = tbl_order_details.product_id) as _ItemCost
          From tbl_order_details where id = $ItemId";
 $resource = mysql_query($query);		  
 $Result = mysql_fetch_object($resource); 
 
 $iOrderId  = $Result->order_id;
 $iProdId   = $Result->product_id;
 $sProdName = $Result->product_name;
 $iCatId    = $Result->category_id;
 $sCatName  = $Result->category_name;
 $iQuantity = $Result->quantity;
 $iGPrice   = $Result->price;
 $iNetPrice = $Result->net_price;
 $sStatus   = $Result->status;
 $iSeatNo   = $Result->seat_no;
 $iItemPrice= $Result->_ItemPrice;
 $iItemCost = $Result->_ItemCost;
 $sRemarks  = $Result->remarks;
 $sOrderAt  = $Result->ordered_at;
 
 $query="select a.name
          From tbl_admins a, tbl_orders o where a.id = o.waiter_id AND o.id='$iOrderId'";
 $resource = mysql_query($query);		  
 $Result = mysql_fetch_object($resource); 
 
 $sWaiter  = $Result->name;

 $query="select t.table_no
          From tbl_tables t, tbl_orders o where t.id = o.table_id AND o.id='$iOrderId'";
 $resource = mysql_query($query);		  
 $Result = mysql_fetch_object($resource); 
 
 $sTable  = $Result->table_no;
 
 
 if($iQuantity == 1 || $voidQty == "" || $voidQty == "0")
     $query="update tbl_order_details SET status = '$status',void_remarks = '$void_remarks',void_by = '$void_by',void_at = '$void_at',void_reason_id = '$void_reason_id' where id in ($ItemId)";
 else if($iQuantity > 1 && $iQuantity == $voidQty)
 {
    $RemaningQty = $iQuantity - 1;
    
    $VoidItemsPrice = $iItemPrice;
    $RemaningItemsPrice = $iItemPrice*$RemaningQty; 
    
    $VoidItemsNetPrice = $VoidItemsPrice + ($VoidItemsPrice*0.16);
    $RemaningItemsNetPrice = $RemaningItemsPrice + ($RemaningItemsPrice*0.16); 
    
    $iItemNetPrice = $iItemPrice + ($iItemPrice*0.16);
    
    for($i=0; $i< $RemaningQty; $i++)
    {        
        $query = 'INSERT INTO tbl_order_details SET 
                            order_id = "'.$iOrderId.'",
                            product_id="'.$iProdId.'",
                            product_name = "'.$sProdName.'",
                            category_id = "'.$iCatId.'",
                            category_name ="'.$sCatName.'",
                            quantity = "1",
                            price ="'.$iItemPrice.'",
                            cost_per_item ="'.$iItemCost.'",
                            status ="'.$status.'",
                            seat_no ="'.$iSeatNo.'",
                            remarks="'.$sRemarks.'",
                            net_price="'.$iItemNetPrice.'",
                            void_remarks = "'.$void_remarks.'",
                            void_by = "'.$void_by.'",
                            void_at = "'.$void_at.'",
                            void_reason_id = "'.$void_reason_id.'",    
                            ordered_at="'.$sOrderAt.'"';
        
         mysql_query($query);
    }
    
    $query="update tbl_order_details SET quantity='1', price='$VoidItemsPrice', net_price='$iItemNetPrice', status = '$status', void_by = '$void_by', void_remarks = '$void_remarks', void_at='$void_at', void_reason_id = '$void_reason_id'  where id in ($ItemId)";

 }
 else
 {
    $RemaningQty = $iQuantity - $voidQty;
    
    $VoidItemsPrice = $iItemPrice*$voidQty;
    $RemaningItemsPrice = $iItemPrice*$RemaningQty; 
    
    $VoidItemsNetPrice = $VoidItemsPrice + ($VoidItemsPrice*0.16);
    $RemaningItemsNetPrice = $RemaningItemsPrice + ($RemaningItemsPrice*0.16); 
    
    $iItemNetPrice = $iItemPrice + ($iItemPrice*0.16);
    
    for($i=0; $i< $voidQty; $i++)
    {        
        $query = 'INSERT INTO tbl_order_details SET 
                            order_id = "'.$iOrderId.'",
                            product_id="'.$iProdId.'",
                            product_name = "'.$sProdName.'",
                            category_id = "'.$iCatId.'",
                            category_name ="'.$sCatName.'",
                            quantity = "1",
                            price ="'.$iItemPrice.'",
                            cost_per_item ="'.$iItemCost.'",
                            status ="'.$status.'",
                            seat_no ="'.$iSeatNo.'",
                            remarks="'.$sRemarks.'",
                            net_price="'.$iItemNetPrice.'",
                            void_remarks = "'.$void_remarks.'",
                            void_by = "'.$void_by.'",
                            void_at = "'.$void_at.'",
                            void_reason_id = "'.$void_reason_id.'",    
                            ordered_at="'.$sOrderAt.'"';
        
         mysql_query($query);
    }
    
    $query="update tbl_order_details SET quantity='$RemaningQty', price='$RemaningItemsPrice', net_price='$RemaningItemsNetPrice', status = '$sStatus' where id in ($ItemId)";

 }

 if (mysql_query($query)== true)
 {
                if(in_array(strtolower($status), array('p','pc')) && $voidQty >0)
                {
                    try
                    {
                                $query="select id, mobile
                                         From tbl_admins where mobile != '' AND void_sms='Y'";
                                $resource = mysql_query($query);		  
                                while ($row = mysql_fetch_assoc($resource)) 
                                {
                                    $iUser      = $row["id"];
                                    $sMobile    = $row["mobile"];
                                    
                                    $sPhoneNumbers = formatPhoneNumber($sMobile);
                                    $sMessage        = ("Following Items has been requested for Void against order no: {$iOrderId}  \n By: {$sWaiter} \n at Table No: {$sTable} \n Items, \n {$sProdName}({$voidQty}) \n Reason for Void: \n {$sReason} {$sVoidComments}");
                                    $objCurl = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                                    @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                                    @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                                    @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                                    @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                                    @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                                    $sResponse['TxtMessage'] = @curl_exec ($objCurl);

                                    @curl_close($objCurl);
                                    
                                } 
                                
                            /////*************Send Notification**********/////  
                            $UserRightList  = array();                                
                            $query = "SELECT id, device_id
                                        From tbl_admins 
                                    WHERE FIND_IN_SET(7, custom_items) AND device_id != ''";

                            $resource = mysql_query($query);		  
                            while ($row = mysql_fetch_assoc($resource)) 
                                $UserRightList[$row["id"]]  = $row["device_id"];             
 
                            
                                $payload['aps'] = array('alert' => array('title' => 'Void Order Request', 'body' => "{$voidQty} items has been requested for Void against Order No#{$iOrderId} and Table No#{$sTable}"), 'badge' => 1, 'sound' => 'default');
                                $payload = json_encode($payload);


                                //$DeviceToken = "c7e86ae036d64b590077e088c714c6492b3f8c257eef100baa39697220997d81";
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
                            ////***********************/////
                    }

                    catch (Exception $e)
                    {                                                                              
                    }
                }
                    
       $aResponse["Status"] = "OK";
       $aResponse["Message"] = "Items void successfully";
 }else{
    $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 
 mysql_close($Connection);
?>
