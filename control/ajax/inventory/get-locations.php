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

        $sConditions = " WHERE id!='0'";
	$sOrderBy    = " ORDER BY position ";
	$sColumns    = array('id', 'title', 'code', 'status');
	$iPageId     = (($iPageId > 0) ? (($iPageId / $iPageSize) + 1) : 1);

	if (IO::strValue("iSortCol_0") != "")
	{
		$sOrderBy = "ORDER BY  ";

		for ($i = 0 ; $i < IO::intValue("iSortingCols"); $i ++)
		{
			if (IO::strValue("bSortable_".IO::intValue("iSortCol_{$i}")) == "true")
			{
				
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
		
		$sConditions .= " AND (title LIKE '%{$sKeywords}%' OR code LIKE '%{$sKeywords}%')";
	}

        if ($sStatus == "NA")
                $sConditions .= " AND status='' ";
	else if ($sStatus != "")
		$sConditions .= " AND status='$sStatus' ";


	@list($iTotalRecords, $iPageCount, $iStart) = getPagingInfo("tbl_locations", $sConditions, $iPageSize, $iPageId);


	$sSQL = "SELECT id, title, code, status, created_at, modified_at,
						(SELECT name FROM tbl_admins WHERE id=tbl_locations.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_locations.modified_by) AS _ModifiedBy
		        FROM tbl_locations
	         $sConditions
	         $sOrderBy
	         LIMIT $iStart, $iPageSize";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );



	$sLocationsSQL = "id!='0'";

	
	$sOutput = array("sEcho"                => IO::intValue("sEcho"),
	                 "iTotalRecords"        => getDbValue("COUNT(1)", "tbl_locations", $sLocationsSQL),
	                 "iTotalDisplayRecords" => $iTotalRecords,
	                 "aaData"               => array( ) );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iId         = $objDb->getField($i, "id");
                $sTitle      = $objDb->getField($i, "title");
                $sCode       = $objDb->getField($i, "code");
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
		                              @utf8_encode($sTitle),
		                              @utf8_encode($sCode),
		                              @utf8_encode($sStatus),
		                              $sOptions );
	}

	print @json_encode($sOutput);


	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>