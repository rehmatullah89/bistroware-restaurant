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
	$iCategory   = IO::intValue("Category");
	$sStatus     = IO::strValue("Status");

        $sConditions = " WHERE id!='0'";
	$sOrderBy    = " ORDER BY position ";
	$sColumns    = array('id', 'name', 'meal_id', 'category_id', 'cooking_time', 'price', 'status');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);
        
        //$sMealsList         = getList("tbl_meals", "id", "meal");
        $sCategoriesList    = getList("tbl_categories", "id", "category");

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
				if ($sColumns[IO::intValue("iSortCol_{$i}")] == "category_id")
				{
					$sFields = getList("tbl_categories", "id", "id", "", "category");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(category_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
				}
                                else
					$sOrderBy .= ($sColumns[IO::intValue("iSortCol_{$i}")]." ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");

				$sSortOrder = strtoupper(IO::strValue("sSortDir_{$i}"));
			}
		}


		$sOrderBy = substr_replace($sOrderBy, "", -2);

		if ($sOrderBy == "ORDER BY")
			$sOrderBy = " ORDER BY position ";
	}


	if ($sKeywords != "")
	{
		$iProduct = intval($sKeywords);

		
		$sConditions .= " AND (name LIKE '%{$sKeywords}%')";
	}

	if ($iCategory > 0)
		$sConditions .= " AND category_id='$iCategory' ";

	if ($sStatus != "")
		$sConditions .= " AND status='$sStatus' ";


	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_products", $sConditions, $iPageSize, $iPageId);


	$sSQL = "SELECT id, meal_id, category_id, tax_id, store_id, cooking_time, name, price, cost, picture, status, created_at, modified_at,
						(SELECT GROUP_CONCAT(meal SEPARATOR ', ') FROM tbl_meals WHERE FIND_IN_SET(id, tbl_products.meal_id)) AS _Meals,
                                                (SELECT name FROM tbl_admins WHERE id=tbl_products.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_products.modified_by) AS _ModifiedBy
	         FROM tbl_products
	         $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";

	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );



	$sInspectionsSQL = "id!='0'";

	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_products", $sInspectionsSQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId         = $objDb->getField($i, "id");
                $iMeal       = $objDb->getField($i, "meal_id");
                $sMeals      = $objDb->getField($i, "_Meals");
                $iCategory   = $objDb->getField($i, "category_id");
                $sProduct    = $objDb->getField($i, "name");
                $fTax        = $objDb->getField($i, "tax_id");
                $iStore      = $objDb->getField($i, "store_id");
                $iCookingTime= $objDb->getField($i, "cooking_time");
                $iPrice      = $objDb->getField($i, "price");
                $iCost       = $objDb->getField($i, "cost");
                $sStatus     = $objDb->getField($i, "status");
                $sCreatedAt  = $objDb->getField($i, "created_at");
                $sCreatedBy  = $objDb->getField($i, "_CreatedBy");
                $sModifiedAt = $objDb->getField($i, "modified_at");
                $sModifiedBy = $objDb->getField($i, "_ModifiedBy");


		switch ($sStatus)
                {
                        case "A" : $sStatus = "Active"; break;
                        case "I" : $sStatus = "In-Active"; break;
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
		                              @utf8_encode($sProduct),
                                              @utf8_encode($sMeals),
		                              @utf8_encode($sCategoriesList[$iCategory]),
                                              @utf8_encode($iCookingTime),
		                              @utf8_encode($iPrice),
                                              @utf8_encode($iCost),
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