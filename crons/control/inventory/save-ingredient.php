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

	$sItem      = IO::strValue("txtItem");
	$iUnit      = IO::intValue("ddUnit");
        $sUom       = IO::strValue("ddUom");
        $iLocation  = IO::intValue("ddLocation");
        $iSuppliers = implode(",", IO::getArray("ddSuppliers"));
	$sStatus    = IO::strValue("ddStatus");
	$bError     = true;


	if ($sItem == "" || $iUnit == "" || $iLocation == "" || empty($iSuppliers) || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iIngredients = getDbValue("id", "tbl_ingredients", "title LIKE '$sItem' AND unit_id = '$iUnit'");
		
		if ($iIngredients > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iIngredient  = getNextId("tbl_ingredients");
                
		$sSQL = "INSERT INTO tbl_ingredients SET id     = '$iIngredient',
                                                    title       = '$sItem',
                                                    unit_id     = '$iUnit',
                                                    uom         = '$sUom',
                                                    location_id = '$iLocation',
                                                    suppliers   = '$iSuppliers',    
                                                    status      = '$sStatus',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
                                                    
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("ingredients.php", "PRODUCT_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>