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

	@require_once("../requires/common.php");
	@require_once("{$sRootDir}requires/PHPExcel.php");

	if (!@strstr($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']))
		die("ERROR: Invalid Request");


	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	
        $sStartDate = (IO::strValue("StartDate") != ""?IO::strValue("StartDate"):date("Y-m-d"));
        $sEndDate   = (IO::strValue("EndDate") != ""?IO::strValue("EndDate"):date("Y-m-d"));
        
        if(strtotime($sEndDate) < strtotime($sStartDate))
            $sEndDate = $sStartDate;
       
	$objPhpExcel = new PHPExcel( );
        
        $objReader   = PHPExcel_IOFactory::createReader('Excel2007');
	$objPhpExcel = $objReader->load("{$sRootDir}templates/Inventory.xlsx");
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("Inspections")
								 ->setSubject("Single Storey Inspections")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("Inventory")
								 ->setSubject("Daily Inventory Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);

	
	$sHeadingStyle = array('font' => array('bold' => true, 'size' => 14, 'color' => array('rgb' => 'FFFFFF')),
						   'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'A9223E')),
						   'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
						   'borders'   => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)) );

	$sBorderStyle = array('alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					  'borders'  => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
												 'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										 'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										 'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)));
	
        $sSubHeadingStyle 	= array('font'       => array('bold' => false, 'size' => 12),
					 'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'E6E6E6')),
					 'alignment'  => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					 'borders'    => array('top'    => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'right'  => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'left'   => array('style' => PHPExcel_Style_Border::BORDER_THIN)));
        
        $sImportedStyle = array('font'       => array('bold' => false, 'size' => 12),
					 'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'E7967F')),
					 'alignment'  => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					 'borders'    => array('top'    => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'right'  => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'left'   => array('style' => PHPExcel_Style_Border::BORDER_THIN)));
        
        $sLocalStyle = array('font'       => array('bold' => false, 'size' => 12),
					 'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => '89F688')),
					 'alignment'  => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					 'borders'    => array('top'    => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'right'  => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'left'   => array('style' => PHPExcel_Style_Border::BORDER_THIN)));
	/////////////////////////////////////////////////////////////////////
	
        $iRow = 6;
        $iLocalIngredientsWorth = 0;
        $iImportedIngredientsWorth = 0;
        
        $sSuppliersList = getList("tbl_suppliers", "id", "name", "status='A'");
        $sCountries     = getList("tbl_countries", "id", "country");
        $sUnits         = getList("tbl_units u, tbl_ingredients i", "i.id", "u.code", "u.id=i.unit_id");

	
        if($sStartDate == $sEndDate && $sStartDate == date("Y-m-d"))
        {
            $sSQL = "SELECT tbl_inventory_details.*,
                                (SELECT po_number from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotNo,
                                (SELECT created_at from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotDate,
                                (SELECT title from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _Ingredient,
                                (SELECT uom from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _IngredientUom,
                                (SELECT SUM(qty_withdraw) from tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id AND DATE_FORMAT(modified_at, '%Y-%m-%d') = CURDATE()) as _QtyWithdraw,
                                (SELECT SUM(wt_withdraw) from tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id AND DATE_FORMAT(modified_at, '%Y-%m-%d') = CURDATE()) as _WtWithdraw,
                                (SELECT l.title from tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = tbl_inventory_details.ingredient_id) as _Location
                    FROM tbl_inventory_details
                    WHERE quantity > 0
                    ORDER By ingredient_id, expiry_date";
        }
        else
        {
            /*$sSQL = "SELECT ids.*,
                                (SELECT po_number from tbl_inventory WHERE id=ids.inventory_id) as _LotNo,
                                (SELECT created_at from tbl_inventory WHERE id=ids.inventory_id) as _LotDate,
                                (SELECT title from tbl_ingredients WHERE id=ids.ingredient_id) as _Ingredient,
                                (SELECT uom from tbl_ingredients WHERE id=ids.ingredient_id) as _IngredientUom,
                                SUM(ih.qty_withdraw) as _QtyWithdraw,
                                SUM(ih.wt_withdraw) as _WtWithdraw,
                                (SELECT l.title from tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = ids.ingredient_id) as _Location                                
                    FROM tbl_inventory_details ids
                    LEFT OUTER JOIN tbl_inventory_history ih ON ih.inventory_detail_id = ids.id
                    WHERE ids.quantity > 0 OR DATE_FORMAT(ih.modified_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'
                    GROUP BY ids.inventory_id, ids.ingredient_id
                    HAVING (SUM(ih.qty_withdraw) > 0 OR SUM(ih.qty_withdraw) > 0) 
                    ORDER By ingredient_id, expiry_date";            */
            
            $sDetailIds = "";
            $sSQL       = "SELECT DISTINCT(inventory_detail_id) as _InvDetailId FROM tbl_inventory_history WHERE DATE_FORMAT(modified_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'";
            $objDb->query($sSQL);
            $iCount = $objDb->getCount( );
            
            for ($i = 0; $i < $iCount; $i ++)
                $sDetailIds .= $objDb->getField($i, "_InvDetailId").",";
            
            $sDetailIds = rtrim($sDetailIds,',');

            $sSQL = "SELECT tbl_inventory_details.*, 
                    (SELECT po_number FROM tbl_inventory WHERE id=tbl_inventory_details.inventory_id) AS _LotNo, 
                    (SELECT created_at FROM tbl_inventory WHERE id=tbl_inventory_details.inventory_id) AS _LotDate, 
                    (SELECT title FROM tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) AS _Ingredient, 
                    (SELECT uom FROM tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) AS _IngredientUom,
                    (SELECT SUM(qty_withdraw) FROM tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id) AS _QtyWithdraw, 
                    (SELECT SUM(wt_withdraw) FROM tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id) AS _WtWithdraw, 
                    (SELECT l.title FROM tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = tbl_inventory_details.ingredient_id) AS _Location 
                    FROM tbl_inventory_details 
                    WHERE quantity > 0 OR id IN ($sDetailIds)
                    ORDER BY ingredient_id, expiry_date;";            
        }
        
        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iId         = $objDb->getField($i, "id");
                $iInventory  = $objDb->getField($i, "inventory_id");
                $iIngredient = $objDb->getField($i, "ingredient_id");
                $sIngredient = $objDb->getField($i, "_Ingredient");
                $sIngrUom    = $objDb->getField($i, "_IngredientUom");
                $sLotNo      = $objDb->getField($i, "_LotNo");
                $sLotDate    = $objDb->getField($i, "_LotDate");
                $sLocation   = $objDb->getField($i, "_Location");
                $iLocation   = $objDb->getField($i, "location_id");
                $iSupplier   = $objDb->getField($i, "supplier_id");
                $iOrigin     = $objDb->getField($i, "origin_id");                                            
                $sItemType   = $objDb->getField($i, "item_type");
                $iQuantity   = $objDb->getField($i, "quantity");
                $iPrice      = $objDb->getField($i, "price");
                $iWeight     = $objDb->getField($i, "weight");
                $sExpiryDate = $objDb->getField($i, "expiry_date");
                $sQtyWithdraw= $objDb->getField($i, "_QtyWithdraw");
                $sWtWithdraw = $objDb->getField($i, "_WtWithdraw");
                $iTotalWt    = $objDb->getField($i, "total_weight");
                $iTotalQty   = $objDb->getField($i, "total_quantity");
                
                $sSupplier   = $sSuppliersList[$iSupplier];
                $sOrigin     = $sCountries[$iOrigin];
                
                $iOpeningStock = 0;
                $iReceivedStock= 0;
                $iIssuedStock  = 0;
                $iClosingStock = 0;
                
                
                if($sIngrUom == 'V')
                {
                    $iOpeningStock = $iWeight + $sWtWithdraw;
                    $iReceivedStock= $iTotalWt;
                    $iIssuedStock  = $sWtWithdraw;
                    $iClosingStock = $iWeight;
                }
                else
                {
                    $iOpeningStock = $iQuantity + $sQtyWithdraw;
                    $iReceivedStock= $iTotalQty;
                    $iIssuedStock  = $sQtyWithdraw;
                    $iClosingStock = $iQuantity;
                }
                
                if($sItemType == 'I')
                {
                    $iImportedIngredientsWorth += ($iClosingStock*$iPrice);
                }
                else
                {
                    $iLocalIngredientsWorth += ($iClosingStock*$iPrice);
                }
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $i+1);
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sIngredient);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", ($sItemType == 'I'?'Imported':'Local'));
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $sSupplier);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", $sOrigin);               
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $sUnits[$iIngredient]);               
                $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iPrice);     
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", ($iClosingStock*$iPrice));               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $iOpeningStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iReceivedStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", $iIssuedStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", $iClosingStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", $sLocation);       
                $objPhpExcel->getActiveSheet()->setCellValue("N{$iRow}", $sLotNo);       
                $objPhpExcel->getActiveSheet()->setCellValue("O{$iRow}", $sExpiryDate);               
                

        	if($sItemType == 'I')
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sImportedStyle, "A{$iRow}:O{$iRow}");  
                else
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sLocalStyle, "A{$iRow}:O{$iRow}");    
                
                $iRow++;
	}
        
        $iRow += 2;
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Summary");
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sHeadingStyle, "A{$iRow}:O{$iRow}");
        
        $iRow ++;        
        $objPhpExcel->getActiveSheet()->mergeCells("A{$iRow}:B{$iRow}");
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Current Imported Ingredients Worth:");
        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", number_format($iImportedIngredientsWorth, false));
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:O{$iRow}");  
        
        $iRow ++;        
        $objPhpExcel->getActiveSheet()->mergeCells("A{$iRow}:B{$iRow}");
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Current Local Ingredients Worth:");
        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", number_format($iLocalIngredientsWorth,false));
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:O{$iRow}"); 
        
        $iRow += 3;
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Items with Expiry Dates in the  Next 2 Weeks");
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:O{$iRow}");
        
        $iRow ++;
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Index");
        $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", "Ingredient");
        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", "Type");
        $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", "Supplier");
        $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", "Origin");               
        $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", "Unit");               
        $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", "Price Per Unit");               
        $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", "Total Stock Worth");               
        $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", "Opening Stock");               
        $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", "Received");               
        $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", "Issued");               
        $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", "Closing Stock");               
        $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", "Location"); 
        $objPhpExcel->getActiveSheet()->setCellValue("N{$iRow}", "Lot#"); 
        $objPhpExcel->getActiveSheet()->setCellValue("O{$iRow}", "Expiry");                


        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sHeadingStyle, "A{$iRow}:O{$iRow}"); 
                
        $iRow ++;
        //Expiring Soon Items
        $sSQL = "SELECT tbl_inventory_details.*,
                            (SELECT po_number from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotNo,
                            (SELECT created_at from tbl_inventory WHERE id=tbl_inventory_details.inventory_id) as _LotDate,
                            (SELECT title from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _Ingredient,
                            (SELECT uom from tbl_ingredients WHERE id=tbl_inventory_details.ingredient_id) as _IngredientUom,
                            (SELECT SUM(qty_withdraw) from tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id AND DATE_FORMAT(modified_at, '%Y-%m-%d') = CURDATE()) as _QtyWithdraw,
                            (SELECT SUM(wt_withdraw) from tbl_inventory_history WHERE inventory_detail_id = tbl_inventory_details.id AND DATE_FORMAT(modified_at, '%Y-%m-%d') = CURDATE()) as _WtWithdraw,
                            (SELECT l.title from tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = tbl_inventory_details.ingredient_id) as _Location
                FROM tbl_inventory_details
                WHERE quantity > 0 AND DATEDIFF(expiry_date, NOW()) < 15
                ORDER By ingredient_id, expiry_date";
                                        
        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iId         = $objDb->getField($i, "id");
                $iInventory  = $objDb->getField($i, "inventory_id");
                $iIngredient = $objDb->getField($i, "ingredient_id");
                $sIngredient = $objDb->getField($i, "_Ingredient");
                $sIngrUom    = $objDb->getField($i, "_IngredientUom");
                $sLotNo      = $objDb->getField($i, "_LotNo");
                $sLotDate    = $objDb->getField($i, "_LotDate");
                $sLocation   = $objDb->getField($i, "_Location");
                $iLocation   = $objDb->getField($i, "location_id");
                $iSupplier   = $objDb->getField($i, "supplier_id");
                $iOrigin     = $objDb->getField($i, "origin_id");                                            
                $sItemType   = $objDb->getField($i, "item_type");
                $iQuantity   = $objDb->getField($i, "quantity");
                $iPrice      = $objDb->getField($i, "price");
                $iWeight     = $objDb->getField($i, "weight");
                $sExpiryDate = $objDb->getField($i, "expiry_date");
                $sQtyWithdraw= $objDb->getField($i, "_QtyWithdraw");
                $sWtWithdraw = $objDb->getField($i, "_WtWithdraw");
                $iTotalWt    = $objDb->getField($i, "total_weight");
                $iTotalQty   = $objDb->getField($i, "total_quantity");
                
                $sSupplier   = $sSuppliersList[$iSupplier];
                $sOrigin     = $sCountries[$iOrigin];
                
                $iOpeningStock = 0;
                $iReceivedStock= 0;
                $iIssuedStock  = 0;
                $iClosingStock = 0;
                
                if($sIngrUom == 'V')
                {
                    $iOpeningStock = $iWeight + $sWtWithdraw;
                    $iReceivedStock= $iTotalWt;
                    $iIssuedStock  = $sWtWithdraw;
                    $iClosingStock = $iWeight;
                }
                else
                {
                    $iOpeningStock = $iQuantity + $sQtyWithdraw;
                    $iReceivedStock= $iTotalQty;
                    $iIssuedStock  = $sQtyWithdraw;
                    $iClosingStock = $iQuantity;
                }
                
                if($sItemType == 'I')
                {
                    $iImportedIngredientsWorth += ($iClosingStock*$iPrice);
                }
                else
                {
                    $iLocalIngredientsWorth += ($iClosingStock*$iPrice);
                }
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $i+1);
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sIngredient);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", ($sItemType == 'I'?'Imported':'Local'));
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $sSupplier);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", $sOrigin);               
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $sUnits[$iIngredient]);               
                $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iPrice);               
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", ($iClosingStock*$iPrice));               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $iOpeningStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iReceivedStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", $iIssuedStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", $iClosingStock);               
                $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", $sLocation);               
                $objPhpExcel->getActiveSheet()->setCellValue("N{$iRow}", $sLotNo);               
                $objPhpExcel->getActiveSheet()->setCellValue("O{$iRow}", $sExpiryDate);                
                

        	$objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:O{$iRow}");  
                
                $iRow++;
	}
        
        
        /*$objPhpExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('I')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('J')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('K')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
        $objPhpExcel->getActiveSheet()->getColumnDimension('M')->setAutoSize(true);
      */

	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Inventory Exported on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Daily Inventory Report");
        
    
	////////////////////////// Download File ///////////////////////////////

        if($sStartDate == $sEndDate && $sStartDate == date("Y-m-d"))
            $sDate = date('Ymd');
        else
            $sDate = date('Ymd', strtotime($sStartDate))." - ". date('Ymd', strtotime($sEndDate));
            
	$sExcelFile = "Inventory Reprot-". $sDate.".xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

	
	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );      
?>