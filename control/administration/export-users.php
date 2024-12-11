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

        //ini_set('display_errors', 1);
        //error_reporting(E_ALL);
        
        //if (!@strstr($_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']))
        //    die("ERROR: Invalid Request");


	$objDbGlobal = new Database( );
	$objDb       = new Database( );   

	$objPhpExcel = new PHPExcel( );
        
        $objReader   = PHPExcel_IOFactory::createReader('Excel2007');
	$objPhpExcel = $objReader->load("{$sRootDir}templates/Users.xlsx");

	$objPhpExcel->getProperties()->setCreator($_SESSION["SiteTitle"])
								 ->setLastModifiedBy($_SESSION["SiteTitle"])
								 ->setTitle("Users")
								 ->setSubject("Users List")
								 ->setDescription("")
								 ->setKeywords("")
								 ->setCategory("Reports");

	$objPhpExcel->setActiveSheetIndex(0);

	$sBorderStyle = array('alignment' => array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_LEFT),
						  'borders'  => array('top' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											 'right' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											 'bottom' => array('style' => PHPExcel_Style_Border::BORDER_THIN),
											 'left' => array('style' => PHPExcel_Style_Border::BORDER_THIN)));


	$iRow = 5;        

        $sPagesList = getList("tbl_admin_pages", "id", "CONCAT(module, ' / ', section)", "module Like '%Inventory%' OR module Like '%Management%' OR module Like '%Menu%'");
        $sUsersList = getList("tbl_admins", "id", "name", "id!=''", "id");
        
        $objPhpExcel->getActiveSheet()->setCellValueByColumnAndRow(0, $iRow, "Name");
        
        $i = 1;
        foreach($sPagesList as $iPage => $sModuleNPage){
            
            $objPhpExcel->getActiveSheet()->setCellValueByColumnAndRow($i, $iRow, $sModuleNPage);
            $i ++;
        }
        
        $iRow = 6;
        foreach($sUsersList as $iUser => $sUser)
        {
            $objPhpExcel->getActiveSheet()->setCellValueByColumnAndRow(0, $iRow, $sUser);
            
            $j=1;
            foreach($sPagesList as $iPage => $sModuleNPage)
            {
                $sSQL = "SELECT `view`, `add`, `edit`, `delete`
                            FROM tbl_admin_rights
                         Where admin_id = '$iUser' AND page_id = '$iPage'";
                $objDb->query($sSQL);

                $iCount = $objDb->getCount( );
                
                if($iCount > 0)
                {
                    for ($i = 0; $i < $iCount; $i ++)
                    {
                            $sView      = $objDb->getField($i, "view");
                            $sAdd       = $objDb->getField($i, "add");
                            $sEdit      = $objDb->getField($i, "edit");
                            $sDelete    = $objDb->getField($i, "delete");

                            $sRights    = "";

                            if($sView == 'Y')
                                $sRights .= "View,";
                            if($sAdd == 'Y')
                                $sRights .= "Add,";
                            if($sEdit == 'Y')
                                $sRights .= "Edit,";
                            if($sDelete == 'Y')
                                $sRights .= "Delete,";   

                            if($sRights == "")
                                $sRights = "Un-available";

                            $objPhpExcel->getActiveSheet()->setCellValueByColumnAndRow($j, $iRow, rtrim($sRights, ','));

                    }
                    
                }
                else{
                    $sRights = "Un-available";
                    $objPhpExcel->getActiveSheet()->setCellValueByColumnAndRow($j, $iRow, rtrim($sRights, ','));
                }
                $j++;

            }
            
            $objPhpExcel->getActiveSheet()->duplicateStyleArray($sBorderStyle, "A{$iRow}:T{$iRow}");
            $iRow ++;
        }
        
        $objPhpExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        
        $i = 1;
        foreach($sPagesList as $iPage => $sModuleNPage){
            
            $iCol = getExcelCol($i);
            $objPhpExcel->getActiveSheet()->getColumnDimension($iCol)->setAutoSize(true);
            $i ++;
        }
        
       
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddHeader('');
	$objPhpExcel->getActiveSheet()->getHeaderFooter()->setOddFooter("&L&B Users List &R Generated on ".date("d-M-Y"));

	$objPhpExcel->getActiveSheet()->getPageSetup()->setOrientation(PHPExcel_Worksheet_PageSetup::ORIENTATION_PORTRAIT);
	$objPhpExcel->getActiveSheet()->getPageSetup()->setPaperSize(PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);

	$objPhpExcel->getActiveSheet()->getPageMargins()->setTop(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setRight(0.2);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setLeft(0.4);
	$objPhpExcel->getActiveSheet()->getPageMargins()->setBottom(0);

	$objPhpExcel->getActiveSheet()->getPageSetup()->setFitToWidth(1);

	$objPhpExcel->getActiveSheet()->setTitle("Users");


	$sExcelFile = "Users.xlsx";

	header("Content-Type: application/vnd.ms-excel");
	header("Content-Disposition: attachment;filename=\"{$sExcelFile}\"");
	header("Cache-Control: max-age=0");

	$objWriter = PHPExcel_IOFactory::createWriter($objPhpExcel, 'Excel2007');
	$objWriter->save("php://output");



	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
          
         
?>