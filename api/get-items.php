<?php

 //Get the name of the Method
 //The method name has to be passed as Method via post
 error_reporting(0);
$Request_Method="post";
$aResponse = array( );
$aResponse["Status"] = "ERROR";

 //Connect to the database
 $Connection = mysql_connect("localhost","gaiapk_root","3tree") or die('Cannot connect to Database');
 mysql_select_db("gaiapk_bistroware") or die('Cannot select Database');

 $mealsArray = array();
 $categoriesArray = array();
 
 $query="select * from tbl_categories";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $categoriesArray[] = $row;
 }
  $aResponse["Categories"]  = $categoriesArray; 

//Meal Types
$query="select * from tbl_meals";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $mealsArray[] = $row;
 }
  $aResponse["Meals"]  = $mealsArray;   
  
 $query="select * from tbl_products";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $productsArray[] = $row;
 }
  $aResponse["Products"]  = $productsArray; 
  
 echo json_encode($aResponse);
 //Close Connection

 mysql_close($Connection);
?>
