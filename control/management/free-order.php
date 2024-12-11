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
        
        $sPriceList         = getList("tbl_products", "id", "price");
        $sCategoriesList    = getList("tbl_categories", "id", "category");

        $sNetPriceList = array();
        foreach($sPriceList as $iItem => $sPrice)
        {
            $sNetPriceList [$iItem] = number_format(($sPrice + ($sPrice*PER_ITEM_GST)), 2, '.', '');
        }
        
	if ($_POST)
		@include("update-free-order.php");


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
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-order.js"></script>
  <style>
      input[type="radio"] {
    display: none;
}

.labelClass {
  padding: 5px 10px;
  background-color: white;
  border: thin solid darkorange;
  border-radius: 10px;
  margin:5px;
  display: inline-block;
}

input[type="radio"]:checked + label {
    background-color: red;
    cursor: default;
    color: #E6E6E6;
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
	<input type="hidden" name="OrderId" id="OrderId" value="<?= $iOrderId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tr valign="top">
				
                              
                              <td>&nbsp;</td>
                              
                              <td style="width: 600px;" align="right">
                                  <div>
                                  <table id="ItemsTable" border="0" cellspacing="5" cellpadding="5" width="600">
                                      <tr>
                                          <td style="width:50px;">#</td>
                                          <td style="width:200px;"><h2>Item</h2></td>
                                          <td style="width:150px;"><h2>Quantity</h2></td>
                                          <td style="width:100px;"><h2>Price</h2></td>
                                          <td style="width:200px;"><h2>Status</h2></td>
                                      </tr>
<?
                                    $sSQL = "SELECT *
                                        FROM tbl_order_details
                                        WHERE order_id='$iOrderId'";
             
                                    $objDb->query($sSQL);

                                    $iCount = $objDb->getCount( );

                                    for ($i = 0; $i < $iCount; $i ++)
                                    {
                                            $iDetailId  = $objDb->getField($i, "id");
                                            $iProductId = $objDb->getField($i, "product_id");
                                            $iQuantity  = $objDb->getField($i, "quantity");
                                            $iPrice     = $objDb->getField($i, "price");
                                            $iNetPrice  = $objDb->getField($i, "net_price");
                                            $sStatus    = $objDb->getField($i, "status");
                                            
                                            if($sStatus == 'F' || $sStatus == 'V')
                                            {
                                                $iPrice = 0;
                                                $iNetPrice = 0;
                                            }
                                            
                                            $iTotalPrice += $iPrice;
                                            $iTotalNetPrice += $iNetPrice;                                         
?>
                                      <tr>
                                          <td><?=$i+1?></td>
                                          <td id="itemId">
                                              <select style="width:200px;" name="ddItems[]" id="ddItem_<?=$i?>" onchange="UpdateItemPrice(this.value, this.id)" disabled>
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
                                                  <option value="<?=$iItem?>" <?=($iProductId == $iItem)?'selected':''?>><?=$sItem?></option>
<?
                                              }
?>
                                                  </optgroup>
<?
                                        }
?>
                                              </select>  
                                              <input type="hidden" name="ddItems[]" id="ddItem_<?=$i?>" value="<?=$iProductId?>">
                                              <input type="hidden" name="txtDetailIds[]" value="<?=$iDetailId?>">
                                          </td>
                                          <td>
                                              <input type="text" size="5" name="txtQuantity[]" onchange="UpdateQtyPrice(this.value, this.id)" id="txtQuantity_<?=$i?>" value="<?= $iQuantity ?>" class="textbox" readonly />
                                          </td> 
                                           <td>
                                               <input type="text" size="5" name="txtPrice[]" id="txtPrice<?=$i?>" value="<?=$iPrice?>" class="textbox" readonly />
                                               <input type="hidden" name="txtNetPrice[]" id="txtNetPrice<?=$i?>" value="<?=$iNetPrice?>"/>
                                          </td> 
                                          <td>
                                              <input id="toggle-on_<?=$i?>" name="toggle<?=$i?>" value="F" type="radio" onchange="UpdatePrice(this.id, this.value)" <?=($sStatus == 'F'?'checked':'')?>/><label class="labelClass" for="toggle-on_<?=$i?>">Accepted</label>
                                              <input id="toggle-off_<?=$i?>" name="toggle<?=$i?>" value="FR" type="radio" onchange="UpdatePrice(this.id, this.value)" <?=($sStatus == 'FR'?'checked':'')?>/><label class="labelClass" for="toggle-off_<?=$i?>">Pending</label>                                              
                                          </td>
                                      </tr>   
<?
                                    }
?>
                                      <input type="hidden" name="CountRows" id="CountRows" value="<?=$i?>"/>
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
                                        <button id="BtnSave">Update Order</button>
                                        <button id="BtnCancel">Cancel</button>
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
   
    
   function UpdatePrice(str, SelectedValue)
   {

        var res = str.split("_");
        
        if(SelectedValue == 'F')
        {
            document.getElementById("txtPrice"+res[1]).value = 0;
            document.getElementById("txtNetPrice"+res[1]).value = 0;
            document.getElementById("txtQuantity_"+res[1]).value = 0;
        }
        
        else if(SelectedValue == 'FR')
        {
            var Prices = <?php echo json_encode($sPriceList) ?>;
            var NetPrices = <?php echo json_encode($sNetPriceList) ?>;
            document.getElementById("txtQuantity_"+res[1]).value = 1;
            var val = document.getElementById("ddItem_"+res[1]).value;
            document.getElementById("txtPrice"+res[1]).value = Prices[val];
            document.getElementById("txtNetPrice"+res[1]).value = NetPrices[val];
        }        
        
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