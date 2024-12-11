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

	$sCategory   = IO::strValue("txtCategory");
	$iParent     = IO::intValue("ddParent");
	$sStatus     = IO::strValue("ddStatus");
	$bError      = true;


	if ($sCategory == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_categories WHERE category LIKE '$sCategory'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) > 0)
			$_SESSION["Flag"] = "CATEGORY_EXISTS";
	}


	if ($_SESSION["Flag"] == "")
	{
		$iCategoryId    = getNextId("tbl_categories");
		$iPosition      = (getDbValue("MAX(position)", "tbl_categories", "") + 1);

		$sSQL = "INSERT INTO tbl_categories SET id         = '$iCategoryId',
		                                       category    = '$sCategory',
		                                       parent_id   = '$iParent',
		                                       picture     = '',
		                                       status      = '$sStatus',
         		                               position    = '$iPosition',    
		                                       created_at  = NOW( ),
                                                       created_by  = '{$_SESSION['AdminId']}'";
                                                       
                $bFlag  =   $objDb->execute($sSQL);                                     
	}
        
        if ($bFlag == true && $_FILES['filePicture']['name'] != "")
        {
                $sPicture = ($iCategoryId."-".IO::getFileName($_FILES['filePicture']['name']));

                if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.CATEGORIES_IMG_DIR.$sPicture)))
                        $sPicture = "";

                else
                {
                        $sSQL  = "UPDATE tbl_categories SET picture='$sPicture' WHERE id='$iCategoryId'";
                        $bFlag = $objDb->execute($sSQL);				
                }
        }
        
        if ($bFlag == true)
            redirect("categories.php", "CATEGORY_ADDED");

        else
            $_SESSION["Flag"] = "DB_ERROR";
?>