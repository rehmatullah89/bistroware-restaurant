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


	if ($sUserRights["View"] != "Y")
		exitPopup(true);


	$iOrderId = IO::intValue("OrderId");
	$iIndex  = IO::intValue("Index");
        
        $iBillAmt  = getDbValue("SUM(net_price)", "tbl_order_details", "order_id='$iOrderId' AND status NOT IN ('V','VC','VP','F')"); 
        
	if ($_POST)
		@include("save-pay-order.php");

        $UserRights = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
        
        $sSQL = "SELECT *
                    FROM tbl_payments
                    WHERE order_id = '$iOrderId'";
        $objDb->query($sSQL);

        $iAmount    = $objDb->getField(0, "amount");   
        $iCredit    = $objDb->getField(0, "credit");   
        $sStatus    = $objDb->getField(0, "discount_status");   
        $iDiscount  = $objDb->getField(0, "discount_percent");   
        $sComments  = $objDb->getField(0, "discount_comments");   
        
        if($sStatus == 'A')
        {
            $iBillAmt = $iBillAmt - ($iBillAmt*($iDiscount/100));
        }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/pay-order.js"></script>
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
      <input type="hidden" name="BillAmount" id="BillAmount" value="<?=$iBillAmt?>" />  
      
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="OrderId" id="OrderId" value="<?= $iOrderId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

        <div style="width: 100%; padding: 0px;"><h2>Pay Bill Amount</h2><hr/><b>Total <?=($sStatus == 'A'?'Discounted ':'')?>Bill: <?=$iBillAmt?></b> 
<?
            if(@in_array(12, $UserRights))
            {
?>
            <span style="float: right;"><input type="checkbox" name="ToggleId" id="ToggleId" value="1" onchange="requestDiscount(this);"/>Apply Discount</span>
<?
            }
?>
        </div>
        
        <table border="0" cellspacing="5" cellpadding="5" width="100%" align="center" style="margin-top:20px;" id="PaymentTable">
           <thead>
           </thead>
                <tr>
                    <td width="120"><b>Cash Amount</b></td>
                    <td width="20">:</td>
                    <td><input type="text" name="CashAmt" id="CashAmt" value="<?=$iAmount?>" class="text"></td>
                </tr>
                <tr>
                    <td><b>Credit Card Amt?</b></td>
                    <td width="20">:</td>
                    <td><input type="text" name="CreditAmt" id="CreditAmt" value="<?=$iCredit?>" class="text"></td>
                </tr>      
                <tr>
                   <td width="50"><b>Status</b></td>
                   <td width="20">:</td>
                   <td><select name="PStatus"><option value="C">Completed</option><option value="B">Bumped</option><option value="A">Active</option></select></td>
                </tr>
            <tr><td>&nbsp;</td></tr>
                <tr>
                    <td colspan="2"></td>  
                    <td>
                        <button id="BtnSave1" name="BtnSaveBill" value="P">Save Payment</button>
                        <button id="BtnCancel">Cancel</button>
                    </td>
                </tr>
	</table>
<?
                if(@in_array(12, $UserRights))
                {
?>
                    <table border="0" cellspacing="5" cellpadding="5" width="100%" align="center" style="margin-top:20px; display: none;" id="DiscountTable">
                    <thead>
                    </thead>
                         <tr>
                             <td width="100"><b>Discount (%)</b></td>
                             <td width="20">:</td>
                             <td>
                                <select name="Discount">
                                    <option value="5" <?=($iDiscount == '5'?'selected':'')?>>5 %</option>
                                    <option value="10" <?=($iDiscount == '10'?'selected':'')?>>10 %</option>
                                    <option value="15" <?=($iDiscount == '15'?'selected':'')?>>15 %</option>
                                    <option value="20" <?=($iDiscount == '20'?'selected':'')?>>20 %</option>
                                    <option value="25" <?=($iDiscount == '25'?'selected':'')?>>25 %</option>
                                    <option value="30" <?=($iDiscount == '30'?'selected':'')?>>30 %</option>
                                    <option value="35" <?=($iDiscount == '35'?'selected':'')?>>35 %</option>
                                    <option value="40" <?=($iDiscount == '40'?'selected':'')?>>40 %</option>
                                    <option value="45" <?=($iDiscount == '45'?'selected':'')?>>45 %</option>
                                    <option value="50" <?=($iDiscount == '50'?'selected':'')?>>50 %</option>
                                </select> 
                             </td>
                         </tr>
                        <tr>
                            <td><b>Comments</b></td>
                            <td width="20">:</td>
                            <td><textarea name="DiscountComments" cols="15" rows="3"><?=$sComments?></textarea>
                        </tr>
                        
<?
                        if(@in_array(13, $UserRights))
                        {
?>
                         <tr>
                            <td width="50"><b>Status</b></td>
                            <td width="20">:</td>
                            <td>
                                <select name="Status">
                                    <option value="">Pending</option>
                                    <option value="A" <?=($sStatus == 'A'?'selected':'')?>>Approved</option>
                                    <option value="R" <?=($sStatus == 'R'?'selected':'')?>>Rejected</option>                                    
                                </select>
                            </td>
                         </tr>
<?
                        }
                        else
                        {
?>
                        <tr>
                            <td width="50"><b>Status</b></td>
                            <td width="20">:</td>
                            <td><?=($sStatus == 'A')?'Approved':($sStatus == 'R'?'Rejected':'Pending')?></td>
                         </tr>    
                        <input type="hidden" name="Status" value="<?=$sStatus?>"/>
<?
                        }
?>
                     <tr><td>&nbsp;</td></tr>
                         <tr>
                             <td colspan="2"></td>  
                             <td>
                                 <button id="BtnSave"  name="BtnSaveBill" value="D">Save Discount</button>
                                 <button id="BtnCancel1">Cancel</button>
                             </td>
                         </tr>
                 </table>
<?
                }
?>
  </form>
</div> 
    <script>
        $(document).ready(function( )
        {
            $("#BtnCancel").button({ icons:{ primary:'ui-icon-disk' } });
            $("#BtnCancel1").button({ icons:{ primary:'ui-icon-disk' } });
            $("#BtnSave").button({ icons:{ primary:'ui-icon-disk' } });
            $("#BtnSave1").button({ icons:{ primary:'ui-icon-disk' } });
            
            
            $('#BtnCancel1').click(function( )
            {
                    parent.$.colorbox.close( );

                    return false;
            });
        });
        
        function requestDiscount(obj)
        {
            if(obj.checked)
            {
                document.getElementById("DiscountTable").style.display = "";
                document.getElementById("PaymentTable").style.display = "none";
                
                $("#BtnSave1").prop("disabled", true);
                $("#BtnSave").prop("disabled", false);
            }
            else
            {
                document.getElementById("PaymentTable").style.display = "";
                document.getElementById("DiscountTable").style.display = "none";
                
                $("#BtnSave1").prop("disabled", false);
                $("#BtnSave").prop("disabled", true);
            }            
        }
    </script>
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>