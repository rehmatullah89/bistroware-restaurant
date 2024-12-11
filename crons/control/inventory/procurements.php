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

        
        $sStartDate = (IO::strValue("StartDate") != ""?IO::strValue("StartDate"):date("Y-m-d"));
        $sEndDate   = (IO::strValue("EndDate") != ""?IO::strValue("EndDate"):date("Y-m-d"));
        
        if(strtotime($sEndDate) < strtotime($sStartDate))
            $sEndDate = $sStartDate;
        
	if ($_POST)
		@include("save-procurement.php");        
        
        $sIngredientsList   = getList("tbl_ingredients", "id", "title");
        $sCountries         = getList("tbl_countries", "id", "country");
        $UserRights         = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/procurements.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Procurements</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Procurement</a></li>
<?
	}

?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Procurement Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Procurements Records?<br />
	      </div>
<?
                if(@in_array(6, $UserRights))
                {
?>
                <div align="right">
			
                </div> 
              
                <div style="border-width: thin; border-style: dashed; padding: 10px; border-color: #85B5D9;">
                    <label for="txtStartDate" style="float:left; margin-right: 8px;">Start Date</label>
                    <div class="date" style="float:left; margin-right: 8px;"><input type="text" name="txtStartDate" id="txtStartDate" value="<?= $sStartDate ?>" maxlength="10" size="10" class="textbox" readonly /></div>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="txtEndDate" style="float:left; margin-right: 8px;">End Date</label>
                    <div class="date" style="float:left; margin-right: 8px;"><input type="text" name="txtEndDate" id="txtEndDate" value="<?= $sEndDate ?>" maxlength="10" size="10" class="textbox" readonly /></div>
                    <button id="BtnExport" style="float:right; margin-top: -3px;" rel="<?= (SITE_URL.ADMIN_CP_DIR) ?>/<?= $sCurDir ?>/export-inventory.php">Export Inventory Report</button>
                </div>
		  <br />
<?
                }
?>

		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_inventory') ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="25%">Lot Number</th>
                              <th width="15%">Date Time</th>
			      <th width="10%">Total Quantity</th>
                              <th width="30%">Remarks</th>
			      <th width="15%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT id, remarks, po_number, created_at, modified_at,
                                (SELECT SUM(quantity) FROM tbl_inventory_details WHERE inventory_id=tbl_inventory.id) AS _TotalQuantity,
                                (SELECT name FROM tbl_admins WHERE id=tbl_inventory.created_by) AS _CreatedBy,
                                (SELECT name FROM tbl_admins WHERE id=tbl_inventory.modified_by) AS _ModifiedBy
		        FROM tbl_inventory
                        ORDER BY id";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId         = $objDb->getField($i, "id");
			$iPoNumber   = $objDb->getField($i, "po_number");
                        $sRemarks    = $objDb->getField($i, "remarks");
			$iQuantity   = $objDb->getField($i, "_TotalQuantity");
                        $sCreatedAt  = $objDb->getField($i, "created_at");
			$sCreatedBy  = $objDb->getField($i, "_CreatedBy");
			$sModifiedAt = $objDb->getField($i, "modified_at");
			$sModifiedBy = $objDb->getField($i, "_ModifiedBy");

			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= str_pad($iId, 3, '0', STR_PAD_LEFT) ?></td>
		          <td><?= $iPoNumber ?></td>
		          <td><?= $sCreatedAt ?></td>
		          <td><?= $iQuantity ?></td>
                          <td><?= $sRemarks ?></td>

		          <td>
		            <img class="icon details" id="<?= $iId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" />
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
					<img class="icnEdit" id="<?= $iId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" />
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
					<img class="icnDelete" id="<?= $iId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" />
<?
			}
?>
					<img class="icnView" id="<?= $iId ?>" src="images/icons/view.gif" alt="View" title="View" />
                                        <a href="inventory/export-barcodes.php?Id=<?= $iId ?>"><img src="../images/icons/barcode.png" width="16" height="16" alt="Bar Codes" title="Bar Codes" /></a>
		          </td>
		        </tr>
<?
		}
	}
?>
	          </tbody>
            </table>
		  </div>

	      <div id="SelectButtons"<?= (($iTotalRecords > 5 && $sUserRights["Delete"] == "Y") ? '' : ' class="hidden"') ?>>
	        <div class="br10"></div>

	        <div align="right">
		      <button id="BtnSelectAll">Select All</button>
		      <button id="BtnSelectNone">Clear Selection</button>
		    </div>
	      </div>
		</div>


