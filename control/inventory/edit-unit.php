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


	$iUnitId = IO::intValue("UnitId");
	$iIndex  = IO::intValue("Index");

	if ($_POST)
		@include("update-unit.php");


	$sSQL = "SELECT * FROM tbl_units WHERE id='$iUnitId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sTitle     = $objDb->getField(0, "title");
        $sCode      = $objDb->getField(0, "code");
        $sStatus    = $objDb->getField(0, "status");
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <link type="text/css" rel="stylesheet" href="plugins/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css" />

  <script type="text/javascript" src="plugins/plupload/plupload.full.min.js"></script>
  <script type="text/javascript" src="plugins/plupload/jquery.ui.plupload/jquery.ui.plupload.js"></script>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-unit.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="UnitId" id="UnitId" value="<?= $iUnitId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td>
                        <br/>

                      <label for="txtUnit">Title</label>
                      <div><input type="text" name="txtUnit" id="txtUnit" value="<?= $sTitle ?>" size="20" class="textbox" /></div>

                      <div class="br10"></div>

                      <label for="txtCode">Code</label>
                      <div><input type="text" name="txtCode" id="txtCode" value="<?= $sCode ?>" maxlength="20" size="8" class="textbox" /></div>
                      <div class="br10"></div>

                     <label for="ddStatus">Status</label>
                      <div>
                        <select name="ddStatus" id="ddStatus">
                            <option value=""></option>
                            <option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>
                            <option value="I"<?= (($sStatus == 'I') ? ' selected' : '') ?>>In-Active</option>
                        </select>
                      </div>

                      <br />
                      <button id="BtnSave">Save Unit</button>
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
	$objDbGlobal->close( );

	@ob_end_flush( );
?>