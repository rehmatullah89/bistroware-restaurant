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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );

	if ($sUserRights["Edit"] != "Y")
	{
		print "info|-|You don't have enough Rights to perform the requested operation.";
		exit( );
	}


	$iFloor = IO::intValue("FloorId");
        $sItem  = IO::strValue("ItemId");
        $sPosX  = IO::strValue("PosX");
        $sPosY  = IO::strValue("PosY");
        
        $sItem      = explode("_", $sItem);
        $iItemType  = @$sItem[0];
        $iItemId    = @$sItem[1];

	if ($iFloor != "")
	{
		$objDb->execute("BEGIN");

                $iFloorItemTableId = getDbValue("id", "tbl_floor_items", "floor_id='$iFloor' AND item_id='$iItemId' AND item_type='$iItemType'");

		if ($iFloorItemTableId > 0)
		{
                    $iFloorItem  = $iFloorItemTableId;
                        
                    $sSQL = "UPDATE tbl_floor_items SET cordinates_x    = '$sPosX',
                                                        cordinates_y    = '$sPosY',
                                                        modified_by     = '{$_SESSION['AdminId']}',
                                                        modified_at     = NOW( )
                                            WHERE id = '$iFloorItem'";
                    $bFlag = $objDb->execute($sSQL);
                    
                }
                else 
                {
                    
                    $iFloorItem  = getNextId("tbl_floor_items");
                        
                    $sSQL = "INSERT INTO tbl_floor_items SET  id    = '$iFloorItem',
                                                    floor_id        = '$iFloor',
                                                    item_id         = '$iItemId',
                                                    item_type       = '$iItemType',   
                                                    cordinates_x    = '$sPosX',
                                                    cordinates_y    = '$sPosY',
                                                    created_by      = '{$_SESSION['AdminId']}',
                                                    created_at      = NOW( ),
                                                    modified_by     = '{$_SESSION['AdminId']}',
                                                    modified_at     = NOW( )";
                    $bFlag = $objDb->execute($sSQL);
                    
                }
                
                if($bFlag == true)
                {
			$objDb->execute("COMMIT");

			if ($iFloorItemTableId > 0)
				print "success|-|The selected Floor Item has been added to Floor successfully.";

			else
				print "success|-|The selected Floor Item has been updated to Floor successfully.";
		}

		else
		{
			print "error|-|An error occured while processing your request, please try again.";

			$objDb->execute("ROLLBACK");
		}
	}

	else
		print "info|-|Inavlid Floor Record Create/Update request.";


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>