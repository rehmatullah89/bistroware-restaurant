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
	$objPhpExcel = $objReader->load("{$sRootDir}templates/sm-report.xlsx");

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
        
        $sShadeStyle = array('alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
                                          'fill'       => array('type' => PHPExcel_Style_Fill::FILL_SOLID, 'color' => array('rgb' => 'FFFF99')),  
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
        $flag = false;
        $iOldOrder = "";
        
        $sBreakTime    = strtotime("16:00:00");
        $sTablesList   = getList("tbl_tables", "id", "table_no");
        $sUsersList    = getList("tbl_admins", "id", "name");
       
        
        $sSQL = "SELECT o.bumped_at, od.id as _DetailId, o.id as _OrderId, od.product_name, od.category_name, (od.price) as _Price, od.quantity, o.waiter_id, o.created_at, o.table_id, o.guest_name, total_guests, (od.cost_per_item*od.quantity) as _Cost 
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND o.status='C'
                        ORDER BY o.id";

        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iDetailId          = $objDb->getField($i, "_DetailId");                
                $iOrderId           = $objDb->getField($i, "_OrderId");      
                $sItemName          = $objDb->getField($i, "product_name");      
                $sCategoryName      = $objDb->getField($i, "category_name");    
                $iPrice             = $objDb->getField($i, "_Price");    
                $iCost              = $objDb->getField($i, "_Cost");    
                $iQuantity          = $objDb->getField($i, "quantity");    
                $iOrderSale         = $objDb->getField($i, "_OrderSales");
                $iOrderCost         = $objDb->getField($i, "_OrderCost");
                $iWaiter            = $objDb->getField($i, "waiter_id");  
                $sOrderDateTime     = $objDb->getField($i, "created_at");   
                $iTableId           = $objDb->getField($i, "table_id");  
                $sGuest             = $objDb->getField($i, "guest_name");  
                $iGuests            = $objDb->getField($i, "total_guests");  
                $sServingTime       = $objDb->getField($i, "bumped_at");  
                
                $sDetailId      = str_pad($iDetailId, 5, '0', STR_PAD_LEFT);
                $sOrderNo       = str_pad($iOrderId, 5, '0', STR_PAD_LEFT);
                $sTableNo       = $sTablesList[$iTableId];
                $sWaiter        = $sUsersList[$iWaiter];
                
                $iCostPercent   = formatNumber(($iCost/$iPrice)*100, 2);
                $iCostMargin    = formatNumber($iPrice - $iCost, 2);
                $iDinningTime   = strtotime(date("H:i:s", strtotime($sOrderDateTime)));
                
                if($iOldOrder == "")
                    $iOldOrder = $iOrderId;
                
                if($iDinningTime < $sBreakTime)
                    $iDinningTime = "Lunch";
                else
                    $iDinningTime = "Dinner";
                
/*                if(strtotime($sOrderDateTime) > strtotime($sReserveDateTime))                
                    $iTimeDifference =  round(abs(strtotime($sOrderDateTime) - strtotime($sReserveDateTime)) / 60,2). " minute";
                else
                    $iTimeDifference =  round(abs(strtotime($sReserveDateTime) - strtotime($sOrderDateTime)) / 60,2). " minute";*/
                
                $sServingTimeDifference = round(abs(strtotime($sOrderDateTime) - strtotime($sServingTime)) / 60,2). " minute";
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", $sDetailId);
                $objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sOrderNo);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", $sItemName);
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $sCategoryName);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", formatNumber($iPrice,2));
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", formatNumber($iQuantity,2));
		$objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", formatNumber($iCost,2));               
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", $iCostPercent);               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $iCostMargin);     
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $iDinningTime);               
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", date("H:i:s m/d/Y", strtotime($sOrderDateTime)));               
                $objPhpExcel->getActiveSheet()->setCellValue("L{$iRow}", date("H:i:s m/d/Y", strtotime($sServingTime)));
                $objPhpExcel->getActiveSheet()->setCellValue("M{$iRow}", $sServingTimeDifference);
                $objPhpExcel->getActiveSheet()->setCellValue("N{$iRow}", $sWaiter); 
                $objPhpExcel->getActiveSheet()->setCellValue("O{$iRow}", $sTableNo); 
                $objPhpExcel->getActiveSheet()->setCellValue("P{$iRow}", $iGuests);
                $objPhpExcel->getActiveSheet()->setCellValue("Q{$iRow}", $sGuest);
                
                if($iOldOrder != $iOrderId)    
                {                    
                    $iOldOrder = $iOrderId;
                    
                    if($flag == true)
                        $flag = false;
                    else
                        $flag = true;
                }
                
                if($flag == false && $iOldOrder == $iOrderId)
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:Q{$iRow}");  
                else    
                    $objPhpExcel->getActiveSheet()->duplicateStyleArray($sShadeStyle, "A{$iRow}:Q{$iRow}");  

                $iRow++;
	}
        
       
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Sales By Menu Item Report on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Sales By Menu Item Report");
        
    
	////////////////////////// Download File ///////////////////////////////

	$sExcelFile = "Sales By Menu Item Report.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

?>