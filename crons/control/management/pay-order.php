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
        
        
	if ($_POST)
		@include("save-pay-order.php");

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
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="OrderId" id="OrderId" value="<?= $iOrderId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

        <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center" style="margin-top:20px;">
                <tr>
                    <td width="120"><b>Payment Mode:</b></td><td><select name="PMode"><option value="P">Cash</option><option value="C">Credit/Debit Card</option></select></td>
                </tr>
                <tr>
                    <td><b>Bill Amount:</b></td><td><input type="text" name="BillAmt" id="BillAmt" value="" class="text"></td>
                </tr>
                <tr>
                    <td><b>Status:</b></td><td><select name="PStatus"><option value="C">Completed</option><option value="B">Bumped</option><option value="A">Active</option></select></td>
                </tr>

                <tr>
                    <td colspan="3">
                        <button id="BtnSave">Save Payment</button>
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