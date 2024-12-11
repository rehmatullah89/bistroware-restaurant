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


	$iAuditId   = IO::intValue("AuditId");
	$iFileId    = IO::intValue("FileId");


	$sSQL = "SELECT picture FROM tbl_audit_images WHERE id='$iFileId' AND audit_id='$iAuditId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) == 1)
	{
		$sFile = $objDb->getField(0, "picture");


		$sSQL = "DELETE FROM tbl_audit_images WHERE id='$iFileId'";

		if ($objDb->execute($sSQL) == true)
		{
			@unlink($sRootDir.AUDIT_IMG_DIR.$sFile);
			redirect($_SERVER['HTTP_REFERER'], "AUDIT_FILE_DELETED");
		}
	}


	redirect($_SERVER['HTTP_REFERER'], "DB_ERROR");


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>