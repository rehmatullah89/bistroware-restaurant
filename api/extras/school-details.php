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


	$sCode = IO::strValue("Code");


	$aResponse           = array( );
	$aResponse['Status'] = "ERROR";


	if ($sCode == "")
		$aResponse["Message"] = "Invalid School Request";

	else
	{
		$sSQL = "SELECT name, COALESCE(video_url, '') AS _VideoUrl,
		                (SELECT SUM(class_rooms) FROM tbl_school_blocks WHERE school_id=tbl_schools.id AND work_type='N') AS _NewClasses,
						(SELECT SUM((student_toilets + staff_toilets)) FROM tbl_school_blocks WHERE school_id=tbl_schools.id AND work_type='N') AS _NewToilets,
						(SELECT SUM(class_rooms) FROM tbl_school_blocks WHERE school_id=tbl_schools.id AND work_type='R') AS _RehabClasses
				 FROM tbl_schools
				 WHERE status='A' AND code='$sCode'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) == 1)
		{
			$sSchool       = $objDb->getField(0, "name");
			$sVideoUrl     = $objDb->getField(0, "_VideoUrl");
			$iNewClasses   = (int)$objDb->getField(0, "_NewClasses");
			$iRehabClasses = (int)$objDb->getField(0, "_RehabClasses");
			$iNewToilets   = (int)$objDb->getField(0, "_NewToilets");
			

			$aResponse['Status']           = "OK";
			$aResponse['Name']             = $sSchool;										
			$aResponse['NewClasses']       = $iNewClasses;
			$aResponse['RehabClasses']     = $iRehabClasses;
			$aResponse['NewToilets']       = $iNewToilets;
			$aResponse['ChildrenImpacted'] = ($iNewClasses * 40);
			$aResponse['VideoURL']         = $sVideoUrl;
		}

		else
			$aResponse["Message"] = "Invalid EMIS Code, no School Found!";
	}

	
	$sData = @json_encode($aResponse);
	
	if (IO::strValue("callback") == "")
		@header('content-type: application/json; charset=utf-8');
	
	else
		@header('content-type: application/javascript; charset=utf-8');

	
	print ((IO::strValue("callback") != "") ? (IO::strValue("callback")."($sData)") : $sData);


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>