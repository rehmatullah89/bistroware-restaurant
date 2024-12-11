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

function formatPhoneNumber($sMobile)
{
        $sMobile = str_replace(array(" ", "-", ".", "(", ")"), "", $sMobile);

        if (substr($sMobile, 0, 3) == "+03")
                $sMobile = str_replace("+03", "+923", $sMobile);

        if (substr($sMobile, 0, 2) == "03")
                $sMobile = substr_replace($sMobile, "+923", 0, 2);

        if (substr($sMobile, 0, 5) == "009203")
                $sMobile = str_replace("009203", "+923", $sMobile);

        if (substr($sMobile, 0, 5) == "00923")
                $sMobile = str_replace("00923", "+923", $sMobile);

        if (substr($sMobile, 0, 5) == "+0088")
                $sMobile = str_replace("+0088", "+88", $sMobile);

        if (substr($sMobile, 0, 4) == "0088")
                $sMobile = str_replace("0088", "+88", $sMobile);

        return $sMobile;
}
 //Method to verify the users login
// if($Request_Method=="verifyLogin")
// {
  //username and password are password are passed via querystrings
 $status=$_REQUEST['status'];
 $reser_id=$_REQUEST['id'];
 $reserfloor_id=$_REQUEST['FloorId'];
 $resertable_id=$_REQUEST['TableId'];
 $reserName=$_REQUEST['txtName'];
 $reserPhone=$_REQUEST['txtPhone'];
 $reserGuests=$_REQUEST['txtGuests'];
 $reserDateTime=$_REQUEST['txtDateTime'];
 $iStayHours = 2;
 $sDateTime  = date("Y-m-d H:i:s", strtotime($reserDateTime));
 $iStayDateTime  = date('Y-m-d H:i:s', strtotime($sDateTime.' +'.$iStayHours.' hour'));
 
 $sTableName = "";
 if(!empty($resertable_id))
 {
    $query = mysql_query("SELECT table_no from tbl_tables where id='$resertable_id'");
    $obj   = mysql_fetch_object($query);
    $sTableName = $obj->table_no;
 }
 
  $query="update tbl_reservations SET  name        = '$reserName',
                                        status     = '$status',
                                        phone      = '$reserPhone',
                                        date_time  = '$sDateTime',
                                        end_time   = '$iStayDateTime',
                                        guests     = '$reserGuests',
                                        floor_id   = '$reserfloor_id',
                                        table_id   = '$resertable_id'  where id in ($reser_id)";
  
  if($status == 'R')
  {
        try
        {
            
                $sPhoneNumbers  = formatPhoneNumber($reserPhone);
                $sMessage        = ("Your reservation at GAIA for {$reserGuests} people on ".date("l jS F Y , g:ia", strtotime($sDateTime))." on table number {$sTableName}  has been confirmed. Please notify 2 hrs prior to your expected arrival if there is any cancellation involved, so that we can accomodate somebody else in the same time slot.");
                $objCurl        = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

               $sResponse['TextMsg'] = @curl_exec ($objCurl);
//                print curl_error($objCurl);

                @curl_close($objCurl);

                //$sUsersList     = getList("tbl_admins", "id", "mobile", "mobile != '' AND reservation_sms='Y'");  
                 $sUsersListQuery = "select id, mobile from tbl_admins where mobile != '' AND reservation_sms='Y'";
                 $sUsersListresult = mysql_query($sUsersListQuery);
                
                while($iUser = mysql_fetch_assoc($sUsersListresult))
                   {
                    // die($iUser);
//                foreach($sUsersList as $iUser => $sMobile)
//                {
                    //$aResponse["Usersss"] = $iUser;
                    $sPhoneNumbers = formatPhoneNumber($sMobile);
                    $sMessage        = ("Your reservation at GAIA for {$reserGuests} people on ".date("l jS F Y , g:ia", strtotime($sDateTime))." on table number {$sTableName}  has been confirmed. Please notify 2 hrs prior to your expected arrival if there is any cancellation involved, so that we can accomodate somebody else in the same time slot.");
                    $objCurl = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                    @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                    @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                    @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                    @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                    @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                    //print $sResponse = @curl_exec ($objCurl);
                    $sResponse['TextMsg'] = @curl_exec ($objCurl);

                    //print curl_error($objCurl);

                    @curl_close($objCurl);
                }               
        }

        catch (Exception $e)
        {      
            $aResponse["EXception"] = $e;
        } 
  }
 //die($query);
  $result = mysql_query($query);
 if (mysql_query($query)== true){
       $aResponse["Status"] = "OK";
       $aResponse["Message"] = "Reserved successfully";
 }else{
    $aResponse["Status"] = "ERROR";
 }
 echo json_encode($aResponse);
 //Close Connection
 mysql_close($Connection);
?>
