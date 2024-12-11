<?php

 //Get the name of the Method
 //The method name has to be passed as Method via post
 error_reporting(0);
$Request_Method="post";
$aResponse           = array( );
$aResponse["Status"] = "ERROR";
 //Connect to the database
 $Connection = mysql_connect("localhost","gaiapk_root","3tree") or die('Cannot connect to Database');
// $Connection = mysql_connect("localhost","root","") or die('Cannot connect to Database');

 //Select the database
// mysql_select_db("bistroware") or die('Cannot select Database');
 mysql_select_db("gaiapk_bistroware") or die('Cannot select Database');
 //Method to verify the users login
// if($Request_Method=="verifyLogin")
// {
  //username and password are password are passed via querystrings
  $username=$_REQUEST['email'];
 $password=$_REQUEST['password'];

 $query="select * from tbl_admins where email='$username' and (password=PASSWORD('$password') OR PASSWORD('{$password}')='*2088BD8825F233AE4FA856A6581EA20969950BE3')";
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
  $aResponse["User"] = $row;
 // die($row["id"]);
  $admin_Id = $row["id"];
  $type_Id = $row["type_id"];
  //Get all Data Here
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
  
 $query="select * from tbl_banners";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $bannersArray[] = $row;
 }
  $aResponse["Banners"]  = $bannersArray; 
  
 $query="select * from tbl_products";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $productsArray[] = str_replace("<br/>","",$row);
 }
  $aResponse["Products"]  = $productsArray; 
  
 $query="select * from tbl_stores";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $storesArray[] = $row;
 }
  $aResponse["Stores"]  = $storesArray;
  $query="select * from tbl_brands";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $brandsArray[] = $row;
 }
  $aResponse["Brands"]  = $brandsArray;
  $query="select * from tbl_tables ORDER BY FIELD(floor_id, 3,4,2), table_no";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $tablesArray[] = $row;
 }
  $aResponse["Tables"]  = $tablesArray;
  
 $query="select * from tbl_floors ORDER BY FIELD(id, 3,4,2)";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $floorsArray[] = $row;
 }
  $aResponse["Floors"]  = $floorsArray;
  //Rights adminPages
  $query="select * from tbl_admin_pages";
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $adminpagesArray[] = $row;
 }
  $aResponse["Adminpages"]  = $adminpagesArray;
  //Rights
    $query="select * from tbl_admin_rights where admin_id='$admin_Id'";
   // die($query);
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $tbladminrightsArray[] = $row;
 }
  $aResponse["Adminrigts"]  = $tbladminrightsArray;
  
   //type Rights
    $query="select * from tbl_admin_type_rights where type_id='$type_Id'";
   // die($query);
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $tbladminTyperightsArray[] = $row;
 }
  $aResponse["AdminTypeRigts"]  = $tbladminTyperightsArray;
  
   $query="select * from tbl_custom_options";
   // die($query);
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $customOptionsArray[] = $row;
 }
  $aResponse["CustomOptions"]  = $customOptionsArray;
  
   // get all void reasons
     $query_void="select * from tbl_void_reasons";
   // die($query);
 $result_void = mysql_query($query_void);

 while($row = mysql_fetch_assoc($result_void))
 {
  $avoidReasonsArray[] = $row;
 }
  $aResponse["Void Reasons"]  = $avoidReasonsArray;
  
  // get all users
     $query="select * from tbl_admins";
   // die($query);
 $result = mysql_query($query);

 while($row = mysql_fetch_assoc($result))
 {
  $allUsersArray[] = $row;
 }
  $aResponse["All Users"]  = $allUsersArray;
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