<?
	if ($sUserRights["Add"] == "Y")
	{
		
?>
		<div id="tabs-2">
		  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
		    <input type="hidden" name="DuplicateDocument" id="DuplicateDocument" value="0" />
			<div id="RecordMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
				<td width="220">
                                    <br/>
                                    
                                  <label for="txtPoNumber">Lot Number</label>
				  <div><input type="text" name="txtPoNumber" id="txtPoNumber" value="<?= IO::strValue("txtPoNumber") ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>

				  <label for="txtRemarks">Remarks</label>
                                  <div><textarea name="txtRemarks" id="txtRemarks" rows="7" cols="23"><?=IO::strValue('txtRemarks')?></textarea></div>
                                  <div class="br10"></div>
                                  <br />
				  <button id="BtnSave">Save Inventory</button>
				  <button id="BtnReset">Clear</button>
				</td>
                                
                              <td align="right"  width="950">
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
                                          <td style="width:9%;"><h3>Unit Price</h3></td>
                                          <td style="width:10%;"><h3>Expiry Date</h3></td>
                                      </tr>
                                      <tr>
                                          <td>1</td>
                                          <td id="itemId">
                                              <select name="ddItem[]" style="width:160px;">
<?
                                              foreach ($sIngredientsList as $iIngredient => $sIngredient)
                                              {
?>
                                                  <option value="<?=$iIngredient?>"><?=$sIngredient?></option>
<?
                                              }
?>
                                              </select>    
                                          </td>
                                          
                                          <td id="itemType">
                                              <select name="ddItemType[]" id="ddItemType" style="width:80px;">
                                                  <option value="L">Local</option>
                                                  <option value="I">Imported</option>
                                              </select>    
                                          </td>
                                          
                                          <td id="itemLocation">
                                              <select name="ddItemLocation[]" id="ddItemLocation1" style="width:90px;">
                                           <option value=""></option>
<?
                                            $sLocationsList = getList("tbl_locations", "id", "title", "status='A'");

                                            foreach ($sLocationsList as $iLocation => $sLocation)
                                            {
?>
                                                <option value="<?= $iLocation ?>"<?= ((IO::intValue('ddItemLocation') == $iLocation) ? ' selected' : '') ?>><?= $sLocation ?></option>
<?
                                            }
                                          
                                          ?>
                                              </select>
                                          </td>
                                          
                                          <td id="itemSupplier">
                                              <select name="ddItemSupplier[]" id="ddItemSupplier1" style="width:80px;">
                                           <option value=""></option>
<?
                                            $sSuppliersList = getList("tbl_suppliers", "id", "name", "status='A'");

                                            foreach ($sSuppliersList as $iSupplier => $sSupplier)
                                            {
?>
                                                <option value="<?= $iSupplier ?>"<?= ((IO::intValue('ddItemSupplier') == $iSupplier) ? ' selected' : '') ?>><?= $sSupplier ?></option>
<?
                                            }
                                          
                                          ?>
                                              </select>
                                          </td>
                                          
                                         <td id="itemOrigin">
				    <select name="ddCountry[]" id="ddCountry1" style="width:80px;">
					  <option value=""></option>
<?
                                    foreach ($sCountries as $iCountry => $sCountry)
                                    {
?>
					  <option value="<?= $iCountry ?>"<?= ((IO::intValue('ddCountry') == $iCountry) ? ' selected' : '') ?>><?= $sCountry ?></option>
<?
                                    }
?>
				    </select>
                                         </td>
                                          
                                          <td>
                                              <input type="text" size="5" name="txtQuantity[]" id="txtQuantity1" value="<?= IO::strValue("txtQuantity[]") ?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          
                                          <td>
                                              <input type="text" size="5" name="txtWeight[]" id="txtWeight1" value="<?= IO::strValue("txtWeight[]") ?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          
                                          <td>
                                              <input type="text" size="5" name="txtPrice[]" id="txtPrice1" value="<?= IO::strValue("txtPrice[]") ?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          
                                          <td id="ExpiryDateId">
                                              <div class="date" style="display:inline-block;"><input type="text" name="txtExpiry[]" id="txtExpiry1"  class="textbox" value="" maxlength="10" size="10" style='width:63%; display: inline;' readonly /></div>
                                          </td>

                                      </tr>    
                                  </table>
                                      <br/>
                                        <input type="hidden" name="CountRows" id="CountRows" value="1"/>
                                        <a id="BtnAddRow" onclick="AddNewRow()">Add New Item [+]</a>
                                        <a id="BtnDelRow" onclick="DeleteRow()">Remove Last Item [-]</a>
                                  </div>
                              </td>   
                              <td>
                                  &nbsp;
                              </td>
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
<script type="text/javascript">
	    <!--

    var i=2;
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
        

        cell1.innerHTML = i;
        cell2.innerHTML = document.getElementById("itemId").innerHTML;
        cell3.innerHTML = document.getElementById("itemType").innerHTML;
        cell4.innerHTML = document.getElementById("itemLocation").innerHTML;   
        cell5.innerHTML = document.getElementById("itemSupplier").innerHTML;  
        cell6.innerHTML = document.getElementById("itemOrigin").innerHTML;  
        cell7.innerHTML = "<input type='text' size='5' class='textbox' name='txtQuantity[]' value=''  style='width:95%;'/>";
        cell8.innerHTML = "<input type='text' size='5' class='textbox' name='txtWeight[]' value='' style='width:95%;'/>";
        cell9.innerHTML = "<input type='text' size='5' class='textbox' name='txtPrice[]' value=''  style='width:95%;'/>";
        cell10.innerHTML = "<div class='date'><input type='text' name='txtExpiry[]' id='txtExpiry"+i+"' class='textbox' value='' maxlength='10' size='10' style='width:63%;' readonly /></div>";
        
        
        $("#txtExpiry"+i).datepicker(
	{
		showOn          : "both",
		buttonImage     : "images/icons/calendar.gif",
		buttonImageOnly : true,
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