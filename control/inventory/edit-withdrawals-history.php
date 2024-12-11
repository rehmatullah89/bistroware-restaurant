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


	$iHistoryId = IO::intValue("HistoryId");
	$iIndex     = IO::intValue("Index");
       
        $sWastedReasons     = getList("tbl_wastage_reasons", "id", "reason", "status='A'");
        $sIngredientsList   = getList("tbl_ingredients", "id", "title");

	if ($_POST)
		@include("update-withdrawals-history.php");


	$sSQL = "SELECT qty_wt_wasted,wasted_reason_id,comments,
                    (SELECT ingredient_id from tbl_inventory_details WHERE tbl_inventory_history.inventory_detail_id = id) as _IngredientId
                    FROM tbl_inventory_history WHERE id='$iHistoryId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

        $iIngredientId      = $objDb->getField(0, "_IngredientId");
	$iQtyWtWasted       = $objDb->getField(0, "qty_wt_wasted");
        $iWastedReasonId    = $objDb->getField(0, "wasted_reason_id");
        $sComments          = $objDb->getField(0, "comments");
        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-withdrawal-history.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="HistoryId" id="HistoryId" value="<?= $iHistoryId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

        <table border="0" cellspacing="0" cellpadding="0" width="100%" style="margin-left: auto; margin-right: auto;">
	  <tr valign="top">
		<td>
                        <br/>

                                <h3><?=$sIngredientsList[$iIngredientId]?></h3><br/><br/>
                                <label for="txtQtyWtWasted">Qty/Weight Wasted</label>
				  <div><input type="text" name="txtQtyWtWasted" id="txtQtyWtWasted" value="<?= $iQtyWtWasted ?>" size="20" class="textbox" /></div>												  
				  <div class="br10"></div>

				  <label for="ddWastedReason">Wasted Item Reason</label>

				  <div>
				    <select name="ddWastedReason" id="ddWastedReason">
					  <option value=""></option>
<?
		foreach ($sWastedReasons as $iWastedReason => $sWastedReason)
		{
?>
					  <option value="<?= $iWastedReason ?>"<?= (($iWastedReasonId == $iWastedReason) ? ' selected' : '') ?>><?= $sWastedReason ?></option>
<?
		}
?>
				    </select>
				  </div>
                                <div class="br10"></div>
                                 <label for="txtComments">Comments</label>
				  <div>
                                      <textarea name="txtComments" id="txtComments" cols="20" rows="5"></textarea>
				  </div>

				  <br />
				  <button id="BtnSave">Save Record</button>
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