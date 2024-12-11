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
		@include("save-category.php");


	$sSefMode = getDbValue("sef_mode", "tbl_settings", "id='1'");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/categories.js"></script>
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
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b> Categories</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Category</a></li>
<?
	}
?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Page?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Category?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Categories?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Category?<br />
	      </div>


		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid" rel="tbl_web_pages">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="35%">Category</th>
			      <th width="35%">Parent Category</th>
			      <th width="12%">Status</th>
			      <th width="13%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
        $sCategoriesList = getList("tbl_categories", "id", "category", "parent_id = '0'");

	$sSQL = "SELECT * FROM tbl_categories ORDER BY position";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId         = $objDb->getField($i, "id");
		$sCategory   = $objDb->getField($i, "category");
		$iParent     = $objDb->getField($i, "parent_id");
		$sStatus     = $objDb->getField($i, "status");

?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= ($i + 1) ?></td>
		          <td><?= $sCategory ?></td>
		          <td><?= ($iParent == 0?"N /A":$sCategoriesList[$iParent])?></td>
		          <td><?= (($sStatus == "A") ? "Active" : "In-Active") ?></td>

		          <td>
<?
		if ($sUserRights["Edit"] == "Y")
		{
?>
                    <img class="icnToggle" id="<?= $iId ?>" src="images/icons/<?= (($sStatus == 'A') ? 'success' : 'error') ?>.png" alt="Toggle Category Status" title="Toggle Category Status" />
                    <img class="icnEdit" id="<?= $iId ?>" src="images/icons/edit.gif" alt="Edit Category" title="Edit Category" />
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
?>
	          </tbody>
            </table>
		  </div>
		</div>


<?
	if ($sUserRights["Add"] == "Y")
	{
?>
		<div id="tabs-2">
		  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="DuplicatePage" id="DuplicatePage" value="0" />
			<div id="RecordMsg" class="hidden"></div>

		    <label for="txtCategory">Category</label>
		    <div><input type="text" name="txtCategory" id="txtCategory" value="<?= IO::strValue('txtCategory', true) ?>" maxlength="100" size="44" class="textbox" /></div>

                    <div class="br10"></div>
                    <label for="ddParent">Parent Category</label>

		    <div>
			  <select name="ddParent" id="ddParent">
                              <option value="0"></option>
<?
                              foreach ($sCategoriesList as $iCategory => $sCategory)
                              {
?>
                              <option value="<?=$iCategory?>"<?= ((IO::strValue('ddParent') == $iCategory) ? ' selected' : '') ?>><?=$sCategory?></option>
<?
                              }
?>
			  </select>
		    </div>

                    <div class="br10"></div>

                    <label for="filePicture">Picture</label>
                    <div><input type="file" name="filePicture" id="filePicture" value="<?= IO::strValue('filePicture') ?>" size="50" class="textbox" /></div>

		    <div class="br10"></div>

		    <label for="ddStatus">Status</label>

		    <div>
			  <select name="ddStatus" id="ddStatus">
			    <option value="A"<?= ((IO::strValue('ddStatus') == 'A') ? ' selected' : '') ?>>Active</option>
			    <option value="I"<?= ((IO::strValue('ddStatus') == 'I') ? ' selected' : '') ?>>In-Active</option>
			  </select>
		    </div>

		    <br />
		    <button id="BtnSave">Save Category</button>
		    <button id="BtnReset">Clear</button>
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