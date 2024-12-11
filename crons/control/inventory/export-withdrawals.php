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
	$objPhpExcel = $objReader->load("{$sRootDir}templates/withdrawals.xlsx");
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("Withdrawals")
								 ->setSubject("Withdrawals Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("Withdrawals")
								 ->setSubject("Withdrawals Report")
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
        $iTotalWithdrawalWorth  = 0;
        $iLocalIngredientsWorth = 0;
        $iImportedIngredientsWorth = 0;
        
        $sSuppliersList     = getList("tbl_suppliers", "id", "name", "status='A'");
        $sCountries         = getList("tbl_countries", "id", "country");
        $sIngredientsList   = getList("tbl_ingredients", "id", "title");
        $sUnits             = getList("tbl_units u, tbl_ingredients i", "i.id", "u.code", "u.id=i.unit_id");

	
        $sSQL = "SELECT ih.id, ids.ingredient_id, ih.modified_at, ih.qty_withdraw, ih.wt_withdraw, ids.item_type, ids.supplier_id, ids.origin_id, ids.price, ids.expiry_date, ids.total_weight, ids.total_quantity,
                                (SELECT l.title from tbl_locations l,tbl_ingredients i WHERE l.id = i.location_id AND i.id = ids.ingredient_id) as _Location,
                                (SELECT code FROM tbl_units u, tbl_ingredients i WHERE i.unit_id=u.id AND i.id=ids.ingredient_id) AS _Unit,
                                (SELECT uom from tbl_ingredients WHERE id=ids.ingredient_id) as _IngredientUom,
                                (SELECT po_number FROM tbl_inventory WHERE id=ids.inventory_id) AS _PoNumber,
                                (SELECT name FROM tbl_admins WHERE id=ih.modified_by) AS _ModifiedBy
		        FROM tbl_inventory_history ih
                        LEFT JOIN tbl_inventory_details ids
                        ON ih.inventory_detail_id = ids.id
                        WHERE DATE_FORMAT(ih.modified_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'
                        ORDER BY ih.modified_at";

        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iId         = $objDb->getField($i, "id");
                $iIngredient = $objDb->getField($i, "ingredient_id");                
                $sIngrUom    = $objDb->getField($i, "_IngredientUom");
                $sLotNo      = $objDb->getField($i, "_PoNumber");
                $sLocation   = $objDb->getField($i, "_Location");
                $iSupplier   = $objDb->getField($i, "supplier_id");
                $iOrigin     = $objDb->getField($i, "origin_id");                                            
                $sItemType   = $objDb->getField($i, "item_type");
                $iQuantity   = $objDb->getField($i, "quantity");
                $iPrice      = $objDb->getField($i, "price");
                $iWeight     = $objDb->getField($i, "weight");
                $sExpiryDate = $objDb->getField($i, "expiry_date");
                $sQtyWithdraw= $objDb->getField($i, "qty_withdraw");
                $sWtWithdraw = $objDb->getField($i, "wt_withdraw");
                $iTotalWt    = $objDb->getField($i, "total_weight");
                $iTotalQty   = $objDb->getField($i, "total_quantity");
                $iModifiedAt = $objDb->getField($i, "modified_at");
                
                $sIngredient = $sIngredientsList[$iIngredient];
                $sSupplier   = $sSuppliersList[$iSupplier];
                $sOrigin     = $sCountries[$iOrigin];
                
                $WithdrawalWorth = 0;
                
                if($sIngrUom == 'V')
                {
                    $WithdrawalWorth = $sWtWithdraw*$iPrice;
                }
                else
                {
                    $WithdrawalWorth = $sQtyWithdraw*$iPrice;
                }
                
                $iTotalWithdrawalWorth += $WithdrawalWorth;
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $i+1);
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sIngredient);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", ($sItemType == 'I'?'Imported':'Local'));
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $sSupplier);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", $sOrigin);               
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $sUnits[$iIngredient]);               
                $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iPrice);     
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", ($sQtyWithdraw > 0?$sQtyWithdraw:$sWtWithdraw));               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $WithdrawalWorth);               
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iModifiedAt);  
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", $sLocation);               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", $sLotNo);               
                $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", $sExpiryDate);               
       
                if($sItemType == 'I')
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sImportedStyle, "A{$iRow}:M{$iRow}");  
                else
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sLocalStyle, "A{$iRow}:M{$iRow}");  
                
                $iRow++;
	}
        
        $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", "Total Worth");               
        $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", formatNumber($iTotalWithdrawalWorth, false));  
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sHeadingStyle, "A{$iRow}:M{$iRow}");
 
        
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Withdrawals Exported on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Withdrawals Report");
        
    
	////////////////////////// Download File ///////////////////////////////

        if($sStartDate == $sEndDate && $sStartDate == date("Y-m-d"))
            $sDate = date('Ymd');
        else
            $sDate = date('Ymd', strtotime($sStartDate))." - ". date('Ymd', strtotime($sEndDate));
            
	$sExcelFile = "Withdrawals Reprot-". $sDate.".xlsx";

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