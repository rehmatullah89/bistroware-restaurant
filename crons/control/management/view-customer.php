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


	$iCustomerId = IO::intValue("CustomerId");
	$iIndex  = IO::intValue("Index");

	if ($_POST)
		@include("update-customer.php");


	$sSQL = "SELECT * FROM tbl_users WHERE id='$iCustomerId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

        $sName      = $objDb->getField(0, "name");
        $sEmail     = $objDb->getField(0, "email");
        $sPhone     = $objDb->getField(0, "mobile");
        $sPassword  = $objDb->getField(0, "password");
        $sStatus    = $objDb->getField(0, "status");
        $sCreatedAt = $objDb->getField(0, "date_time");        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-lcoation.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="CustomerId" id="CustomerId" value="<?= $iCustomerId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
		<td>
                        <br/>

                     <label for="txtName">Name</label>
				  <div><input type="text" name="txtName" id="txtLocation" value="<?= $sName ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>

				  <label for="txtEmail">Email</label>
				  <div><input type="text" name="txtEmail" id="txtEmail" value="<?= $sEmail ?>" size="20" class="textbox" /></div>
                                  <div class="br10"></div>
                                  
				  <label for="txtPhone">Mobile</label>
				  <div><input type="text" name="txtPhone" id="txtPhone" value="<?= $sPhone ?>" size="20"  class="textbox" /></div>
                                  <div class="br10"></div>

       				  <label for="txtPassword">Password</label>
				  <div><input type="password" name="txtPassword" id="txtPassword" value="<?= $sPassword ?>"  size="20"  class="textbox" /></div>
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