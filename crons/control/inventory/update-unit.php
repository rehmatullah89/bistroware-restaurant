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


	$sUnit      = IO::strValue("txtUnit");
	$sCode      = IO::strValue("txtCode");
	$sStatus    = IO::strValue("ddStatus");
        
      
	if ($sUnit == "" || $sCode == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iUnit = getDbValue("id", "tbl_units", "(title LIKE '$sUnit' OR code LIKE '$sCode') AND id != '$iUnitId'");
		
		if ($iUnit > 0)
			$_SESSION["Flag"] = "UNIT_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_units SET       title       = '$sUnit',
                                                    code        = '$sCode',
                                                    status      = '$sStatus',
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )
                                                    WHERE id='$iUnitId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_units
					 WHERE id='$iUnitId'";
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

		sFields[0] = "<?= @htmlentities($sUnit) ?>";
		sFields[1] = "<?= @htmlentities($sCode) ?>";
		sFields[2] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[3] = '<img class="icon details" id="<?= $iStudentId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[3] = (sFields[3] + '<img class="icnEdit" id="<?= $iUnitId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[3] = (sFields[3] + '<img class="icnDelete" id="<?= $iUnitId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[3] = (sFields[3] + '<img class="icnView" id="<?= $iUnitId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iUnitId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Unit has been Updated successfully.");
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