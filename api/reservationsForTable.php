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
 //$query="select * from tbl_orders";
 //echo $query;
  $table_id  = $_REQUEST['table_id'];

 $orderquery="select * from tbl_reservations where table_id = $table_id AND status = 'R'  ORDER BY id DESC";
 //Execute the query
// $result = mysql_query($query);
//die($orderquery);
if (mysql_query($orderquery)== true){
 //Get the rowcount
 $result = mysql_query($orderquery);
 $aResponse["Status"] = "OK";
  while($row = mysql_fetch_assoc($result))
 {
  $reservationsArray[] = $row;
 }
  $aResponse["ReservationsList"]  = $reservationsArray;  
}
else {
        $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>