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
	$sDocument  = IO::strValue("Document");
	$sEntryCode = IO::strValue("EntryCode");

	
	logApiCall($_POST);
	

	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sUser == "" || $sEntryCode == "" || $sDocument == "")
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


			$sEntryCode = str_replace("DOC", "", $sEntryCode);
			$sEntryTime = date("Y-m-d H:i:s", ($sEntryCode / 1000));
			$iDocEntry  = getDbValue("id", "tbl_documents", "created_by='$iUser' AND created_at='$sEntryTime'");


			if ($iDocEntry == 0 || getDbValue("COUNT(1)", "tbl_documents", "id='$iDocEntry'") == 0)
				$aResponse["Message"] = "Invalid request, no Document Record Found!";

			else
			{
				$iFile = getNextId("tbl_document_files");

				if ($sDocument != "" && @copy(($sRootDir.TEMP_DIR.$sDocument), ($sRootDir.DOCUMENTS_DIR."{$iDocEntry}-{$iFile}-{$sDocument}")))
				{
					$sFile = "{$iDocEntry}-{$iFile}-{$sDocument}";


					$sSQL = "INSERT INTO tbl_document_files SET id          = '$iFile',
															    document_id = '$iDocEntry',
															    file        = '$sFile',
																admin_id    = '$iUser',
																date_time   = NOW( )";

					if ($objDb->execute($sSQL, true, $iUser, $sName, $sEmail) == true)
					{
						$aResponse['Status']  = "OK";
						$aResponse["Message"] = "Document saved successfully!";
					}

					else
						$aResponse["Message"] = "An ERROR occured, please try again.";



					if (@file_exists($sRootDir.TEMP_DIR.$sDocument))
						@unlink($sRootDir.TEMP_DIR.$sDocument);
				}

				else
					$aResponse["Message"] = "Unable to copy the File.";
			}
		}
	}

	print @json_encode($aResponse);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>