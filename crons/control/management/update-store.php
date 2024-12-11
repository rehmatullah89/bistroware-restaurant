<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bistroware.com                                                                 **
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

	$sName      = IO::strValue("txtName");
	$sPhone     = IO::strValue("txtPhone1");
        $sMobile    = IO::strValue("txtPhone2");
	$sEmail     = IO::strValue("txtEmail");
	$sAddress   = IO::strValue("txtAddress");
	$iBrand     = IO::intValue("ddBrand");
	$sTaxNo     = IO::strValue("txtTaxNo");
	$sStatus    = IO::strValue("ddStatus");
        $sOldPicture= IO::strValue("Picture");
	$sPicture   = "";
	$sPictureSql= "";


	if ($sName == "" || $sPhone == "" || $sEmail == "" || $sAddress == "" || $iBrand == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_stores WHERE name LIKE '$sName' AND id != '$iStoreId'";
		if ($objDb->query($sSQL) == true && $objDb->getCount( ) > 0)
			$_SESSION["Flag"] = "STORE_EXISTS";
	}

	if ($_SESSION["Flag"] == "")
	{
            	if ($_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iStoreId."-".IO::getFileName($_FILES['filePicture']['name']));

			if (@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.STORES_IMG_DIR.$sPicture)))
			{
				createImage(($sRootDir.STORES_IMG_DIR.$sPicture), ($sRootDir.STORES_IMG_DIR.'thumbs/'.$sPicture), ADMINS_IMG_WIDTH, ADMINS_IMG_HEIGHT);

				$sPictureSql = ", picture='$sPicture'";
			}
		}


		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_stores SET      brand_id    = '$iBrand',
                                                    name        = '$sName',
                                                    phone1      = '$sPhone',
                                                    phone2      = '$sMobile',
                                                    email       = '$sEmail',
                                                    address     = '$sAddress',
                                                    tax_no      = '$sTaxNo',
                                                    status      = '$sStatus',
                                                    modified_at = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}'
                                                    $sPictureSql
	         WHERE id='$iStoreId'";
                               
		$bFlag = $objDb->execute($sSQL);

		

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");


			if ($sOldPicture != "" && $sPicture != "" && $sOldPicture != $sPicture)
			{
				@unlink($sRootDir.STORES_IMG_DIR.'thumbs/'.$sOldPicture);
				@unlink($sRootDir.STORES_IMG_DIR.$sOldPicture);
			}

			$sType = getDbValue("title", "tbl_admin_types", "id='$iType'");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= addslashes($sName) ?>";
		sFields[1] = "<?= $sAddress ?>";
		sFields[2] = "<?= $sPhone ?>";
		sFields[3] = "<?= addslashes($sEmail) ?>";
                sFields[4] = "<?= addslashes($sEmail) ?>";
		sFields[5] = "<?= (($sStatus == 'A') ? 'Active' : 'Disabled') ?>";
		sFields[6] = "";
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
                            sFields[6] = (sFields[6] + '<img class="icnEdit" id="<?= $iStoreId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
                            sFields[6] = (sFields[6] + '<img class="icnDelete" id="<?= $iStoreId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}

			if ($sOldPicture != "" && @file_exists($sRootDir.STORES_IMG_DIR.$sOldPicture))
			{
?>
                            sFields[6] = (sFields[6] + '<img class="icnPicture" id="<?= (SITE_URL.STORES_IMG_DIR.$sOldPicture) ?>" src="images/icons/picture.png" alt="Picture" title="Picture" /> ');
<?
			}

			else if ($sPicture != "" && @file_exists($sRootDir.STORES_IMG_DIR.$sPicture))
			{
?>
                            sFields[6] = (sFields[6] + '<img class="icnPicture" id="<?= (SITE_URL.STORES_IMG_DIR.$sPicture) ?>" src="images/icons/picture.png" alt="Picture" title="Picture" /> ');
<?
			}
?>
                        sFields[6] = (sFields[6] + '<img class="icnView" id="<?= $iStoreId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');


		parent.updateStore(<?= $iStoreId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#SGridMsg", "success", "The selected Store has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");

			$_SESSION["Flag"] = "DB_ERROR";


			if ($sPicture != "" && $sOldPicture != $sPicture)
			{
				@unlink($sRootDir.STORES_IMG_DIR.'thumbs/'.$sPicture);
				@unlink($sRootDir.STORES_IMG_DIR.$sPicture);
			}
		}
	}
?>