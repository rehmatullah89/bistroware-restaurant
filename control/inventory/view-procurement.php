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


	$iProcurementId = IO::intValue("ProcurementId");
	$iIndex  = IO::intValue("Index");
        
        $sIngredientsList = getList("tbl_ingredients", "id", "title");

	if ($_POST)
		@include("update-procurement.php");


	$sSQL = "SELECT * FROM tbl_inventory WHERE id='$iProcurementId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sPoNumber  = $objDb->getField(0, "po_number");
        $sRemarks   = $objDb->getField(0, "remarks");
        $sCreatedAt = $objDb->getField(0, "created_at");
        
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
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-procurement.js"></script>
    <style>
  #ItemsTable tr:first-child  
  {
    border: 1px solid #4297d7;
    background: #5c9ccc url(../../../images/themes/redmond/jquery.ui/ui-bg_gloss-wave_55_5c9ccc_500x100.png) 50% 50% repeat-x;
    color: #ffffff;
    font-weight: bold;
  }    
  </style>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="ProcurementId" id="ProcurementId" value="<?= $iProcurementId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
				<td width="220">
                                    <br/>
                                    
                                  <label for="txtPoNumber">Lot Number</label>
				  <div><input type="text" name="txtPoNumber" id="txtPoNumber" value="<?= $sPoNumber ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>

				  <label for="txtRemarks">Remarks</label>
                                  <div><textarea name="txtRemarks" id="txtRemarks" rows="7" cols="23"><?=$sRemarks?></textarea></div>
                                  <div class="br10"></div>
                                  <br />
				</td>
                                
                              <td align="right" width="950">
                                  <div>
                                  <table id="ItemsTable" border="1" cellspacing="5" cellpadding="5" width="1040px">
                                      <tr>
                                          <td style="width:2%;">#</td>
                                          <td style="width:16%;">Item</td>
                                          <td style="width:9%;">Item Type</td>
                                          <td style="width:10%;">Location</td>
                                          <td style="width:10%;">Supplier</td>
                                          <td style="width:9%;">Origin</td>
                                          <td style="width:9%;">Quantity</td>
                                          <td style="width:9%;">Weight?</td>
                                          <td style="width:9%;">Unit Price</td>
                                          <td style="width:9%;">Expiry Date</td>
                                          <td style="width:9%;">Manufac. Date</td>
                                      </tr>
