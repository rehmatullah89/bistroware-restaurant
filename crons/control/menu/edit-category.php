<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bstroware.com                                                                 **
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

	if ($sUserRights["Edit"] != "Y")
		exitPopup(true);


	$iCategoryId    = IO::intValue("CategoryId");
	$iIndex         = IO::intValue("Index");
        
        $sCategoriesList= getList("tbl_categories", "id", "category", "parent_id = '0'");
        
	if ($_POST)
		@include("update-category.php");


	$sSQL = "SELECT * FROM tbl_categories WHERE id='$iCategoryId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sCategory   = $objDb->getField(0, "category");
	$iParent     = $objDb->getField(0, "parent_id");
        $sPicture    = $objDb->getField(0, "picture");
	$sStatus     = $objDb->getField(0, "status");
        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-category.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
	<input type="hidden" name="CategoryId" id="CategoryId" value="<?= $iCategoryId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<input type="hidden" name="DuplicatePage" id="DuplicatePage" value="0" />
	<div id="RecordMsg" class="hidden"></div>

                    <label for="txtCategory">Category</label>
		    <div><input type="text" name="txtCategory" id="txtCategory" value="<?= $sCategory ?>" maxlength="100" size="44" class="textbox" /></div>

                    <div class="br10"></div>
                    <label for="ddParent">Parent Category</label>

		    <div>
			  <select name="ddParent" id="ddParent">
                              <option value="0"></option>
<?
                              foreach ($sCategoriesList as $iCategory => $sCategory)
                              {
?>
                              <option value="<?=$iCategory?>"<?= (($iParent == $iCategory) ? ' selected' : '') ?>><?=$sCategory?></option>
<?
                              }
?>
			  </select>
		    </div>

                    <div class="br10"></div>

                    <label for="filePicture">Picture<span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.CATEGORIES_IMG_DIR.$sPicture).'" class="colorbox">'.substr($sPicture, strlen("{$iCategoryId}-")).'</a>)')) ?></span></label>
                    <div><input type="file" name="filePicture" id="filePicture" value="<?= IO::strValue('filePicture') ?>" size="50" class="textbox" /></div>

		    <div class="br10"></div>

		    <label for="ddStatus">Status</label>

		    <div>
			  <select name="ddStatus" id="ddStatus">
			    <option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>
			    <option value="I"<?= (($sStatus == 'I') ? ' selected' : '') ?>>In-Active</option>
			  </select>
		    </div>

	<br />
	<button id="BtnSave">Update Category</button>
	<button id="BtnCancel">Cancel</button>
  </form>
</div>

</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>