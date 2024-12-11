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

        $iTableId           = IO::intValue("TableId");
        $iOrderId           = getDbValue("id", "tbl_orders", "status='A' AND table_id='$iTableId' AND created_at LIKE '".date('Y-m-d')."%'");
        $iMaxServeTime      = getDbValue("Max(p.cooking_time)", "tbl_products p, tbl_orders o, tbl_order_details od", "o.id=od.order_id AND p.id=od.product_id AND o.status!='C' AND o.table_id='$iTableId'");
        $iFloorId           = getDbValue("floor_id", "tbl_tables", "id='$iTableId'");
        $iTotalSeats        = getDbValue("total_seats", "tbl_tables", "id='$iTableId'");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <style type="text/css">


</style>  
</head>

<body class="popupBg" style="<?=($iAvailableReserves == 0)?'background-color:white;':''?>">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
    <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data" >
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
        <input type="hidden" name="TableId" id="TableId" value="<?= $iTableId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>
        <h3>Max Serving Time: <?=$iMaxServeTime?> Minutes</h3>
        <table border="0" cellspacing="2" cellpadding="2" width="100%" align="center" style="text-align: left;">
	  <tr valign="top" style="background: lightsteelblue;">
              <td width="15%"><b>Qty</b></td>
              <td width="75%"><b>Ordered Item</b></td>                         
              <td width="10%"><b>Status</b></td>
            </tr>
<?
                $sSQL = "Select * from tbl_order_details where order_id='$iOrderId'";
                $objDb->query($sSQL);

                $iCount = $objDb->getCount();

                for($j=0; $j<$iCount; $j++)
                {
                    $iDetailId  = $objDb->getField($j, "id");
                    $sStatus    = $objDb->getField($j, "status");
                    $sItem      = $objDb->getField($j, "product_name");
                    $iQuantity  = $objDb->getField($j, "quantity");
                    
?>
            <tr style="border-bottom: 1px solid #ddd;">
                        <td><?=$iQuantity?></td>
                        <td><?=$sItem?></td>
                        <td><?=($sStatus == 'A')?'Active':($sStatus == 'C'?'Served':'Voided')?></td>
                    </tr>
<?
                }
?>
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