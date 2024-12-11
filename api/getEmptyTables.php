<?php

 //Get the name of the Method
 //The method name has to be passed as Method via post

 $Request_Method="post";
$aResponse           = array( );
$aResponse["Status"] = "ERROR";
 //Connect to the database
 $Connection = mysql_connect("localhost","gaiapk_root","3tree") or die('Cannot connect to Database');

 //Select the database
 mysql_select_db("gaiapk_bistroware") or die('Cannot select Database');

 //Method to verify the users login
// if($Request_Method=="verifyLogin")
// {
  //username and password are password are passed via querystrings
 $tableId=$_REQUEST['table_id'];
// $payment_mode=$_REQUEST['payment_mode'];
// $amount=$_REQUEST['amount'];                        //order_id = '$oderId',
 $query = "select * from tbl_orders where table_id = '$tableId' and status ='A'";
 //die($query);
// $result = mysql_query($query);
 if (mysql_query($query)== true){
     $result = mysql_query($query);
     
     $rowcount= mysql_num_rows($result);
   if($rowcount==0)
   {
    $aResponse["Message"] = "available";
    $aResponse["Status"] = "OK";
    }
    else if($rowcount>0) {
          $item = mysql_fetch_assoc($result);
         // $row = mysql_fetch_assoc($result);
          $aOrderList           = array( );
          $aOrderList["Order"] = $item;
          $order_id = $item["id"];
          $query_order="select * from tbl_order_details where order_id='$order_id' and status ='A'";
          $order_details = mysql_query($query_order);
           while($row_order = mysql_fetch_assoc($order_details))
              {
                 $orderItemsArray[] = $row_order;
              }
              $aOrderList["order_details"] = $orderItemsArray;
            $aResponse["Current_Order"] = $aOrderList;
            $aResponse["Status"] = "OK";
            $aResponse["Message"] = "Busy";
              }    
    }else{
     $aResponse['message']   = mysql_error();
     $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>
