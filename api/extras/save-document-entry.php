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
	$iType      = IO::intValue("Type");
	$sDate      = IO::strValue("Date");
	$sComments  = @utf8_encode(IO::strValue("Comments"));
	$sEntryCode = IO::strValue("EntryCode");

	
	logApiCall($_POST);
	
	
	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $iSchool == 0 || $iType == 0 || $sDate == "" || $sEntryCode == "")
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



			$sSQL = "SELECT district_id, province_id FROM tbl_schools WHERE id='$iSchool'";
			$objDb->query($sSQL);

			$iDistrict   = $objDb->getField(0, "district_id");
			$iProvince   = $objDb->getField(0, "province_id");	


			if ($objDb->getCount( ) == 0)
				$aResponse["Message"] = "Invalid Request, no School Found!";

			else if ( ($sSchools != "" && !@in_array($iSchool, $iSchools)) || ($sSchools == "" && (!@in_array($iProvince, $iProvinces) || !@in_array($iDistrict, $iDistricts))) )
				$aResponse["Message"] = "Request denied, You don't have permissions for requested School!";

			else
			{
				$sBlockType = getDbValue("district_id", "tbl_schools", "id='$iSchool'");
				$sEntryCode = str_replace("DOC", "", $sEntryCode);
				$sEntryTime = date("Y-m-d H:i:s", ($sEntryCode / 1000));
				

				if (getDbValue("COUNT(1)", "tbl_documents", "school_id='$iSchool' AND created_by='$iUser' AND created_at='$sEntryTime'") > 0)
				{
					$aResponse["Status"]  = "OK";
					$aResponse["Message"] = "Already Saved.";
				}

				else
				{
					$bFlag = $objDb->execute("BEGIN", true, $iUser, $sName, $sEmail);
					
					
					$iDocument = getNextId("tbl_documents");
					
					$sSQL = "INSERT INTO tbl_documents SET id          = '$iDocument',
														   district_id = '$iDistrict',
														   school_id   = '$iSchool',
														   type_id     = '$iType',
														   `date`      = '$sDate',
														   comments    = '$sComments',
														   created_by  = '$iUser',
														   created_at  = '$sEntryTime',
														   modified_by = '$iUser',
														   modified_at = '$sEntryTime'";
					$bFlag = $objDb->execute($sSQL, true, $iUser, $sName, $sEmail);
					
					if ($bFlag == true)
					{
						$objDb->execute("COMMIT", true, $iUser, $sName, $sEmail);
						
						
						$aResponse["Status"]  = "OK";
						$aResponse["Message"] = "Document Entry saved successfully!";
					}

					else
					{
						$aResponse["Message"] = "An ERROR occured, please try again.";
						
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