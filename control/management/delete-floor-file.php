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

	if ($sUserRights["Edit"] != "Y")
		exitPopup(true);


	$iFloorId = IO::intValue("FloorId");
	$iFileId  = IO::intValue("FileId");


	$sSQL = "SELECT file FROM tbl_floor_files WHERE id='$iFileId' AND floor_id='$iFloorId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) == 1)
	{
		$sFile = $objDb->getField(0, "file");


		$sSQL = "DELETE FROM tbl_floor_files WHERE id='$iFileId'";

		if ($objDb->execute($sSQL) == true)
		{
			@unlink($sRootDir.FLOORS_IMG_DIR.$sFile);
			redirect($_SERVER['HTTP_REFERER'], "FLOOR_FILE_DELETED");
		}
	}

	redirect($_SERVER['HTTP_REFERER'], "DB_ERROR");


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>