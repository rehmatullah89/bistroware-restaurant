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
 $orderquery="select * from tbl_floors ORDER BY id DESC ";
 //Execute the query
// $result = mysql_query($query);
if (mysql_query($orderquery)== true){
 //Get the rowcount
 $result = mysql_query($orderquery);
 $aResponse["Status"] = "OK";
  while($row = mysql_fetch_assoc($result))
 {
  $floorsArray[] = $row;
 }
  $aResponse["Floors"]  = $floorsArray;  
}
else {
        $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>