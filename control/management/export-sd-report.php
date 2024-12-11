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
	$objPhpExcel = $objReader->load("{$sRootDir}templates/sd-report.xlsx");
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByDay")
								 ->setSubject("Sales By Day Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByDay")
								 ->setSubject("Sales By Day Report")
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
       
        $sSQL = "SELECT COUNT(DISTINCT(o.id)) as _TotalOrders, DATE_FORMAT(o.created_at, '%Y-%m-%d') as _OrderDate, SUM(od.net_price) as _ItemsSale, SUM(od.cost_per_item*od.quantity) as _ItemsCost
                        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND o.status='C' AND od.status NOT IN ('V','VP','VC')
                        GROUP BY _OrderDate
                        ORDER BY _OrderDate";

        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        $iTotalPaid     = 0;
        $iTotalCost     = 0;
        $iTotalSales    = 0;                
        $iTotalCostP    = 0;
        $iTotalMargin   = 0;
        $iTotalReserve  = 0;
        $iTotalDiscount = 0;        
        $iTotalHeadCount= 0;
        $iToatlSalePerH = 0;
        $iToalMarginPerH= 0;
        
        //(SELECT COALESCE(SUM(amount), '0') from tbl_payments WHERE order_id=o.id) as _PaidAmt
                        
        for ($i = 0; $i < $iCount; $i ++)
        {
                $iTotalOrders   = $objDb->getField($i, "_TotalOrders");                
                $sOrderDate     = $objDb->getField($i, "_OrderDate");                
                $iItemsSale     = $objDb->getField($i, "_ItemsSale");
                $sOrders        = implode(",", getList("tbl_orders", "id", "id", "created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND status='C'"));
                $iPaidAmount    = (int) getDbValue("SUM(amount+credit)", "tbl_payments", "order_id IN ($sOrders)");
                $iItemsCost     = $objDb->getField($i, "_ItemsCost");
                
                $Discount       = $iItemsSale - $iPaidAmount;                
                $iCostPercent   = formatNumber(($iItemsCost/$iItemsSale)*100, 2);
                $iMargin        = $iItemsSale - $iItemsCost;
                $iPeopleCount   = getDbValue("SUM(total_guests)", "tbl_orders", "DATE(created_at) = '$sOrderDate'");
                
                $iSalesPerHead  = $iItemsSale/$iPeopleCount;
                $iMarginPerHead = ($iItemsSale - $iItemsCost)/$iPeopleCount;
                
                $iTotalPaid     += ($Discount>1?$iPaidAmount:$iItemsSale);
                $iTotalSales    += $iItemsSale;
                $iTotalCost     += $iItemsCost;
                $iTotalCostP    += $iCostPercent;
                $iTotalMargin   += $iMargin;
                $iTotalReserve  += $iTotalOrders;
                $iTotalHeadCount+= $iPeopleCount;
                $iTotalDiscount += ($Discount>1?$Discount:0);  
                $iToatlSalePerH += $iSalesPerHead;
                $iToalMarginPerH+= $iMarginPerHead;
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", date('l', strtotime($sOrderDate)));
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", date('m/d/Y', strtotime($sOrderDate)));
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", formatNumber($iItemsSale,2));
                $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", formatNumber(($Discount>1?$Discount:0),2));
                $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber(($Discount>1?$iPaidAmount:$iItemsSale),2));                
		$objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", formatNumber($iItemsCost,2));
		$objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iCostPercent.'%');               
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", formatNumber($iMargin, 2));               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $iTotalOrders);     
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iPeopleCount);               
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", formatNumber($iSalesPerHead, 2));               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", formatNumber($iMarginPerHead, 2));  
       
                $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:L{$iRow}");  
                
                $iRow++;
	}
        
        $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", "Total");
        $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", "");
        $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", formatNumber($iTotalSales,2));
        $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", formatNumber($iTotalDiscount,2));
        $objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber($iTotalPaid,2));        
        $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", formatNumber($iTotalCost,2));
        $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", '');               
        $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", formatNumber($iTotalMargin));               
        $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", formatNumber($iTotalReserve));     
        $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", formatNumber($iTotalHeadCount));               
        $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", formatNumber($iToatlSalePerH,2));               
        $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", formatNumber($iToalMarginPerH,2)); 
        
        $objPhpExcel->getActiveSheet()->duplicateStyleArray($sSubHeadingStyle, "A{$iRow}:L{$iRow}"); 
        
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Sales By Day Report on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Sales By Day Report");
        
    
	////////////////////////// Download File ///////////////////////////////

        $sExcelFile = "sales By Day Report.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

?>