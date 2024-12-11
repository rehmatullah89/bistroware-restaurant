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


	$aResponse           = array( );
	$aResponse["Status"] = "ERROR";
	$sSchoolsList        = array( );


	$sSQL = "SELECT name, code, latitude, longitude FROM tbl_schools WHERE status='A' AND completed='Y' ORDER BY name, code";
	
	if ($objDb->query($sSQL) == true)
	{
		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$sCode      = $objDb->getField($i, "code");
			$sSchool    = $objDb->getField($i, "name");
			$sLatitude  = $objDb->getField($i, "latitude");
			$sLongitude = $objDb->getField($i, "longitude");


			$sSchoolsList[] = array("Code"      => $sCode,
									"Name"      => $sSchool,
									"Latitude"  => $sLatitude,
									"Longitude" => $sLongitude);
		}
		

		$aResponse['Status']  = "OK";
		$aResponse['Schools'] = $sSchoolsList;
	}

	else
		$aResponse["Message"] = "Database Connectivity Error";


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