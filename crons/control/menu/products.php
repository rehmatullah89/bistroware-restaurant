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
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );

	if ($_POST)
		@include("save-product.php");
        
        $sCategoriesList    = getList("tbl_categories", "id", "category");
        $sStoresList        = getList("tbl_stores", "id", "name");
        $sTaxesList         = getList("tbl_taxes", "id", "tax_rate");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <link type="text/css" rel="stylesheet" href="plugins/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css" />

  <script type="text/javascript" src="plugins/plupload/plupload.full.min.js"></script>
  <script type="text/javascript" src="plugins/plupload/jquery.ui.plupload/jquery.ui.plupload.js"></script>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/products.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Menu Items</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Item</a></li>
<?
	}

?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Product Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Product Records?<br />
	      </div>
		
		  <br />


		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_products', "status='A'") ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="30%">Title</th>
			      <th width="24%">Category</th>
                              <th width="10%">Cooking Time</th>
			      <th width="8%">Price</th>
			      <th width="8%">Status</th>
			      <th width="15%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT id, category_id, tax_id, cooking_time, store_id, name, price, picture, status, created_at, modified_at,
						(SELECT name FROM tbl_admins WHERE id=tbl_products.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_products.modified_by) AS _ModifiedBy
		        FROM tbl_products
                        ORDER BY position";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId         = $objDb->getField($i, "id");
			$iCategory   = $objDb->getField($i, "category_id");
                        $sProduct    = $objDb->getField($i, "name");
			$fTax        = $objDb->getField($i, "tax_id");
			$iStore      = $objDb->getField($i, "store_id");
                        $iPrice      = $objDb->getField($i, "price");
                        $iCookingTime= $objDb->getField($i, "cooking_time");
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
		          <td class="position"><?= str_pad($iId, 3, '0', STR_PAD_LEFT) ?></td>
		          <td><?= $sProduct ?></td>
		          <td><?= $sCategoriesList[$iCategory] ?></td>
                          <td><?=$iCookingTime?></td>
		          <td><?= $iPrice ?></td>
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
                                    
                                  <label for="txtProduct">Item Title</label>
				  <div><input type="text" name="txtProduct" id="txtProduct" value="<?= IO::strValue("txtProduct") ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>

                                  <label for="txtProductDetails">Item Details</label>
                                  <div><textarea name="txtProductDetails" id="txtProductDetails" cols="20" rows="4"><?= IO::strValue("txtProductDetails") ?></textarea></div>
												  
				  <div class="br10"></div>
                                  
				  <label for="ddCategory">Categories</label>

				  <div>
				    <select name="ddCategory" id="ddCategory">
					  <option value=""></option>
<?
		foreach ($sCategoriesList as $iCategory => $sCategory)
		{
?> 
					  <option value="<?= $iCategory ?>"<?= (($iCategory == IO::intValue('ddCategory')) ? ' selected' : '') ?>><?= $sCategory ?></option>
<?
		}
?>
				    </select>
				  </div>

				  <div class="br10"></div>

				  <label for="ddStore">Store</label>

				  <div>
				    <select name="ddStore" id="ddStore">
					  <option value=""></option>
<?
		foreach ($sStoresList as $iStore => $sStore)
		{
?>
					  <option value="<?= $iStore ?>"<?= ((IO::intValue('ddStore') == $iStore) ? ' selected' : '') ?>><?= $sStore ?></option>
<?
		}
?>
				    </select>
				  </div>

                                <div class="br10"></div>
                                
                              <label for="ddTaxRate">Tax Rate</label>
				  <div>
                                      <select name="ddTaxRate" id="ddTaxRate">
                                          <option value=""></option>
                                           <option value="1">16%</option>
<?
		foreach ($sTaxesList as $iTax => $sTax)
		{
?>
					  <option value="<?= $iTax ?>"<?= ((IO::intValue('ddTaxRate') == $iTax) ? ' selected' : '') ?>><?= $sTax ?></option>
<?
		}
?>
                                      </select>
				  </div>
                                  
                                 <div class="br10"></div>

                                <label for="filePicture">Picture</label>
                                <div><input type="file" name="filePicture" id="filePicture" value="<?= IO::strValue('filePicture') ?>" size="50" class="textbox" /></div>
                                  
                                  
  				  <div class="br10"></div>
				  <label for="txtPrice">Price</label>
				  <div><input type="text" name="txtPrice" id="txtPrice" value="<?= IO::strValue('txtPrice', true) ?>" maxlength="20" size="8" class="textbox" /></div>
                                  
                                  <div class="br10"></div>
				  <label for="txtCookTime">Cooking Time (Minutes Only)</label>
				  <div><input type="text" name="txtCookTime" id="txtCookTime" value="<?= IO::strValue('txtCookTime', true) ?>" maxlength="20" size="8" class="textbox" /></div>
                                  
                                  <div class="br10"></div>
                                  
				  <label for="ddOurChoice">Our Choice</label>
				  <div><input type="checkbox" name="ddOurChoice" id="ddOurChoice" value="Y" <?= ((IO::strValue('ddOurChoice') == 'Y') ? 'checked' : '') ?> /></div>
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
				  <button id="BtnSave">Save Product</button>
				  <button id="BtnReset">Clear</button>
				</td>

				<td>
				  <div id="Files" style="width:98%; height:350px;">Loading ...</div>
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
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>