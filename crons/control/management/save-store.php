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

	$_SESSION["Flag"] = "";
        
	$sName      = IO::strValue("txtName");
	$sPhone     = IO::strValue("txtPhone1");
        $sMobile    = IO::strValue("txtPhone2");
	$sEmail     = IO::strValue("txtEmail");
	$sAddress   = IO::strValue("txtAddress");
	$iBrand     = IO::intValue("ddBrand");
	$sTaxNo     = IO::strValue("txtTaxNo");
	$sStatus    = IO::strValue("ddStatus");
	$sPicture   = "";
	$bError     = true;


	if ($sName == "" || $sPhone == "" || $sEmail == "" || $sAddress == "" || $iBrand == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_stores WHERE name LIKE '$sName'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) == 1)
			$_SESSION["Flag"] = "STORE_EXISTS";
	}


	if ($_SESSION["Flag"] == "")
	{
		$iStore = getNextId("tbl_stores");

		if ($_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iStore."-".IO::getFileName($_FILES['filePicture']['name']));

			if (@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.STORES_IMG_DIR.$sPicture)))
				createImage(($sRootDir.STORES_IMG_DIR.$sPicture), ($sRootDir.STORES_IMG_DIR.'thumbs/'.$sPicture), ADMINS_IMG_WIDTH, ADMINS_IMG_HEIGHT);

			if (!@file_exists($sRootDir.STORES_IMG_DIR.$sPicture))
				$sPicture = "";
		}


		$objDb->execute("BEGIN");
		$sSQL = "INSERT INTO tbl_stores SET id          = '$iStore',
                                                    brand_id    = '$iBrand',
                                                    name        = '$sName',
                                                    phone1      = '$sPhone',
                                                    phone2      = '$sMobile',
                                                    email       = '$sEmail',
                                                    picture     = '$sPicture',
                                                    address     = '$sAddress',
                                                    tax_no      = '$sTaxNo',
                                                    status      = '$sStatus',
                                                    created_at  = NOW( ),
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}'";
		$bFlag = $objDb->execute($sSQL);


		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");

			redirect("stores.php", "STORE_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");

			$_SESSION["Flag"] = "DB_ERROR";

			if ($sPicture != "")
			{
				@unlink($sRootDir.STORES_IMG_DIR.'thumbs/'.$sPicture);
				@unlink($sRootDir.STORES_IMG_DIR.$sPicture);
			}
		}
	}
?>