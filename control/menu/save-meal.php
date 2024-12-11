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

	$sMeal       = IO::strValue("txtMeal");
	$sStatus     = IO::strValue("ddStatus");
	$bError      = true;


	if ($sMeal == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";


	if ($_SESSION["Flag"] == "")
	{
		$sSQL = "SELECT * FROM tbl_meals WHERE meal LIKE '$sMeal'";

		if ($objDb->query($sSQL) == true && $objDb->getCount( ) == 1)
			$_SESSION["Flag"] = "MEAL_EXISTS";
	}


	if ($_SESSION["Flag"] == "")
	{
		$iMealId    = getNextId("tbl_meals");

		$sSQL = "INSERT INTO tbl_meals SET id               = '$iMealId',
		                                       meal         = '$sMeal',
		                                       status       = '$sStatus',
         		                               created_at   = NOW( ),
                                                       created_by   = '{$_SESSION['AdminId']}',
                                                       modified_at  = NOW( ),
                                                       modified_by  = '{$_SESSION['AdminId']}'";
                                                       
                $bFlag  =   $objDb->execute($sSQL);                                     
                
                if ($bFlag == true)
                    redirect("meals.php", "MEAL_ADDED");
                else
                    $_SESSION["Flag"] = "DB_ERROR";
	}
        
?>