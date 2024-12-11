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


	$iOrderId = IO::intValue("OrderId");
	$iIndex  = IO::intValue("Index");
        
        $sItemsList         = getList("tbl_products", "id", "name");
        $sPricesList        = getList("tbl_products", "id", "price");
        $sFloorsList        = getList("tbl_floors", "id", "name");
        $sTablesList        = getList("tbl_tables", "id", "table_no");
        $sUsersList         = getList("tbl_admins", "id", "name", "status='A'");
        $sMealsList         = getList("tbl_meals", "id", "meal");
        $sCategoriesList    = getList("tbl_categories", "id", "category");
        $UserRights         = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
        
        $sNetPriceList = array();
        foreach($sPricesList as $iItem => $sPrice)
        {
            $sNetPriceList [$iItem] = number_format(($sPrice + ($sPrice*PER_ITEM_GST)), 2, '.', '');
        }
        
	if ($_POST)
		@include("update-order.php");


	$sSQL = "SELECT * FROM tbl_orders WHERE id='$iOrderId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$iTableId      = $objDb->getField(0, "table_id");
        $iTotalGuest   = $objDb->getField(0, "total_guests");
        $iWaiterId     = $objDb->getField(0, "waiter_id");        
        $sGuestName    = $objDb->getField(0, "guest_name");        
        $sGuestEmail   = $objDb->getField(0, "guest_email");        
        $sGuestPhone   = $objDb->getField(0, "guest_phone");        
        $sRemarks      = $objDb->getField(0, "remarks");  
        $sStatus       = $objDb->getField(0, "status");
        $iReserved     = $objDb->getField(0, "reservation_id");
        $sCreatedDate  = date("Y-m-d", strtotime($objDb->getField(0, "created_at")));
        $sCreatedTime  = ltrim(date("H:i", (strtotime($objDb->getField(0, "created_at"))-(3600*12))), '0');

        switch ($sStatus)
        {
            case "A" : $sStatus = "Active"; break;
            case "B" : $sStatus = "Bumped"; break;
            case "C" : $sStatus = "Completed"; break;
            default  : $sStatus = "N/A"; break;
        }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-order.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="OrderId" id="OrderId" value="<?= $iOrderId ?>" />
        <input type="hidden" name="ddStatus" id="ddStatus" value="<?= $sStatus ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tr valign="top">
				<td width="30%">
                                    <br/>
                                  
                                  <h4>Section #1</h4>  
                                  <?
                            if(@in_array(11, $UserRights))
                            {
?>
                                  <div class="br10"></div>
                                  <label for="txtOrderDate">Order Date & Time</label>
                                  <div>
                                      <div class="date" style="display:inline;"><input type="text" name="txtOrderDate" id="txtOrderDate" value="<?= $sCreatedDate ?>" maxlength="10" size="10" class="textbox" readonly /></div>
                                      <div style="display:inline;">
                                        <select name="txtOrderTime" id="txtOrderTime">
                                         <?php
                                             //Time Loop
                                             $inc = 15 * 60;
                                             $start = ( strtotime( '1PM' ) ); // 1  PM
                                             $end = ( strtotime( '11:59PM' ) ); // 11:30 PM


                                             for ( $i = $start; $i <= $end; $i += $inc ) {
                                                     // to the standart format
                                                     $time      = date( 'g:i a', $i );
                                                     $timeValue = date( 'g:ia', $i );
                                                     $default   = $sCreatedTime."pm";
                                                     
                                                     if($time == '4:00 pm' || $time == '4:15 pm' || $time == '4:30 pm' || $time == '4:45 pm' || $time == '5:00 pm' || $time == '5:15 pm' || $time == '5:30 pm' || $time == '5:45 pm' || $time == '6:00 pm' || $time == '6:15 pm' || $time == '6:30 pm' || $time == '6:45 pm')
                                                         continue;

                                                     echo "<option value=\"$timeValue\" " . ( ( $timeValue == $default ) ? ' selected="selected" ' : "" ) . ">$time</option>" . PHP_EOL;
                                             }

                                             ?>
                                            </select>
                                        </div>    
                                  </div>
                                  <div class="br10"></div>
<?
                            }
                            else
                            {
?>
                                  <input type="hidden" name="txtOrderDate" id="txtOrderDate" value="<?= $sCreatedDate ?>" />
<?
                            }    
