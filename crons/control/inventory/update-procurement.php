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


	$sPoNumber  = IO::strValue("txtPoNumber");
	$sRemarks   = IO::strValue("txtRemarks");
        
      
	if ($sPoNumber == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iProcurement = getDbValue("id", "tbl_inventory", "po_number LIKE '$sPoNumber' AND id != '$iProcurementId'");
		
		if ($iProcurement > 0)
			$_SESSION["Flag"] = "LOCATION_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_inventory SET   po_number   = '$sPoNumber',
                                                    remarks     = '$sRemarks',
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )
                                                    WHERE id='$iProcurementId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	
                
                //$sSQL = "DELETE FROM tbl_inventory_details WHERE inventory_id='$iProcurementId'";                                                   
                //$bFlag = $objDb->execute($sSQL);

                if ($bFlag == true)
                {
                    $sExistingIds   = "";
                    $iIdsArray      = IO::getArray("IdsArray");
                    $iItems         = IO::getArray("ddItem");
                    $iItemTypes     = IO::getArray("ddItemType");
                    $iQuantities    = IO::getArray("txtQuantity");
                    $iPrices        = IO::getArray("txtPrice");
                    $iExpiries      = IO::getArray("txtExpiry");
                    $iLocations     = IO::getArray("ddItemLocation");
                    $iSuppliers     = IO::getArray("ddItemSupplier");
                    $iWeights       = IO::getArray("txtWeight");
                    $iCountries     = IO::getArray("ddCountry");

                    foreach($iIdsArray as $iKey => $iId)
                    {
                        $sExistingIds   .= $iId.",";
                        $iItem          = $iItems[$iKey];
                        $iItemType      = $iItemTypes[$iKey];
                        $iQuantity      = trim($iQuantities[$iKey]);
                        $iPrice         = trim($iPrices[$iKey]);
                        $iExpiry        = trim($iExpiries[$iKey]);
                        $iLocation      = trim($iLocations[$iKey]);
                        $iSupplier      = trim($iSuppliers[$iKey]);
                        $iWeight        = trim($iWeights[$iKey]);
                        $iCountry       = trim($iCountries[$iKey]);

                        if($iItem != "" && $iItemType != "" && $iQuantity != "" && $iPrice != "" && $iExpiry != "")
                        {
                            if($iId > 0)
                            {
                                $sSQL = "UPDATE tbl_inventory_details SET  inventory_id    = '$iProcurementId',
                                                                        ingredient_id   = '$iItem',
                                                                        location_id     = '$iLocation',
                                                                        supplier_id     = '$iSupplier',
                                                                        origin_id       = '$iCountry',    
                                                                        weight          = '$iWeight',
                                                                        total_weight    = '$iWeight',    
                                                                        item_type       = '$iItemType',
                                                                        quantity        = '$iQuantity',
                                                                        total_quantity  = '$iQuantity',
                                                                        price           = '$iPrice',
                                                                        expiry_date     = '$iExpiry'
                                        WHERE id = '$iId'";

                                $bFlag = $objDb->execute($sSQL);
                            }
                            else if($iId == 0)
                            {
                                $sSQL = "INSERT INTO tbl_inventory_details SET  inventory_id    = '$iProcurementId',
                                                                            ingredient_id   = '$iItem',
                                                                            location_id     = '$iLocation',
                                                                            supplier_id     = '$iSupplier',
                                                                            origin_id       = '$iCountry',    
                                                                            weight          = '$iWeight',
                                                                            total_weight    = '$iWeight',    
                                                                            item_type       = '$iItemType',
                                                                            quantity        = '$iQuantity',
                                                                            total_quantity  = '$iQuantity',
                                                                            price           = '$iPrice',
                                                                            expiry_date     = '$iExpiry'";

                                $bFlag = $objDb->execute($sSQL);

                                if($bFlag == true)
                                {
                                    $iMaxId = getDbValue("Max(id)", "tbl_inventory_details", "inventory_id='$iProcurementId'");
                                    $sExistingIds .= $iMaxId.",";
                                }
                            }


                            if($bFlag ==  false)
                                break;
                        }
                    }
                }
                
                if ($bFlag == true && $sExistingIds != "")
                {
                    $sExistingIds = rtrim($sExistingIds, ",");
                    $sSQL = "DELETE FROM tbl_inventory_details where id NOT IN ($sExistingIds) AND inventory_id='$iProcurementId'";
                    $bFlag = $objDb->execute($sSQL);
                }  
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
                                                        (SELECT SUM(quantity) FROM tbl_inventory_details WHERE inventory_id=tbl_inventory.id) AS _TotalQuantity,
							(SELECT name FROM tbl_admins WHERE id=tbl_inventory.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_inventory.modified_by) AS _ModifiedBy
					 FROM tbl_inventory
					 WHERE id='$iProcurementId'";
                        $objDb->query($sSQL);

                        $iTotalQty   = $objDb->getField(0, "_TotalQuantity");
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

		sFields[0] = "<?= @htmlentities($sPoNumber) ?>";
		sFields[1] = "<?= @htmlentities($sModifiedAt) ?>";
		sFields[2] = "<?= @htmlentities($iTotalQty) ?>";
                sFields[3] = "<?= @htmlentities($sRemarks) ?>";
		sFields[4] = '<img class="icon details" id="<?= $iProcurementId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnEdit" id="<?= $iProcurementId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnDelete" id="<?= $iProcurementId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[4] = (sFields[4] + '<img class="icnView" id="<?= $iProcurementId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');
                sFields[4] = (sFields[4] + '<a href="inventory/export-barcodes.php?Id=<?= $iProcurementId ?>"><img class="icnView" width="16" height="16" src="../images/icons/barcode.png" alt="Bar Codes" title="Bar Codes" /></a> ');

		parent.updateRecord(<?= $iProcurementId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Inventory has been Updated successfully.");
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