<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bistroware.com                                                                 **
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
	$_SESSION["Flag"] = "";

	$sBrand     = IO::strValue("txtBrand");
	$sStatus    = IO::strValue("ddStatus");
        $sPicture   = "";
	$sPictureSql= "";

	if ($sBrand == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_brands WHERE brand LIKE '$sBrand' AND id!='$iBrandId'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) == 1)
			$_SESSION["Flag"] = "BRAND_EXISTS";
	}

	if ($_SESSION["Flag"] == "")
	{
            
                if ($_FILES['fileLogo']['name'] != "")
		{
			$sPicture = ($iBrandId."-".IO::getFileName($_FILES['fileLogo']['name']));

			if (@move_uploaded_file($_FILES['fileLogo']['tmp_name'], ($sRootDir.BRANDS_IMG_DIR.$sPicture)))
			{
				createImage(($sRootDir.BRANDS_IMG_DIR.$sPicture), ($sRootDir.BRANDS_IMG_DIR.'thumbs/'.$sPicture), ADMINS_IMG_WIDTH, ADMINS_IMG_HEIGHT);

				$sPictureSql = ", logo='$sPicture'";
			}
		}
                
		$objDb->execute("BEGIN");


		$sSQL = "UPDATE tbl_brands SET brand  = '$sBrand',
                                               status = '$sStatus'
                                               $sPictureSql    
                         WHERE id='$iBrandId'";
		$bFlag = $objDb->execute($sSQL);

	
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= addslashes($sBrand) ?>";
		sFields[1] = "<?= (($sStatus == 'A') ? 'Active' : 'In-Active') ?>";
                sFields[2] = "";
<?
                if ($sUserRights["Edit"] == "Y")
                {
?>
                    sFields[2] = (sFields[2] + '<img class="icnEdit" id="<?= $iBrandId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
                }

                if ($sUserRights["Delete"] == "Y")
                {
?>
                            sFields[2] = (sFields[2] + '<img class="icnDelete" id="<?= $iBrandId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
                }

                if ($sPicture != "" && @file_exists($sRootDir.BRANDS_IMG_DIR.$sPicture))
                {
?>
                        sFields[2] = (sFields[2] + '<img class="icnPicture" id="<?= (SITE_URL.BRANDS_IMG_DIR.$sPicture) ?>" src="images/icons/picture.png" alt="Picture" title="Picture" /> ');
<?
                }
?>
                sFields[2] = (sFields[2] + '<img class="icnView" id="<?= $iBrandId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');
                
		parent.updateBrand(<?= $iBrandId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#TypeGridMsg", "success", "The selected Brand has been Updated successfully.");
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