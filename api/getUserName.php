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
  $username=$_REQUEST['id'];

 $query="select * from tbl_admins where id='$username'";
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
    $aResponse["Message"] = "There is no user with these credentials";
    }
 //Else there is an employee with the given credentials
 else if($rowcount>0) {
  $aResponse["Status"] = "OK";
  $row = mysql_fetch_assoc($result);
  //Get and return his employee id
  $aResponse["CreatedBy"] = $row;
 // die($row["id"]);
  $admin_Id = $row["id"];
  //Get all Data Here
 }
 
 else{
    $aResponse["Status"] = "ERROR";
 }
} else {
    $aResponse["Status"] = "ERROR";
}
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>