<?
                                    $sSQL = "SELECT * FROM tbl_inventory_details WHERE inventory_id='$iProcurementId'";
                                    $objDb->query($sSQL);
                                    
                                    $iCount = $objDb->getCount();
                                    $iUsed  = 0;
                                    
                                    for($i=0; $i<$iCount; $i++)
                                    {
                                        $iId            = $objDb->getField($i, "id");
                                        $iItem          = $objDb->getField($i, "ingredient_id");
                                        $iItemType      = $objDb->getField($i, "item_type");
                                        $iQuantity      = $objDb->getField($i, "quantity");
                                        $iPrice         = $objDb->getField($i, "price");
                                        $sExpiryDate    = $objDb->getField($i, "expiry_date");
                                        $sManufacDate   = $objDb->getField($i, "manufac_date");
                                        $iLocationId    = $objDb->getField($i, "location_id");
                                        $iSupplierId    = $objDb->getField($i, "supplier_id");
                                        $iWeight        = $objDb->getField($i, "weight");
                                        $iCountryId     = $objDb->getField($i, "origin_id");
                                        $iTotalQuantity = $objDb->getField($i, "total_quantity");
                                        $iTotalWeight   = $objDb->getField($i, "total_weight");
                                        
                                        $iUsed = 0;
                                        if(((float)$iTotalQuantity != (float)$iQuantity) || ((float)$iTotalWeight != (float)$iWeight)) 
                                            $iUsed = 1;
?>
                                      <tr>
                                          <td><?=$i+1?><input type="hidden" name="IdsArray[]" value="<?=$iId?>"></td>
                                          <td id="itemId">
                                              <select name="ddItem[]" style="width:140px;">
<?
                                              foreach ($sIngredientsList as $iIngredient => $sIngredient)
                                              {
?>
                                                  <option value="<?=$iIngredient?>" <?=($iItem == $iIngredient)?"selected":($iUsed == 1?'disabled':'')?>><?=$sIngredient?></option>
<?
                                              }
?>
                                              </select>    
                                          </td>
                                          <td id="itemType" style="width:80px;">
                                              <select name="ddItemType[]" id="ddItemType">
                                                  <option value="L" <?=($iItemType  == 'L')?"selected":($iUsed == 1?'disabled':'')?>>Local</option>
                                                  <option value="I" <?=($iItemType  == 'I')?"selected":($iUsed == 1?'disabled':'')?>>Imported</option>
                                              </select>    
                                          </td>
                                          <td id="itemLocation">
                                              <select name="ddItemLocation[]" id="ddItemLocation<?=$i?>" style="width:90px;">
                                           <option value=""></option>
<?
                                            foreach ($sLocationsList as $iLocation => $sLocation)
                                            {
?>
                                                <option value="<?= $iLocation ?>"<?= (($iLocationId == $iLocation) ? ' selected' : ($iUsed == 1?'disabled':'')) ?>><?= $sLocation ?></option>
<?
                                            }
                                          
                                          ?>
                                              </select>
                                          </td>
                                          <td id="itemSupplier">
                                              <select name="ddItemSupplier[]" id="ddItemSupplier<?=$i?>" style="width:90px;">
                                           <option value=""></option>
<?
                                            foreach ($sSuppliersList as $iSupplier => $sSupplier)
                                            {
?>
                                                <option value="<?= $iSupplier ?>"<?= (($iSupplierId == $iSupplier) ? ' selected' : ($iUsed == 1?'disabled':'')) ?>><?= $sSupplier ?></option>
<?
                                            }
                                          
                                          ?>
                                              </select>
                                          </td>
                                          <td id="itemOrigin">
				    <select name="ddCountry[]" id="ddCountry<?=$i?>" style="width:80px;">
					  <option value=""></option>
<?
                                    foreach ($sCountries as $iCountry => $sCountry)
                                    {
?>
					  <option value="<?= $iCountry ?>"<?= (($iCountryId == $iCountry) ? ' selected' : ($iUsed == 1?'disabled':'')) ?>><?= $sCountry ?></option>
<?
                                    }
?>
				    </select>
                                          <td>
                                              <input type="text" size="5" name="txtQuantity[]" id="txtQuantity<?=$i?>" value="<?= $iQuantity?>" size="20" class="textbox" <?=($iUsed == 1?'disabled':'')?> style='width:95%;' />
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtWeight[]" id="txtWeight<?=$i?>" value="<?= $iWeight ?>" size="20" class="textbox" <?=($iUsed == 1?'disabled':'')?> style='width:95%;' />
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtPrice[]" id="txtPrice<?=$i?>" value="<?= $iPrice ?>" size="20" class="textbox" <?=($iUsed == 1?'disabled':'')?> style='width:95%;' />
                                          </td>
                                          <td id="ExpiryDateId">
                                              <div class="date" style="display:inline-block;"><input type="text" name="txtExpiry[]" id="txtExpiry<?=$i?>"  class="textbox" value="<?=$sExpiryDate?>" maxlength="10" size="10" style='width:63%; display: inline;' <?=($iUsed == 1?'disabled':'readonly')?> /></div>
                                              <script>
                                                $("#txtExpiry<?=$i?>").datepicker(
                                                {
                                                        minDate         : 0,
                                                        dateFormat      : "yy-mm-dd"
                                                });
                                              </script>
                                          </td>
                                            <td id="ManufacDateId">
                                              <div class="date" style="display:inline-block;"><input type="text" name="txtManufac[]" id="txtManufac<?=$i?>"  class="textbox" value="<?=$sManufacDate?>" maxlength="10" size="10" style='width:63%; display: inline;' <?=($iUsed == 1?'disabled':'readonly')?> /></div>
                                              <script>
                                                $("#txtManufac<?=$i?>").datepicker(
                                                {
                                                        minDate         : 0,
                                                        dateFormat      : "yy-mm-dd"
                                                });
                                              </script>
                                          </td>

                                              <input type="hidden" name="ItemUsed<?=$i+1?>" id="ItemUsed<?=$i+1?>" value="<?=$iUsed?>" usedIndex="<?=$i+1?>"/>
                                      </tr>    
<?
                                    }
