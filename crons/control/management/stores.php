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

	if ($_POST)
		@include(IO::strValue("Action"));
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/stores.js"></script>
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
      <input type="hidden" id="OpenTab" value="<?= ((($_POST && $bError == true) || IO::intValue('OpenTab') > 0) ? IO::intValue('OpenTab') : 0) ?>" />
<?
	@include("{$sAdminDir}includes/messages.php");
?>

      <div id="PageTabs">
	    <ul>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Stores</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Store</a></li>
<?
	}
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-3"><b>Brands</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-4">Add New Brand</a></li>
<?
	}
?>
	    </ul>


	    <div id="tabs-1">
	      <div id="UserGridMsg" class="hidden"></div>

	      <div id="ConfirmUserDelete" title="Delete User?" class="dlgConfirm hidden">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Store?<br />
	      </div>

	      <div id="ConfirmUserMultiDelete" title="Delete Users?" class="dlgConfirm hidden">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Store?<br />
	      </div>


              <br />
		  <div id="TblUsers" class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_stores') ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="StoreGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="15%">Name</th>
                              <th width="15%">Address</th>
			      <th width="10%">Phone</th>
                              <th width="10%">Email</th>
			      <th width="20%">Brand</th>
			      <th width="5%">Status</th>
			      <th width="20%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 100)
	{
		$sBrandsList    = getList("tbl_brands", "id", "brand");
		$sBrandsList[0] = "N/A";


		$sSQL = "SELECT * FROM tbl_stores ORDER BY id";
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId      = $objDb->getField($i, "id");
			$iBrand   = $objDb->getField($i, "brand_id");
			$sName    = $objDb->getField($i, "name");
			$sPhone1  = $objDb->getField($i, "phone1");
                        $sPhone2  = $objDb->getField($i, "phone2");
			$sEmail   = $objDb->getField($i, "email");
			$sAddress = $objDb->getField($i, "address");
			$sPicture = $objDb->getField($i, "picture");
                        $sTaxNo   = $objDb->getField($i, "tax_no");
			$sStatus  = $objDb->getField($i, "status");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= ($i + 1) ?></td>
		          <td><?= $sName ?></td>
		          <td><?= $sAddress ?></td>
		          <td><?= $sPhone1 ?></td>
                          <td><?= $sEmail ?></td>
		          <td><?= $sBrandsList[$iBrand] ?></td>
		          <td><?= (($sStatus == "A") ? "Active" : "Disabled") ?></td>

		          <td>
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

			if ($sPicture != "" && @file_exists($sRootDir.STORES_IMG_DIR.$sPicture))
			{
?>
					<img class="icnPicture" id="<?= (SITE_URL.STORES_IMG_DIR.$sPicture) ?>" src="images/icons/picture.png" alt="Picture" title="Picture" />
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


	      <div id="SelectStoreButtons"<?= (($iTotalRecords > 5 && $sUserRights["Delete"] == "Y") ? '' : ' class="hidden"') ?>>
	        <div class="br10"></div>

	        <div align="right">
		      <button id="BtnStoreSelectAll">Select All</button>
		      <button id="BtnStoreSelectNone">Clear Selection</button>
		    </div>
	        </div>
		</div>


<?
	if ($sUserRights["Add"] == "Y")
	{
?>
		<div id="tabs-2">
		  <form name="frmStore" id="frmStore" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="DuplicateEmail" id="DuplicateEmail" value="0" />
		    <input type="hidden" name="OpenTab" value="1" />
		    <input type="hidden" name="Action" value="save-store.php" />
			<div id="UserMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
			    <td >
				  <label for="txtName">Name</label>
				  <div><input type="text" name="txtName" id="txtName" value="<?= IO::strValue('txtName', true) ?>" maxlength="50" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="txtPhone1">Phone</label>
				  <div><input type="text" name="txtPhone1" id="txtPhone1" value="<?= IO::strValue('txtPhone1') ?>" maxlength="25" size="44" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtPhone2">Mobile <span>(optional)</span></label>
				  <div><input type="text" name="txtPhone2" id="txtPhone2" value="<?= IO::strValue('txtPhone2') ?>" maxlength="25" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="txtEmail">Email Address</label>
				  <div><input type="text" name="txtEmail" id="txtEmail" value="<?= IO::strValue('txtEmail') ?>" maxlength="100" size="44" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtAddress">Location/ Address</label>
				  <div><input type="text" name="txtAddress" id="txtEmail" value="<?= IO::strValue('txtAddress') ?>" maxlength="100" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="ddBrand">Brand</label>

				  <div>
				    <select name="ddBrand" id="ddBrand">
					  <option value=""></option>
<?
		$sBrands = getList("tbl_brands", "id", "brand", "status='A'");

		foreach ($sBrands as $iBrand => $sBrand)
		{
?>
			    	  <option value="<?= $iBrand ?>"<?= ((IO::intValue('ddBrands') == $iBrand) ? ' selected' : '') ?>><?= $sBrand ?></option>
<?
		}
?>
				    </select>
				  </div>

				  <div class="br10"></div>

				  <label for="filePicture">Picture <span>(optional)</span></label>
				  <div><input type="file" name="filePicture" id="filePicture" value="" size="60" class="textbox" /></div>

                                  <div class="br10"></div>

				  <label for="txtTaxNo">Tax No.</label>
				  <div><input type="text" name="txtTaxNo" id="txtTaxNo" value="<?= IO::strValue('txtTaxNo') ?>" maxlength="100" size="44" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="ddStatus">Status</label>

				  <div>
				    <select name="ddStatus" id="ddStatus">
				 	  <option value="A"<?= ((IO::strValue('ddStatus') == 'A') ? ' selected' : '') ?>>Active</option>
					  <option value="D"<?= ((IO::strValue('ddStatus') == 'D') ? ' selected' : '') ?>>Disabled</option>
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Save Store</button>
				  <button id="BtnReset">Clear</button>
			    </td>
			  </tr>
			</table>
		  </form>
	    </div>
<?
	}
?>


	    <div id="tabs-3">
	      <div id="BrandGridMsg" class="hidden"></div>

	      <div id="ConfirmTypeDelete" title="Delete Brand?" class="dlgConfirm hidden">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Brand?<br />
	      </div>

	      <div id="ConfirmTypeMultiDelete" title="Delete Brand?" class="dlgConfirm hidden">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Brands?<br />
	      </div>


		  <div id="TblTypes" class="dataGrid ex_highlight_row">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="BrandGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="50%">Brand</th>
			      <th width="20%">Status</th>
			      <th width="25%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	$sSQL = "SELECT * FROM tbl_brands ORDER BY brand";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId     = $objDb->getField($i, "id");
		$sBrand  = $objDb->getField($i, "brand");
                $sLogo   = $objDb->getField($i, "logo");
		$sStatus = $objDb->getField($i, "status");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= ($i + 1) ?></td>
		          <td><?= $sBrand ?></td>
		          <td><?= (($sStatus == "A") ? "Active" : "In-Active") ?></td>

		          <td>
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
                
                if ($sLogo != "" && @file_exists($sRootDir.BRANDS_IMG_DIR.$sLogo))
                {
?>
                                <img class="icnPicture" id="<?= (SITE_URL.BRANDS_IMG_DIR.$sLogo) ?>" src="images/icons/picture.png" alt="Brand Logo" title="Brand Logo" />
<?
                }
?>
                    <img class="icnView" id="<?= $iId ?>" src="images/icons/view.gif" alt="View" title="View" />
		          </td>
		        </tr>
<?
	}
?>
	          </tbody>
            </table>
		  </div>
<?
	if ($iCount > 5 && $sUserRights["Delete"] == "Y")
	{
?>

	      <div class="br10"></div>

	      <div align="right" id="SelectTypeButtons">
		    <button id="BtnBrandSelectAll">Select All</button>
		    <button id="BtnBrandSelectNone">Clear Selection</button>
	      </div>
<?
	}
?>
	    </div>

<?
	if ($sUserRights["Add"] == "Y")
	{
?>
		<div id="tabs-4">
		  <form name="frmBrand" id="frmBrand" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="DuplicateType" id="DuplicateType" value="0" />
		    <input type="hidden" name="OpenTab" value="3" />
		    <input type="hidden" name="Action" value="save-brand.php" />
			<div id="TypeMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
			    <td width="650">
				  <label for="txtBrand">Brand</label>
				  <div><input type="text" name="txtBrand" id="txtBrand" value="<?= IO::strValue('txtBrand', true) ?>" maxlength="100" size="44" class="textbox" /></div>

                                   <div class="br10"></div>

				  <label for="fileLogo">Logo</label>
				  <div><input type="file" name="fileLogo" id="fileLogo" value="" size="60" class="textbox" /></div>

				  <div class="br10"></div>

				  <label for="ddStatus">Status</label>

				  <div>
				    <select name="ddStatus" id="ddStatus">
					  <option value="A"<?= ((IO::strValue('ddStatus') == 'A') ? ' selected' : '') ?>>Active</option>
					  <option value="I"<?= ((IO::strValue('ddStatus') == 'I') ? ' selected' : '') ?>>In-Active</option>
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Create Brand</button>
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