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


	$sItem      = IO::strValue("txtItem");
	$iUnit      = IO::intValue("ddUnit");
        $sUom       = IO::strValue("ddUom");
        $iLocation  = IO::intValue("ddLocation");
        $iSuppliers = implode(",", IO::getArray("ddSuppliers"));
	$sStatus    = IO::strValue("ddStatus");
        
      
	if ($sItem == "" || $iUnit == "" || $iLocation == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iIngredients = getDbValue("id", "tbl_ingredients", "(title LIKE '$sItem' AND unit_id = '$iUnit') AND id != '$iIngredientId'");
		
		if ($iIngredients > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_ingredients SET title       = '$sItem',
                                                    unit_id     = '$iUnit',
                                                    uom         = '$sUom',
                                                    location_id = '$iLocation',
                                                    suppliers   = '$iSuppliers',    
                                                    status      = '$sStatus',
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )
                                                    WHERE id='$iIngredientId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_ingredients
					 WHERE id='$iIngredientId'";
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

		sFields[0] = "<?= @htmlentities($sItem) ?>";
		sFields[1] = "<?= @htmlentities($sUnitsList[$iUnit]) ?>";
                sFields[2] = "<?= @htmlentities($sLocationsList[$iLocation]) ?>";
		sFields[3] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[4] = '<img class="icon details" id="<?= $iIngredientId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnEdit" id="<?= $iIngredientId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnDelete" id="<?= $iIngredientId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[4] = (sFields[4] + '<img class="icnView" id="<?= $iIngredientId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iIngredientId ?>, <?= $iIndex ?>, sFields);
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