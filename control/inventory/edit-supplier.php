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


	$iSupplierId = IO::intValue("SupplierId");
	$iIndex  = IO::intValue("Index");

        $sCountries = getList("tbl_countries", "id", "country");
        
	if ($_POST)
		@include("update-supplier.php");


	$sSQL = "SELECT * FROM tbl_suppliers WHERE id='$iSupplierId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$iId         = $objDb->getField(0, "id");
        $sName       = $objDb->getField(0, "name");
        $sAddress    = $objDb->getField(0, "address");
        $sPhone      = $objDb->getField(0, "phone");
        $sMobile     = $objDb->getField(0, "mobile");
        $sFax        = $objDb->getField(0, "fax");
        $sEmail      = $objDb->getField(0, "email");
        $sWebsite    = $objDb->getField(0, "website");
        $sCity       = $objDb->getField(0, "city");
        $iCountryId  = $objDb->getField(0, "country_id");                        
        $sStatus     = $objDb->getField(0, "status");
     
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-supplier.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="SupplierId" id="SupplierId" value="<?= $iSupplierId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td>
                        <br/>

                            <label for="txtName">Name</label>
                            <div><input type="text" name="txtName" id="txtName" value="<?= $sName ?>" size="30" class="textbox" /></div>

                            <div class="br10"></div>

                            <label for="txtAddress">Address</label>
                            <div><input type="text" name="txtAddress" id="txtAddress" value="<?= $sAddress; ?>" size="30" class="textbox" /></div>

                            <div class="br10"></div>

                            <label for="txtPhone">Phone</label>
                            <div><input type="text" name="txtPhone" id="txtPhone" value="<?= $sPhone ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="txtMobile">Mobile</label>
                            <div><input type="text" name="txtMobile" id="txtMobile" value="<?= $sMobile ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="txtFax">Fax</label>
                            <div><input type="text" name="txtFax" id="txtFax" value="<?= $sFax ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="txtEmail">Email</label>
                            <div><input type="text" name="txtEmail" id="txtEmail" value="<?= $sEmail ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="txtWebsite">Website</label>
                            <div><input type="text" name="txtWebsite" id="txtWebsite" value="<?= $sWebsite ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="txtCity">City</label>
                            <div><input type="text" name="txtCity" id="txtCity" value="<?= $sCity ?>" size="30" class="textbox" /></div>
                            <div class="br10"></div>

                            <label for="ddCountry">Country</label>

                            <div>
                              <select name="ddCountry" id="ddCountry">
                                    <option value=""></option>
<?
          foreach ($sCountries as $iCountry => $sCountry)
          {
?>
                                    <option value="<?= $iCountry ?>"<?= (($iCountryId == $iCountry) ? ' selected' : '') ?>><?= $sCountry ?></option>
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
                                  <option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>
                                  <option value="I"<?= (($sStatus == 'I') ? ' selected' : '') ?>>In-Active</option>
                              </select>
                            </div>

                            <br />
                            <button id="BtnSave">Save Supplier</button>
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