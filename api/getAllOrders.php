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
 
 $orderId=$_REQUEST['orderId'];
 //$query="select * from tbl_orders";
 //echo $query;
 $orderquery="select * from tbl_orders where status!='C' ORDER BY id DESC ";
 //Execute the query
// $result = mysql_query($query);
if (mysql_query($orderquery)== true){
 //Get the rowcount
 $orderresult = mysql_query($orderquery);
 $aResponse["Status"] = "OK";
  while($item = mysql_fetch_assoc($orderresult))
 {
     $aOrderList           = array( );
     $aOrderList["Order"] = $item;
     $orderId = "";
     $orderId = $item['id'];
     $tableId = $item['table_id'];
     $waiterId = $item['waiter_id'];
     
 $query="select * from tbl_order_details where order_id='$orderId' ORDER BY id DESC";
 $result = mysql_query($query);
// echo '<pre>';
// echo $query;  
 
 while($row = mysql_fetch_assoc($result))
 {
  //$orderItemArray[] = $row;
  $aOrderList["OrderItems"][] = $row;
//  echo '<pre>';
// print_r($item);
 }
//  echo '<pre>';
// print_r($aOrderList["OrderItems"]);
 //$aOrderList["OrderItems"] = $orderItemArray;
 
 $tablequery="select * from tbl_tables where id='$tableId' ORDER BY id DESC";
 $tableresult = mysql_query($tablequery);
 $tablerow = mysql_fetch_assoc($tableresult);
  //$tableArray[] = $tablerow;
 $aOrderList["Table"] = $tablerow;
 
 $floorId = $tablerow['floor_id'];
 
  $floorquery="select * from tbl_floors where id='$floorId' ORDER BY id DESC";
 $floorresult = mysql_query($floorquery);
 $floorrow = mysql_fetch_assoc($floorresult);
  //$tableArray[] = $tablerow;
 $aOrderList["Floor"] = $floorrow;
 
 
 $usernamequery="select * from tbl_admins where id='$waiterId' ORDER BY id DESC";
 $usernameresult = mysql_query($usernamequery);
 $usernamerow = mysql_fetch_assoc($usernameresult);
  //$tableArray[] = $tablerow;
 $aOrderList["Username"] = $usernamerow;
  $aResponse["OrderListing"][]  = $aOrderList; 
 }
}
else {
        $aResponse["Status"] = "ERROR";
 }
// echo '<pre>';
// print_r($aResponse);
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>
