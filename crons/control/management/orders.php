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

	if ($_POST)
		@include("save-order.php");        
        
        $sItemsList         = getList("tbl_products", "id", "name");
        $sPricesList        = getList("tbl_products", "id", "price");
        $sFloorsList        = getList("tbl_floors", "id", "name");
        $sTablesList        = getList("tbl_tables", "id", "table_no");
        $sUsersList         = getList("tbl_admins", "id", "name", "status='A'");
        $sCategoriesList    = getList("tbl_categories", "id", "category");
        $UserRights       = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
        
        $sNetPriceList = array();
        foreach($sPricesList as $iItem => $sPrice)
        {
            $sNetPriceList [$iItem] = number_format(($sPrice + ($sPrice*PER_ITEM_GST)), 2, '.', '');
        }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/orders.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Orders</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Order</a></li>
<?
	}

?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Order Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Orders Records?<br />
	      </div>
		
		  <br />


		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_orders') ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="18%">Table No</th>
                              <th width="10%">Total Guests</th>
                              <th width="15%">Waiter</th>
                              <th width="15%">Date Time</th>
			      <th width="10%">Net Bill</th>
                              <th width="10%">Status</th>
			      <th width="17%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT id, table_id, total_guests, waiter_id, remarks, status, created_at, modified_at,
                                (SELECT SUM(net_price) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status NOT IN ('V', 'F') ) AS _TotalBill,
                                (SELECT COUNT(1) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status = 'R') AS _Voids,
                                (SELECT COUNT(1) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status = 'FR') AS _FreeRequests,
                                (SELECT name FROM tbl_admins WHERE id=tbl_orders.created_by) AS _CreatedBy,
                                (SELECT name FROM tbl_admins WHERE id=tbl_orders.modified_by) AS _ModifiedBy
		        FROM tbl_orders
                        ORDER BY id";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId                = $objDb->getField($i, "id");
			$iTable             = $objDb->getField($i, "table_id");
                        $iTotalGuest        = $objDb->getField($i, "total_guests");
                        $iWaiter            = $objDb->getField($i, "waiter_id");
			$iTotalBill         = $objDb->getField($i, "_TotalBill");
                        $iFreeMealRequest   = $objDb->getField($i, "_FreeRequests");
                        $iVoids             = $objDb->getField($i, "_Voids");
                        $sStatus            = $objDb->getField($i, "status");
                        $sCreatedAt         = $objDb->getField($i, "created_at");
			$sCreatedBy         = $objDb->getField($i, "_CreatedBy");
			$sModifiedAt        = $objDb->getField($i, "modified_at");
			$sModifiedBy        = $objDb->getField($i, "_ModifiedBy");

                        switch ($sStatus)
			{
                                case "A" : $sStatus = "Active"; break;
                                case "B" : $sStatus = "Bumped"; break;
				case "C" : $sStatus = "Completed"; break;
				default  : $sStatus = "N/A"; break;
			}
                        
			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
                          <tr id="<?= $iId ?>" style="<?=($iVoids>0?'background-color:#ffcccc !important;':'')?>">
		          <td class="position"><?= str_pad($iId, 3, '0', STR_PAD_LEFT) ?></td>
		          <td><?= $sTablesList[$iTable] ?></td>
                          <td><?= $iTotalGuest ?></td>
                          <td><?= $sUsersList[$iWaiter] ?></td>
		          <td><?= $sCreatedAt ?></td>
                          <td><?= formatNumber($iTotalBill, false) ?></td>
                          <td><?= $sStatus ?></td>
		          <td>
		            <img class="icon details" id="<?= $iId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" />
<?
                        if(@in_array(9, $UserRights))
                        {
?>
                            <img class="icnToggle" id="<?= $iId ?>" res="<?=$sStatus?>" src="images/icons/<?=strtolower($sStatus)?>.png" alt="Toggle Status" title="Toggle Status" />
<?
                        }
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
                        
                        if(@in_array(7, $UserRights))
                        {
?>
                                <img class="icon icnVoid" id="<?= $iId ?>" src="images/icons/negtive.png" width="10" alt="Void Order" title="Void Order" />
<?
                        }
                        
                        if(@in_array(8, $UserRights) && $iFreeMealRequest >0)
                        {
?>
                                <img class="icon icnFreeMeal" style="width:25px !important" id="<?= $iId ?>" src="images/icons/free.gif" alt="Free Meal Request" title="Free Meal Request" />
<?
                        }
?>
					<img class="icnView" id="<?= $iId ?>" src="images/icons/view.gif" alt="View" title="View" />
                                        <a href="management/print-order-bill.php?Id=<?= $iId ?>"><img src="../images/icons/print.png" width="16" height="16" alt="Print Bill" title="Print Bill" /></a>
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
				<td width="30%">
                                    <br/>
                                  
                                  <h4>Section #1</h4>  
                                  
                                  <label for="ddTable">Select Table</label>
                                  <div>
                                       <select name="ddTable" id="ddTable">
