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


	$sName      = IO::strValue("txtName");
	$sAddress   = IO::strValue("txtAddress");
        $sPhone     = IO::strValue("txtPhone");
        $sMobile    = IO::strValue("txtMobile");
        $sFax       = IO::strValue("txtFax");
        $sEmail     = IO::strValue("txtEmail");
        $sWebsite   = IO::strValue("txtWebsite");
        $sCity      = IO::strValue("txtCity");
        $iCountry   = IO::intValue("ddCountry");
	$sStatus    = IO::strValue("ddStatus");
        
      
	if ($sName == "" || $sAddress == "" || $iCountry == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iLocation = getDbValue("id", "tbl_suppliers", "(name LIKE '$sName' AND address LIKE '$sAddress') AND id != '$iSupplierId'");
		
		if ($iLocation > 0)
			$_SESSION["Flag"] = "LOCATION_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_suppliers SET   name        = '$sName',
                                                    address     = '$sAddress',
                                                    phone       = '$sPhone',    
                                                    mobile      = '$sMobile',
                                                    fax         = '$sFax',    
                                                    email       = '$sEmail',
                                                    website     = '$sWebsite',
                                                    city        = '$sCity',
                                                    country_id  = '$iCountry',    
                                                    status      = '$sStatus',
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )
                                                    WHERE id='$iSupplierId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_suppliers
					 WHERE id='$iSupplierId'";
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

		sFields[0] = "<?= @htmlentities($sName) ?>";
		sFields[1] = "<?= @htmlentities($sAddress) ?>";
                sFields[2] = "<?= @htmlentities($sPhone) ?>";
                sFields[3] = "<?= @htmlentities($sEmail) ?>";
                sFields[4] = "<?= @htmlentities($sCountries[$iCountry]) ?>";
		sFields[5] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[6] = '<img class="icon details" id="<?= $iSupplierId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[6] = (sFields[6] + '<img class="icnEdit" id="<?= $iSupplierId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[6] = (sFields[6] + '<img class="icnDelete" id="<?= $iSupplierId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[6] = (sFields[6] + '<img class="icnView" id="<?= $iSupplierId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iSupplierId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Supplier has been Updated successfully.");
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