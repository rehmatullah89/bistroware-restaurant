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
 $orderId=$_REQUEST['order_id'];
 $payment_mode=$_REQUEST['payment_mode'];
 $amount=$_REQUEST['amount'];


                                   //order_id = '$oderId',
 $query="insert into tbl_payments SET order_id = '$orderId',
       payment_mode = '$payment_mode',amount='$amount'";
 //die($query);
 //$result = mysql_query($query);
 if (mysql_query($query)== true){
     
     $query_order="update tbl_orders SET status = 'C' where id='$orderId'";
     mysql_query($query_order);
      $query_order_detail="update tbl_order_details SET status = 'C' where order_id='$orderId'";
     mysql_query($query_order_detail);
       $aResponse["Status"] = "OK";
       $aResponse["Message"] = "Bill pay Succefully";
 }else{
    $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>
