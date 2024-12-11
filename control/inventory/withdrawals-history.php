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

        
        $sStartDate = (IO::strValue("StartDate") != ""?IO::strValue("StartDate"):date("Y-m-d", strtotime("last week")));
        $sEndDate   = (IO::strValue("EndDate") != ""?IO::strValue("EndDate"):date("Y-m-d"));
        
        if(strtotime($sEndDate) < strtotime($sStartDate))
            $sEndDate = $sStartDate;
        
        
        $sIngredientsList = getList("tbl_ingredients", "id", "title");
        $sCountries       = getList("tbl_countries", "id", "country");
        $UserRights       = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/withdrawals-history.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Withdrawals History</b></a></li>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Withdrawals History Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Withdrawals History Records?<br />
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
                    <div class="btn" style="float:left; margin-right: 8px; margin-top: -3px;"><input type="button" name="ApplyFilter" id="ApplyFilter" value="Apply Filter" /></div>
                    <button id="BtnExport" style="float:right; margin-top: -3px;" rel="<?= (SITE_URL.ADMIN_CP_DIR) ?>/<?= $sCurDir ?>/export-withdrawals.php">Export Withdrawals Report</button>
                </div>
		  <br />
<?
                }
?>

		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_inventory_history') ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
                              <th width="25%">Ingredient</th>
                              <th width="15%">Item Type</th>
			      <th width="10%">Lot Number</th>
                              <th width="15%">Date Time</th>
                              <th width="15%">Qty/Wt. Withdrawn</th>
                              <th width="15%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT ih.id, ids.ingredient_id, ih.modified_at, ih.qty_withdraw, ih.wt_withdraw, ids.item_type,ih.qty_wt_wasted, ih.wasted_reason_id,
                                (SELECT code FROM tbl_units u, tbl_ingredients i WHERE i.unit_id=u.id AND i.id=ids.ingredient_id) AS _Unit,
                                (SELECT po_number FROM tbl_inventory WHERE id=ids.inventory_id) AS _PoNumber,
                                (SELECT name FROM tbl_admins WHERE id=ih.modified_by) AS _ModifiedBy
		        FROM tbl_inventory_history ih
                        LEFT JOIN tbl_inventory_details ids
                        ON ih.inventory_detail_id = ids.id
                        ORDER BY ih.modified_at";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId            = $objDb->getField($i, "id");
			$iIngredient    = $objDb->getField($i, "ingredient_id");
                        $iQtyWithdraw   = $objDb->getField($i, "qty_withdraw");
                        $iWtWithdraw    = $objDb->getField($i, "wt_withdraw");
			$iPoNumber      = $objDb->getField($i, "_PoNumber");
                        $sUnit          = $objDb->getField($i, "_Unit");
			$sModifiedAt    = $objDb->getField($i, "modified_at");
			$sModifiedBy    = $objDb->getField($i, "_ModifiedBy");
                        $sItemType      = $objDb->getField($i, "item_type");
                        $iWastedReason  = $objDb->getField($i, "wasted_reason_id");
                        $iItemsWasted   = $objDb->getField($i, "qty_wt_wasted");
                        $sIngredient    = $sIngredientsList[$iIngredient];

			$sInfo = ("<b>Withdrawan By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= str_pad($iId, 3, '0', STR_PAD_LEFT) ?></td>
                          <td><?= $sIngredient ?></td>
        		  <td><?= ($sItemType == 'I'?'Imported':'Local') ?></td>
		          <td><?= $iPoNumber ?></td>
                          <td><?= formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}") ?></td>
		          <td><?= ($iQtyWithdraw != 0?$iQtyWithdraw:$iWtWithdraw)." ".$sUnit ?></td>
		          <td>
		            <img class="icon details" id="<?= $iId ?>" src="images/icons/info.png" ref="<?=$sItemType?>" alt="" title="<?= $sInfo ?>" />
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
				<img class="icnEdit" id="<?= $iId ?>" src="images/icons/<?=($iItemsWasted == ""?'bin-blank':'bin-filled')?>.png" alt="Edit If Wastage?" title="Edit If Wastage?" /> 
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
					<img class="icnDelete" id="<?= $iId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" />
<?
			}
?>
				<!--	<img class="icnView" id="<?php //echo $iId ?>" src="images/icons/view.gif" alt="View" title="View" /> -->
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
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>