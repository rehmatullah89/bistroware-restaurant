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

	$_SESSION["Flag"] = "";


	$iStore     = IO::intValue("ddStores");
	$sComments  = IO::strValue("txtComments");
	$sStatus    = IO::strValue("ddStatus");
        $iTotalRows = IO::intValue("CountRows");
      
	if ($iStore == 0 || $sComments == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_audits SET      store_id            = '$iStore',
                                                    comments            = '$sComments',       
                                                    status              = '$sStatus',
                                                    modified_by         = '{$_SESSION['AdminId']}',
                                                    modified_at         = NOW( )
                                                    WHERE id            = '$iAuditId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
                    $sAllDetailIds  = ""; 
                    $iDetailsIds    = IO::getArray("DetailsId");
                    $iQuestions     = IO::getArray("ddQuestions");
                    $iInspecStatuses= IO::getArray("ddInspecStatus");
                    $iInspecComments= IO::getArray("txtInspecComments");
                    
                    foreach($iDetailsIds as $iKey => $iDetailId)
                    {
                        $iQuestion     = trim($iQuestions[$iKey]);
                        $iInspecStatus = trim($iInspecStatuses[$iKey]);
                        $iInspecComment= trim($iInspecComments[$iKey]);
                       
                        if($iQuestion != "" && $iInspecStatus != "" && $iInspecComment != "")
                        {
                            
                            if($iDetailId != 0)
                            {
                                $sAllDetailIds .= ($iDetailId.",");
                                
                                 $sSQL = "UPDATE tbl_audit_details SET  question_id = '$iQuestion',    
                                                                        status      = '$iInspecStatus',
                                                                        comments    = '$iInspecComment'
                                         WHERE id = '$iDetailId'";
                                
                            }
                            else
                            {
                                $iDetailId  = getNextId("tbl_audit_details");        
                                
                                $sAllDetailIds .= ($iDetailId.",");
                                
                                $sSQL = "INSERT INTO tbl_audit_details SET  id          = '$iDetailId',
                                                                            audit_id    = '$iAuditId',
                                                                            question_id = '$iQuestion',    
                                                                            status      = '$iInspecStatus',
                                                                            comments    = '$iInspecComment'";
                            }
                            
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
                                                $sPicture = ($iAuditId."-".$iDetailId.'-'.rand(5, 50).'.'.$extension);

                                                if (@move_uploaded_file($_FILES["fileAttachments{$iKey}"]['tmp_name'][$iFile], ($sRootDir.AUDIT_IMG_DIR.$sPicture)))
                                                {

                                                        $iAuditFile = getNextId("tbl_audit_files");

                                                        $sSQL  = "INSERT INTO tbl_audit_files SET id            = '$iAuditFile',
                                                                                                audit_id        = '$iAuditId',
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
                    
                    $sAllDetailIds = rtrim($sAllDetailIds, ",");
		}
                
                if ($bFlag == true && $sAllDetailIds != "")
                {                    
                    $sSQL  = "DELETE FROM  tbl_audit_details WHERE id NOT IN ($sAllDetailIds)";
                    $bFlag = $objDb->execute($sSQL);
                }

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_audits
					 WHERE id='$iAuditId'";
			$objDb->query($sSQL);

			$sCreatedAt  = $objDb->getField(0, "created_at");
			$sCreatedBy  = $objDb->getField(0, "_CreatedBy");
			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");

                        switch ($sStatus)
			{
				case "P" : $sStatus = "Pending"; break;
				case "R" : $sStatus = "Resolved"; break;
				default  : $sStatus = "N/A"; break;
			}
                        
			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sStoresList[$iStore]) ?>";
		sFields[1] = "<?=  $sComments ?>";
                sFields[2] = "<?=  date("Y-m-d", strtotime($sCreatedAt)) ?>";
		sFields[3] = "<?= @htmlentities($sStatus) ?>";
		sFields[4] = '<img class="icon details" id="<?= $iAuditId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnEdit" id="<?= $iAuditId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnDelete" id="<?= $iAuditId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[4] = (sFields[4] + '<img class="icnView" id="<?= $iAuditId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iAuditId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Audit has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");

			$_SESSION["Flag"] = "DB_ERROR";

			
			for ($i = 0; $i < count($sFiles); $i ++)
			{
				@unlink($sRootDir.AUDIT_IMG_DIR.$sFiles[$i]);
				@unlink($sRootDir.AUDIT_IMG_DIR.$sFiles[$i]);
			}
		}
	}
?>