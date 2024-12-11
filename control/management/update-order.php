<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
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
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	$_SESSION["Flag"] = "";


	$iTable         = IO::intValue("ddTable");
        $iGuests        = IO::intValue("txtGuests");
        $iWaiter        = IO::intValue("ddWaiter");
        $sStatus        = IO::strValue("ddStatus");
        $sGuestName     = IO::strValue("txtGuestName");
        $sGuestEmail    = IO::strValue("txtGuestEmail");
        $sGuestPhone    = IO::strValue("txtGuestPhone");
	$sRemarks       = IO::strValue("txtRemarks");
        $sOrderDate     = IO::strValue("txtOrderDate");
        $sOrderTime     = IO::strValue("txtOrderTime");
        $iReservation   = IO::intValue("ddReservation");
        $UserRights     = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
      
        $sSubSql = "";
        $DateTimeCreated = date("Y-m-d H:i:s");
         
        if($sOrderTime != "" && $sOrderDate != "")
        {            
            $sOrderTime     = substr($sOrderTime, 0, -2);
            $sOrderTime     = date("H:i", (strtotime($sOrderTime)+(3600*12)));        
            $DateTimeCreated= $sOrderDate." ".$sOrderTime.":00";
            $sSubSql        = "created_at= '$DateTimeCreated',";
        }
        
	if ($iTable == "" || $iGuests == 0 || $iWaiter == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

                $DateTimeUpdated = date("Y-m-d H:i:s");
                        
		$sSQL = "UPDATE tbl_orders SET  table_id        = '$iTable',
                                                total_guests    = '$iGuests',
                                                waiter_id       = '$iWaiter',
                                                guest_name      = '$sGuestName',
                                                guest_email     = '$sGuestEmail',
                                                guest_phone     = '$sGuestPhone',
                                                remarks         = '$sRemarks',
                                                reservation_id  = '$iReservation',
                                                ".$sSubSql."
                                                modified_by     = '{$_SESSION['AdminId']}',
                                                modified_at     = NOW( )
                                                WHERE id =  '$iOrderId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	
                if ($bFlag == true)
                {
                        if ($bFlag == true)
                        {
                            
                            $iCounter   = IO::intValue("CountRows");
                            $iItems     = IO::getArray("ddItems");
                            $iIdsArray  = IO::getArray("IdsArray");
                            $iQuantities= IO::getArray("txtQuantity");
                            $sStatuses  = IO::getArray("ddStatuses");
                            $sExistingIds = "";

                            foreach($iIdsArray as $iKey => $iId)
                            {
                                $iQuantity  = trim($iQuantities[$iKey]);
                                $iItem      = trim($iItems[$iKey]);
                                $sDStatus   = trim($sStatuses[$iKey]);
                                $sExistingIds .= $iId.",";

                                if($iItem != "" && $iQuantity > 0)
                                {
                                    $sProduct   = addslashes(getDbValue("name", "tbl_products", "id='$iItem'"));
                                    $iPrice     = getDbValue("price", "tbl_products", "id='$iItem'");
                                    $iCost      = getDbValue("cost", "tbl_products", "id='$iItem'");
                                    $iCategory  = getDbValue("category_id", "tbl_products", "id='$iItem'");
                                    $sCategory  = getDbValue("category", "tbl_categories", "id='$iCategory'");

                                    $iTotalPrice =  $iPrice * $iQuantity;
                                    $iNetPrice   = $iTotalPrice + ($iTotalPrice * PER_ITEM_GST);

                                    if($iId > 0)
                                    {
                                        $sSQL = "UPDATE tbl_order_details SET  order_id        = '$iOrderId',
                                                                                product_id      = '$iItem',
                                                                                product_name    = '$sProduct',
                                                                                category_id     = '$iCategory',
                                                                                category_name   = '$sCategory',
                                                                                quantity        = '$iQuantity',
                                                                                status          = '$sDStatus',    
                                                                                net_price       = '$iNetPrice',    
                                                                                price           = '$iTotalPrice'
                                                WHERE id = '$iId'";
                                        
                                        $bFlag = $objDb->execute($sSQL);
                                    }
                                    else if($iId == 0)
                                    {
                                        $sSQL = "INSERT INTO tbl_order_details SET  order_id        = '$iOrderId',
                                                                                    product_id      = '$iItem',
                                                                                    product_name    = '$sProduct',
                                                                                    category_id     = '$iCategory',
                                                                                    category_name   = '$sCategory',
                                                                                    quantity        = '$iQuantity',
                                                                                    status          = '$sDStatus',    
                                                                                    net_price       = '$iNetPrice', 
                                                                                    cost_per_item   = '$iCost',
                                                                                    ordered_at      = '$DateTimeUpdated',
                                                                                    price           = '$iTotalPrice'";
                                        
                                        $bFlag = $objDb->execute($sSQL);
                                        
                                        if($bFlag == true)
                                        {
                                            $iMaxId = getDbValue("Max(id)", "tbl_order_details", "order_id='$iOrderId'");
                                            $sExistingIds .= $iMaxId.",";
                                        }
                                    }
                                    
                                    if($bFlag ==  false)
                                        break;
                                    
                                }
                            }
                        }

                        if ($bFlag == true && $sExistingIds != "")
                        {
                            $sExistingIds = rtrim($sExistingIds, ",");
                            $sSQL = "DELETE FROM tbl_order_details where id NOT IN ($sExistingIds) AND order_id='$iOrderId'";
                            $bFlag = $objDb->execute($sSQL);
                        }                        
                }

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
                                                        (SELECT SUM(net_price) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status NOT IN ('V', 'R', 'F')) AS _TotalBill,
                                                        (SELECT SUM(amount+credit) FROM tbl_payments WHERE order_id=tbl_orders.id) AS _PaidBill,
                                                        (SELECT COUNT(1) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status = 'FR') AS _FreeRequests,
							(SELECT name FROM tbl_admins WHERE id=tbl_orders.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_orders.modified_by) AS _ModifiedBy
					 FROM tbl_orders
					 WHERE id='$iOrderId'";

                        $objDb->query($sSQL);

                        $iTotalBill  = $objDb->getField(0, "_TotalBill");
                        $iPaidBill   = $objDb->getField(0, "_PaidBill");
			$sCreatedAt  = $objDb->getField(0, "created_at");
			$sCreatedBy  = $objDb->getField(0, "_CreatedBy");
                        $iFreeMealRequest   = $objDb->getField($i, "_FreeRequests");
			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");


			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sTablesList[$iTable]) ?>";
		sFields[1] = "<?= @htmlentities($iGuests) ?>";
		sFields[2] = "<?= @htmlentities($sUsersList[$iWaiter]) ?>";
                sFields[3] = "<?= @htmlentities($sCreatedAt) ?>";
                sFields[4] = "<?= @htmlentities(formatNumber($iTotalBill, false)) ?>";
                sFields[5] = "<?= @htmlentities(formatNumber($iPaidBill, false)) ?>";
                sFields[6] = "<?= @htmlentities(($sStatus == 'C')?'Completed':(($sStatus == 'B')?'Bumped':'Active')) ?>";
		sFields[7] = '<img class="icon details" id="<?= $iOrderId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
                sFields[7] = (sFields[7] + '<img class="icnToggle" res="<?=$sStatus?>" id="<?= $iOrderId ?>" src="images/icons/<?=(strtolower($sStatus).'.png')?>" alt="Toggle Status" title="Toggle Status" /> ');
		sFields[7] = (sFields[7] + '<img class="icnEdit" id="<?= $iOrderId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');                
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[7] = (sFields[7] + '<img class="icnDelete" id="<?= $iOrderId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}

                        if(@in_array(7, $UserRights))
			{
?>
		sFields[7] = (sFields[7] + '<img class="icon icnVoid" id="<?= $iOrderId ?>" src="images/icons/negtive.png" alt="Void Order" title="Void Order" /> ');
<?
			}
                        
                        if(@in_array(8, $UserRights) && $iFreeMealRequest >0)
			{
?>
		sFields[7] = (sFields[7] + '<img class="icon icnFreeMeal" style="width:25px !important" id="<?= $iOrderId ?>" src="images/icons/free.gif" alt="Free Meal Request" title="Free Meal Request" /> ');
<?
			}
?>
		sFields[7] = (sFields[7] + '<img class="icnView" id="<?= $iOrderId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');
                sFields[7] = (sFields[7] + '<a href="management/print-order-bill.php?Id=<?= $iOrderId ?>"><img src="images/icons/print.png" width="16" alt="Print Bill" title="Print Bill" /></a>');

		parent.updateRecord(<?= $iOrderId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Order has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");
                        $_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>