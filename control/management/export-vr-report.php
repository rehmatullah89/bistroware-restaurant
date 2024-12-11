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
	$objPhpExcel = $objReader->load("{$sRootDir}templates/vr-report.xlsx");

	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("VoidsReport")
								 ->setSubject("Voids Orders Report")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);
	
	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("VoidsReport")
								 ->setSubject("Voids Orders Report")
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
        $sUsersList    = getList("tbl_admins", "id", "name");
        
        $sSQL = "SELECT o.id, o.waiter_id, o.created_at, od.void_by, od.void_at, od.status, od.product_name, od.quantity, od.net_price, od.void_remarks,
                        (SELECT reason from tbl_void_reasons where id=od.void_reason_id) as _Reason
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.status='C' AND od.status IN ('P','PC','VP','VC','RC','R','V') AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime'
                        ORDER BY o.id";

        $objDb->query($sSQL);

        $iCount = $objDb->getCount( );

        for ($i = 0; $i < $iCount; $i ++)
        {
                $iOrderId           = $objDb->getField($i, "id");                
                $iWaiterId          = $objDb->getField($i, "waiter_id");
                $sCreatedAt         = $objDb->getField($i, "created_at");
                $iManagerId         = $objDb->getField($i, "void_by");
                $sVoidAt            = $objDb->getField($i, "void_at");
                $sStatus            = $objDb->getField($i, "status");  
                $sProductName       = $objDb->getField($i, "product_name");  
                $iQuantity          = $objDb->getField($i, "quantity");  
                $iNetPrice          = $objDb->getField($i, "net_price");  
                $sVoidRemarks       = $objDb->getField($i, "void_remarks");  
                $sVoidReason        = $objDb->getField($i, "_Reason");  
                
                $sOrderNo       = str_pad($iOrderId, 5, '0', STR_PAD_LEFT);
                $sWaiter        = $sUsersList[$iWaiterId];
                $sManager       = $sUsersList[$iManagerId];
                
                switch ($sStatus)
                {
                        case "P" :
                        case "PC": $sStatus = "Pending"; break;
                        case "V" :
                        case "VP":
                        case "VC": $sStatus = "Voided"; break;
                        case "R" : 
                        case "RC": $sStatus = "Rejected"; break;
                        case "C" : $sStatus = "Completed"; break;
                        default  : $sStatus = "Active"; break;
                }
                
                $objPhpExcel->getActiveSheet()->setCellValue("A{$iRow}", date("m/d/Y", strtotime($sCreatedAt)));
		$objPhpExcel->getActiveSheet()->setCellValue("B{$iRow}", $sOrderNo);
		$objPhpExcel->getActiveSheet()->setCellValue("C{$iRow}", $sWaiter);
		$objPhpExcel->getActiveSheet()->setCellValue("D{$iRow}", $sManager);
		$objPhpExcel->getActiveSheet()->setCellValue("E{$iRow}", date("H:i:s", strtotime($sVoidAt)));               
                $objPhpExcel->getActiveSheet()->setCellValue("F{$iRow}", $sStatus);               
                $objPhpExcel->getActiveSheet()->setCellValue("G{$iRow}", $sProductName);     
                $objPhpExcel->getActiveSheet()->setCellValue("H{$iRow}", $iQuantity);               
                $objPhpExcel->getActiveSheet()->setCellValue("I{$iRow}", $iNetPrice);           
                $objPhpExcel->getActiveSheet()->setCellValue("J{$iRow}", $sVoidReason);  
                $objPhpExcel->getActiveSheet()->setCellValue("K{$iRow}", $sVoidRemarks);               
                
                $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:K{$iRow}");  
                
                $iRow++;
	}
       
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Voids Report on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Voids Orders Report");
        
    
	////////////////////////// Download File ///////////////////////////////

	$sExcelFile = "Voids Report.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");

?>