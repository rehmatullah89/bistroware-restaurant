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

	$objPhpExcel = new PHPExcel( );
        
        $objReader   = PHPExcel_IOFactory::createReader('Excel2007');
	$objPhpExcel = $objReader->load("{$sRootDir}templates/sc-report.xlsx");
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByCategory")
								 ->setSubject("Sales By Category Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByCategory")
								 ->setSubject("Sales By Category Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);

        $sMainHeadingStyle = array('font' => array('bold' => true, 'size' => 14, 'color' => array('rgb' => 'FFFFFF')),
						   'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'A9223E')),
						   'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
						   'borders'   => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)) );
	
	$sHeadingStyle = array('font' => array('bold' => true, 'size' => 15),
						   'alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
						   'borders'   => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											  'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)) );
        
        $sSubHeadingStyle 	= array('font'       => array('bold' => true, 'size' => 12),
					 'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'E6E6E6')),
					 'alignment'  => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					 'borders'    => array('top'    => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'right'  => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										   'left'   => array('style' => PHPExcel_Style_Border::BORDER_THIN)));

	$sBorderStyle = array('alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
					  'borders'  => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
												 'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										 'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
										 'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)));
        
        /////////////////////////////////////////////////////////////////////
	
        $objPhpExcel->getActiveSheet()->setCellValue("C4", $sStartDate);
        $objPhpExcel->getActiveSheet()->setCellValue("C5", $sEndDate);
        $objPhpExcel->getActiveSheet()->setCellValue("C6", date("Y-m-d"));
        
        $sStartDateTime = date('Y-m-d 13:00:00', strtotime($sStartDate));
        $sEndDateTime   = date('Y-m-d 02:00:00', strtotime('+1 day', strtotime($sEndDate)));
        
        $iRow = 9;
        
        $sOldCategory = "";
        $iPricePerUnitList  = getList("tbl_products", "id", "price");
        $iTotalQtyByCategory= getList("tbl_orders o, tbl_order_details od", "od.category_id", "SUM(od.quantity)", "o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' GROUP BY od.category_id");
        $iTotalQtyByDates   = getDbValue("SUM(od.quantity)", "tbl_orders o, tbl_order_details od", "o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime'");

        $sSQL = "SELECT od.category_name, od.product_name, od.category_id, od.cost_per_item, od.product_id, SUM(od.quantity) as _ItemByCategoryQty, SUM(od.price) as ItemByCategorySale
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND o.status='C'
                        GROUP BY od.category_id, od.product_id, od.cost_per_item
                        ORDER BY od.category_name";

        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );
        
        $iTotalQty      = 0;
        $iTotalPPU      = 0;
        $iTotalSales    = 0;
        $iTotalCPU      = 0;
        $iTotalCPercent = 0;
        $iTotalCost     = 0;
        $iTotalMargin   = 0;
        $iTotalCCat     = 0;
        $iTotalsPercent = 0;
        

        for ($i = 0; $i < $iCount; $i ++)
        {
                $sCategory      = $objDb->getField($i, "category_name");                
                $sItemName      = $objDb->getField($i, "product_name");
                $iCategory      = $objDb->getField($i, "category_id");
                $iItemId        = $objDb->getField($i, "product_id");
                $iCatItemQty    = $objDb->getField($i, "_ItemByCategoryQty");
                $iCatItemSale   = $objDb->getField($i, "ItemByCategorySale");
                $iCost          = $objDb->getField($i, "cost_per_item");
                
                if($sOldCategory != $sCategory)
                {
                    if($i > 0)
                    {
                        
                        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Total");
                        $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", "");
                        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", formatNumber($iTotalQty));
                        $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", formatNumber($iTotalPPU));
                        $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber($iTotalSales));               
                        $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", formatNumber($iTotalCPU));               
                        $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", "");     
                        $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", formatNumber($iTotalCost));               
                        $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", formatNumber($iTotalMargin));               
                        $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", "");  
                        $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", "");    
                        
                        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:K{$iRow}");
                        
                        $iTotalQty      = 0;
                        $iTotalPPU      = 0;
                        $iTotalSales    = 0;
                        $iTotalCPU      = 0;
                        $iTotalCPercent = 0;
                        $iTotalCost     = 0;
                        $iTotalMargin   = 0;
                        $iTotalCCat     = 0;
                        $iTotalsPercent = 0;
                        
                        $iRow +=2;
                    }
                    
                    if($i-1 != $iCount)
                    {
                        if($i > 0)
                        {
                            $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Category");
                            $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", "Menu Item");
                            $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", "Quantity");
                            $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", "Price Per Unit");
                            $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", "Sales");               
                            $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", "Cost Per Unit");               
                            $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", "Cost % Per Unit");     
                            $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", "Total Cost");               
                            $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", "Margin");               
                            $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", "% of Category");  
                            $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", "% of Total"); 

                            $objPhpExcel->getActiveSheet()->duplicateStyleArray($sMainHeadingStyle, "A{$iRow}:K{$iRow}"); 
                            
                            $iRow++;
                        }
                        
                        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $sCategory);
                        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sHeadingStyle, "A{$iRow}:K{$iRow}"); 

                        $iRow++;
                    }
                }
                
                $iTCost = $iCost*$iCatItemQty;
                $iPrice = $iPricePerUnitList[$iItemId];
                
                $iCostPercentPerUnit = formatNumber(($iCost/$iPrice)*100, 2);
                $iItemTotalCost      = formatNumber($iTCost, 2);
                $iMargin             = $iCatItemSale - $iTCost;
                $iPercentByCategory  = formatNumber(($iCatItemQty/$iTotalQtyByCategory[$iCategory])*100, 2);
                $iPercentByTotal     = formatNumber(($iCatItemQty/$iTotalQtyByDates)*100, 2);
                
                $iTotalQty      += $iCatItemQty;
                $iTotalPPU      += $iPrice;
                $iTotalSales    += $iCatItemSale;
                $iTotalCPU      += $iCost;
                $iTotalCPercent += $iCostPercentPerUnit;
                $iTotalCost     += $iTCost;
                $iTotalMargin   += $iMargin;
                $iTotalCCat     += $iPercentByCategory;
                $iTotalsPercent += $iPercentByTotal;
                        
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $sCategory);
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sItemName);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", $iCatItemQty);
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $iPrice);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", $iCatItemSale);               
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $iCost);               
                $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iCostPercentPerUnit.'%');     
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", $iItemTotalCost);               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", formatNumber($iMargin, 2));               
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iPercentByCategory.'%');  
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", $iPercentByTotal.'%');               
       
                $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:K{$iRow}");  
                
                $sOldCategory = $sCategory;
                $iRow++;
	}
        
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Total");
        $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", "");
        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", formatNumber($iTotalQty));
        $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", formatNumber($iTotalPPU));
        $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber($iTotalSales));               
        $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", formatNumber($iTotalCPU));               
        $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", "");     
        $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", formatNumber($iTotalCost));               
        $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", formatNumber($iTotalMargin));               
        $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", "");  
        $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", "");   
        
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:K{$iRow}");
        
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Sales By Category Report on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Sales By Category Report");
        
    
	////////////////////////// Download File ///////////////////////////////

	$sExcelFile = "sales-by-category-report.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

?>