<?
                                            foreach ($sFloorsList as $iFloor => $sFloor)
                                            {                                                
?>                                           
                                                <optgroup label="<?=$sFloor?>">
<?
                                              $sTables = getList("tbl_tables", "id", "table_no", "floor_id = '$iFloor'");
                                            
                                              foreach ($sTables as $iTable => $sTable)
                                              {
?>
                                                  <option value="<?=$iTable?>" <?=(IO::intValue("ddTable") == $iTable)?'selected':''?>><?=$sTable?></option>
<?
                                              }
?>
                                                  </optgroup>
<?
                                        }
?>
                                              </select>    
                                  </div>
                                  
                                  <div class="br10"></div>
                                  <label for="txtGuests">Total Guests</label>
                                  <div>
                                  <input type="text" size="5" name="txtGuests" id="txtGuests" value="<?= IO::intValue("txtGuests") ?>" size="20" class="textbox" />
                                  </div>

                                  <div class="br10"></div>
                                  <label for="ddWaiter">Select Waiter</label>
                                  <div>
                                   <select name="ddWaiter" id="ddWaiter">
                                           <option value=""></option>
<?
                                              foreach ($sUsersList as $iWaiter => $sWaiter)
                                              {
?>
                                                  <option value="<?=$iWaiter?>" <?=(IO::intValue("ddWaiter") == $iWaiter)?'selected':''?>><?=$sWaiter?></option>
<?
                                              }
?>
                                              </select>    
                                  </div>
                                 
                                  <div class="br10"></div><br/>
                                  
                                  
                                  <h4>Section #2 (Optional)</h4>
                                  
                                  <div class="br10"></div>
                                  <label for="txtGuestName">Guest Name</label>
                                  <div>
                                  <input type="text" size="20" name="txtGuestName" id="txtGuestName" value="<?= IO::strValue("txtGuestName") ?>" size="20" class="textbox" />
                                  </div>
                                  
                                  <div class="br10"></div>
                                  <label for="txtGuestEmail">Guest Email</label>
                                  <div>
                                  <input type="text" size="20" name="txtGuestEmail" id="txtGuestEmail" value="<?= IO::strValue("txtGuestEmail") ?>" size="20" class="textbox" />
                                  </div>

                                  <div class="br10"></div>
                                  <label for="txtGuestPhone">Guest Phone</label>
                                  <div>
                                  <input type="text" size="20" name="txtGuestPhone" id="txtGuestPhone" value="<?= IO::strValue("txtGuestPhone") ?>" size="20" class="textbox" />
                                  </div>
                                  
                                  <div class="br10"></div>
                                  <label for="txtRemarks">Guest Remarks</label>
                                  <div><textarea name="txtRemarks" id="txtRemarks" rows="7" cols="23"><?=IO::strValue('txtRemarks')?></textarea></div>
                                  <div class="br10"></div>
                                  <br />
                                  
				  <button id="BtnSave">Save Order</button>
				  <button id="BtnReset">Clear</button>
				</td>
                              
                              <td width="10%">&nbsp;</td>
                              
                              <td style="width: 50%;" align="right">
                                  <div>
                                  <table id="ItemsTable" border="0" cellspacing="5" cellpadding="5" width="600">
                                      <tr>
                                          <td style="width:50px;">#</td>
                                          <td style="width:200px;"><h2>Item</h2></td>
                                          <td style="width:150px;"><h2>Quantity</h2></td>
                                          <td style="width:100px;"><h2>Price</h2></td>
                                          <td style="width:100px;"><h2>Net Price</h2></td>
                                      </tr>
                                      <tr>
                                          <td>1</td>
                                          <td id="itemId">
                                              <select style="width:200px;" name="ddItems[]" id="ddItem_0" onchange="UpdateItemPrice(this.value, this.id)">
                                                  <option value=""></option>
<?
                                            foreach ($sCategoriesList as $iCategory => $sCategory)
                                            {                                                
?>                                           
                                                <optgroup label="<?=$sCategory?>">
<?
                                              $sItems   = getList("tbl_products", "id", "name", "category_id='$iCategory'");
                                            
                                              foreach ($sItems as $iItem => $sItem)
                                              {
?>
                                                  <option value="<?=$iItem?>" <?=(in_array($iItem, IO::getArray("ddItems")))?'selected':''?>><?=$sItem?></option>
<?
                                              }
?>
                                                  </optgroup>
<?
                                            }
