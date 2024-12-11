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

        $bFlag  = false;
	$iFloor = IO::intValue("FloorId");
        $sItem  = IO::strValue("ItemId");
        
        $sItem      = explode("_", $sItem);
        $iItemType  = @$sItem[0];
        $iItemId    = @$sItem[1];

	if ($iFloor != "")
	{
		$objDb->execute("BEGIN");

                $iFloorItem = getDbValue("id", "tbl_floor_items", "floor_id='$iFloor' AND item_id='$iItemId' AND item_type='$iItemType'");

		if ($iFloorItem > 0)
		{
                        
                    $sSQL = "DELETE FROM tbl_floor_items WHERE id = '$iFloorItem'";
                    $bFlag = $objDb->execute($sSQL);
                    
                }
                
                if($bFlag == true)
                {
			$objDb->execute("COMMIT");
			print "success|-|The selected Floor Item has been removed from Floor successfully.";
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