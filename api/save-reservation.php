<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bstroware.com                                                                 **
	**                                                                                           **
	**  Copyright 2015 (C) Triple Tree Solutions                                                 **
	**  http://www.3-tree.com                                                                    **
	**                                                                                           **
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Manager:                                                                         **
	**                                                                                           **
	**      Name  :  Muhammad Tahir Shahzad                                                      **
	**      Email :  mtshahzad@sw3solutions.com                                                  **
	**      Phone :  +92 333 456 0482                                                            **
	**      URL   :  http://www.mtshahzad.com                                                    **
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Developer:                                                                       **
	**                                                                                           **
	**      Name  :  Rehmatullah Bhatti                                                          **
	**      Email :  rehmatullahbhatti@gmail.com                                                 **
	**      Phone :  +92 344 404 3675                                                            **
	**      URL   :  http://www.rehmatullahbhatti.com                                            **
	***********************************************************************************************

      	\*********************************************************************************************/
        if($_REQUEST["Api"] == "Y")
        {
            @require_once("../requires/common.php");

            $objDbGlobal = new Database( );
            $objDb       = new Database( );
            $aResponse           = array( );
        }
        
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
        
	$_SESSION["Flag"] = "";

	$iFloor         = IO::intValue("FloorId");
        $iTable         = IO::intValue("TableId");        
        $sName          = IO::strValue("txtName");
        $sPhone         = IO::strValue("txtPhone");
        $sEmail         = IO::strValue("txtEmail");
        $sRType         = IO::strValue("reservation_type");
        $sPassword      = IO::strValue("password");
        $sCPassword     = IO::strValue("cpassword");
        $iUsesrID       = IO::strValue("user_id");
        $iUsesrID       =  ($iUsesrID == '')?0:$iUsesrID;
        $sRType         = ($sRType == '')?'O':$sRType;
        $iGuests        = IO::intValue("txtGuests");
        $sResDate       = IO::strValue("txtReservationDate");
        $sResTime       = IO::strValue("txtResTime");
        $sResTime       = substr($sResTime, 0, -2);
        $sReserveTime   = date("H:i", (strtotime($sResTime)+(3600*12)));
        //$sDateTime      = date("Y-m-d H:i:s", strtotime(IO::strValue("txtDateTime")));
        $sDateTime      = date("Y-m-d H:i:s", strtotime(($sResDate." ".$sReserveTime.":00")));
        $iStayHours     = (IO::intValue("txtStayHours")>0?IO::intValue("txtStayHours"):2);
        $iStayDateTime  = date('Y-m-d H:i:s', strtotime($sDateTime.' +'.$iStayHours.' hour'));
        $sUserIp        = $_SERVER['REMOTE_ADDR'];
        $sUserAgent     = $_SERVER['HTTP_USER_AGENT'];
        $bError         = true;
        $bFlag          = true;
        
        $sTablesList    = getList("tbl_tables", "id", "table_no");

	if ($iFloor <= 0 || $iTable <= 0 || $sName == "" || $sPhone == "" || $iGuests <= 0 || $sDateTime == "")
            $_SESSION["Flag"] = "INCOMPLETE_FORM";
        
        if($_SESSION["Flag"] == "")
        {
            $reservationSlot     = getDbValue("COUNT(1)", "tbl_reservations", "table_id = '$iTable' AND status != 'C' AND '$sDateTime' BETWEEN date_time AND DATE_SUB(end_time,INTERVAL 10 MINUTE)", "id DESC");
            
            if($reservationSlot > 0)
            {
                $bFlag  = false;
?>
<script>
                    parent.jQuery.colorbox.close( );
                    alert("Hi, A reservation has already been made to this table at your selected time, Kindly select another time slot!");                    
</script>
<?
            }
        }
        
	if ($_SESSION["Flag"] == "" && $bFlag == true)
	{
		$objDb->execute("BEGIN");
                
                if($sEmail != "" && $sPassword != "")
                {
                    $UserExists = getDbValue("COUNT(1)", "tbl_users", "email LIKE '$sEmail'");
                    
                    if($UserExists == 0)
                    {
                        $iUsesrID  = getNextId("tbl_users");
                        $sSQL = "INSERT INTO tbl_users SET      id          = '$iUsesrID',
                                                                name        = '$sName',
                                                                mobile      = '$sPhone',
                                                                email       = '$sEmail',   
                                                                password    = '$sPassword',
                                                                date_time   = '$sDateTime',
                                                                status      = 'A',
                                                                picture     = ''";

                        $bFlag = $objDb->execute($sSQL);
                    }
                }

                if($bFlag == true)
                {
                
                    $iReservation  = getNextId("tbl_reservations");
                        
                    $sSQL = "INSERT INTO tbl_reservations SET  id               = '$iReservation',
                                                            name                = '$sName',
                                                            user_id             = '$iUsesrID',
                                                            phone               = '$sPhone',
                                                            email               = '$sEmail',   
                                                            password            = '$sPassword',
                                                            date_time           = '$sDateTime',
                                                            end_time            = '$iStayDateTime',
                                                            guests              = '$iGuests',
                                                            floor_id            = '$iFloor',
                                                            table_id            = '$iTable',
                                                            reservation_type    = '$sRType',
                                                            user_ip             = '$sUserIp', 
                                                            user_agent          = '$sUserAgent',
                                                            status              = 'P',
                                                            created_by          = '{$_SESSION['AdminId']}',
                                                            created_at          = NOW( ),
                                                            modified_by         = '{$_SESSION['AdminId']}',
                                                            modified_at         = NOW( )";
                                                            
                    $bFlag = $objDb->execute($sSQL);
                }
                
               if ($bFlag == true)
                {
                    try
                    {
                            $sPhoneNumbers  = formatPhoneNumber($sPhone);
                            $sMessage       = ("A reservation has been requested on Bistroware by {$sName}, {$sPhone}, ".date("l jS F Y , g:ia", strtotime($sDateTime))." for {$iGuests} people.");
                            $objCurl        = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                            @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                            @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                            @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                            @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                            @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                            $sResponse['TxtMessage'] = @curl_exec ($objCurl);
                           // print curl_error($objCurl);

                            @curl_close($objCurl);
                        
                            $sUsersList     = getList("tbl_admins", "id", "mobile", "mobile != '' AND reservation_sms='Y'");                            
                            foreach($sUsersList as $iUser => $sMobile)
                            {
                                $sPhoneNumbers = formatPhoneNumber($sMobile);
                                $sMessage        = ("A reservation has been requested on Bistroware by {$sName}, {$sPhone}, ".date("l jS F Y , g:ia", strtotime($sDateTime))." for {$iGuests} people.");
                                $objCurl = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                                @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                                @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                                @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                                @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                                @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                                $sResponse['TxtMessage'] = @curl_exec ($objCurl);
                           // print curl_error($objCurl);


                                @curl_close($objCurl);
                            }
                             /*$hSocket        = @fsockopen("125.209.75.179", "8080", $sErrorNo, $sError);
                $sUsersList     = getList("tbl_admins", "id", "mobile", "mobile != '' AND reservation_sms='Y'");
                            
                $sPhoneNumbers  = "";
                foreach($sUsersList as $iUser => $sMobile)
                {
                    $sPhoneNumbers .= (formatPhoneNumber($sMobile).",");
                }
                $sPhoneNumbers .= formatPhoneNumber($reserPhone);

                if ($hSocket)
                {
                        $sMessage        = ("Your reservation at GAIA for {$reserGuests} people on ".date("l jS F Y , g:ia", strtotime($sDateTime))." on table number {$sTableName}  has been confirmed. Please notify 2 hrs prior to your expected arrival if there is any cancellation involved, so that we can accomodate somebody else in the same time slot.");
                        $sAuthentication = @base64_encode("tahir:matrix101");
                        $sResponse       = "";

                        @fwrite($hSocket, ("GET /?Phone=".@rawurlencode($sPhoneNumbers)."&Text=".@rawurlencode($sMessage)."&Sender= HTTP/1.0\n"));
                        @fwrite($hSocket, "Authorization: Basic {$sAuthentication}\n");
                        @fwrite($hSocket, "\n");

                        while(!@feof($hSocket))
                        {
                                        $sResponse .= @fread($hSocket, 1);
                        }

                        @fclose($hSocket);
                }*/
                
                           
                    }

                    catch (Exception $e)
                    {                                                                              
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        if($_REQUEST["Api"] == "Y"){
                           $aResponse["Status"] = "OK";
                           $aResponse["Message"] = "Thank You for using Our System! Our Representative will shortly call you and will confirm your reservation!";   
                           echo json_encode($aResponse);

                        }else{
?>


<script>
                    parent.jQuery.colorbox.close( );
                    alert("Thank You for using Our System! Our Representative will shortly call you and will confirm your reservation!");                    
</script>
<?
                        }
		}
		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>