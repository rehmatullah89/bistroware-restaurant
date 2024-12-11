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
        $sStatus     = IO::strValue("Status");

        $sConditions = " WHERE id!='0'";
	$sOrderBy    = " ORDER BY id ";
	$sColumns    = array('id', 'table_id', 'total_guests', 'waiter_id', 'created_at', 'TotalBill', 'status');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);
       
        $sTablesList      = getList("tbl_tables", "id", "table_no");
        $sUsersList       = getList("tbl_admins", "id", "name", "status='A'");
        $UserRights       = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
				if ($sColumns[IO::intValue("iSortCol_{$i}")] == "table_id")
				{
					$sFields = getList("tbl_tables", "id", "id", "", "table_no");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(table_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
				}
                                else if ($sColumns[IO::intValue("iSortCol_{$i}")] == "waiter_id")
				{
					$sFields = getList("tbl_admins", "id", "id", "", "name");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(waiter_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
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
		$iProduct = intval($sKeywords);

		$sConditions .= " AND (table_id LIKE '%{$sKeywords}%' OR waiter_id LIKE '%{$sKeywords}%')";
	}

        if($sStatus == 'NA')
            $sConditions .= " AND status='' ";
	else if ($sStatus != "")
		$sConditions .= " AND status='$sStatus' ";

	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_orders", $sConditions, $iPageSize, $iPageId);

	$sSQL = "SELECT id, table_id, total_guests, waiter_id, remarks, status, created_at, modified_at,
                                (SELECT SUM(net_price) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status NOT IN ('V', 'F')) AS _TotalBill,
                                (SELECT COUNT(1) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status = 'FR') AS _FreeRequests,
                                (SELECT COUNT(1) FROM tbl_order_details WHERE order_id=tbl_orders.id AND status = 'R') AS _Voids,
                                (SELECT name FROM tbl_admins WHERE id=tbl_orders.created_by) AS _CreatedBy,
                                (SELECT name FROM tbl_admins WHERE id=tbl_orders.modified_by) AS _ModifiedBy
		        FROM tbl_orders
                 $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	$sOrdersSQL = "id!='0'";
	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_orders", $sOrdersSQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId                = $objDb->getField($i, "id");
                $iTable             = $objDb->getField($i, "table_id");
                $iTotalGuest        = $objDb->getField($i, "total_guests");
                $iWaiter            = $objDb->getField($i, "waiter_id");
                $iTotalBill         = $objDb->getField($i, "_TotalBill");
                $iVoids             = $objDb->getField($i, "_Voids");
                $iFreeMealRequest   = $objDb->getField($i, "_FreeRequests");
                $sStatus            = $objDb->getField($i, "status");
                $sCreatedAt         = $objDb->getField($i, "created_at");
                $sCreatedBy         = $objDb->getField($i, "_CreatedBy");
                $sModifiedAt        = $objDb->getField($i, "modified_at");
                $sModifiedBy        = $objDb->getField($i, "_ModifiedBy");

		switch ($sStatus)
                {
                        case "A" : $sStatus = "Active"; break;
                        case "B" : $sStatus = "Bumped"; break;
                        case "C" : $sStatus = "Completed"; break;
                        default  : $sStatus = "N/A"; break;
                }


		$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

		if ($sCreatedAt != $sModifiedAt)
			$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");


		$sOptions = (' <img class="icon details" id="'.$iId.'" src="images/icons/info.png" alt="" title="'.$sInfo.'" />');
                
                if(@in_array(9, $UserRights))
                {
                    $sOptions = (' <img class="icnToggle" res="'.$sStatus.'" id="'.$iId.'" src="images/icons/'.(strtolower($sStatus)).'.png" alt="" title="'.$sInfo.'" />');
                }
                
		if ($sUserRights["Edit"] == "Y")
		{
			$sOptions .= (' <img class="icnEdit" id="'.$iId.'" src="images/icons/edit.gif" alt="Edit" title="Edit" />');
		}

		if ($sUserRights["Delete"] == "Y")
			$sOptions .= (' <img class="icnDelete" id="'.$iId.'" src="images/icons/delete.gif" alt="Delete" title="Delete" />');
                
                if(@in_array(7, $UserRights))
                {
                        $sOptions .= (' <img class="icon icnVoid" id="'.$iId.'" src="images/icons/negtive.png" alt="Void Order" title="Void Order" />');
                }
                
                if(@in_array(8, $UserRights) && $iFreeMealRequest >0)
                {
                        $sOptions .= (' <img class="icon icnFreeMeal" style="width:25px !important;" id="'.$iId.'" src="images/icons/free.gif" alt="Free Meal Request" title="Free Meal Request" />');
                }

		$sOptions .= (' <img class="icnView" id="'.$iId.'" void="'.($iVoids>0?1:0).'" src="images/icons/view.gif" alt="View" title="View" />');
                $sOptions .= (' <a href="management/print-order-bill.php?Id="'. $iId .'"><img src="images/icons/print.png" width="16" alt="Print Bill" title="Print Bill" /></a>');


		$sOutput['aaData'][] = array( str_pad($iId, 5, '0', STR_PAD_LEFT),
		                              @utf8_encode($sTablesList[$iTable]),
		                              @utf8_encode($iTotalGuest),
		                              @utf8_encode($sUsersList[$iWaiter]),
		                              @utf8_encode($sCreatedAt),
                                              @utf8_encode(formatNumber($iTotalBill, false)),
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