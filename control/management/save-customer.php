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
	$sEmail     = IO::strValue("txtEmail");
        $sPhone     = IO::strValue("txtPhone");
        $sPassword  = IO::strValue("txtPassword");
	$sStatus    = IO::strValue("ddStatus");
	$bError     = true;


	if ($sName == "" || $sEmail == "" || $sPhone == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iCustomer = getDbValue("id", "tbl_users", "email LIKE '$sEmail'");
		
		if ($iCustomer > 0)
			$_SESSION["Flag"] = "USER_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iCustomer  = getNextId("tbl_users");
                
		$sSQL = "INSERT INTO tbl_users SET  id          = '$iCustomer',
                                                    name        = '$sName',
                                                    email       = '$sEmail',
                                                    mobile      = '$sPhone',    
                                                    status      = '$sStatus',
                                                    password    = '$sPassword',
                                                    date_time   = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("customers.php", "USER_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>