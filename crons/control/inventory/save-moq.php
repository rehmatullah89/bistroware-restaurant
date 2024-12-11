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

	$iItem      = IO::intValue("ddItem");
	$iUnit      = IO::intValue("ddUnit");
        $iSupplier  = IO::intValue("ddSupplier");
        $sMOQ       = IO::strValue("txtMOQ");
	$sDaysReq   = IO::intValue("txtDaysRequired");
	$bError     = true;


	if ($iItem == "" || $iUnit == "" || $iSupplier == "" || $sMOQ == "" || $sDaysReq == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iMoqs = getDbValue("id", "tbl_moqs", "ingredient_id = '$iItem' AND supplier_id = '$iSupplier'");
		
		if ($iMoqs > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $sSQL = "INSERT INTO tbl_moqs SET ingredient_id     = '$iItem',
                                                    supplier_id     = '$iSupplier',
                                                    moq             = '$sMOQ',
                                                    unit_id         = '$iUnit',
                                                    days_required   = '$sDaysReq',
                                                    created_by      = '{$_SESSION['AdminId']}',
                                                    created_at      = NOW( ),
                                                    modified_by     = '{$_SESSION['AdminId']}',
                                                    modified_at     = NOW( )";
                                                    
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("moqs.php", "PRODUCT_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>