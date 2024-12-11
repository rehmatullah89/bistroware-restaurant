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
	$sAddress   = IO::strValue("txtAddress");
        $sPhone     = IO::strValue("txtPhone");
        $sMobile    = IO::strValue("txtMobile");
        $sFax       = IO::strValue("txtFax");
        $sEmail     = IO::strValue("txtEmail");
        $sWebsite   = IO::strValue("txtWebsite");
        $sCity      = IO::strValue("txtCity");
        $iCountry   = IO::intValue("ddCountry");
	$sStatus    = IO::strValue("ddStatus");
	$bError     = true;


	if ($sName == "" || $sAddress == "" || $iCountry == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iSuppliers = getDbValue("id", "tbl_suppliers", "name LIKE '$sName' AND address LIKE '$sAddress'");
		
		if ($iSuppliers > 0)
			$_SESSION["Flag"] = "SUPPLIER_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iSupplier  = getNextId("tbl_suppliers");
                
		$sSQL = "INSERT INTO tbl_suppliers SET  id      = '$iSupplier',
                                                    name        = '$sName',
                                                    address     = '$sAddress',
                                                    phone       = '$sPhone',    
                                                    mobile      = '$sMobile',
                                                    fax         = '$sFax',    
                                                    email       = '$sEmail',
                                                    website     = '$sWebsite',
                                                    city        = '$sCity',
                                                    country_id  = '$iCountry',    
                                                    status      = '$sStatus',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("suppliers.php", "SUPPLIER_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>