<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  BISTROWARE - Resturent Management System                                                 **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.bstroware.com                                                                 **
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
	**  ***************************************************************************************  **
	**                                                                                           **
	**  Project Developer:                                                                       **
	**                                                                                           **
	**      Name  :  Rehmatullah Bhatti                                                          **
	**      Email :  rehmatullahbhatti@gmail.com                                                 **
	**      Phone :  +92 344 404 3675                                                            **
	**      URL   :  http://www.rehmatullahbhatti.com                                            **
	***********************************************************************************************
	\*********************************************************************************************/

	@require_once("../requires/common.php");
	@require_once('../../requires/barcode/php-barcode.php');
        @require_once('../../requires/barcode/fpdf.php');

        $objDbGlobal = new Database( );
	$objDb       = new Database( );
        
        $Id  = IO::intValue("Id");
       
        $sLotNo             = getDbValue("po_number", "tbl_inventory", "id='$Id'");
        $sItemsList         = getList("tbl_inventory_details", "id", "ingredient_id", "inventory_id='$Id' AND quantity > 0");
        $sItemsTypesList    = getList("tbl_inventory_details", "id", "item_type", "inventory_id='$Id'");
        $sItemsQuantities   = getList("tbl_inventory_details", "id", "quantity", "inventory_id='$Id'");
        $sItemsWeights      = getList("tbl_inventory_details", "id", "weight", "inventory_id='$Id'");
        $sItemsExpiries     = getList("tbl_inventory_details", "id", "expiry_date", "inventory_id='$Id'");
        $sItemsManufacts    = getList("tbl_inventory_details", "id", "manufac_date", "inventory_id='$Id'");
        $sIngredientVariance= getList("tbl_ingredients", "id", "uom");
        $sIngredients       = getList("tbl_ingredients", "id", "title");
        
        $objBarCode = new BARCODE( );
        $objPdf     = new FPDF('P', 'pt', array(108,72));
            
        foreach($sItemsList as $iItem => $iIngredient)
        {
            
            $TotalQuantity = @$sItemsQuantities[$iItem];
            
            for($i=0; $i< $TotalQuantity; $i++)
            {
                // Bar Code
                $sBarCodeFile = $iItem."File";

                $sItemCode  = str_pad($iItem, 6, 0, STR_PAD_LEFT); 
                $sIngrCode  = str_pad($iIngredient, 6, 0, STR_PAD_LEFT); 

                $sBarCode   = $sIngrCode.$sItemCode; 

                $objPdf->AddPage();

                $strLen = strlen($sIngredients[$iIngredient]);
                $sUom   = $sIngredientVariance[$iIngredient];
                
                if($sUom == 'V')
                    $sUom = " ".$sItemsWeights[$iItem].($sItemsWeights[$iItem]>100?'g':'kg');
                else
                    $sUom = "";
                
                $objPdf->SetFont('Arial', '', ($strLen>30?5:6));
                $objPdf->SetTextColor(0, 0, 0);

                $objPdf->SetXY(2, 6.6);
                $objPdf->MultiCell(95, 4.3, $sIngredients[$iIngredient].$sUom." (".($sItemsTypesList[$iItem]).") ", 0);

                $objBarCode->setSymblogy("CODE128");
                $objBarCode->setHeight($strLen>30?40:35);
                $objBarCode->setScale(0.08);
                $objBarCode->setHexColor("#000000", "#ffffff");
                $objBarCode->genBarCode($sBarCode, "jpg", $sBarCodeFile);

                $sBarCodeFile .= ".jpg";

                if (@file_exists($sBarCodeFile) && @filesize($sBarCodeFile) > 0)
                        $objPdf->Image($sBarCodeFile, -1, 15.2, 108, 65);

                $objPdf->SetFont('Arial', '', 9);
                $objPdf->SetTextColor(0, 0, 0);

                $objPdf->Text(25, 58, $sBarCode);

                $objPdf->SetFont('Arial', '', 4);
                $objPdf->Text(5, 65, "Expiry Date : {$sItemsExpiries[$iItem]}");
                $objPdf->Text(5, 70, "Manufac. Date : {$sItemsManufacts[$iItem]}");
                
                @unlink($sBarCodeFile);
            }
                         
        }
        ////Print PDF///
        $objPdf->Output("Lot".$sLotNo."-Codes.pdf", 'D');
?>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>