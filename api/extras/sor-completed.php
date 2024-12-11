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


	$sUser      = IO::strValue("User");
	$iSchool    = IO::intValue("School");
	$sCode      = IO::strValue("Code");
	$sLatitude  = IO::strValue("Latitude");
	$sLongitude = IO::strValue("Longitude");	
	$sDateTime  = IO::strValue("DateTime");

	
	logApiCall($_POST);
	

	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $sDateTime == "")
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
				$iSorId = getDbValue("id", "tbl_sors", "school_id='$iSchool' AND admin_id='$iUser'", "id DESC");
		
				if ($iSorId > 0)
				{
					$bFlag = $objDb->execute("BEGIN", true, $iUser, $sName, $sEmail);					
					
					$sSQL = "UPDATE tbl_sors SET status      = 'C',
												 completed   = 'Y',
												 latitude    = IF(latitude='', '$sLatitude', latitude),
											 	 longitude   = IF(longitude='', '$sLongitude', longitude),
												 modified_at = '$sDateTime'
							 WHERE id='$iSorId'";
					$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
				
					if ($bFlag == true && $sLatitude != "" && $sLongitude != "")
					{
						$sAddress  = "";
						$sLocation = @json_decode(file_get_contents("http://maps.googleapis.com/maps/api/geocode/json?latlng={$sLatitude},{$sLongitude}&sensor=false"), true);

						if ($sLocation["results"][0]["address_components"][0]["long_name"] != "")
							$sAddress .= ($sLocation["results"][0]["address_components"][0]["long_name"]."\n");

						if ($sLocation["results"][0]["address_components"][1]["long_name"] != "")
							$sAddress .= ($sLocation["results"][0]["address_components"][1]["long_name"]."\n");

						if ($sLocation["results"][0]["address_components"][2]["long_name"] != "")
							$sAddress .= ($sLocation["results"][0]["address_components"][2]["long_name"]."\n");

						if ($sLocation["results"][0]["address_components"][3]["long_name"] != "")
							$sAddress .= ($sLocation["results"][0]["address_components"][3]["long_name"]."\n");
						
						$sAddress = addslashes($sAddress);

						
						$sSQL = "UPDATE tbl_admins SET latitude='$sLatitude', longitude='$sLongitude', location_address='$sAddress', location_time=NOW() WHERE id='$iUser'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					}

					if ($bFlag == true)
					{
						$objDb->execute("COMMIT", true, $iUser, $sName, $sEmail);
						
						$aResponse["Status"]  = "OK";
						$aResponse["Message"] = "SOR marked Completed successfully!";			
						
						
						
						$sSQL = "SELECT site_title, general_name, general_email, date_format, time_format FROM tbl_settings WHERE id='1'";
						$objDb->query($sSQL);

						$sSiteTitle   = $objDb->getField(0, "site_title");
						$sSenderName  = $objDb->getField(0, "general_name");
						$sSenderEmail = $objDb->getField(0, "general_email");
						$sDateFormat  = $objDb->getField(0, "date_format");
						$sTimeFormat  = $objDb->getField(0, "time_format");						
						
						
						$sSQL = "SELECT subject, message, status FROM tbl_email_templates WHERE id='8'";
						$objDb->query($sSQL);

						$sSubject = $objDb->getField(0, "subject");
						$sBody    = $objDb->getField(0, "message");


						if ($objDb->getField(0, "status") == "A")
						{
							$sDownloadPdf = ("<a href='http://www.3-tree.com/scrp/mscp/surveys/email-sor-form.php?SorId=".base64_encode($iSorId)."' target='_blank'>Download SOR Document</a>");
							
							
							$sSubject = @str_replace("{SITE_TITLE}", $sSiteTitle, $sSubject);
							$sSubject = @str_replace("{SOR_ID}", str_pad($iSorId, '0', 5, STR_PAD_LEFT), $sSubject);
							$sSubject = @str_replace("{EMIS_CODE}", $sCode, $sSubject);
							$sSubject = @str_replace("{SCHOOL}", $sSchool, $sSubject);							
						
						
							$sBody = @str_replace("{SOR_ID}", str_pad($iSorId, '0', 5, STR_PAD_LEFT), $sBody);
							$sBody = @str_replace("{SCHOOL}", $sSchool, $sBody);
							$sBody = @str_replace("{EMIS_CODE}", $sCode, $sBody);
							$sBody = @str_replace("{PROVINCE_NAME}", getDbValue("name", "tbl_provinces", "id='$iProvince'"), $sBody);
							$sBody = @str_replace("{DISTRICT_NAME}", getDbValue("name", "tbl_districts", "id='$iDistrict'"), $sBody);
							$sBody = @str_replace("{CDC}", $sName, $sBody);
							$sBody = @str_replace("{LOCATION}", (($sAddress == "") ? "N/A" : $sAddress), $sBody);
							$sBody = @str_replace("{MAP_LINK}", $sMapLink, $sBody);
							$sBody = @str_replace("{DISTANCE}", $sDistance, $sBody);
							$sBody = @str_replace("{SITE_TITLE}", $sSiteTitle, $sBody);
							$sBody = @str_replace("{SITE_URL}", SITE_URL, $sBody);
							$sBody = @str_replace("{DOWNLOAD_SOR_PDF}", $sDownloadPdf, $sBody);


							$objEmail = new PHPMailer( );

							$objEmail->Subject = $sSubject;
							$objEmail->MsgHTML($sBody);
							$objEmail->SetFrom($sSenderEmail, $sSenderName);
							$objEmail->AddAddress($sEmail, $sName);
							
							if (@strpos($sEmail, "@3-tree.com") === FALSE)
							{
								$objEmail->AddAddress("omer@3-tree.com", "Omer Rauf");
								$objEmail->AddAddress("isfundiar.kasuri@humqadam.pk", "Isfundiar Kasuri");
								$objEmail->AddAddress("imran.shakir@humqadam.pk", "Imran Shakir");
								$objEmail->AddAddress("nimra.tariq@humqadam.pk", "Nimra Tariq");
								
								if($iProvince == 1)
								{
									$objEmail->AddAddress("Tariq.Sohail@humqadam.pk", "Tariq Sohail");
									$objEmail->AddAddress("rukhsana.tasneem@humqadam.pk", "Rukhsana Tasneem");
									$objEmail->AddAddress("ali.tariq@humqadam.pk", "Ali Tariq");

								}
								
								else if($iProvince == 2)
								{
									$objEmail->AddAddress("Salma.meraj@humqadam.pk", "Salma Meraj");
									$objEmail->AddAddress("ismail.ibrahim@humqadam.pk", "Ismail Akram");
									$objEmail->AddAddress("rafique.khattak@humqadam.pk", "Rafique Khattak");
								}
							}

							if (@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE)
								$objEmail->Send( );						
						}
					}

					else
					{
						$aResponse["Message"] = "An ERROR occured, please try again.";
						
						$objDb->execute("ROLLBACK", true, $iUser, $sName, $sEmail);
					}
				}
				
				else
				{
					$aResponse["Status"]  = "OK";
					$aResponse["Message"] = "SOR Already marked Completed!";					
				}
			}
		}
	}

	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>