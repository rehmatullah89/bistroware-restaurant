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


	$sTableTitle    = IO::strValue("txtTableTitle");
        $sSeatsCapacity = IO::intValue("txtSeatsCapacity");
        $iFloor         = IO::intValue("ddFloor");
       	$sStatus        = IO::strValue("ddStatus");
        $sPicture   = "";
	$bError     = true;
        
      
	if ($sTableTitle == "" || $sSeatsCapacity == "" || $iFloor == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iTables = getDbValue("id", "tbl_tables", "table_no LIKE '$sTableTitle' floor_id = '$iFloor' AND id != '$iTableId'");
		
		if ($iTables > 0)
			$_SESSION["Flag"] = "TABLE_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_tables SET  table_no    = '$sTableTitle',
                                                total_seats = '$sSeatsCapacity',
                                                floor_id    = '$iFloor',
                                                status      = '$sStatus',
                                                modified_by = '{$_SESSION['AdminId']}',
                                                modified_at = NOW( )
                                                WHERE id='$iTableId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	
                if ($bFlag == true && $_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iFloor."-".$iTableId."-".IO::getFileName($_FILES['filePicture']['name']));

			if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.TABLES_IMG_DIR.$sPicture)))
				$sPicture = "";
			
			else
			{
				$sSQL  = "UPDATE tbl_tables SET picture='$sPicture' WHERE id='$iTableId'";
				$bFlag = $objDb->execute($sSQL);				
			}
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_tables.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_tables.modified_by) AS _ModifiedBy
					 FROM tbl_tables
					 WHERE id='$iTableId'";
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

		sFields[0] = "<?= @htmlentities($sTableTitle) ?>";
                sFields[1] = "<?= @htmlentities($sSeatsCapacity) ?>";
		sFields[2] = "<?= @htmlentities($sFloorsList[$iFloor]) ?>";
		sFields[3] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[4] = '<img class="icon details" id="<?= $iTableId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnEdit" id="<?= $iTableId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnDelete" id="<?= $iTableId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[4] = (sFields[4] + '<img class="icnView" id="<?= $iTableId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iTableId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Table has been Updated successfully.");
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