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


	$sFloor     = IO::strValue("txtFloor");
        $fWidth     = IO::floatValue("txtFloorWidth");
        $fLength    = IO::floatValue("txtFloorLength");
        $iStore     = IO::intValue("ddStore");
       	$sStatus    = IO::strValue("ddStatus");
        $iFiles     = IO::intValue("Files_count");
	$sFiles     = array( );
        $sPicture   = "";
	$bError     = true;
        
      
	if ($sFloor == "" || $iStore == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iFloor = getDbValue("id", "tbl_floors", "name LIKE '$sFloor' store_id = '$iStore' AND id != '$iFloorId'");
		
		if ($iFloor > 0)
			$_SESSION["Flag"] = "FLOOR_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_floors SET  name        = '$sFloor',
                                                width       = '$fWidth',
                                                length      = '$fLength',
                                                store_id    = '$iStore',    
                                                status      = '$sStatus',
                                                modified_by = '{$_SESSION['AdminId']}',
                                                modified_at = NOW( )
                                                WHERE id='$iFloorId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	
                if ($bFlag == true && $_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iStore."-".$iFloorId."-".IO::getFileName($_FILES['filePicture']['name']));

			if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.FLOORS_IMG_DIR.$sPicture)))
				$sPicture = "";
			
			else
			{
				$sSQL  = "UPDATE tbl_floors SET picture='$sPicture' WHERE id='$iFloorId'";
				$bFlag = $objDb->execute($sSQL);				
			}
		}
                
                if ($bFlag == true)
		{
			for ($i = 0; $i < $iFiles; $i ++)
			{
				$sUploadName   = IO::strValue("Files_{$i}_name");
				$sUploadStatus = IO::strValue("Files_{$i}_status");


				if ($sUploadStatus == "done" && $sUploadName != "")
				{
                                    
					$iFile = getNextId("tbl_floor_files");
					$sFile = ("{$iFloorId}-{$iFile}-".IO::getFileName($sUploadName));

					$iPosition  = @strrpos($sUploadName, '.');
					$sExtension = @substr($sUploadName, $iPosition);

					if (@in_array($sExtension, array(".jpg", ".jpeg", ".png", ".gif")))
                                        {
                                            copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.FLOORS_IMG_DIR.$sFile));

                                            $sSQL = "INSERT INTO tbl_floor_files SET id       = '$iFile',
                                                                                    floor_id  = '$iFloorId',
                                                                                    file      = '$sFile'";
                                            $bFlag = $objDb->execute($sSQL);

                                            if ($bFlag == false)
                                            	break;
                                            
                                            $sFiles[] = $sFile;
                                        }
				}


				@unlink($sRootDir.TEMP_DIR.IO::strValue("Files_{$i}_name"));
			}
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_floors.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_floors.modified_by) AS _ModifiedBy
					 FROM tbl_floors
					 WHERE id='$iFloorId'";
			$objDb->query($sSQL);

			$sCreatedAt  = $objDb->getField(0, "created_at");
			$sCreatedBy  = $objDb->getField(0, "_CreatedBy");
			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");


			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sFloor) ?>";
                sFields[1] = "<?= @htmlentities($fWidth) ?>";
                sFields[2] = "<?= @htmlentities($fLength) ?>";
            	sFields[3] = "<?= @htmlentities($sStoresList[$iStore]) ?>";
		sFields[4] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[5] = '<img class="icon details" id="<?= $iFloorId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[5] = (sFields[5] + '<img class="icnEdit" id="<?= $iFloorId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[5] = (sFields[5] + '<img class="icnDelete" id="<?= $iFloorId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[5] = (sFields[5] + '<img class="icnView" id="<?= $iFloorId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');
                sFields[5] = (sFields[5] + '<img class="icon icnFloor" id="<?= $iFloorId ?>" src="images/icons/logo.png" alt="Display Floor" title="Display Floor" /> ');

		parent.updateRecord(<?= $iFloorId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Floor has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>