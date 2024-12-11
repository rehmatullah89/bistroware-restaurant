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
	$objPhpExcel = $objReader->load("{$sRootDir}templates/so-report.xlsx");

	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByOrder")
								 ->setSubject("Sales By Order Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("SalesByOrder")
								 ->setSubject("Sales By Order Report")
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
       
	/////////////////////////////////////////////////////////////////////
 	
        $objPhpExcel->getActiveSheet()->setCellValue("C4", $sStartDate);
        $objPhpExcel->getActiveSheet()->setCellValue("C5", $sEndDate);
        $objPhpExcel->getActiveSheet()->setCellValue("C6", date("Y-m-d"));
        
        $sStartDateTime = date('Y-m-d 13:00:00', strtotime($sStartDate));
        $sEndDateTime   = date('Y-m-d 02:00:00', strtotime('+1 day', strtotime($sEndDate)));
        
        $iRow = 9;
        
        $sBreakTime    = strtotime("16:00:00");
        $sTablesList   = getList("tbl_tables", "id", "table_no");
        $sTablesSeats  = getList("tbl_tables", "id", "total_seats");
        $sUsersList    = getList("tbl_admins", "id", "name");
        
        $sSQL = "SELECT DISTINCT(o.id)as _OrderId, o.reservation_id, o.bumped_at, SUM(od.price) _OrderSales, SUM(od.cost_per_item) _OrderCost, o.waiter_id, o.created_at, o.modified_at, o.table_id, o.guest_name, total_guests,
                    (SELECT discount_percent from tbl_payments WHERE order_id=o.id AND discount_status ='A') as _DiscountPercent
                FROM tbl_orders o, tbl_order_details od
                WHERE o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND o.status='C'
                GROUP BY o.id
                ORDER BY o.id";
                
        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iOrderId           = $objDb->getField($i, "_OrderId");                
                $iOrderSale         = $objDb->getField($i, "_OrderSales");
                $iOrderCost         = $objDb->getField($i, "_OrderCost");
                $sGuestName         = $objDb->getField($i, "guest_name");
                $iWaiter            = $objDb->getField($i, "waiter_id");  
                $sBumpedAt          = $objDb->getField($i, "bumped_at");  
                $sOrderDateTime     = $objDb->getField($i, "created_at");  
                $sOrderCompletedAt  = $objDb->getField($i, "modified_at");  
                $iTableId           = $objDb->getField($i, "table_id");  
                $iTotalGuests       = $objDb->getField($i, "total_guests");  
                $iReservationId     = $objDb->getField($i, "reservation_id");
                $iDiscountPercent   = (int)$objDb->getField($i, "_DiscountPercent");
                
                $sOrderNo       =  str_pad($iOrderId, 5, '0', STR_PAD_LEFT);
                $sTableNo       = $sTablesList[$iTableId];
                $iTotalSeats    = $sTablesSeats[$iTableId];
                $sWaiter        = $sUsersList[$iWaiter];
                
                
                $iTotalDiscount = (float)(($iDiscountPercent/100)*$iOrderSale);
                $iDiscountedSale=  formatNumber($iOrderSale - $iTotalDiscount);
                $iCostPercent   = formatNumber(($iOrderCost/$iOrderSale)*100, 2);
                $iCostMargin    = formatNumber($iOrderSale - $iOrderCost, 2);
                $iDinningTime   = strtotime(date("H:i:s", strtotime($sOrderDateTime)));
                $iDinningDuration= formatNumber((abs(strtotime($sOrderCompletedAt) - strtotime($sOrderDateTime)) / 60), 2). " minute";
                
                /*if(strtotime($sOrderDateTime) > strtotime($sBumpedAt))                
                    $iTimeDifference =  round(abs(strtotime($sOrderDateTime) - strtotime($sBumpedAt)) / 60,2). " minute";
                else
                    $iTimeDifference =  round(abs(strtotime($sBumpedAt) - strtotime($sOrderDateTime)) / 60,2). " minute";*/
                
                if($iReservationId > 0)
                {
                    $sReservationTime = getDbValue("date_time", "tbl_reservations", "id='$iReservationId'");
                    
                    if(strtotime($sReservationTime) > strtotime($sOrderDateTime))                
                        $iTimeDifference =  round(abs(strtotime($sReservationTime) - strtotime($sOrderDateTime)) / 60,2). " minute";
                    else
                        $iTimeDifference =  round(abs(strtotime($sOrderDateTime) - strtotime($sReservationTime)) / 60,2). " minute";
                }
                else
                    $iTimeDifference =  0;
                
                if($iDinningTime < $sBreakTime)
                    $iDinningTime = "Lunch";
                else
                    $iDinningTime = "Dinner";
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $sOrderNo);
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", formatNumber($iOrderSale, 2));
                $objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", $iDiscountPercent);
                $objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $iDiscountedSale);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber($iOrderCost, 2));
		$objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $iCostPercent);
		$objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $iCostMargin);               
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", $sGuestName);               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $sWaiter);               
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iDinningTime);           
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", date("H:i:s m/d/Y", strtotime($sOrderDateTime)));               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", formatNumber($iTimeDifference,2)); 
                $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", date("H:i:s m/d/Y", strtotime($sOrderCompletedAt))); 
                $objPhpExcel->getActiveSheet()->setCellValue("N{$iRow}", $iDinningDuration); 
                $objPhpExcel->getActiveSheet()->setCellValue("O{$iRow}", $sTableNo); 
                $objPhpExcel->getActiveSheet()->setCellValue("P{$iRow}", $iTotalSeats); 
                $objPhpExcel->getActiveSheet()->setCellValue("Q{$iRow}", $iTotalGuests); 
                
                $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:Q{$iRow}");  
                
                $iRow++;
	}
        
       
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Sales By Order Report on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Sales By Order Report");
        
    
	////////////////////////// Download File ///////////////////////////////

	$sExcelFile = "Sales By Order Report.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

?>