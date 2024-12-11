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

	$sFloor     = IO::strValue("txtFloor");
        $iStore     = IO::intValue("ddStore");
        $fWidth     = IO::floatValue("txtFloorWidth");
        $fLength    = IO::floatValue("txtFloorLength");
       	$sStatus    = IO::strValue("ddStatus");
        $sPicture   = "";
        $iFiles             = IO::intValue("Files_count");
	$sDocument          = "";
	$sFiles             = array( );
	$bError     = true;


	if ($sFloor == "" || $iStore == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iFloors = getDbValue("id", "tbl_floors", "name LIKE '$sFloor' AND store_id = '$iStore'");
		
		if ($iFloors > 0)
			$_SESSION["Flag"] = "FLOOR_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iFloor  = getNextId("tbl_floors");
                $iPosition  = $iFloor + 1;
                
		$sSQL = "INSERT INTO tbl_floors SET  id         = '$iFloor',
                                                    name        = '$sFloor',
                                                    picture     = '',
                                                    store_id    = '$iStore',   
                                                    width       = '$fWidth',
                                                    length      = '$fLength',
                                                    status      = '$sStatus',
                                                    position    = '$iPosition',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
                
                if ($bFlag == true && $_FILES['filePicture']['name'] != "")
		{
			$sPicture = ($iStore."-".$iFloor."-".IO::getFileName($_FILES['filePicture']['name']));

			if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.FLOORS_IMG_DIR.$sPicture)))
				$sPicture = "";
			
			else
			{
				$sSQL  = "UPDATE tbl_floors SET picture='$sPicture' WHERE id='$iFloor'";
				$bFlag = $objDb->execute($sSQL);				
			}
		}
                
                if ($bFlag == true)
		{
			for ($i = 0; $i < $iFiles; $i ++)
			{
				$sUploadName   = IO::strValue("Files_{$i}_name");
				$sUploadStatus = IO::strValue("Files_{$i}_status");


				if ($sUploadStatus == "done" && $sUploadName != "")
				{
                                    
					$iFile = getNextId("tbl_floor_files");
					$sFile = ("{$iFloor}-{$iFile}-".IO::getFileName($sUploadName));

					$iPosition  = @strrpos($sUploadName, '.');
					$sExtension = @substr($sUploadName, $iPosition);

					if (@in_array($sExtension, array(".jpg", ".jpeg", ".png", ".gif")))
                                        {
                                            copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.FLOORS_IMG_DIR.$sFile));

                                            $sSQL = "INSERT INTO tbl_floor_files SET id       = '$iFile',
                                                                                    floor_id  = '$iFloor',
                                                                                    file      = '$sFile'";
                                            $bFlag = $objDb->execute($sSQL);

                                            if ($bFlag == false)
                                            	break;
                                            
                                            $sFiles[] = $sFile;
                                        }
				}


				@unlink($sRootDir.TEMP_DIR.IO::strValue("Files_{$i}_name"));
			}
		}
		
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("floors.php", "FLOOR_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>