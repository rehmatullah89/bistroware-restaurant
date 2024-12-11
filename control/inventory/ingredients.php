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
		@include("save-ingredient.php");        
        
        $sStoresList    = getList("tbl_stores", "id", "name");
        $sUnitsList     = getList("tbl_units", "id", "title", "status='A'");
        $sLocationsList = getList("tbl_locations", "id", "title", "status='A'");
        $sSuppliersList = getList("tbl_suppliers", "id", "name", "status='A'");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/ingredients.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Ingredients</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Ingredient</a></li>
<?
	}

?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Ingredient Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Ingredients Records?<br />
	      </div>
		
		  <br />


		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_ingredients', "status='A'") ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">SKU#</th>
			      <th width="35%">Title</th>
			      <th width="15%">Units</th>
                              <th width="20%">Location</th>
			      <th width="10%">Status</th>
			      <th width="15%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT id, title, unit_id, suppliers, location_id, status, created_at, modified_at,
						(SELECT name FROM tbl_admins WHERE id=tbl_ingredients.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_ingredients.modified_by) AS _ModifiedBy
		        FROM tbl_ingredients
                        ORDER BY id";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId         = $objDb->getField($i, "id");
                        $sTitle      = $objDb->getField($i, "title");
			$iUnitId     = $objDb->getField($i, "unit_id");
                        $sUom        = $objDb->getField($i, "uom");
                        $iLocationId = $objDb->getField($i, "location_id");
                        $sSuppliers  = $objDb->getField($i, "suppliers");
			$sStatus     = $objDb->getField($i, "status");
			$sCreatedAt  = $objDb->getField($i, "created_at");
			$sCreatedBy  = $objDb->getField($i, "_CreatedBy");
			$sModifiedAt = $objDb->getField($i, "modified_at");
			$sModifiedBy = $objDb->getField($i, "_ModifiedBy");

			switch ($sStatus)
			{
				case "A" : $sStatus = "Active"; break;
				case "I" : $sStatus = "In-Active"; break;
				default  : $sStatus = "N/A"; break;
			}
                        
                 
			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= str_pad($iId, 5, '0', STR_PAD_LEFT) ?></td>
		          <td><?= $sTitle ?></td>
		          <td><?= $sUnitsList[$iUnitId] ?></td>
                          <td><?= $sLocationsList[$iLocationId] ?></td>
		          <td><?= $sStatus ?></td>

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
				<td width="600">
                                    <br/>
                                    
                                  <label for="txtItem">Title</label>
				  <div><input type="text" name="txtItem" id="txtItem" value="<?= IO::strValue("txtItem") ?>" size="20" class="textbox" /></div>												  
				  <div class="br10"></div>

				  <label for="ddUnit">Unit</label>

				  <div>
				    <select name="ddUnit" id="ddUnit">
					  <option value=""></option>
<?
		foreach ($sUnitsList as $iUnit => $sUnit)
		{
?>
					  <option value="<?= $iUnit ?>"<?= ((IO::intValue('ddUnit') == $iUnit) ? ' selected' : '') ?>><?= $sUnit ?></option>
<?
		}
?>
				    </select>
				  </div>
                                <div class="br10"></div>
                                <label for="ddLocation">Location</label>

				  <div>
				    <select name="ddLocation" id="ddLocation">
					  <option value=""></option>
<?
		foreach ($sLocationsList as $iLocation => $sLocation)
		{
?>
					  <option value="<?= $iLocation ?>"<?= ((IO::intValue('ddLocation') == $iLocation) ? ' selected' : '') ?>><?= $sLocation ?></option>
<?
		}
?>
				    </select>
				  </div>
                                <div class="br10"></div>
                                

				  <label for="ddUom">UOM</label>

				  <div>
				    <select name="ddUom" id="ddStore">
					  <option value=""></option>
					  <option value="S"<?= ((IO::strValue('ddUom') == 'S') ? ' selected' : '') ?>>Static</option>
                                          <option value="V"<?= ((IO::strValue('ddUom') == 'V') ? ' selected' : '') ?>>Variable</option>
				    </select>
				  </div>
                                  <div class="br10"></div>
                                

				  <label for="ddSuppliers">Suppliers</label>

				  <div>
                                      <select name="ddSuppliers[]" id="ddSuppliers" multiple>
<?
		foreach ($sSuppliersList as $iSupplier => $sSupplier)
		{
?>
                                          <option value="<?= $iSupplier ?>"<?= (@in_array(IO::getArray('ddSuppliers'), $sSuppliersList) ? ' selected' : '') ?>><?= $sSupplier ?></option>
<?
		}
?>
				    </select>
				  </div>
                                  
                                    <div class="br10"></div>
                                    
                                 <label for="ddStatus">Status</label>
				  <div>
				    <select name="ddStatus" id="ddStatus">
                                        <option value=""></option>
					<option value="A"<?= ((IO::strValue('ddStatus') == 'A') ? ' selected' : '') ?>>Active</option>
					<option value="I"<?= ((IO::strValue('ddStatus') == 'I') ? ' selected' : '') ?>>In-Active</option>
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Save Ingredient</button>
				  <button id="BtnReset">Clear</button>
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

</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>