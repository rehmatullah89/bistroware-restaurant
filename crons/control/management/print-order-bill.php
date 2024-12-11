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
        @require_once('../../requires/barcode/fpdf.php');

        $objDbGlobal = new Database( );
	$objDb       = new Database( );
        
        $Id  = IO::intValue("Id");
       
        $iTableId       = getDbValue("table_no", "tbl_orders o, tbl_tables t", "t.id=o.table_id AND o.id='$Id'");
        $iPaidVia       = getDbValue("payment_mode", "tbl_payments", "order_id='$Id'");
        $sWaiter        = getDbValue("name", "tbl_orders o, tbl_admins a", "a.id=o.waiter_id AND o.id='$Id'");
        $iTotalItems    = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$Id' AND STATUS != 'V'");
        
        $TotalHeight = (3 + ($iTotalItems/3))*72;
        
        $objPdf     = new FPDF('P', 'pt', array(216, $TotalHeight));
        $objPdf->AddPage();
        
        $objPdf->SetFont('Arial', '', 7);
        $objPdf->SetTextColor(0, 0, 0);
        
       
        $objPdf->Text(90, 15, "INTERFOOD");
        $objPdf->Text(100, 22, "GAI'A");
        $objPdf->Text(75, 29, "PUNJAB SALES TAX NO.");
        $objPdf->Text(90, 36, "(P-7364421-0)");
        
        $objPdf->Text(5, 48, "ORDER NO:{$Id}");
        $objPdf->Text(130, 48, "Table:{$iTableId}");
        
        $objPdf->Text(5, 55, $sWaiter);
        $objPdf->Text(130, 55, date("Y-m-d H:i:s"));
        $objPdf->Text(5, 65, "----------------------------------------------------------------------------------------");
        $objPdf->Text(5, 72, "Qty");
        $objPdf->Text(35, 72, "Item");
        $objPdf->Text(180, 72, "Price");
        $objPdf->Text(5, 79, "----------------------------------------------------------------------------------------");
        
        $sSQL = "SELECT quantity, product_name, price, net_price  FROM tbl_order_details WHERE order_id='$Id' AND status != 'V' ORDER BY product_name";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

        $iTop = 85;
        $iTotalPrice = 0;
        $iTotalNetPrice = 0;
        
	for ($i = 0; $i < $iCount; $i ++)
	{
            $iQty       = $objDb->getField($i, "quantity");
            $sProName   = $objDb->getField($i, "product_name");
            $iPrice     = $objDb->getField($i, "price");
            $iNetPrice  = $objDb->getField($i, "net_price");
                
            $objPdf->Text(5, $iTop, $iQty);
            $objPdf->Text(15, $iTop, $sProName);
            $objPdf->Text(180, $iTop, formatNumber($iPrice, false));
            
            $iTop           += 7;
            $iTotalPrice    += $iPrice;
            $iTotalNetPrice += $iNetPrice;                
        }
        
        $objPdf->Text(5, $iTop, "----------------------------------------------------------------------------------------");
        
        $objPdf->Text(150, $iTop+7, "SubTotal:".formatNumber($iTotalPrice, 2));
        $objPdf->Text(150, $iTop+14, "Sales Tax:".formatNumber($iTotalNetPrice-$iTotalPrice, 2));
        $objPdf->Text(150, $iTop+21, "Total:".formatNumber($iTotalNetPrice, 2));
        $objPdf->Text(150, $iTop+28, ($iPaidVia == 'P'?"Cash Paid:":"Credit Card:").formatNumber($iTotalNetPrice, 2));
        $objPdf->Text(150, $iTop+35, "Change:".formatNumber(0, 2));
        $objPdf->Text(150, $iTop+42, "Balance:".formatNumber(0, 2));
        
        $objPdf->Text(5, $iTop+50, "==================================================");
        
        $objPdf->Text(80, $iTop+60, "36-C Comercial Area");
        $objPdf->Text(93, $iTop+67, "Phase 5");
        $objPdf->Text(85, $iTop+74, "DHA LAHORE");
        $objPdf->Text(80, $iTop+81, "Ph: 042-37182251-52");
        
/*
        $objPdf->SetXY(2, 6.6);
        $objPdf->MultiCell(95, 4.3, $sIngredients[$iIngredient].$sUom." (".($sItemsTypesList[$iItem]).") ", 0);
        
        
                
        foreach($sItemsList as $iItem => $iIngredient)
        {
            
            
                         
        }*/
        ////Print PDF///
        $objPdf->Output("OrderNo:{$Id}.pdf", 'D');
?>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>