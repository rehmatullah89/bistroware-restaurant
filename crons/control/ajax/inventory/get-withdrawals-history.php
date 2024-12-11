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
        $sStartDate  = IO::strValue("StartDate");
        $sEndDate    = IO::strValue("EndDate");
	$sKeywords   = IO::strValue("sSearch");
	$sStatus     = IO::strValue("Status");

        $sIngredientsList = getList("tbl_ingredients", "id", "title");
        
        $sConditions = " WHERE ih.id!='0'";
	$sOrderBy    = " ORDER BY id ";
	$sColumns    = array('id', 'ingredient_id', 'po_number', 'modified_at', 'modified_by', 'qty_withdraw');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);

        if($sStartDate != "" && $sEndDate != "")
        {
            $sConditions .= " AND DATE_FORMAT(ih.modified_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate' ";
        }

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
                        if ($sColumns[IO::intValue("iSortCol_{$i}")] == "ingredient_id")
                        {
                                $sFields = getList("tbl_ingredients", "id", "id", "", "title");
                                $sOrder  = @implode(",", $sFields);

                                $sOrderBy .= ("FIELD(ids.ingredient_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
                        }
                        if ($sColumns[IO::intValue("iSortCol_{$i}")] == "po_number")
                        {
                                $sFields = getList("tbl_ingredients", "id", "id", "", "title");
                                $sOrder  = @implode(",", $sFields);

                                $sOrderBy .= ("FIELD(ids.inventory_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
                        }
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
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
		$sConditions .= " AND (ih.modified_by LIKE '%{$sKeywords}%' OR ih.modified_at LIKE '{$sKeywords}%' OR ids.ingredient_id IN (SELECT id from tbl_ingredients WHERE title LIKE '%{$sKeywords}%')) ";
	}

	
	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_inventory_history ih LEFT JOIN tbl_inventory_details ids ON ih.inventory_detail_id = ids.id", $sConditions, $iPageSize, $iPageId);


	$sSQL = "SELECT ih.id, ids.ingredient_id, ih.modified_at, ih.qty_withdraw, ih.wt_withdraw, ids.item_type,
                                (SELECT code FROM tbl_units u, tbl_ingredients i WHERE i.unit_id=u.id AND i.id=ids.ingredient_id) AS _Unit,
                                (SELECT po_number FROM tbl_inventory WHERE id=ids.inventory_id) AS _PoNumber,
                                (SELECT name FROM tbl_admins WHERE id=ih.modified_by) AS _ModifiedBy
		        FROM tbl_inventory_history ih
                        LEFT JOIN tbl_inventory_details ids
                        ON ih.inventory_detail_id = ids.id 
                 $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";
        
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );



	$sInventorySQL = "id!='0'";

	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_inventory_history", $sInventorySQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId            = $objDb->getField($i, "id");
                $iIngredient    = $objDb->getField($i, "ingredient_id");
                $iQtyWithdraw   = $objDb->getField($i, "qty_withdraw");
                $iWtWithdraw    = $objDb->getField($i, "wt_withdraw");
                $iPoNumber      = $objDb->getField($i, "_PoNumber");
                $sUnit          = $objDb->getField($i, "_Unit");
                $sModifiedAt    = $objDb->getField($i, "modified_at");
                $sModifiedBy    = $objDb->getField($i, "_ModifiedBy");
                $sItemType      = $objDb->getField($i, "item_type");
                $iItemsWasted   = $objDb->getField($i, "qty_wt_wasted");
                $iWastedReason  = $objDb->getField($i, "wasted_reason_id");
                $sIngredient    = $sIngredientsList[$iIngredient];


		$sInfo = ("<b>Withdrawan By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

		//if ($sCreatedAt != $sModifiedAt)
		//	$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");


		$sOptions = (' <img class="icon details" id="'.$iId.'" ref="'.$sItemType.'" src="images/icons/info.png" alt="" title="'.$sInfo.'" />');

		if ($sUserRights["Edit"] == "Y")
		{
			$sOptions .= (' <img class="icnEdit" id="'.$iId.'" src="images/icons/'.($iItemsWasted == ""?"bin-blank.png":"bin-filled.png").'" alt="Edit If Wastage?" title="Edit If Wastage?" />');
		}

		if ($sUserRights["Delete"] == "Y")
			$sOptions .= (' <img class="icnDelete" id="'.$iId.'" src="images/icons/delete.gif" alt="Delete" title="Delete" />');

		//$sOptions .= (' <img class="icnView" id="'.$iId.'" src="images/icons/view.gif" alt="View" title="View" />');
                //$sOptions .= (' <a href="inventory/export-barcodes.php?Id='.$iId.'"><img id="'.$iId.'" src="../images/icons/barcode.png" width="16" height="16" alt="Bar Codes" title="Bar Codes" /></a>');
                
		$sOutput['aaData'][] = array( str_pad($iId, 5, '0', STR_PAD_LEFT),
    		                              @utf8_encode($sIngredient),
                                              @utf8_encode(($sItemType == 'I'?'Imported':'Local')),
		                              @utf8_encode($iPoNumber),
		                              @utf8_encode(formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")),
		                              @utf8_encode(($iQtyWithdraw != 0?$iQtyWithdraw:$iWtWithdraw)." ".$sUnit),
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