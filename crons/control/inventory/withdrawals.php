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
	$objDb2      = new Database( );

        $InventoryDetailIds = IO::getArray("InventoryDetailId");
        
	if ($_POST && !empty($InventoryDetailIds))
		@include("save-withdrawal.php");  
        else if($_POST)
                $sBarCode  = IO::strValue("txtBarCode");
        
        $sStoresList    = getList("tbl_stores", "id", "name");
        $sLocationsList = getList("tbl_locations", "id", "title", "status='A'");
        $sSuppliersList = getList("tbl_suppliers", "id", "name", "status='A'");
        $sCountries     = getList("tbl_countries", "id", "country");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/withdrawals.js"></script>
</head>

<body>

<div id="MainDiv">

<!--  Header Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/header.php");
?>
<!--  Header Section Ends Here  -->


<!--  Navigation Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/navigation.php");
?>
<!--  Navigation Section Ends Here  -->


<!--  Body Section Starts Here  -->
  <div id="Body">
<?
	@include("{$sAdminDir}includes/breadcrumb.php");
?>

    <div id="Contents">
      <input type="hidden" id="OpenTab" value="<?= (($_POST && $bError == true) ? 1 : 0) ?>" />
<?
	@include("{$sAdminDir}includes/messages.php");
?>

      <div id="PageTabs">
	    <ul>
<?
	if ($sUserRights["Add"] == "Y" || $sUserRights["Edit"] == "Y")
	{
?>
                <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Withdrawals</b></a></li>

	    </ul>

		<div id="tabs-1">
		  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
			<div id="RecordMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
                              <br/>
<?
                            if($sBarCode == "")
                            {
?>
                              <td>
                                   <label for="txtCode">Scan Your Item Bar-Code here...</label>
                                   <div><input type="text" name="txtBarCode" id="txtBarCode" value="<?= IO::strValue("txtBarCode") ?>" maxlength="20" class="textbox" /></div>
                              </td>

<?
                            }
                            else if($_POST && $sBarCode != "")
                            {
                                
                                $begin              = substr(trim($sBarCode), 0, 6);
                                $end                = substr($sBarCode, 6);
                                $iIngredientId      = ltrim($begin, '0');
                                $iInventoryDetailId = ltrim($end, '0');                                
?>
                                <td>
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
                                        <thead>
                                        <tr valign="top">
                                          <td style="width:3%;">#</td>
                                          <td style="width:15%;"><h2>Item</h2></td>
                                          <td style="width:10%;"><h2>Lot#</h2></td>
                                          <td style="width:7%;"><h2>Item Type</h2></td>
                                          <td style="width:7%;"><h2>Location</h2></td>
                                          <td style="width:10%;"><h2>Supplier</h2></td>
                                          <td style="width:10%;"><h2>Origin</h2></td>
                                          <td style="width:5%;"><h2>Net Wt.</h2></td>
                                          <td style="width:6%;"><h2>Qty</h2></td>
                                          <td style="width:5%;"><h2>Price</h2></td>
                                          <td style="width:8%;"><h2>Expiry Date</h2></td>
                                          <td style="width:7%;"><h2>Out Wt.</h2></td>
                                          <td style="width:7%;"><h2>Out Qty</h2></td>
                                        </tr>
                                        </thead>
<?
                                        $sSQL = "SELECT tbl_inventory_details.*,
                                                        (SELECT po_number from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotNo,
                                                        (SELECT created_at from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotDate,
                                                         (SELECT title from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _Ingredient,
                                                         (SELECT uom from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _IngredientUom,
                                                         (SELECT l.title from tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = tbl_inventory_details.ingredient_id) as _Location
                                            FROM tbl_inventory_details
                                            WHERE ingredient_id='$iIngredientId'
                                            ORDER By expiry_date";
                                        
                                        $objDb->query($sSQL);

                                        $iCount = $objDb->getCount( );

                                        for ($i = 0; $i < $iCount; $i ++)
                                        {
                                            $iId         = $objDb->getField($i, "id");
                                            $iInventory  = $objDb->getField($i, "inventory_id");
                                            $iIngredient = $objDb->getField($i, "ingredient_id");
                                            $sIngredient = $objDb->getField($i, "_Ingredient");
                                            $sIngrUom    = $objDb->getField($i, "_IngredientUom");
                                            $sLotNo      = $objDb->getField($i, "_LotNo");
                                            $sLotDate    = $objDb->getField($i, "_LotDate");
                                            $sLocation   = $objDb->getField($i, "_Location");
                                            $iLocation   = $objDb->getField($i, "location_id");
                                            $iSupplier   = $objDb->getField($i, "supplier_id");
                                            $iOrigin     = $objDb->getField($i, "origin_id");                                            
                                            $sItemType   = $objDb->getField($i, "item_type");
                                            $iQuantity   = $objDb->getField($i, "quantity");
                                            $iPrice      = $objDb->getField($i, "price");
                                            $iWeight     = $objDb->getField($i, "weight");
                                            $sExpiryDate = $objDb->getField($i, "expiry_date");
                                            
                                            $sSupplier   = $sSuppliersList[$iSupplier];
                                            $sOrigin     = $sCountries[$iOrigin];
?>
                                        <tr>
                                            <td><?=$i+1?><input type="hidden" name="InventoryDetailId[]" value="<?=$iId?>"></td>                                            
                                            <td><?=$sIngredient?><input type="hidden" name="txtIngUom_<?=$iId?>" value="<?=$sIngrUom?>" /></td>
                                            <td><?=$sLotNo." (".$sLotDate.")"?></td>
                                            <td><?=($sItemType == 'I'?'Imported':'Local')?></td>
                                            <td><?=($iLocation>0?$sLocationsList[$iLocation]:$sLocation)?></td>
                                            <td><?=$sSupplier?></td>
                                            <td><?=$sOrigin?></td>
                                            <td><?=$iWeight?><input type="hidden" name="txtWtAvailable_<?=$iId?>" value="<?=$iWeight?>" /></td>
                                            <td><?= number_format($iQuantity, false)?><input type="hidden" name="txtQty_<?=$iId?>" value="<?=$iQuantity?>" /></td>
                                            <td><?=number_format($iPrice, false)?></td>
                                            <td><?=$sExpiryDate?></td>
                                            <td><input type="text" name="txtOutWt_<?=$iId?>" value="<?=IO::strValue('txtOutWt_'.$iId)?>" style="width:80%" <?=($sIngrUom == 'S'?'disabled':'')?>/></td>
                                            <td><input type="number" name="txtOutQty_<?=$iId?>" value="<?=IO::strValue('txtOutQty_'.$iId)?>" min="1" max="<?=$iQuantity?>" style="width:80%" <?=($sIngrUom == 'V'?'disabled':'')?>/></td>
                                        </tr>
<?
                                        }
?>
                                    </table>
                                </td>
                                
			  </tr>
                            <tr>
                            <td>
                                <br/>
                              <button id="BtnSave">Save Withdawals</button>
                              <button id="BtnCancel1">Cancel</button>
                            </td>
<?
                            }
                            
?>
                          </tr>  
			</table>
		  </form>
	    </div>
<?
	}
?>
        </div>

    </div>
  </div>
<!--  Body Section Ends Here  -->


<!--  Footer Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/footer.php");
?>
<!--  Footer Section Ends Here  -->

</div>

</body>
</html>
<?
	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>