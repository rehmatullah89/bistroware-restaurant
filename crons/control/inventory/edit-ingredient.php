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


	$iIngredientId = IO::intValue("IngredientId");
	$iIndex  = IO::intValue("Index");
        
        $sStoresList    = getList("tbl_stores", "id", "name");
        $sUnitsList     = getList("tbl_units", "id", "title", "status='A'");
        $sLocationsList = getList("tbl_locations", "id", "title", "status='A'");
        $sSuppliersList = getList("tbl_suppliers", "id", "name", "status='A'");

	if ($_POST)
		@include("update-ingredient.php");


	$sSQL = "SELECT * FROM tbl_ingredients WHERE id='$iIngredientId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sTitle     = $objDb->getField(0, "title");
        $iUnitId    = $objDb->getField(0, "unit_id");
        $iLocationId= $objDb->getField(0, "location_id");
        $sUom       = $objDb->getField(0, "uom");
        $sSuppliers = explode(",", $objDb->getField(0, "suppliers"));
        $sStatus    = $objDb->getField(0, "status");
        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-ingredient.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="IngredientId" id="IngredientId" value="<?= $iIngredientId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td>
                        <br/>

                                <label for="txtItem">Title</label>
				  <div><input type="text" name="txtItem" id="txtItem" value="<?= $sTitle ?>" size="20" class="textbox" /></div>												  
				  <div class="br10"></div>

				  <label for="ddUnit">Unit</label>

				  <div>
				    <select name="ddUnit" id="ddUnit">
					  <option value=""></option>
<?
		foreach ($sUnitsList as $iUnit => $sUnit)
		{
?>
					  <option value="<?= $iUnit ?>"<?= (($iUnitId == $iUnit) ? ' selected' : '') ?>><?= $sUnit ?></option>
<?
		}
?>
				    </select>
				  </div>
                                <div class="br10"></div>
                                <label for="ddLocation">Location</label>

				  <div>
				    <select name="ddLocation" id="ddLocation">
					  <option value=""></option>
<?
		foreach ($sLocationsList as $iLocation => $sLocation)
		{
?>
					  <option value="<?= $iLocation ?>"<?= (($iLocationId == $iLocation) ? ' selected' : '') ?>><?= $sLocation ?></option>
<?
		}
?>
				    </select>
				  </div>
                                <div class="br10"></div>
                                
                                <label for="ddUom">UOM</label>
				  <div>
				    <select name="ddUom" id="ddStore">
					  <option value=""></option>
					  <option value="S"<?= (($sUom == 'S') ? ' selected' : '') ?>>Static</option>
                                          <option value="V"<?= (($sUom == 'V') ? ' selected' : '') ?>>Variable</option>
				    </select>
				  </div>
                                  <div class="br10"></div>

				  <label for="ddSuppliers">Suppliers</label>

				  <div>
                                      <select name="ddSuppliers[]" id="ddSuppliers" multiple>
<?
		foreach ($sSuppliersList as $iSupplier => $sSupplier)
		{
?>
                                          <option value="<?= $iSupplier ?>"<?= (@in_array($iSupplier, $sSuppliers) ? ' selected' : '') ?>><?= $sSupplier ?></option>
<?
		}
?>
				    </select>
				  </div>
                                  
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
				  <button id="BtnSave">Save Ingredient</button>
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