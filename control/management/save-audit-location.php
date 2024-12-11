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

	$sLocation  = IO::strValue("txtLocation");
	$iFloor     = IO::intValue("ddFloor");
	$sStatus    = IO::strValue("ddStatus");
	$bError     = true;


	if ($sLocation == "" || $iFloor == 0 || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iLocation = getDbValue("id", "tbl_audit_locations", "location LIKE '$sLocation'");
		
		if ($iLocation > 0)
			$_SESSION["Flag"] = "LOCATION_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iLocation  = getNextId("tbl_audit_locations");
                $iPosition  = $iLocation + 1;
                
		$sSQL = "INSERT INTO tbl_audit_locations SET  id      = '$iLocation',
                                                    location    = '$sLocation',
                                                    floor_id    = '$iFloor',    
                                                    status      = '$sStatus',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("audit-locations.php", "LOCATION_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>