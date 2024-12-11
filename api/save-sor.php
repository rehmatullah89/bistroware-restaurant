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


	$sUser             = IO::strValue("User");
	$iSchool           = IO::intValue("School");
	$sCode             = IO::strValue("Code");	
	$iDistrictEngineer = IO::intValue("DistrictEngineer");
	$sDate             = IO::strValue("Date");
	$sPrincipal        = IO::strValue("Principal");
	$sContactNo        = IO::strValue("ContactNo");
	$sPtc              = IO::strValue("Ptc");
	$iCcsi             = IO::strValue("Ccsi");
	$sParticipants     = IO::strValue("Participants");
	$sNames            = IO::strValue("Names");
	$sDesignations     = IO::strValue("Designations");
	$sDateTime         = IO::strValue("DateTime");
	$sLatitude         = IO::strValue("Latitude");
	$sLongitude        = IO::strValue("Longitude");		
	
	
	logApiCall($_POST);
	
	
	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $iDistrictEngineer == 0 || $sDate == "" || $sDateTime == "")
		$aResponse["Message"] = "Invalid Request";

	else
	{
		$sSQL = "SELECT id, name, email, provinces, districts, schools, status FROM tbl_admins WHERE MD5(id)='$sUser'";
		$objDb->query($sSQL);

		if ($objDb->getCount( ) == 0)
			$aResponse["Message"] = "Invalid User";

		else if ($objDb->getField(0, "status") != "A")
			$aResponse["Message"] = "User Account is Disabled";

		else
		{
			$iUser      = $objDb->getField(0, "id");
			$sName      = $objDb->getField(0, "name");
			$sEmail     = $objDb->getField(0, "email");
			$sProvinces = $objDb->getField(0, "provinces");
			$sDistricts = $objDb->getField(0, "districts");
			$sSchools   = $objDb->getField(0, "schools");

			$iProvinces = @explode(",", $sProvinces);
			$iDistricts = @explode(",", $sDistricts);
			$iSchools   = @explode(",", $sSchools);

			
			
			if (strlen($iCcsi) > 10)
				$iCcsi = getDbValue("id", "tbl_school_members", "school_id='$iSchool' AND member_id='$iCcsi'");
			
			
			if ($sParticipants != "")
			{
				$iParticipants = @explode(",", $sParticipants);
				
				for ($i = 0; $i < count($iParticipants); $i ++)
				{
					if (strlen($iParticipants[$i]) > 10)
						$iParticipants[$i] = getDbValue("id", "tbl_school_members", "school_id='$iSchool' AND member_id='{$iParticipants[$i]}'");
				}
				
				$sParticipants = @implode(",", $iParticipants);
			}
			


			$sSQL = "SELECT name, code, district_id, province_id FROM tbl_schools WHERE id='$iSchool'";
			$objDb->query($sSQL);

			$sSchool   = $objDb->getField(0, "name");
			$sCode     = $objDb->getField(0, "code");
			$iDistrict = $objDb->getField(0, "district_id");
			$iProvince = $objDb->getField(0, "province_id");


			if ($objDb->getCount( ) == 0)
				$aResponse["Message"] = "Invalid Request, no School Found!";

			else if ( ($sSchools != "" && !@in_array($iSchool, $iSchools)) || ($sSchools == "" && (!@in_array($iProvince, $iProvinces) || !@in_array($iDistrict, $iDistricts))) )
				$aResponse["Message"] = "Request denied, You don't have permissions for requested School!";

			else
			{
				if ((int)getDbValue("COUNT(1)", "tbl_sors", "school_id='$iSchool' AND admin_id='$iUser' AND `date`='$sDate'") > 0)
					$aResponse["Message"] = "Already Saved.";

				else
				{
					$bFlag = $objDb->execute("BEGIN", true, $iUser, $sName, $sEmail);
						
					$sSQL = "INSERT INTO tbl_sors SET admin_id     = '$iUser',
													  district_id  = '$iDistrict',
													  school_id    = '$iSchool',
													  `date`       = '$sDate',
													  engineer_id  = '$iDistrictEngineer',
													  principal    = '$sPrincipal',
													  ptc          = '$sPtc',
													  ccsi_id      = '$iCcsi',
													  contact_no   = '$sContactNo',
													  participants = '$sParticipants',
													  status       = 'I',
													  created_by   = '$iUser',
													  created_at   = '$sDateTime',
													  modified_by  = '$iUser',
													  modified_at  = '$sDateTime',
													  latitude     = '$sLatitude',
													  longitude    = '$sLongitude',													  
													  completed    = 'N',
													  app          = 'Y'";
                                        
					$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					
					if ($bFlag == true)
						$iSor = $objDb->getAutoNumber( );
					
					if ($bFlag == true)
					{
						$sSQL  = "INSERT INTO tbl_sor_details (sor_id, section_id, `status`, created_by, created_at, modified_by, modified_at)
													          (SELECT '$iSor', id, 'I', '$iUser', '$sDateTime', '$iUser', '$sDateTime' FROM tbl_sor_sections)";						
						$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					}
					
					// Needs to be DELETED
					if ($bFlag == true && $sNames != "" && $sDesignations != "")
					{
						$sNames        = @explode(", ", substr($sNames, 1, -1));
						$sDesignations = @explode(", ", substr($sDesignations, 1, -1));
						
						for ($i = 0; $i < count($sNames); $i ++)
						{
							$sSQL  = "INSERT INTO tbl_sor_participants SET id          = '$i',
							                                               sor_id      = '$iSor',
																		   name        = '{$sNames[$i]}',
																		   designation = '{$sDesignations[$i]}'";
							$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
							
							if ($bFlag == false)
								break;
						}
					}

					
					if ($bFlag == true)
					{
						$objDb->execute("COMMIT", true, $iUser, $sName, $sEmail);
						
						
						$sLink = (SITE_URL.ADMIN_CP_DIR."/surveys/email-sor-form.php?SorId=".@base64_encode($iSor));
						$sLink = "<a href='{$sLink}' target='_blank'>Download SOR (PDF Format)</a>";
						
												

						$sSQL = "SELECT site_title, general_name, general_email, date_format, time_format FROM tbl_settings WHERE id='1'";
						$objDb->query($sSQL);

						$sSiteTitle   = $objDb->getField(0, "site_title");
						$sSenderName  = $objDb->getField(0, "general_name");
						$sSenderEmail = $objDb->getField(0, "general_email");

						
						$sSQL = "SELECT subject, message, status FROM tbl_email_templates WHERE id='8'";
						$objDb->query($sSQL);

						$sSubject = $objDb->getField(0, "subject");
						$sBody    = $objDb->getField(0, "message");

					
						$sSubject = @str_replace("{SITE_TITLE}", $sSiteTitle, $sSubject);
						$sSubject = @str_replace("{EMIS_CODE}", $sCode, $sSubject);
						$sSubject = @str_replace("{SCHOOL}", $sSchool, $sSubject);
						$sSubject = @str_replace("{DISTRICT_NAME}", getDbValue("name", "tbl_districts", "id='$iDistrict'"), $sSubject);
						
						$sBody = @str_replace("{SOR_ID}", str_pad($iSor, '0', 5, STR_PAD_LEFT), $sBody);
						$sBody = @str_replace("{SCHOOL}", $sSchool, $sBody);
						$sBody = @str_replace("{EMIS_CODE}", $sCode, $sBody);
						$sBody = @str_replace("{PROVINCE_NAME}", getDbValue("name", "tbl_provinces", "id='$iProvince'"), $sBody);
						$sBody = @str_replace("{DISTRICT_NAME}", getDbValue("name", "tbl_districts", "id='$iDistrict'"), $sBody);
						$sBody = @str_replace("{CDC}",  $sName, $sBody);
						$sBody = @str_replace("{SITE_TITLE}", $sSiteTitle, $sBody);
						$sBody = @str_replace("{DOWNLOAD_SOR_PDF}",  $sLink, $sBody);
						
								
						$objEmail = new PHPMailer( );

						$objEmail->Subject = $sSubject;
						$objEmail->MsgHTML($sBody);
						$objEmail->SetFrom($sSenderEmail, $sSenderName);
						
						$objEmail->AddAddress("omer@3-tree.com", "Omer Rauf");
						
						if (@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE)
							$objEmail->Send( );

						
						$aResponse["Status"]  = "OK";
						$aResponse["Message"] = "SOR Entry saved successfully!";
					}

					else
					{
						$aResponse["Message"] = mysql_error(); // "An ERROR occured, please try again.";
						
						$objDb->execute("ROLLBACK", true, $iUser, $sName, $sEmail);
					}
				}
			
			}
		}
	}

	
	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>