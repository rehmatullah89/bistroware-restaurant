<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
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
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	header("Expires: Tue, 01 Jan 2010 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );


	$iPageId     = IO::intValue("iDisplayStart");
	$iPageSize   = IO::intValue("iDisplayLength");
	$sKeywords   = IO::strValue("sSearch");

        $sFloors = getList("tbl_floors", "id", "name");
        $sTables = getList("tbl_tables", "id", "table_no");
        
        $sConditions = " WHERE id!='0'";
	$sOrderBy    = " ORDER BY id ";
	$sColumns    = array('id', 'name', 'phone', 'date_time', 'guests', 'floor_id', 'table_id', 'status');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);
       
        $sFloorsList = getList("tbl_floors", "id", "name");

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
				if ($sColumns[IO::intValue("iSortCol_{$i}")] == "floor_id")
				{
					$sFields = getList("tbl_floors", "id", "id", "", "name");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(floor_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
				}
                                else if ($sColumns[IO::intValue("iSortCol_{$i}")] == "table_id")
				{
					$sFields = getList("tbl_tables", "id", "id", "", "name");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(table_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
				}
                                else
					$sOrderBy .= ($sColumns[IO::intValue("iSortCol_{$i}")]." ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");

				$sSortOrder = strtoupper(IO::strValue("sSortDir_{$i}"));
			}
		}


		$sOrderBy = substr_replace($sOrderBy, "", -2);

		if ($sOrderBy == "ORDER BY")
			$sOrderBy = " ORDER BY id ";
	}

	if ($sKeywords != "")
	{
		$sConditions .= " AND (name LIKE '%{$sKeywords}%' OR phone LIKE '%{$sKeywords}%' OR id LIKE '%{$sKeywords}%')";
	}

	if ($sStatus != "")
		$sConditions .= " AND status='$sStatus' ";

	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_reservations", $sConditions, $iPageSize, $iPageId);

	$sSQL = "SELECT id, name, phone, date_time, guests, floor_id, table_id, status, created_at, modified_at,
						(SELECT name FROM tbl_admins WHERE id=tbl_reservations.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_reservations.modified_by) AS _ModifiedBy
		        FROM tbl_reservations
                 $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	$sTablesSQL = "id!='0'";
	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_reservations", $sTablesSQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId         = $objDb->getField($i, "id");
                $sName       = $objDb->getField($i, "name");
                $iPhone      = $objDb->getField($i, "phone");
                $sDateTime   = $objDb->getField($i, "date_time");
                $iGuests     = $objDb->getField($i, "guests");
                $iFloor      = $objDb->getField($i, "floor_id");
                $iTable      = $objDb->getField($i, "table_id");
                $sStatus     = $objDb->getField($i, "status");
                $sCreatedAt  = $objDb->getField($i, "created_at");
                $sCreatedBy  = $objDb->getField($i, "_CreatedBy");
                $sModifiedAt = $objDb->getField($i, "modified_at");
                $sModifiedBy = $objDb->getField($i, "_ModifiedBy");

                switch ($sStatus)
                {
                        case "P" : $sStatus = "Pending"; break;
                        case "R" : $sStatus = "Reserved"; break;
                        case "F" : $sStatus = "Completed"; break; // Free Or Completed
                        case "C" : $sStatus = "Cancelled"; break;
                        default  : $sStatus = "N/A"; break;
                }


		$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

		if ($sCreatedAt != $sModifiedAt)
			$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");


		$sOptions = (' <img class="icon details" id="'.$iId.'" src="images/icons/info.png" alt="" title="'.$sInfo.'" />');

		if ($sUserRights["Edit"] == "Y")
		{
			$sOptions .= (' <img class="icnEdit" id="'.$iId.'" src="images/icons/edit.gif" alt="Edit" title="Edit" />');
		}

		if ($sUserRights["Delete"] == "Y")
			$sOptions .= (' <img class="icnDelete" id="'.$iId.'" src="images/icons/delete.gif" alt="Delete" title="Delete" />');
                

		$sOptions .= (' <img class="icnView" id="'.$iId.'" src="images/icons/view.gif" alt="View" title="View" />');


		$sOutput['aaData'][] = array( str_pad($iId, 5, '0', STR_PAD_LEFT),
		                              @utf8_encode($sName),
		                              @utf8_encode($iPhone),
                                              @utf8_encode($sDateTime),                    
                                              @utf8_encode($iGuests),                    
		                              @utf8_encode($sFloorsList[$iFloor]),
                                              @utf8_encode($sTables[$iTable]),
		                              @utf8_encode($sStatus),
		                              $sOptions );
	}

	print @json_encode($sOutput);


	$objDb->close( );
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>