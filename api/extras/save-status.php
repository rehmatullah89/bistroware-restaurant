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


	$sUser           = IO::strValue("User");
	$iSchool         = IO::intValue("School");
	$iStage          = IO::intValue("Stage");
	$sInspectionCode = IO::strValue("InspectionCode");
	$sDateTime       = IO::strValue("DateTime");
	$sStatus         = IO::strValue("Status");
	$iReason         = IO::intValue("Reason");
	$sComments       = IO::strValue("Comments");
	$sStageCompleted = IO::strValue("StageCompleted");
	$sReInspection   = IO::strValue("ReInspection");

	$sStatus           = (($sStatus == "") ? "P" : $sStatus);
	$sStageCompleted   = (($sStageCompleted == "") ? "N" : $sStageCompleted);
	$sReInspection     = (($sReInspection == "") ? "0000-00-00" : $sReInspection);


	logApiCall($_POST);
	

	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $iStage == 0 || $sInspectionCode == "")
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


			$sInspectionTime = date("Y-m-d H:i:s", ($sInspectionCode / 1000));
			$iInspection     = getDbValue("id", "tbl_inspections", "admin_id='$iUser' AND created_at='$sInspectionTime'");
			$iBlock          = getDbValue("block", "tbl_inspections", "id='$iInspection'");

			
			$sSQL = "SELECT name, code, district_id, province_id, blocks FROM tbl_schools WHERE id='$iSchool'";
			$objDb->query($sSQL);

			$sSchool   = $objDb->getField(0, "name");
			$sCode     = $objDb->getField(0, "code");
			$iBlocks   = $objDb->getField(0, "blocks");
			$iDistrict = $objDb->getField(0, "district_id");
			$iProvince = $objDb->getField(0, "province_id");


			if ($objDb->getCount( ) == 0)
				$aResponse["Message"] = "Invalid Request, no School Found!";

			else if ( ($sSchools != "" && !@in_array($iSchool, $iSchools)) || ($sSchools == "" && (!@in_array($iProvince, $iProvinces) || !@in_array($iDistrict, $iDistricts))) )
				$aResponse["Message"] = "Request denied, You don't have permissions for requested School!";

			else if ($iInspection == 0 || getDbValue("COUNT(1)", "tbl_inspections", "id='$iInspection'") == 0)
				$aResponse["Message"] = "Invalid request, no Inspection Record Found!";

			else if (getDbValue("status", "tbl_inspections", "id='$iInspection'") != "")
			{
				$aResponse['Status']  = "OK";
				$aResponse["Message"] = "Already Updated";
			}

			else
			{
				$sSQL  = "UPDATE tbl_inspections SET status            = '$sStatus',
													 stage_completed   = '$sStageCompleted',
													 failure_reason_id = '$iReason',
													 failure_reason    = '$sComments',
													 re_inspection     = '$sReInspection'
						  WHERE id='$iInspection'";

				if ($objDb->execute($sSQL, true, $iUser, $sName, $sEmail) == true)
				{
					$sSQL = "SELECT name, storey_type, design_type, work_type FROM tbl_school_blocks WHERE school_id='$iSchool' AND block='$iBlock'";
					$objDb->query($sSQL);

					$sBlockName  = $objDb->getField(0, "name");
					$sStoreyType = $objDb->getField(0, "storey_type");
					$sDesignType = $objDb->getField(0, "design_type");
					$sWorkType   = $objDb->getField(0, "work_type");

				
					$sBlockType       = (($sWorkType == "R") ? "R" : (($sDesignType == "B") ? "B" : $sStoreyType));		
					$iMilestoneStage  = getDbValue("id", "tbl_stages", "status='A' AND parent_id='0' AND `type`='$sBlockType'", "position DESC");
					$iMilestoneStages = array( );
					
					$sSQL = "SELECT id FROM tbl_stages WHERE status='A' AND parent_id='$iMilestoneStage' AND `type`='$sBlockType' ORDER BY position DESC";
					$objDb->query($sSQL);
					
					$iCount = $objDb->getCount( );
					
					for ($i = 0; $i < $iCount; $i ++)
						$iMilestoneStages[] = $objDb->getField($i, 0);


					$iMilestonePosition = getDbValue("position", "tbl_stages", "id='$iMilestoneStage'");
					$iLastStage         = getDbValue("s.id", "tbl_inspections i, tbl_stages s", "i.stage_id=s.id AND s.weightage>'0' AND i.school_id='$iSchool' AND i.block='$iBlock' AND s.position>'$iMilestonePosition' AND i.status='P' AND i.stage_completed='Y' AND s.type='$sBlockType' AND s.skip!='Y'", "s.position DESC");
					$iLastMilestone     = 0;
					$iCurrentMilestone  = 0;
					
					if ($sStageCompleted == "Y")
					{
						$iLastPosition = getDbValue("position", "tbl_stages", "status='A' AND `type`='$sBlockType'", "position DESC");
						
						
						foreach ($iMilestoneStages as $iMilestone)
						{
							$iMilestonePosition  = getDbValue("position", "tbl_stages", "id='$iMilestone'");
							$iMilestoneLastStage = getDbValue("id", "tbl_stages", "status='A' AND parent_id>'0' AND `type`='$sBlockType' AND weightage>'0' AND skip!='Y' AND position>'$iMilestonePosition' AND position<'$iLastPosition'", "position DESC");
							
							if (intval($iMilestoneLastStage) == 0)
								continue;

							if ($iStage == $iMilestoneLastStage)
							{
								$iCurrentMilestone = $iMilestone;
								
								break;
							}
							
							$iLastPosition = $iMilestonePosition;							
						}
					}
					

					if ($iCurrentMilestone > 0)
						$iLastMilestone = $iCurrentMilestone;
					
					else if ($iLastStage > 0)
					{
						$iLastMilestone = getDbValue("parent_id", "tbl_stages", "id='$iLastStage'");

						if (!@in_array($iLastMilestone, $iMilestoneStages))
							$iLastMilestone = getDbValue("parent_id", "tbl_stages", "id='$iLastMilestone'");


						if (@in_array($iLastMilestone, $iMilestoneStages))
						{
							$sMilestoneStages = @implode(",", $iMilestoneStages);
							$iLastPosition    = getDbValue("position", "tbl_stages", "id='$iLastMilestone'");
							$iLastMilestone   = (int)getDbValue("id", "tbl_stages", "status='A' AND FIND_IN_SET(id, '$sMilestoneStages') AND position<'$iLastPosition'", "position DESC");
						}
						
						else
							$iLastMilestone = 0;
					}


				
					$sLastMilestone = (($iLastMilestone > 0) ? getDbValue("name", "tbl_stages", "id='$iLastMilestone'") : "-");


					if ($sStageCompleted == "Y")
					{
						$iLastStage     = (int)getDbValue("s.id", "tbl_inspections i, tbl_stages s", "s.id=i.stage_id AND s.weightage>'0' AND i.school_id='$iSchool' AND i.block='$iBlock' AND i.status='P' AND i.stage_completed='Y' AND s.type='$sBlockType' AND s.skip!='Y'", "s.position DESC");
						$iStagePosition = getDbValue("position", "tbl_stages", "id='$iLastStage'");
						$fBlockProgress = @round(getDbValue("COALESCE(SUM(weightage), '0')", "tbl_stages", "status='A' AND position<='$iStagePosition' AND `type`='$sBlockType'"), 2);
						
						if ($sBlockType == "R")
							$fBlockProgress = @round(getDbValue("COALESCE(SUM(weightage), '0')", "tbl_stages", "status='A' AND `type`='$sBlockType' AND id IN (SELECT DISTINCT(stage_id) FROM tbl_inspections WHERE school_id='$iSchool' AND block='$iBlock' AND status='P' AND stage_completed='Y')"), 2);						
						
						if ($sBlockType == "R")
							$iLastMilestone = $iLastStage;


						$sSQL = "UPDATE tbl_school_blocks SET progress          = '$fBlockProgress',
															  last_inspection   = NOW( ),
															  last_stage_id     = '$iLastStage',
															  last_milestone_id = '$iLastMilestone'
								 WHERE school_id='$iSchool' AND block='$iBlock'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
						
						
						$sSQL = "SELECT SUM(covered_area) AS _CoveredArea, SUM((progress / 100) * covered_area) AS _Weightage FROM tbl_school_blocks WHERE school_id='$iSchool'";
						$objDb->query($sSQL);

						$fCoveredArea = $objDb->getField(0, "_CoveredArea");
						$fWeightage   = $objDb->getField(0, "_Weightage");
						
						$fProgress    = @round(($fWeightage / $fCoveredArea) * 100);

	
						$sSQL = "UPDATE tbl_schools SET progress='$fProgress' WHERE id='$iSchool'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					}
					
					
					if ($sStageCompleted == "Y" && $iCurrentMilestone == $iLastMilestone && $iLastMilestone > 0)
					{
						$sSQL = "UPDATE tbl_inspections SET milestone_id='$iLastMilestone' WHERE id='$iInspection'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					}


					$aResponse['Status']  = "OK";
					$aResponse["Message"] = "Inspection Status saved successfully!";



					$sSQL = "SELECT site_title, general_name, general_email, date_format, time_format FROM tbl_settings WHERE id='1'";
					$objDb->query($sSQL);

					$sSiteTitle   = $objDb->getField(0, "site_title");
					$sSenderName  = $objDb->getField(0, "general_name");
					$sSenderEmail = $objDb->getField(0, "general_email");
					$sDateFormat  = $objDb->getField(0, "date_format");
					$sTimeFormat  = $objDb->getField(0, "time_format");


					$sSQL = "SELECT * FROM tbl_inspections WHERE id='$iInspection'";
					$objDb->query($sSQL);

					$sLatitude      = $objDb->getField(0, "latitude");
					$sLongitude     = $objDb->getField(0, "longitude");
					$sAddress       = $objDb->getField(0, "location");
					$sDateTime      = $objDb->getField(0, "created_at");
					$sTitle         = $objDb->getField(0, "title");
					$sDate          = $objDb->getField(0, "date");
					$sDetails       = $objDb->getField(0, "details");
					$sPicture       = $objDb->getField(0, "picture");
					$sDocument      = $objDb->getField(0, "file");
					$iBlock         = $objDb->getField(0, "block");
					$iCDCMember     = $objDb->getField(0, "cdc_member_id");
					$sCcsiMembers   = $objDb->getField(0, "ccsi_members");
					$sNotifyPersons = $objDb->getField(0, "notify_users");
					$sHseMeasure    = $objDb->getField(0, "hse_measures");
					$sConstructRecord = $objDb->getField(0, "record_keeping");
					$sDailyReport   = $objDb->getField(0, "daily_report");
					$sHouseKeeping  = $objDb->getField(0, "house_keeping");
					$sSiteStatus    = $objDb->getField(0, "site_status");
					$sSiteProgress  = $objDb->getField(0, "site_progress"); 
					$sDelayDuration = $objDb->getField(0, "delay_duration");
					$sInActiveDuration= $objDb->getField(0, "inactive_duration");

					$sInspectionId     = str_pad($iInspection, 5, '0', STR_PAD_LEFT); 
					$sMapLink          = "";
					$sDistance         = "N/A";
					$sInspectionStatus = "";

					if ($sStatus == "P")
						$sInspectionStatus = "<b style='color:#008000;'>Pass</b>";

					else if ($sStatus == "F")
					{
						$sInspectionStatus  = ("<b style='color:#ff0000;'>Fail</b> (".getDbValue("reason", "tbl_failure_reasons", "id='$iReason'").")<br />");
						$sInspectionStatus .= ("Re-Inspection (Date: ".formatDate($sReInspection, $sDateFormat).")");
					}

					else if ($sStatus == "R")
					{
						$sInspectionStatus  = ("<b style='color:#999900;'>Re-Inspection</b> (Date: ".formatDate($sReInspection, $sDateFormat).")<br />");
						$sInspectionStatus .= ("Re-Inspection Reason (".getDbValue("reason", "tbl_failure_reasons", "id='$iReason'").")");
					}


					if ($sLatitude != "" && $sLongitude != "")
					{
						$sMapLink = " (<a href='http://maps.google.com/maps?q={$sLatitude},{$sLongitude}&z=12' target='_blank'>Google Map</a>)";


						$sSQL = "SELECT latitude, longitude FROM tbl_schools WHERE id='$iSchool'";
						$objDb->query($sSQL);

						$sSchoolLatitude  = $objDb->getField(0, "latitude");
						$sSchoolLongitude = $objDb->getField(0, "longitude");

						if ($sSchoolLatitude != "" && $sSchoolLongitude != "")
							$sDistance = calculateDistance($sSchoolLatitude, $sSchoolLongitude, $sLatitude, $sLongitude);
					}

					
					$sProvince         = getDbValue("name", "tbl_provinces", "id='$iProvince'");
					$sDistrict         = getDbValue("name", "tbl_districts", "id='$iDistrict'");
					$sCompletionStages = getDbValue("GROUP_CONCAT(id SEPARATOR ',')", "tbl_stages", "status='A' AND `type`='$sBlockType' AND name='Demobilization'");
					$iCompletionStages = @explode(",", $sCompletionStages);					
					
					
					$sContractorName  = "";
					$sContractorEmail = "";
					$sContractSchools = "";
					
					$sSQL = "SELECT contractor_id, schools FROM tbl_contracts WHERE status='A' AND FIND_IN_SET('$iSchool', schools) ORDER BY id DESC LIMIT 1";
					$objDb->query($sSQL);
					
					if ($objDb->getCount( ) == 1)
					{
						$iContractor      = $objDb->getField(0, "contractor_id");
						$sContractSchools = $objDb->getField(0, "schools");
						
						
						$sSQL = "SELECT company, email FROM tbl_contractors WHERE id='$iContractor'";
						$objDb->query($sSQL);
						
						if ($objDb->getCount( ) == 1)
						{
							$sContractorName  = $objDb->getField(0, "company");
							$sContractorEmail = $objDb->getField(0, "email");
						}
					}
					

					$sObservations = "";
					
					$sSQL = "SELECT * FROM tbl_inspection_observations WHERE inspection_id='$iInspection'";
					$objDb->query($sSQL);

					$iCount = $objDb->getCount( );

					if ($iCount > 0){

						for ($i = 0; $i < $iCount; $i ++)
						{
							$sTitle         = $objDb->getField($i, "title");
							$sDescription   = $objDb->getField($i, "description");

							$sObservations .= (($i + 1).'-'.' '.$sTitle.' ('.$sDescription.')<br/>');
						}
					}
					
					else
						$sObservations = "N/A";

					
                                        // Inspection History
                                        $sInpectionHistory = "<table width='100%' cellspacing='0' cellpadding='5' bordercolor='#ffffff' border='1'><tr bgcolor='#ffffff'><td>#</td><td>History</td></tr>";
                                        $sInpectionHistory .= ("<tr><td>1</td><td> Created via App By {$sName} @".date('g:ia \o\n l jS F Y', strtotime($sInspectionTime))."</td></tr>");
                                        $sInpectionHistory .= "</table>";
                        
					// Audit Inspection Alert
					$sSQL = "SELECT subject, message, status FROM tbl_email_templates WHERE id='4'";
					$objDb->query($sSQL);

					$sSubject = $objDb->getField(0, "subject");
					$sBody    = $objDb->getField(0, "message");


					if ($objDb->getField(0, "status") == "A")
					{
						$sSubject = @str_replace("{SITE_TITLE}", $sSiteTitle, $sSubject);
						$sSubject = @str_replace("{INSPECTION_CODE}", $sInspectionId, $sSubject);
						
						if ($sStatus == "F")
							$sSubject = "Failed Inspection - {$sSubject}";
						
						else if ($sStatus == "P")
						{
							if ($sStageCompleted == "Y" && $iCurrentMilestone == $iLastMilestone && $iLastMilestone > 0)
								$sSubject = "{$sLastMilestone} Completed - {$sSubject}";
								
							else
								$sSubject = "Passed Inspection - {$sSubject}";
						}
						
						else if ($sStatus == "R")
							$sSubject = "Re-Inspection - {$sSubject}";
						
						
						$sInspectionUrl = ("<a href='".SITE_URL."inspection.html?id=".base64_encode($sInspectionId)."' target='_blank'>View Inspection Details Online</a>");
						

						$sBody = @str_replace("{INSPECTION_CODE}", $sInspectionId, $sBody);
						$sBody = @str_replace("{STAGE}", getDbValue("name", "tbl_stages", "id='$iStage'"), $sBody);
						$sBody = @str_replace("{SCHOOL}", "{$sSchool} ({$sBlockName})", $sBody);
						$sBody = @str_replace("{EMIS_CODE}", $sCode, $sBody);
						$sBody = @str_replace("{DISTRICT}", $sDistrict, $sBody);
						$sBody = @str_replace("{INSPECTION_USER}", $sName, $sBody);
						$sBody = @str_replace("{INSPECTION_TITLE}", $sTitle, $sBody);
						$sBody = @str_replace("{INSPECTION_DATE}", formatDate($sDate, $sDateFormat), $sBody);
						$sBody = @str_replace("{INSPECTION_DETAILS}", nl2br(htmlentities($sDetails)), $sBody);
						$sBody = @str_replace("{INSPECTION_STATUS}", (($sStatus == "F") ? "<b style='color:#ff0000;'>Failed</b>" : ""), $sBody);
						$sBody = @str_replace("{LOCATION}", (($sAddress == "") ? "N/A" : $sAddress), $sBody);
						$sBody = @str_replace("{MAP_LINK}", $sMapLink, $sBody);
						$sBody = @str_replace("{DISTANCE}", $sDistance, $sBody);
						$sBody = @str_replace("{CDC_MEMBER}", ($iCDCMember>0?getDBValue("name", "tbl_admins", "id='$iCDCMember'"):""), $sBody);
						$sBody = @str_replace("{CCSI_MEMBER}", ($sCcsiMembers != ""?getDBValue("GROUP_CONCAT(name SEPARATOR ',')", "tbl_admins", "id IN ($sCcsiMembers)"):"N/A"), $sBody);
						$sBody = @str_replace("{NOTIFY_TO}", ($sNotifyPersons != ""?getDBValue("GROUP_CONCAT(name SEPARATOR ',')", "tbl_admins", "id IN ($sNotifyPersons)"):"N/A"), $sBody);
						$sBody = @str_replace("{HSE_MEASURES}", ($sHseMeasure == "Y"?"Yes":"No"), $sBody);
						$sBody = @str_replace("{CONSTRUCT_RECORD}", ($sConstructRecord == "Y"?"Yes":"No"), $sBody);
						$sBody = @str_replace("{DAILY_REPORT_REVIEWED}", ($sDailyReport == "Y"?"Yes":"No"), $sBody);
						$sBody = @str_replace("{SITE_HOUSE_KEEPING}", ($sHouseKeeping == "Y"?"Yes":"No"), $sBody);
						$sBody = @str_replace("{SITE_STATUS}", ($sSiteStatus == "A"?"Active ".($sSiteProgress == 'O'?"(On track)":"(Delayed: {$sDelayDuration})"):"In-Active "."(Since: {$sInActiveDuration})"), $sBody);
						$sBody = @str_replace("{STATUS}", $sInspectionStatus, $sBody);
						$sBody = @str_replace("{STAGE_COMPLETED}", (($sStageCompleted == "Y") ? "Yes" : "No"), $sBody);
						$sBody = @str_replace("{MILESTONE_COMPLETED}", (($sStageCompleted == "Y" && $iCurrentMilestone == $iLastMilestone && $iLastMilestone > 0) ? "Yes" : "No"), $sBody);
						$sBody = @str_replace("{LAST_MILESTONE}", $sLastMilestone, $sBody);
						$sBody = @str_replace("{SITE_TITLE}", $sSiteTitle, $sBody);
						$sBody = @str_replace("{SITE_URL}", SITE_URL, $sBody);
                                                $sBody = @str_replace("{OBSERVATIONS}", $sObservations, $sBody);
						$sBody = @str_replace("{INSPECTION_URL}", $sInspectionUrl, $sBody);
                                                $sBody = @str_replace("{INSPECTION_HISTORY}", $sInpectionHistory, $sBody);


						$objEmail = new PHPMailer( );

						$objEmail->Subject = $sSubject;
						$objEmail->MsgHTML($sBody);
						$objEmail->SetFrom($sSenderEmail, $sSenderName);
						$objEmail->AddAddress($sEmail, $sName);
						
						if (@strpos($sEmail, "@3-tree.com") === FALSE)
						{
							$objEmail->AddAddress("omer@3-tree.com", "Omer Rauf");
							$objEmail->AddAddress("Isfundiar.Kasuri@humqadam.pk", "Isfundiar Kasuri");
							$objEmail->AddAddress("Imran.Shakir@humqadam.pk", "Imran Shakir");							
							
							if ($iProvince == 1)
								$objEmail->AddAddress("abid.ali@humqadam.pk", "Abid Ali");

							else if ($iProvince == 2)
							{
								$objEmail->AddAddress("Ismail.Ibrahim@humqadam.pk", "Ismail Ibrahim");
								$objEmail->AddAddress("Imran.Zaman@humqadam.pk", "Imran Zaman");
							}


							$sSeniorDistrictEngineersList         = getList("tbl_admins", "email", "name", "status='A' AND type_id='8' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts) AND (schools='' OR FIND_IN_SET('$iSchool', schools))");
							$sDistrictManagersList                = getList("tbl_admins", "email", "name", "status='A' AND type_id='7' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts) AND (schools='' OR FIND_IN_SET('$iSchool', schools))");
							$sProvincialConstructionEngineersList = getList("tbl_admins", "email", "name", "status='A' AND type_id='6' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts) AND (schools='' OR FIND_IN_SET('$iSchool', schools))");

							foreach($sSeniorDistrictEngineersList as $sUserEmail => $sUserName)
							{
								$objEmail->AddAddress($sUserEmail, $sUserName);
							}

							foreach($sDistrictManagersList as $sUserEmail => $sUserName)
							{
								$objEmail->AddAddress($sUserEmail, $sUserName);
							}

							foreach($sProvincialConstructionEngineersList as $sUserEmail => $sUserName)
							{
								$objEmail->AddAddress($sUserEmail, $sUserName);
							}
							
							
//							if ($sContractorEmail != "" && $sContractorName != "")
//								$objEmail->AddAddress($sContractorEmail, $sContractorName);
						}

/*
						if (@file_exists($sRootDir.INSPECTIONS_IMG_DIR.$sPicture))
							$objEmail->AddAttachment(($sRootDir.INSPECTIONS_IMG_DIR.$sPicture), $sPicture);

						if (@file_exists($sRootDir.INSPECTIONS_DOC_DIR.$sDocument))
							$objEmail->AddAttachment(($sRootDir.INSPECTIONS_DOC_DIR.$sDocument), $sDocument);
*/
						if (@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE)
							$objEmail->Send( );
					}
					

					// Block Completion
					if ($sStatus == "P" && $sStageCompleted == "Y" && @in_array($iStage, $iCompletionStages))
					{
						$sSQL = "UPDATE tbl_school_blocks SET completed='Y', progress='100' WHERE school_id='$iSchool' AND block='$iBlock'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					}

					
					// School Completion Alert
					if ($sStatus == "P" && $sStageCompleted == "Y" && @in_array($iStage, $iCompletionStages) && getDbValue("COUNT(1)", "tbl_school_blocks", "school_id='$iSchool' AND completed!='Y'") == 0)
					{
						$sSQL = "UPDATE tbl_schools SET completed='Y', progress='100' WHERE id='$iSchool'";
						$objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
						
						
						$sManager  = getDbValue("GROUP_CONCAT(name SEPARATOR ', ')", "tbl_admins", "status='A' AND type_id='7' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts) AND FIND_IN_SET('$iSchool', schools)");
						$sEngineer = getDbValue("GROUP_CONCAT(name SEPARATOR ', ')", "tbl_admins", "status='A' AND type_id='9' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts) AND FIND_IN_SET('$iSchool', schools)");
						
						if ($sManager == "")
							$sManager = getDbValue("GROUP_CONCAT(name SEPARATOR ', ')", "tbl_admins", "status='A' AND type_id='7' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts)");
						
						if ($sEngineer == "")
							$sEngineer = getDbValue("GROUP_CONCAT(name SEPARATOR ', ')", "tbl_admins", "status='A' AND type_id='9' AND FIND_IN_SET('$iProvince', provinces) AND FIND_IN_SET('$iDistrict', districts)");
						
						
						$iContractorTotal     = 0;
						$iContractorCompleted = 0;
						
						if ($sContractSchools != "")
						{
							$iContractorTotal     = getDbValue("COUNT(1)", "tbl_schools", "status='A' AND dropped!='Y' AND FIND_IN_SET(id, '$sContractSchools')");
							$iContractorCompleted = getDbValue("COUNT(DISTINCT(school_id))", "tbl_inspections", "FIND_IN_SET(stage_id, '$sCompletionStages') AND status='P' AND stage_completed='Y' AND FIND_IN_SET(school_id, '$sContractSchools')");
						}
						

							
						$sSQL = "SELECT subject, message, status FROM tbl_email_templates WHERE id='7'";
						$objDb->query($sSQL);

						$sSubject = $objDb->getField(0, "subject");
						$sBody    = $objDb->getField(0, "message");


						if ($objDb->getField(0, "status") == "A")
						{
							$sSubject = @str_replace("{SITE_TITLE}", $sSiteTitle, $sSubject);
							$sSubject = @str_replace("{INSPECTION_CODE}", $sInspectionId, $sSubject);
							$sSubject = @str_replace("{SCHOOL}", $sSchool, $sSubject);
							$sSubject = @str_replace("{EMIS_CODE}", $sCode, $sSubject);
							$sSubject = @str_replace("{DISTRICT}", $sDistrict, $sSubject);
							$sSubject = @str_replace("{PROVINCE}", $sProvince, $sSubject);
							
							$sBody = @str_replace("{INSPECTION_CODE}", $sInspectionId, $sBody);
							$sBody = @str_replace("{STAGE}", getDbValue("name", "tbl_stages", "id='$iStage'"), $sBody);
							$sBody = @str_replace("{SCHOOL}", $sSchool, $sBody);
							$sBody = @str_replace("{EMIS_CODE}", $sCode, $sBody);
							$sBody = @str_replace("{WORK_TYPE}", (($sWorkType == "N") ? "New Construction" : (($sWorkType == "R") ? "Rehabilitation Only" : "New Construction & Rehabilitation")), $sBody);							
							$sBody = @str_replace("{DISTRICT}", $sDistrict, $sBody);
							$sBody = @str_replace("{PROVINCE}", $sProvince, $sBody);
							$sBody = @str_replace("{INSPECTION_USER}", $sName, $sBody);
							$sBody = @str_replace("{INSPECTION_TITLE}", $sTitle, $sBody);
							$sBody = @str_replace("{INSPECTION_DATE}", formatDate($sDate, $sDateFormat), $sBody);
							$sBody = @str_replace("{INSPECTION_DETAILS}", $sDetails, $sBody);
							$sBody = @str_replace("{INSPECTION_STATUS}", (($sStatus == "F") ? "<b style='color:#ff0000;'>Failed</b>" : ""), $sBody);
							$sBody = @str_replace("{LOCATION}", (($sAddress == "") ? "N/A" : $sAddress), $sBody);
							$sBody = @str_replace("{MAP_LINK}", $sMapLink, $sBody);
							$sBody = @str_replace("{DISTANCE}", $sDistance, $sBody);
							$sBody = @str_replace("{STATUS}", $sInspectionStatus, $sBody);
							$sBody = @str_replace("{MANAGER}", $sManager, $sBody);
							$sBody = @str_replace("{ENGINEER}", $sEngineer, $sBody);
							$sBody = @str_replace("{BLOCKS}", $iBlocks, $sBody);
							$sBody = @str_replace("{NO_OF_INSPECTIONS}", getDbValue("COUNT(1)", "tbl_inspections", "school_id='$iSchool'"), $sBody);
							$sBody = @str_replace("{CONTRACTOR_COMPLETED}", $iContractorCompleted, $sBody);
							$sBody = @str_replace("{CONTRACTOR_TOTAL}", $iContractorTotal, $sBody);
							$sBody = @str_replace("{CONTRACTOR}", $sContractorName, $sBody);
							$sBody = @str_replace("{SITE_TITLE}", $sSiteTitle, $sBody);
							$sBody = @str_replace("{SITE_URL}", SITE_URL, $sBody);


							$objEmail = new PHPMailer( );

							$objEmail->Subject = $sSubject;
							$objEmail->MsgHTML($sBody);
							$objEmail->SetFrom($sSenderEmail, $sSenderName);
							
							if (@strpos($sEmail, "@3-tree.com") === FALSE)
							{
								$objEmail->AddAddress("omer@3-tree.com", "Omer Rauf");
								$objEmail->AddAddress("Isfundiar.Kasuri@humqadam.pk", "Isfundiar Kasuri");
								$objEmail->AddAddress("Imran.Shakir@humqadam.pk", "Imran Shakir");
								$objEmail->AddAddress("Ismail.Ibrahim@humqadam.pk", "Ismail Ibrahim");
								
								if ($iProvince == 1)
									$objEmail->AddAddress("abid.ali@humqadam.pk", "Abid Ali");
/*
								if ($sContractorEmail != "" && $sContractorName != "")
									$objEmail->AddAddress($sContractorEmail, $sContractorName);
*/
							}
							
							else
								$objEmail->AddAddress($sEmail, $sName);

/*
							if (@file_exists($sRootDir.INSPECTIONS_IMG_DIR.$sPicture))
								$objEmail->AddAttachment(($sRootDir.INSPECTIONS_IMG_DIR.$sPicture), $sPicture);

							if (@file_exists($sRootDir.INSPECTIONS_DOC_DIR.$sDocument))
								$objEmail->AddAttachment(($sRootDir.INSPECTIONS_DOC_DIR.$sDocument), $sDocument);
*/
							if (@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE)
								$objEmail->Send( );
						}
					}
				}

				else
				{
					$aResponse["Message"] = "An ERROR occured, please try again.";
				}
			}
		}
	}

	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>