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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );

	if ($sUserRights["Delete"] != "Y")
	{
		print "info|-|You don't have enough Rights to perform the requested operation.";

		exit( );
	}


        $sDocuments =  array();
	$sAudits    = IO::strValue("Audits");

	if ($sAudits != "")
	{
		$iAudits = @explode(",", $sAudits);
		
		$objDb->execute("BEGIN");

		for ($i = 0; $i < count($iAudits); $i ++)
		{
                        $sFiles  = getList("tbl_audit_files", "file_name", "id", "audit_id='{$iAudits[$i]}'");
						
			foreach ($sFiles as $iFile => $sFile)
				$sDocuments[] = $sFile;


			$sSQL  = "DELETE FROM tbl_audits WHERE id='{$iAudits[$i]}'";
			$bFlag = $objDb->execute($sSQL);

			if ($bFlag == true)
			{
				$sSQL  = "DELETE FROM tbl_audit_details WHERE audit_id='{$iAudits[$i]}'";
				$bFlag = $objDb->execute($sSQL);
			}
                        
                        if ($bFlag == true)
			{
				$sSQL  = "DELETE FROM tbl_audit_files WHERE audit_id='{$iAudits[$i]}'";
				$bFlag = $objDb->execute($sSQL);
			}
			
			if ($bFlag == false)
				break;
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");

			if (count($iAudits) > 1)
				print "success|-|The selected Audit Records have been Deleted successfully.";

			else
				print "success|-|The selected Audit Record has been Deleted successfully.";

			for ($i = 0; $i < count($sDocuments); $i ++)
				@unlink($sRootDir.AUDIT_IMG_DIR.$sDocuments[$i]);
		}

		else
		{
			print "error|-|An error occured while processing your request, please try again.";

			$objDb->execute("ROLLBACK");
		}
	}

	else
		print "info|-|Inavlid Audit Record Delete request.";


	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>