?>
                                              </select>       
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtQuantity[]" id="txtQuantity_0" onchange="UpdateQtyPrice(this.value, this.id)"  value="0" class="textbox" />
                                          </td>                                          
                                          <td>
                                              <input type="text" size="5" name="txtPrice[]" id="txtPrice0" value="" class="textbox" readonly />
                                          </td>                                          
                                          <td>
                                              <input type="text" size="5" name="txtNetPrice[]" id="txtNetPrice0" value="" class="textbox" readonly />
                                          </td>                                          
                                      </tr>    
                                  </table>
                                      <br/>
                                      <table id="TotalsTable" border="0" cellspacing="5" cellpadding="5" width="600">
                                          <tr>
                                              <td colspan="3">&nbsp;</td>
                                              <td colspan="2">
                                                  <h4>Gross Total: (<span id="TotalPriceId"></span>)</h4>
                                                  <h4>Tax: (<span id="TotalTaxId"></span>)</h4>
                                                  <h4>Net Total: (<span id="NetTotalPriceId"></span>)</h4>
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

   
    
    document.getElementById("txtPrice0").value    = 0;
    document.getElementById("txtNetPrice0").value = 0;
    
    document.getElementById("TotalPriceId").innerHTML    = 0;
    document.getElementById("TotalTaxId").innerHTML    = 0;
    document.getElementById("NetTotalPriceId").innerHTML = 0;
    
    var i = 1;
     
    function AddNewRow() 
    {
        var table = document.getElementById("ItemsTable");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);

        var items = "<select style='width:200px;' name='ddItems[]' id='ddItem_"+i+"' onchange='UpdateItemPrice(this.value, this.id)'><option value=''></option>";
    
<?
            $ItemsSelect = "";

            foreach ($sCategoriesList as $iCategory => $sCategory)
            {                                                
                $ItemsSelect .= "<optgroup label='".$sCategory."'>";

                $sItems   = getList("tbl_products", "id", "name", "category_id='$iCategory'");

                foreach ($sItems as $iItem => $sItem)
                {
                   $ItemsSelect .= "<option value='".$iItem."' ".((in_array($iItem, IO::getArray("ddItems")))?'selected':'').">".$sItem."</option>";
                }

                $ItemsSelect .= "</optgroup>";
            }

                $ItemsSelect .= "</select>";
?>
        cell1.innerHTML = parseInt(i) + parseInt(1);
        cell2.innerHTML = items+"<?=$ItemsSelect?>";
        cell3.innerHTML = "<input type='text' size='5' class='textbox' name='txtQuantity[]' id='txtQuantity_"+i+"' onchange='UpdateQtyPrice(this.value, this.id)' value='1' />";
        cell4.innerHTML = "<input type='text' size='5' class='textbox' name='txtPrice[]' id='txtPrice"+i+"' value='' readOnly/>";
        cell5.innerHTML = "<input type='text' size='5' class='textbox' name='txtNetPrice[]' id='txtNetPrice"+i+"' value='' readOnly/>";
        
        
        document.getElementById("txtPrice"+i).value = 0;
        document.getElementById("txtNetPrice"+i).value = 0;
        
        i++;
        document.getElementById("CountRows").value = i;
        
        UpdateTotals(i);
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
        
        UpdateTotals(i);
    }
    
    
   function UpdateItemPrice(val, str)
   {
        var res = str.split("_");
        
        var Prices      = <?php echo json_encode($sPricesList) ?>;
        var NetPrices   = <?php echo json_encode($sNetPriceList) ?>;
        document.getElementById("txtQuantity_"+res[1]).value = 1;
        document.getElementById("txtPrice"+res[1]).value = Prices[val];
        document.getElementById("txtNetPrice"+res[1]).value = NetPrices[val];
        
        UpdateTotals(document.getElementById("CountRows").value);
   }
   
   function UpdateQtyPrice(val, str)
   {
        var res = str.split("_");
        
        var Prices = <?php echo json_encode($sPricesList) ?>;
        var NetPrices   = <?php echo json_encode($sNetPriceList) ?>;
        var itemId = $("#ddItem_"+res[1]+" option:selected").val();
        document.getElementById("txtPrice"+res[1]).value = Prices[itemId] * val;
        document.getElementById("txtNetPrice"+res[1]).value = NetPrices[itemId] * val;
        
        UpdateTotals(document.getElementById("CountRows").value);
   }
   
   function UpdateTotals(Count)
   {
        var GrossTotal = 0;
        var NetTotal   = 0;
        
        for(j=0; j< Count; j++)
        {
            GrossTotal = parseInt(GrossTotal) + parseInt(document.getElementById("txtPrice"+j).value);
            NetTotal   = parseInt(NetTotal) + parseInt(document.getElementById("txtNetPrice"+j).value);
        }

        document.getElementById("TotalPriceId").innerHTML    = GrossTotal;
        document.getElementById("NetTotalPriceId").innerHTML = NetTotal;
        document.getElementById("TotalTaxId").innerHTML = NetTotal - GrossTotal;
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