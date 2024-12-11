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
 $query="select * from tbl_orders where id='$orderId'";
 //echo $query;
 //Execute the query
// $result = mysql_query($query);
if (mysql_query($query)== true){
 //Get the rowcount
    $result = mysql_query($query);
 $rowcount= mysql_num_rows($result);

 //if the count is 0 then no matching rows are found
 if($rowcount==0)
 {
    $aResponse["Message"] = "There is no order with order ID = $orderId";
    }
 //Else there is an employee with the given credentials
 else if($rowcount>0) {
  $aResponse["Status"] = "OK";
  $row = mysql_fetch_assoc($result);
  //Get and return his employee id
  $aResponse["Order"] = $row;
 $query="select * from tbl_order_details where order_id='$orderId'";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $orderItemArray[] = $row;
 }
  $aResponse["OrderItems"]  = $orderItemArray; 
 } 
}
else {
        $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>
