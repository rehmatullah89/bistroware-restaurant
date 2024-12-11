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

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );

	if ($sUserRights["Edit"] != "Y")
		exitPopup(true);


	$iStoreId = IO::intValue("StoreId");
	$iIndex  = IO::intValue("Index");

	if ($_POST)
		@include("update-store.php");


	$sSQL = "SELECT * FROM tbl_stores WHERE id='$iStoreId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

            $sName      = $objDb->getField(0, "name");
            $sPhone     = $objDb->getField(0, "phone1");
            $sMobile    = $objDb->getField(0, "phone2");
            $sEmail     = $objDb->getField(0, "email");
            $sAddress   = $objDb->getField(0, "address");
            $iBrand     = $objDb->getField(0, "brand_id");
            $sTaxNo     = $objDb->getField(0, "tax_no");
            $sPicture   = $objDb->getField(0, "picture");
            $sStatus    = $objDb->getField(0, "status");

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-store.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
	<input type="hidden" name="StoreId" id="StoreId" value="<?= $iStoreId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<input type="hidden" name="DuplicateEmail" id="DuplicateEmail" value="0" />
	<input type="hidden" name="Picture" value="<?= $sPicture ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td width="450">
				  <label for="txtName">Name</label>
				  <div><input type="text" name="txtName" id="txtName" value="<?= $sName; ?>" maxlength="50" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="txtPhone1">Phone</label>
				  <div><input type="text" name="txtPhone1" id="txtPhone1" value="<?= $sPhone ?>" maxlength="25" size="44" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtPhone2">Mobile <span>(optional)</span></label>
				  <div><input type="text" name="txtPhone2" id="txtPhone2" value="<?= $sMobile ?>" maxlength="25" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="txtEmail">Email Address</label>
				  <div><input type="text" name="txtEmail" id="txtEmail" value="<?= $sEmail ?>" maxlength="100" size="44" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtAddress">Location/ Address</label>
				  <div><input type="text" name="txtAddress" id="txtEmail" value="<?= $sAddress; ?>" maxlength="100" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="ddBrand">Brand</label>

				  <div>
				    <select name="ddBrand" id="ddBrand">
					  <option value=""></option>
<?
		$sBrands = getList("tbl_brands", "id", "brand", "status='A'");

		foreach ($sBrands as $BrandId => $sBrand)
		{
?>
			    	  <option value="<?= $BrandId ?>"<?= (($iBrand == $BrandId) ? ' selected' : '') ?>><?= $sBrand ?></option>
<?
		}
?>
				    </select>
				  </div>

				  <div class="br10"></div>

				  <label for="filePicture">Picture <span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.STORES_IMG_DIR.$sPicture).'" class="colorbox">'.substr($sPicture, strlen("{$iStoreId}-")).'</a>)')) ?></span></label>
				  <div><input type="file" name="filePicture" id="filePicture" value="" size="60" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtTaxNo">Tax No.</label>
				  <div><input type="text" name="txtTaxNo" id="txtTaxNo" value="<?= $sTaxNo ?>" maxlength="100" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="ddStatus">Status</label>

				  <div>
				    <select name="ddStatus" id="ddStatus">
				 	  <option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>
					  <option value="D"<?= (($sStatus == 'D') ? ' selected' : '') ?>>Disabled</option>
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Update Store</button>
				  <button id="BtnCancel">Cancel</button>
			    </td>
	  </tr>
	</table>
  </form>
</div>

</body>
</html>
<?
	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>