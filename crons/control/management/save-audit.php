<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bstroware.com                                                                 **
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
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Developer:                                                                       **
	**                                                                                           **
	**      Name  :  Rehmatullah Bhatti                                                          **
	**      Email :  rehmatullahbhatti@gmail.com                                                 **
	**      Phone :  +92 344 404 3675                                                            **
	**      URL   :  http://www.rehmatullahbhatti.com                                            **
	***********************************************************************************************
	\*********************************************************************************************/

	$_SESSION["Flag"] = "";

	$iStore     = IO::intValue("ddStores");
	$sComments  = IO::strValue("txtComments");
	$sStatus    = IO::strValue("ddStatus");
        $iTotalRows = IO::intValue("CountRows");
	
	$bError     = true;


        if ($iStore == 0 || $sComments == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

                $iAudit  = getNextId("tbl_audits");
                
		$sSQL = "INSERT INTO tbl_audits SET  id                 = '$iAudit',
                                                    store_id            = '$iStore',
                                                    comments            = '$sComments',       
                                                    status              = '$sStatus',
                                                    created_by          = '{$_SESSION['AdminId']}',
                                                    created_at          = NOW( ),
                                                    modified_by         = '{$_SESSION['AdminId']}',
                                                    modified_at         = NOW( )";
		$bFlag = $objDb->execute($sSQL);


		if ($bFlag == true)
		{
                    $iQuestions     = IO::getArray("ddQuestions");
                    $iInspecStatuses= IO::getArray("ddInspecStatus");
                    $iInspecComments= IO::getArray("txtInspecComments");
                    
                    foreach($iQuestions as $iKey => $iQuestion)
                    {
                        $iInspecStatus = trim($iInspecStatuses[$iKey]);
                        $iInspecComment= trim($iInspecComments[$iKey]);
                       
                        if($iQuestion != "" && $iInspecStatus != "" && $iInspecComment != "")
                        {
                            $iDetailId  = getNextId("tbl_audit_details");
                            
                            $sSQL = "INSERT INTO tbl_audit_details SET  id          = '$iDetailId',
                                                                        audit_id    = '$iAudit',
                                                                        question_id = '$iQuestion',    
                                                                        status      = '$iInspecStatus',
                                                                        comments    = '$iInspecComment'";
                            
                            $bFlag = $objDb->execute($sSQL);
                            
                            if($bFlag ==  true)
                            {
                                foreach($_FILES["fileAttachments{$iKey}"]['name'] as $iFile => $sFileName)
                                {        
                                    if ($sFileName != "")
                                    {

                                            $exts = explode('.', $sFileName);
                                            $extension = end($exts);

                                            if(in_array(strtolower($extension), array('jpg','jpeg','tiff','gif','bmp','png','pdf', 'doc', 'docx', 'xls', 'xlsx')))
                                            {
                                                $sPicture = ($iAudit."-".$iDetailId.'-'.rand(5, 50).'.'.$extension);

                                                if (@move_uploaded_file($_FILES["fileAttachments{$iKey}"]['tmp_name'][$iFile], ($sRootDir.AUDIT_IMG_DIR.$sPicture)))
                                                {

                                                        $iAuditFile = getNextId("tbl_audit_files");

                                                        $sSQL  = "INSERT INTO tbl_audit_files SET id            = '$iAuditFile',
                                                                                                audit_id        = '$iAudit',
                                                                                                audit_detail_id = '$iDetailId',
                                                                                                file_name       = '$sPicture'";
                                                        $bFlag = $objDb->execute($sSQL);
                                                }
                                            }
                                    }

                                }
                                
                            }
                            else
                                break;
                        }                        
                    }
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("audits.php", "AUDIT_ADDED");
		}
                else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";                        
		}
	}

?>