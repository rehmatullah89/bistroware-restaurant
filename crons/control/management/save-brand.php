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

	$sBrand     = IO::strValue("txtBrand");
	$sStatus    = IO::strValue("ddStatus");
	$sPicture   = "";
	$bError     = true;


	if ($sBrand == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_brands WHERE brand LIKE '$sBrand'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) == 1)
			$_SESSION["Flag"] = "BRAND_EXISTS";
	}


	if ($_SESSION["Flag"] == "")
	{
		$iBrand = getNextId("tbl_brands");

		if ($_FILES['fileLogo']['name'] != "")
		{
			$sPicture = ($iBrand."-".IO::getFileName($_FILES['fileLogo']['name']));

			if (@move_uploaded_file($_FILES['fileLogo']['tmp_name'], ($sRootDir.BRANDS_IMG_DIR.$sPicture)))
				createImage(($sRootDir.BRANDS_IMG_DIR.$sPicture), ($sRootDir.BRANDS_IMG_DIR.'thumbs/'.$sPicture), ADMINS_IMG_WIDTH, ADMINS_IMG_HEIGHT);

			if (!@file_exists($sRootDir.BRANDS_IMG_DIR.$sPicture))
				$sPicture = "";
		}


		$objDb->execute("BEGIN");
		$sSQL = "INSERT INTO tbl_brands SET id          = '$iBrand',
                                                    brand       = '$sBrand',
                                                    logo        = '$sPicture',    
                                                    status      = '$sStatus',
                                                    created_at  = NOW( ),
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}'";
		$bFlag = $objDb->execute($sSQL);


		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");

			redirect("stores.php", "BRAND_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");

			$_SESSION["Flag"] = "DB_ERROR";

			if ($sPicture != "")
			{
				@unlink($sRootDir.BRANDS_IMG_DIR.'thumbs/'.$sPicture);
				@unlink($sRootDir.BRANDS_IMG_DIR.$sPicture);
			}
		}
	}
?>