?>
                                  </table>
                                      <br/>                                                                           
                                  </div>
                              </td>   
              <td>
                                  &nbsp;
                              </td>
			  </tr>
	</table>
  </form>
</div>

<script type="text/javascript">
<!--
    var i=document.getElementById("CountRows").value;
    
    function AddNewRow() {
        var table = document.getElementById("ItemsTable");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
       var cell1  = row.insertCell(0);
        var cell2  = row.insertCell(1);
        var cell3  = row.insertCell(2);
        var cell4  = row.insertCell(3);
        var cell5  = row.insertCell(4);
        var cell6  = row.insertCell(5);
        var cell7  = row.insertCell(6);
        var cell8  = row.insertCell(7);
        var cell9  = row.insertCell(8);
        var cell10 = row.insertCell(9);
        var cell11 = row.insertCell(10);
        

        cell1.innerHTML = i;
        cell2.innerHTML = document.getElementById("itemId").innerHTML;
        cell3.innerHTML = document.getElementById("itemType").innerHTML;
        cell4.innerHTML = document.getElementById("itemLocation").innerHTML;   
        cell5.innerHTML = document.getElementById("itemSupplier").innerHTML;  
        cell6.innerHTML = document.getElementById("itemOrigin").innerHTML;  
        cell7.innerHTML = "<input type='hidden' name='ItemUsed"+i+"' id='ItemUsed"+i+"' value='0' usedIndex='"+i+"'/><input type='hidden' name='IdsArray[]' value='0'><input type='text' size='5' class='textbox' name='txtQuantity[]' value=''  style='width:95%;'/>";
        cell8.innerHTML = "<input type='text' size='5' class='textbox' name='txtWeight[]' value='' style='width:95%;'/>";
        cell9.innerHTML = "<input type='text' size='5' class='textbox' name='txtPrice[]' value=''  style='width:95%;'/>";
        cell10.innerHTML = "<div class='date'><input type='text' name='txtExpiry[]' id='txtExpiry"+i+"' class='textbox' value='' maxlength='10' size='10' style='width:63%;' readonly /></div>";
        cell11.innerHTML = "<div class='date'><input type='text' name='txtManufac[]' id='txtManufac"+i+"' class='textbox' value='' maxlength='10' size='10' style='width:63%;' readonly /></div>";
        
        $("#txtExpiry"+i).datepicker(
	{
                minDate         : 0,
		dateFormat      : "yy-mm-dd"
	});
        
        $("#txtManufac"+i).datepicker(
	{
                minDate         : 0,
		dateFormat      : "yy-mm-dd"
	});
        
        i++;
        document.getElementById("CountRows").value = i;
    }

    function DeleteRow() 
    {
        var table = document.getElementById("ItemsTable");
        var rowCount = table.rows.length;
        
        var element = document.getElementById("ItemUsed"+(rowCount-1));
        if (typeof element !== "undefined" && element != null) 
        {
            var used = element.value;        
            var oldcount = parseInt(element.getAttribute("usedIndex")) + parseInt(1);

            if(used == 1 && oldcount == rowCount)
            {
                alert("Item Quantity has been changed, Now You can not delete or Update this Item.");
                return false;
            }
        
        }
        
        
        if(rowCount > 2)
        {
            table.deleteRow(rowCount-1);
            i--;
            document.getElementById("CountRows").value = i;
        }
    }
-->
</script> 
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>