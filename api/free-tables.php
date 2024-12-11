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

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );


	$sEmail   = IO::strValue("Email");
                
	$aResponse           = array( );
	
	if ($sEmail == "")
		$aResponse["Message"] = "Invalid API Request";

	else if (getDbValue("COUNT(1)", "tbl_admins", "email LIKE '$sEmail' AND status='A'") > 0)
	{
            
                $iActiveTables = getList("tbl_orders", "table_id", "table_id", "status != 'C'");//AND DATE_FORMAT(created_at,'%Y-%m-%d') = CURDATE()
                $sActiveTables = implode(",", $iActiveTables);
                
                $sSubSql = "";
                if(!empty($iActiveTables))
                    $sSubSql = " AND t.id NOT IN ($sActiveTables) ";
                
		$sSQL = "SELECT f.id as _FloorId, f.name, t.total_seats,
                                    t.id  as _TableId, t.table_no
				 FROM tbl_tables t, tbl_floors f
				 WHERE t.floor_id=f.id $sSubSql ORDER BY FIELD(f.id, 3,4,2), t.table_no";

                $objDb->query($sSQL);
                $iCount  = $objDb->getCount();
                
                $sResponseList = array();
                
		if ($iCount > 0)
		{
                    for($i=0; $i<$iCount; $i++)
                    {

                        $iFloorId   = $objDb->getField($i, "_FloorId");
                        $sFloorName = $objDb->getField($i, "name");
                        $iTotalSeats= $objDb->getField($i, "total_seats");
                        $sTableId   = $objDb->getField($i, "_TableId");
                        $sTableNo   = $objDb->getField($i, "table_no");

                        $sResponseList[$iFloorId][$sFloorName][] = array('table_id'=> $sTableId, 'table_no'=>$sTableNo, 'seats'=>$iTotalSeats); 
                    }
                    
                    $aResponse['Data'] = $sResponseList;
		}

		else
			$aResponse["Message"] = "No Table Found!";
	}
        else
            $aResponse["Message"] = "Invalid User Requested";
        
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>