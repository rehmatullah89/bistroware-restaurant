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


	$iBrandId = IO::intValue("BrandId");
	$iIndex   = IO::intValue("Index");

	if ($_POST)
		@include("update-brand.php");


	$sSQL = "SELECT * FROM tbl_brands WHERE id='$iBrandId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sBrand  = $objDb->getField(0, "brand");
	$sStatus = $objDb->getField(0, "status");
        $sPicture= $objDb->getField(0, "logo");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-brand.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
	<input type="hidden" name="BrandId" id="BrandId" value="<?= $iBrandId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<input type="hidden" name="DuplicateType" id="DuplicateType" value="0" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td width="400">
                    <label for="txtBrand">Brand</label>
                    <div><input type="text" name="txtBrand" id="txtBrand" value="<?= $sBrand;?>" maxlength="100" size="44" class="textbox" /></div>

                     <div class="br10"></div>

                    <label for="fileLogo">Logo<span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.BRANDS_IMG_DIR.$sPicture).'" class="colorbox">'.substr($sPicture, strlen("{$iBrandId}-")).'</a>)')) ?></span></label>
                    <div><input type="file" name="fileLogo" id="fileLogo" value="" size="60" class="textbox" /></div>

                    <div class="br10"></div>

                    <label for="ddStatus">Status</label>

                    <div>
                      <select name="ddStatus" id="ddStatus">
                            <option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>
                            <option value="I"<?= (($sStatus == 'I') ? ' selected' : '') ?>>In-Active</option>
                      </select>
                    </div>

                    <br />
                    <button id="BtnSave">Update Brand</button>
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