?>
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
                                                  <option value="<?=$iTable?>" <?=($iTableId == $iTable)?'selected':''?>><?=$sTable?></option>
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
                                  
                                   <label for="ddReservation">Select Reservation</label>
                                  <div>
                                       <select name="ddReservation" id="ddReservation">
<?
                                              $sReservation = getList("tbl_reservations", "id", "CONCAT(name, ' :: ', phone)", "table_id = '$iTableId' AND date_time LIKE '".$sCreatedDate."%'");
                                            
                                              foreach ($sReservation as $iReservation => $sReservaer)
                                              {
?>
                                                  <option value="<?=$iReservation?>" <?=($iReserved == $iReservation)?'selected':''?>><?=$sReservaer?></option>
<?
                                              }
?>
                                        </select>    
                                  </div>
                                   
                                  <div class="br10"></div>
                                  <label for="txtGuests">Total Guests</label>
                                  <div>
                                  <input type="text" size="5" name="txtGuests" id="txtGuests" value="<?= $iTotalGuest ?>" size="20" class="textbox" />
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
                                                  <option value="<?=$iWaiter?>" <?=($iWaiterId == $iWaiter)?'selected':''?>><?=$sWaiter?></option>
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
                                  <input type="text" size="20" name="txtGuestName" id="txtGuestName" value="<?= $sGuestName ?>" size="20" class="textbox" />
                                  </div>
                                  
                                  <div class="br10"></div>
                                  <label for="txtGuestEmail">Guest Email</label>
                                  <div>
                                  <input type="text" size="20" name="txtGuestEmail" id="txtGuestEmail" value="<?= $sGuestEmail ?>" size="20" class="textbox" />
                                  </div>

                                  <div class="br10"></div>
                                  <label for="txtGuestPhone">Guest Phone</label>
                                  <div>
                                  <input type="text" size="20" name="txtGuestPhone" id="txtGuestPhone" value="<?= $sGuestPhone ?>" size="20" class="textbox" />
                                  </div>
                                  
                                  <div class="br10"></div>
                                  <label for="txtRemarks">Guest Remarks</label>
                                  <div><textarea name="txtRemarks" id="txtRemarks" rows="7" cols="23"><?=$sRemarks?></textarea></div>
                                  <div class="br10"></div>
                                  <br />
                                  
				  <button id="BtnSave">Save Order</button>
				  <button id="BtnCancel">Cancel</button>
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
<?
                                    $sSQL = "SELECT *
                                        FROM tbl_order_details
                                        WHERE order_id='$iOrderId' AND status NOT IN ('V','VP','VC')";
             
                                    $objDb->query($sSQL);

                                    $iCount = $objDb->getCount( );

                                    $iTotalPrice = 0;
                                    $iTotalNetPrice = 0;
                                    
                                    for ($i = 0; $i < $iCount; $i ++)
                                    {
                                            $iId        = $objDb->getField($i, "id");
                                            $iProductId = $objDb->getField($i, "product_id");
                                            $iQuantity  = $objDb->getField($i, "quantity");
                                            $iPrice     = $objDb->getField($i, "price");
                                            $sDStatus   = $objDb->getField($i, "status");
                                            $iNetPrice  = $objDb->getField($i, "net_price");
                                            
                                            if(@in_array($sDStatus, array('F','V','VP','VC')))
                                            {
                                                $iPrice = 0;
                                                $iNetPrice = 0;
                                            }
                                            
                                            $iTotalPrice += $iPrice;
                                            $iTotalNetPrice += $iNetPrice;
?>
                                      <tr>
                                          <td>
                                                <?=$i+1?>
                                                <input type="hidden" name="IdsArray[]" value="<?=$iId?>">
                                                <input type="hidden" name="ddStatuses[]" value="<?=$sDStatus?>">
                                          </td>
                                          <td id="itemId">
                                               <select style="width:200px;" name="ddItems[]" id="ddItem_<?=$i?>" onchange="UpdateItemPrice(this.value, this.id)">
<?
                                foreach($sMealsList as $iMeal => $sMeal)
                                {
?>
                                            <optgroup style="color: white; background-color: gray;" label="Meal : <?=$sMeal?>">
<?
                                            $sCategories = getList("tbl_categories c, tbl_products p", "c.id", "c.category", "c.id=p.category_id AND p.meal_id='$iMeal'");
                                            
                                            foreach ($sCategories as $iCategory => $sCategory)
                                            {                                                
?>                                           
                                                <optgroup label="<?=$sCategory?>">
<?
                                              $sItems   = getList("tbl_products", "id", "name", "category_id='$iCategory' AND meal_id='$iMeal'");
                                            
                                              foreach ($sItems as $iItem => $sItem)
                                              {
?>
                                                  <option value="<?=$iItem?>" <?=($iProductId == $iItem)?'selected':''?>><?=$sItem?></option>
<?
                                              }
?>
                                                  </optgroup>
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
                                              <input type="text" size="5" name="txtQuantity[]" onchange="UpdateQtyPrice(this.value, this.id)" id="txtQuantity_<?=$i?>" value="<?= $iQuantity ?>" class="textbox" />
                                          </td> 
                                          <td>
                                               <input type="text" size="5" name="txtPrice[]" id="txtPrice<?=$i?>" value="<?=$iPrice?>" class="textbox" readonly />
                                          </td> 
                                          <td>
                                              <input type="text" size="5" name="txtNetPrice[]" id="txtNetPrice<?=$i?>" value="<?=$iNetPrice?>" class="textbox" readonly />
                                          </td>
                                      </tr>   
<?
                                    }
?>
                                  </table>
                                      <br/>
                                      <table id="TotalsTable" border="0" cellspacing="5" cellpadding="5" width="600">
                                          <tr>
                                              <td colspan="3">&nbsp;</td>
                                              <td colspan="2">
                                                  <h4>Gross Total: (<span id="TotalPriceId"><?=$iTotalPrice?></span>)</h4>
                                                  <h4>Tax: (<span id="TotalTaxId"><?=$iTotalNetPrice - $iTotalPrice?></span>)</h4>
                                                  <h4>Net Total: (<span id="NetTotalPriceId"><?=$iTotalNetPrice?></span>)</h4>
                                              </td>
                                          </tr>
                                      </table>
                                      <br/>
                                      <input type="hidden" name="CountRows" id="CountRows" value="<?=$i?>"/>
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

<script type="text/javascript">
<!--
    var i=document.getElementById("CountRows").value;
    
    
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

        var items = "<input type='hidden' name='IdsArray[]' value='0'><input type='hidden' name='ddStatuses[]' value='A'><select style='width:200px;' name='ddItems[]' id='ddItem_"+i+"' onchange='UpdateItemPrice(this.value, this.id)'>";
    
<?
            $ItemsSelect = "<option></option>";

        foreach($sMealsList as $iMeal => $sMeal)
        {
            $ItemsSelect .= "<optgroup style='color: white; background-color: gray;' label='Meal : ".$sMeal."'>";
            
            $sCategories = getList("tbl_categories c, tbl_products p", "c.id", "c.category", "c.id=p.category_id AND p.meal_id='$iMeal'");
            
            foreach ($sCategories as $iCategory => $sCategory)
            {                                                
                $ItemsSelect .= "<optgroup label='".$sCategory."'>";

                $sItems   = getList("tbl_products", "id", "name", "category_id='$iCategory' AND meal_id='$iMeal'");

                foreach ($sItems as $iItem => $sItem)
                {
                   $ItemsSelect .= "<option value='".$iItem."' ".((in_array($iItem, IO::getArray("ddItems")))?'selected':'').">".$sItem."</option>";
                }

                $ItemsSelect .= "</optgroup>";
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
        
        
        var Prices = <?php echo json_encode($sPricesList) ?>;
        var NetPrices   = <?php echo json_encode($sNetPriceList) ?>;
        var itemId = $("#ddItem_"+i+" option:selected").val();
        document.getElementById("txtPrice"+i).value = Prices[itemId];
        document.getElementById("txtNetPrice"+i).value = NetPrices[itemId];
        
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
        }
        
        document.getElementById("CountRows").value = i;
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