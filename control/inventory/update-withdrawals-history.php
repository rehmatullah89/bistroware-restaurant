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


	$iWastedQty      = IO::strValue("txtQtyWtWasted");
	$iWastedReason   = IO::intValue("ddWastedReason");
        $sComments       = IO::strValue("txtComments");
        
      
	if ($iWastedQty == "" || $iWastedReason == "" )
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_inventory_history SET   qty_wt_wasted      = '$iWastedQty',
                                                            wasted_reason_id   = '$iWastedReason',
                                                            comments           = '$sComments'
                                                            WHERE           id = '$iHistoryId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT modified_at,
					 (SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_inventory_history
					 WHERE id='$iHistoryId'";
			$objDb->query($sSQL);

			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");

                        $sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[5] = '<img class="icon details" id="<?= $iHistoryId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[5] = (sFields[5] + '<img class="icnEdit" id="<?= $iHistoryId ?>" src="images/icons/bin-filled.png" alt="Edit If Wastage?" title="Edit If Wastage?" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[5] = (sFields[5] + '<img class="icnDelete" id="<?= $iHistoryId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>

		parent.updateRecord(<?= $iHistoryId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Ingredient has been Updated successfully.");
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