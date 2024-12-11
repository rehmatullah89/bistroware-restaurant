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

	$sUnit      = IO::strValue("txtUnit");
	$sCode      = IO::strValue("txtCode");
	$sStatus    = IO::strValue("ddStatus");
	$bError     = true;


	if ($sUnit == "" || $sCode == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iUnit = getDbValue("id", "tbl_units", "title LIKE '$sUnit' OR code LIKE '$sCode'");
		
		if ($iUnit > 0)
			$_SESSION["Flag"] = "UNIT_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iUnit      = getNextId("tbl_units");
                $iPosition  = $iUnit + 1;
                
		$sSQL = "INSERT INTO tbl_units SET  id          = '$iUnit',
                                                    title       = '$sUnit',
                                                    code        = '$sCode',
                                                    status      = '$sStatus',
                                                    position    = '$iPosition',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("units.php", "UNIT_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>