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


	$sLocation  = IO::strValue("txtLocation");
	$iFloor     = IO::intValue("ddFloor");
	$sStatus    = IO::strValue("ddStatus");
        
      
	if ($sLocation == "" || $sStatus == "" || $iFloor == 0)
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iLocation = getDbValue("id", "tbl_audit_locations", "(location LIKE '$sLocation') AND id != '$iLocationId'");
		
		if ($iLocation > 0)
			$_SESSION["Flag"] = "LOCATION_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_audit_locations SET     location    = '$sLocation',
                                                            floor_id    = '$iFloor',
                                                            status      = '$sStatus',
                                                            modified_by = '{$_SESSION['AdminId']}',
                                                            modified_at = NOW( )
                                                            WHERE id    ='$iLocationId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_audit_locations
					 WHERE id='$iLocationId'";
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

		sFields[0] = "<?= @htmlentities($sLocation) ?>";
		sFields[1] = "<?= @htmlentities($sFloorsList[$iFloor]) ?>";
		sFields[2] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[3] = '<img class="icon details" id="<?= $iLocationId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[3] = (sFields[3] + '<img class="icnEdit" id="<?= $iLocationId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[3] = (sFields[3] + '<img class="icnDelete" id="<?= $iLocationId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[3] = (sFields[3] + '<img class="icnView" id="<?= $iLocationId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iLocationId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Audit Location has been Updated successfully.");
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