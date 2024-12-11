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


	$sUser     = IO::strValue("User");
	$iSchool   = IO::intValue("School");
	$iSection  = IO::intValue("Section");
	$sDateTime = IO::strValue("DateTime");


	logApiCall($_POST);
	

	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $iSection == 0 || $sDateTime == "")
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



			$sSQL = "SELECT code, district_id, province_id FROM tbl_schools WHERE id='$iSchool'";
			$objDb->query($sSQL);

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
					if (getDbValue("status", "tbl_sor_details", "sor_id='$iSorId' AND section_id='$iSection'") == "C" && ($iSection == 3 && IO::intValue("Index") == 0))
					{
						$aResponse["Status"]  = "OK";
						$aResponse["Message"] = "SOR Section # {$iSection} already saved!";
					}
					
					else
					{
						$sDocuments = array( );
						
						
						$bFlag = $objDb->execute("BEGIN", true, $iUser, $sName, $sEmail);

						if ($iSection == 1)
						{
							$sAttendance      = IO::strValue("Attendance");
							$sBlocks          = IO::strValue("Blocks");
							$sGrades          = IO::strValue("Grades");
							$sClassrooms      = IO::strValue("Classrooms");
							$sNormalToilets   = IO::strValue("NormalToilets");
							$sDisableToilets  = IO::strValue("DisableToilets");
							$sToiletRamps     = IO::strValue("ToiletRamps");
							$sClassroomRamps  = IO::strValue("ClassroomRamps");
							$sScienceLab      = IO::strValue("ScienceLab");
							$sItLab           = IO::strValue("ItLab");
							$sLibrary         = IO::strValue("Library");
							$sExamHall        = IO::strValue("ExamHall");
							$sPrincipalOffice = IO::strValue("PrincipalOffice");
							$sClerkOffice     = IO::strValue("ClerkOffice");
							$sStaffRoom       = IO::strValue("StaffRoom");
							$sChowkidarHut    = IO::strValue("ChowkidarHut");
							$sCycleStand      = IO::strValue("CycleStand");
							$sInfoCorrect     = IO::strValue("InfoCorrect");
							$sDesignCorrect   = IO::strValue("DesignCorrect");
							$sComments        = IO::strValue("Comments");
					
							
							$sSQL = "INSERT INTO tbl_sor_section_a SET sor_id           = '$iSorId',
																	   attendance       = '$sAttendance',
																	   blocks           = '$sBlocks',
																	   grades           = '$sGrades',
																	   class_rooms      = '$sClassrooms',
																	   normal_toilets   = '$sNormalToilets',
																	   disable_toilets  = '$sDisableToilets',
																	   toilet_ramps     = '$sToiletRamps',
																	   classroom_ramps  = '$sClassroomRamps',
																	   science_lab      = '$sScienceLab',
																	   it_lab           = '$sItLab',
																	   library          = '$sLibrary',
																	   exam_hall        = '$sExamHall',
																	   principal_office = '$sPrincipalOffice',
																	   clerk_office     = '$sClerkOffice',
																	   staff_room       = '$sStaffRoom',
																	   chowkidar_hut    = '$sChowkidarHut',
																	   cycle_stand      = '$sCycleStand',
																	   info_correct     = '$sInfoCorrect',
																	   design_correct   = '$sDesignCorrect',
																	   comments         = '$sComments'";
							$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
							
							
							$sSorDocuments = @glob($sRootDir.TEMP_DIR."SOR{$sCode}-SectionA-*.*");
						}

						
						else if ($iSection == 2)
						{
							$sData            = IO::strValue("Data");
							$sOverallComments = IO::strValue("OverallComments");
							
							
							$sSQL = "INSERT INTO tbl_sor_section_b SET sor_id   = '$iSorId',
																	   comments = '$sOverallComments'";
							$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);


							if ($bFlag == true)
							{
								$sData  = stripslashes($sData);
								$sData  = @json_decode($sData, true);
								$iIndex = 0;
	
								foreach ($sData as $sFields)
								{
									$iFacility       = intval($sFields['Facility']);
									$iNumbers        = intval($sFields['Numbers']);
									$sSpaceAvailable = addslashes(trim($sFields['SpaceAvailable']));
									$sComments       = addslashes(trim($sFields['Comments']));


									$sSQL = "INSERT INTO tbl_sor_section_b_details SET id              = '$iIndex',
																					   sor_id          = '$iSorId',
																					   facility_id     = '$iFacility',
																					   numbers         = '$iNumbers',
																					   space_available = '$sSpaceAvailable',
																					   comments        = '$sComments'";
									$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);							
									
									if ($bFlag == false)
										break;
								
									$iIndex ++;
								}
							}
							
							
							$sSorDocuments = @glob($sRootDir.TEMP_DIR."SOR{$sCode}-SectionB-*.*");
						}

						
						else if ($iSection == 3)
						{
							$iBlock    = IO::intValue("Index");
							$sBlock    = IO::strValue("Block");
							$sData     = IO::strValue("Data");							
							$sComments = IO::strValue("Comments");
							
							
							if ($iBlock > 0 && $sBlock != "")
							{
								if (getDbValue("COUNT(1)", "tbl_sor_section_c_blocks", "id='$iBlock' AND sor_id='$iSorId'") == 1)
								{
									$aResponse["Status"]  = "OK";
									$aResponse["Message"] = "SOR Section # {$iSection} - Block # {$iBlock} already saved!";									
								}
								
								else
								{
									$sSQL = "INSERT INTO tbl_sor_section_c_blocks SET id     = '$iBlock',
																			          sor_id = '$iSorId',
																					  name   = '$sBlock'";
									$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);

									if ($bFlag == true)
									{
										$sData  = stripslashes($sData);
										$sData  = @json_decode($sData, true);
										$iIndex = 1;
								
										foreach ($sData as $sFields)
										{
											$iFacility = intval($sFields['Facility']);
											$iExisting = intval($sFields['Existing']);
											$iRehab    = intval($sFields['Rehab']);
											$sComments = addslashes(trim($sFields['Comments']));


											$sSQL = "INSERT INTO tbl_sor_section_c_details SET id            = '$iIndex',
																							   sor_id        = '$iSorId',
																							   block_id      = '$iBlock',
																							   facility_id   = '$iFacility',
																							   numbers       = '$iExisting',
																							   require_rehab = '$iRehab',
																							   comments      = '$sComments'";
											$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);							
											
											if ($bFlag == false)
												break;
										
											$iIndex ++;
										}
									}
								}
							}
							
							else
							{							
								$sSQL = "INSERT INTO tbl_sor_section_c SET sor_id   = '$iSorId',
																		   comments = '$sComments'";
								$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
							}
							
							
							$sSorDocuments = @glob($sRootDir.TEMP_DIR."SOR{$sCode}-SectionC-*.*");
						}

						
						else if ($iSection == 4)
						{
							$sHeight         = IO::strValue("Height");
							$sHeightComments = IO::strValue("HeightComments");
							$sComments       = IO::strValue("Comments");
							
							
							$sSQL = "INSERT INTO tbl_sor_section_d SET sor_id       = '$iSorId',
																	   floor_height = '$sHeight',
																	   other        = '$sHeightComments',
																	   comments     = '$sComments'";
							$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
							
							
							$sSorDocuments = @glob($sRootDir.TEMP_DIR."SOR{$sCode}-SectionD-*.*");
						}
						
						
						if ($bFlag == true)
						{						
							foreach ($sSorDocuments as $sDocument)
							{
								$sDocument    = @basename($sDocument);
								$sSorDocument = str_replace("SOR{$sCode}-", "{$iSorId}-", $sDocument);
								
								if (@copy(($sRootDir.TEMP_DIR.$sDocument), ($sRootDir.SORS_DOC_DIR.$sSorDocument)) == true && getDbValue("COUNT(1)", "tbl_sor_documents", "sor_id='$iSorId' AND section_id='$iSection' AND document='$sSorDocument'") == 0)
								{
									$iDocument = getNextId("tbl_sor_documents");
									
									
									$sSQL  = "INSERT INTO tbl_sor_documents SET id         = '$iDocument',
																				sor_id     = '$iSorId',
																				section_id = '$iSection',
																				document   = '$sSorDocument'";
									$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);											

									if ($bFlag == false)
										break;

									
									$sDocuments[] = $sDocument;
								}
							}
						}								

						

						if ($bFlag == true)
						{
							$sSQL = "UPDATE tbl_sor_details SET status      = 'C',
															    modified_by = '$iUser',
															    modified_at = '$sDateTime'
									 WHERE sor_id='$iSorId' AND section_id='$iSection'";
							$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
						}

						
						if ($bFlag == true)
						{
							$objDb->execute("COMMIT", true, $iUser, $sName, $sEmail);
							
							$aResponse["Status"]  = "OK";
							$aResponse["Message"] = "SOR Section # {$iSection} saved successfully!";
							
							
							foreach ($sDocuments as $sDocument)							
							{
								@unlink($sRootDir.TEMP_DIR.$sDocument);
							}
						}

						else
						{
							$aResponse["Message"] = mysql_error(); //"An ERROR occured, please try again.";					

							$objDb->execute("ROLLBACK", true, $iUser, $sName, $sEmail);
						}
					}
				}
				
				else
					$aResponse["Message"] = "No SOR Entry Found";
			}
		}
	}

	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>