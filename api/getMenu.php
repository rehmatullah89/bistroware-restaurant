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
 
 //$orderId=$_REQUEST['orderId'];
 //$query="select * from tbl_orders";
 //echo $query;
 $orderquery="select * from tbl_categories ORDER BY id DESC ";
 //Execute the query
// $result = mysql_query($query);
if (mysql_query($orderquery)== true){
 //Get the rowcount
 $orderresult = mysql_query($orderquery);
 $aResponse["Status"] = "OK";
  while($item = mysql_fetch_assoc($orderresult))
 {
     $aOrderList           = array( );
     $aOrderList["Category"] = $item;
     //$aOrderList["Meal"]    = $item;
     $orderId = "";
     $orderId = $item['id'];
     
 $query="select * from tbl_products where category_id='$orderId' ORDER BY id DESC";
 $result = mysql_query($query);
// echo '<pre>';
 //echo $query;  
 
 while($row = mysql_fetch_assoc($result))
 {
  //$orderItemArray[] = $row;
  $aOrderList["Products"][] = $row;
//  echo '<pre>';
// print_r($item);
 }
  $aResponse["OurMenu"][]  = $aOrderList; 
 }
}
else {
        $aResponse["Status"] = "ERROR";
 }
 //echo "<pre>";
 echo json_encode($aResponse);
 mysql_close($Connection);
?>
