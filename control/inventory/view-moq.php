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


	$iMoqId  = IO::intValue("MoqId");
	$iIndex  = IO::intValue("Index");
        
        $sIngredientsList   = getList("tbl_ingredients", "id", "title");
        $sUnitsList         = getList("tbl_units", "id", "code");
        $sSuppliersList     = getList("tbl_suppliers", "id", "name", "status='A'");

	if ($_POST)
		@include("update-moq.php");


	$sSQL = "SELECT * FROM tbl_moqs WHERE id='$iMoqId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

        $iIngredient = $objDb->getField(0, "ingredient_id");
        $iUnitId     = $objDb->getField(0, "unit_id");
        $iSupplierId = $objDb->getField(0, "supplier_id");
        $iMoq        = $objDb->getField(0, "moq");
        $iDaysRequire= $objDb->getField(0, "days_required");
        $sCreatedAt  = $objDb->getField(0, "created_at");
        $sCreatedBy  = $objDb->getField(0, "_CreatedBy");
        $sModifiedAt = $objDb->getField(0, "modified_at");
        $sModifiedBy = $objDb->getField(0, "_ModifiedBy");
        
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
	<input type="hidden" name="MoqId" id="MoqId" value="<?= $iMoqId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td>
                        <br/>

                                <label for="ddItem">Ingredient</label>
				  <div>
				    <select name="ddItem" id="ddItem">
					  <option value=""></option>
<?
		foreach ($sIngredientsList as $iItem => $sItem)
		{
?>
					  <option value="<?= $iItem ?>"<?= (($iIngredient == $iItem) ? ' selected' : '') ?>><?= $sItem ?></option>
<?
		}
?>
				    </select>
				  </div>
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

				  <label for="ddSupplier">Suppliers</label>

				  <div>
                                      <select name="ddSupplier" id="ddSupplier">
<?
		foreach ($sSuppliersList as $iSupplier => $sSupplier)
		{
?>
                                          <option value="<?= $iSupplier ?>"<?= (($iSupplierId == $iSupplier) ? ' selected' : '') ?>><?= $sSupplier ?></option>
<?
		}
?>
				    </select>
				  </div>
                                  
                                    <div class="br10"></div>
                                    
                                 <label for="txtMOQ">MOQ</label>
                                 <div><input type="text" name="txtMOQ" id="txtMOQ" value="<?=$iMoq?>" size="20" class="textbox" /></div>
                                 
                                 <div class="br10"></div>
                                    
                                 <label for="txtDaysRequired">Days Requried</label>
                                 <div><input type="text" name="txtDaysRequired" id="txtDaysRequired" value="<?=$iDaysRequire?>" size="20" class="textbox" /></div>


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