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
        $sCountries       = getList("tbl_countries", "id", "country");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-procurement.js"></script>
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
				</td>
                                
                              <td align="right" width="950">
                                  <div>
                                  <table id="ItemsTable" border="0" cellspacing="5" cellpadding="5" width="100%">
                                      <tr>
                                          <td style="width:3%;"><h3>#</h3></td>
                                          <td style="width:22%;"><h3>Item</h3></td>
                                          <td style="width:10%;"><h3>Item Type</h3></td>
                                          <td style="width:10%;"><h3>Location</h3></td>
                                          <td style="width:9%;"><h3>Supplier</h3></td>
                                          <td style="width:9%;"><h3>Origin</h3></td>
                                          <td style="width:9%;"><h3>Quantity</h3></td>
                                          <td style="width:9%;"><h3>Weight?</h3></td>
                                          <td style="width:9%;"><h3>Price</h3></td>
                                          <td style="width:10%;"><h3>Expiry Date</h3></td>
                                      </tr>
<?
                                    $sSQL = "SELECT * FROM tbl_inventory_details WHERE inventory_id='$iProcurementId'";
                                    $objDb->query($sSQL);
                                    
                                    $iCount = $objDb->getCount();
                                    
                                    for($i=0; $i<$iCount; $i++)
                                    {
                                        $iItem          = $objDb->getField($i, "ingredient_id");
                                        $iItemType      = $objDb->getField($i, "item_type");
                                        $iQuantity      = $objDb->getField($i, "quantity");
                                        $iPrice         = $objDb->getField($i, "price");
                                        $sExpiryDate    = $objDb->getField($i, "expiry_date");
                                        $iLocationId    = $objDb->getField($i, "location_id");
                                        $iSupplierId    = $objDb->getField($i, "supplier_id");
                                        $iWeight        = $objDb->getField($i, "weight");
                                        $iCountryId     = $objDb->getField($i, "origin_id");
                                        
?>
                                      <tr>
                                          <td><?=$i+1?></td>
                                          <td id="itemId">
                                              <select name="ddItem[]" style="width:160px;">
<?
                                              foreach ($sIngredientsList as $iIngredient => $sIngredient)
                                              {
?>
                                                  <option value="<?=$iIngredient?>" <?=($iItem == $iIngredient)?"selected":""?>><?=$sIngredient?></option>
<?
                                              }
?>
                                              </select>    
                                          </td>
                                          <td id="itemType" style="width:80px;">
                                              <select name="ddItemType[]" id="ddItemType">
                                                  <option value="L" <?=($iItemType  == 'L')?"selected":""?>>Local</option>
                                                  <option value="I" <?=($iItemType  == 'I')?"selected":""?>>Imported</option>
                                              </select>    
                                          </td>
                                          <td id="itemLocation">
                                              <select name="ddItemLocation[]" id="ddItemLocation<?=$i?>" style="width:90px;">
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
                                          </td>
                                          <td id="itemSupplier">
                                              <select name="ddItemSupplier[]" id="ddItemSupplier<?=$i?>" style="width:90px;">
                                           <option value=""></option>
<?
                                            foreach ($sSuppliersList as $iSupplier => $sSupplier)
                                            {
?>
                                                <option value="<?= $iSupplier ?>"<?= (($iSupplierId == $iSupplier) ? ' selected' : '') ?>><?= $sSupplier ?></option>
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
					  <option value="<?= $iCountry ?>"<?= (($iCountryId == $iCountry) ? ' selected' : '') ?>><?= $sCountry ?></option>
<?
                                    }
?>
				    </select>
                                          <td>
                                              <input type="text" size="5" name="txtQuantity[]" id="txtQuantity<?=$i?>" value="<?= $iQuantity?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtWeight[]" id="txtWeight<?=$i?>" value="<?= $iWeight ?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtPrice[]" id="txtPrice<?=$i?>" value="<?= $iPrice ?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          <td id="ExpiryDateId">
                                              <div class="date" style="display:inline-block;"><input type="text" name="txtExpiry[]" id="txtExpiry<?=$i?>"  class="textbox" value="<?=$sExpiryDate?>" maxlength="10" size="10" style='width:63%; display: inline;' readonly /></div>
                                              <script>
                                                $("#txtExpiry<?=$i?>").datepicker(
                                                {
                                                        showOn          : "both",
                                                        buttonImage     : "images/icons/calendar.gif",
                                                        buttonImageOnly : true,
                                                        dateFormat      : "yy-mm-dd"
                                                });
                                              </script>
                                          </td>

                                      </tr>    
<?
                                    }
?>
                                  </table>
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
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
       var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);
        var cell8 = row.insertCell(7);
        var cell9 = row.insertCell(8);

        cell1.innerHTML = rowCount;
        cell2.innerHTML = document.getElementById("itemId").innerHTML;
        cell3.innerHTML = document.getElementById("itemType").innerHTML;
        cell4.innerHTML = document.getElementById("itemLocation").innerHTML;   
        cell5.innerHTML = document.getElementById("itemSupplier").innerHTML;   
        cell6.innerHTML = "<input type='text' size='5' class='textbox' name='txtQuantity[]' value=''  style='width:95%;'/>";
        cell7.innerHTML = "<input type='text' size='5' class='textbox' name='txtWeight[]' value='' style='width:95%;'/>";
        cell8.innerHTML = "<input type='text' size='5' class='textbox' name='txtPrice[]' value=''  style='width:95%;'/>";
        cell9.innerHTML = "<div class='date'><input type='text' name='txtExpiry[]' id='txtExpiry"+i+"' class='textbox' value='' maxlength='10' size='10' style='width:63%;' readonly /></div>";
        
        $("#txtExpiry"+i).datepicker(
	{
		showOn          : "both",
		buttonImage     : "images/icons/calendar.gif",
		buttonImageOnly : true,
		dateFormat      : "yy-mm-dd"
	});
        
        i++;
        document.getElementById("CountRows").value = i;
    }

    function DeleteRow() 
    {
        var table = document.getElementById("ItemsTable");
        var rowCount = table.rows.length;
        
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