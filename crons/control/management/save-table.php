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

	$sTableTitle    = IO::strValue("txtTableTitle");
        $sSeatsCapacity = IO::intValue("txtSeatsCapacity");
        $iFloor         = IO::intValue("ddFloor");
       	$sStatus        = IO::strValue("ddStatus");
        $sPicture       = "";
	$bError         = true;


	if ($sTableTitle == "" || $sSeatsCapacity == "" || $iFloor == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iTables = getDbValue("id", "tbl_tables", "table_no LIKE '$sTableTitle' AND floor_id = '$iFloor'");
		
		if ($iTables > 0)
			$_SESSION["Flag"] = "TABLE_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iTable  = getNextId("tbl_tables");
                
		$sSQL = "INSERT INTO tbl_tables SET  id         = '$iTable',
                                                    table_no    = '$sTableTitle',
                                                    total_seats = '$sSeatsCapacity',
                                                    floor_id    = '$iFloor',
                                                    picture     = '',
                                                    status      = '$sStatus',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
                
                if ($bFlag == true && $_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iFloor."-".$iTable."-".IO::getFileName($_FILES['filePicture']['name']));

			if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.TABLES_IMG_DIR.$sPicture)))
				$sPicture = "";
			
			else
			{
				$sSQL  = "UPDATE tbl_tables SET picture='$sPicture' WHERE id='$iTable'";
				$bFlag = $objDb->execute($sSQL);				
			}
		}
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("tables.php", "TABLE_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>