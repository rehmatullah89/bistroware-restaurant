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


	$iPageId     = IO::intValue("iDisplayStart");
	$iPageSize   = IO::intValue("iDisplayLength");
	$sKeywords   = IO::strValue("sSearch");
	$sStatus     = IO::strValue("Status");

        $sCountries = getList("tbl_countries", "id", "country");
        
        $sConditions = " WHERE id!='0'";
	$sOrderBy    = " ORDER BY id ";
	$sColumns    = array('id', 'name', 'address', 'phone', 'email', 'country_id', 'status');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
				if ($sColumns[IO::intValue("iSortCol_{$i}")] == "country_id")
				{
					$sFields = getList("tbl_countries", "id", "id", "", "country");
					$sOrder  = @implode(",", $sFields);

					$sOrderBy .= ("FIELD(country_id, {$sOrder}) ".strtoupper(IO::strValue("sSortDir_{$i}")).", ");
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
		
		$sConditions .= " AND (title LIKE '%{$sKeywords}%' OR code LIKE '%{$sKeywords}%')";
	}

        if ($sStatus == "NA")
                $sConditions .= " AND status='' ";
	else if ($sStatus != "")
		$sConditions .= " AND status='$sStatus' ";


	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_suppliers", $sConditions, $iPageSize, $iPageId);


	$sSQL = "SELECT id, name, address, phone, mobile, fax, email, website, city, country_id, status, created_at, modified_at,
                                                    (SELECT name FROM tbl_admins WHERE id=tbl_suppliers.created_by) AS _CreatedBy,
                                                    (SELECT name FROM tbl_admins WHERE id=tbl_suppliers.modified_by) AS _ModifiedBy
		        FROM tbl_suppliers
	         $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );



	$sSuppliersSQL = "id!='0'";

	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_suppliers", $sSuppliersSQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId         = $objDb->getField($i, "id");
                $sName       = $objDb->getField($i, "name");
                $sAddress    = $objDb->getField($i, "address");
                $sPhone      = $objDb->getField($i, "phone");
                $sMobile     = $objDb->getField($i, "mobile");
                $sFax        = $objDb->getField($i, "fax");
                $sEmail      = $objDb->getField($i, "email");
                $sWebsite    = $objDb->getField($i, "website");
                $sCity       = $objDb->getField($i, "city");
                $iCountryId  = $objDb->getField($i, "country_id");                        
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
		                              @utf8_encode($sName),
		                              @utf8_encode($sAddress),
		                              @utf8_encode($sPhone),
                                              @utf8_encode($sEmail),
                                              @utf8_encode($sCountries[$iCountryId]),
                                              @utf8_encode($sStatus),
		                              $sOptions );
	}

	print @json_encode($sOutput);

	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>