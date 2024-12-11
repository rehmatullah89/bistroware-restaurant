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

   ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
             
	require_once("../requires/common.php");
        require_once('../../requires/barcode/fpdf.php');

        $objDbGlobal = new Database( );
	$objDb       = new Database( );
        
        $Id  = IO::intValue("Id");
       
        $iTableId       = getDbValue("table_no", "tbl_orders o, tbl_tables t", "t.id=o.table_id AND o.id='$Id'");
        $sWaiter        = getDbValue("name", "tbl_orders o, tbl_admins a", "a.id=o.waiter_id AND o.id='$Id'");
        $sOrderStatus   = getDbValue("status", "tbl_orders", "id='$Id'");
        $iTotalItems    = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$Id' AND status NOT IN  ('V','VC','VP')");
        
        if($iTotalItems >= 5)
        {
            /*$iAddPercent    = 0.8;
            
            if($iTotalItems > 10)
                $iAddPercent    = 0.6;
            
            $Ratio          = $iTotalItems/5;            
            
            $TotalHeight    = (1.6 + ((($iTotalItems+$iAddPercent)-$Ratio)/4.5))*72;*/

            $iTopHeight     = 10;
            $Ratio          = ($iTotalItems/6)*72;
            $TotalHeight    = 260 + $Ratio;
        }
        else
        {
            $iTopHeight     = 10;
            $TotalHeight    = 300;
        }
            
                
        $objPdf     = new FPDF('P', 'pt', array(216, $TotalHeight));
        $objPdf->AddPage();
        
        //$objPdf->SetFont('arial', '', 9);
        $objPdf->AddFont('Verdana','','Verdana.php');
        $objPdf->SetFont('Verdana','',9);
        $objPdf->SetTextColor(0, 0, 0);
        
       
        $objPdf->Text(75, 12+$iTopHeight, "INTERFOOD");
        $objPdf->Text(85, 21+$iTopHeight, "GAI'A");
        $objPdf->Text(55, 29+$iTopHeight, "PUNJAB SALES TAX NO.");
        $objPdf->Text(75, 39+$iTopHeight, "(P-7364421-0)");
        
        $BottomHeight = 5;
        
        $objPdf->Text(5, 48+$iTopHeight+$BottomHeight, "ORDER NO:{$Id}");
        $objPdf->Text(105, 48+$iTopHeight+$BottomHeight, "Table:{$iTableId}");
        
        $objPdf->Text(5, 58+$iTopHeight+$BottomHeight, $sWaiter);
        $objPdf->Text(105, 58+$iTopHeight+$BottomHeight, getDbValue("modified_at", "tbl_orders", "id='$Id'"));
        $objPdf->Text(5, 70+$iTopHeight+$BottomHeight, "----------------------------------------------------------------------------------------");
        $objPdf->Text(5, 77+$iTopHeight+$BottomHeight, "Qty");
        $objPdf->Text(30, 77+$iTopHeight+$BottomHeight, "Item");
        $objPdf->Text(155, 77+$iTopHeight+$BottomHeight, "Price");
        $objPdf->Text(5, 85+$iTopHeight+$BottomHeight, "----------------------------------------------------------------------------------------");
        
        $sSQL = "SELECT quantity, product_name, price, net_price  FROM tbl_order_details WHERE order_id='$Id' AND status NOT IN  ('V','VC','VP') ORDER BY product_name";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

        $iTop = (100+$iTopHeight);
        $iTotalPrice = 0;
        $iTotalNetPrice = 0;
        
	for ($i = 0; $i < $iCount; $i ++)
	{
            $iQty       = $objDb->getField($i, "quantity");
            $sProName   = $objDb->getField($i, "product_name");
            $iPrice     = $objDb->getField($i, "price");
            $iNetPrice  = $objDb->getField($i, "net_price");
                
            $objPdf->Text(7, $iTop+$BottomHeight, $iQty);
            $objPdf->SetXY(15, $iTop+$BottomHeight-6);
            $objPdf->MultiCell(135, 7, $sProName, 0);
            $objPdf->Text(155, $iTop+$BottomHeight, formatNumber($iPrice, false));

            if(strlen($sProName) >= 28)
                $iTop           += 20;
            else
                $iTop           += 10;
            
            $iTotalPrice    += $iPrice;
            $iTotalNetPrice += $iNetPrice;                
        }

        $objPdf->Text(5, $iTop+5, "----------------------------------------------------------------------------------------");
        
        $objPdf->Text(62, $iTop+10+$BottomHeight, "Sub Total              : ".formatNumber($iTotalPrice, 2));
        $objPdf->Text(62, $iTop+19+$BottomHeight, "Sales Tax              : ".formatNumber($iTotalNetPrice-$iTotalPrice, 2));
        $objPdf->Text(62, $iTop+28+$BottomHeight, "Total Bill                : ".formatNumber($iTotalNetPrice, 2));
        
        if($sOrderStatus == 'C')
        {
            $ReceivedAmt = (float)getDbValue("received_amt", "tbl_payments", "order_id='$Id'");
            $CashAmt     = (float)getDbValue("amount", "tbl_payments", "order_id='$Id'");
            $Credit      = (float)getDbValue("credit", "tbl_payments", "order_id='$Id'");
            $Discount    = (float)getDbValue("discount_percent", "tbl_payments", "order_id='$Id' AND discount_status='A'");

            if($Discount > 0)
            {
                $CashAmt = $CashAmt + $Credit;
                $DiscountedAmt = $CashAmt  - ($CashAmt*($Discount/100));
                $objPdf->Text(62, $iTop+36+$BottomHeight, "Discount              : ".$Discount.'%');     
                $objPdf->Text(62, $iTop+44+$BottomHeight, "Amount Paid     : ".formatNumber($CashAmt, 2));             
            }
            else
            {
                $objPdf->Text(62, $iTop+36+$BottomHeight, "Cash Paid              : ".formatNumber($ReceivedAmt, 2));     
                $objPdf->Text(62, $iTop+44+$BottomHeight, "Credit Card Amt     : ".formatNumber(getDbValue("credit", "tbl_payments", "order_id='$Id'"), 2));             
            }
            $objPdf->Text(62, $iTop+52+$BottomHeight, "Change                 : ".formatNumber($ReceivedAmt-$CashAmt, 2));
        }
        else
        {
            $objPdf->Text(62, $iTop+36+$BottomHeight, "");     
            $objPdf->Text(62, $iTop+44+$BottomHeight, "");             
            $objPdf->Text(62, $iTop+52+$BottomHeight, "");
        }
        
        $objPdf->Text(5, $iTop+60+$BottomHeight, "==================================================");
        
        $objPdf->Text(65, $iTop+70+$BottomHeight, "36-C Comercial Area");
        $objPdf->Text(78, $iTop+80+$BottomHeight, "Phase 5");
        $objPdf->Text(70, $iTop+90+$BottomHeight, "DHA LAHORE");
        $objPdf->Text(65, $iTop+100+$BottomHeight, "Ph: 042-37182251-52");
        $objPdf->Text(27, $iTop+110+$BottomHeight, "We look forward to welcome you again");
        $objPdf->Text(69, $iTop+120+$BottomHeight, "www.gaia.com.pk");
        $objPdf->Text(67, $iTop+130+$BottomHeight, "Thanks for Visiting");
        
        

        ////Print PDF///
        $objPdf->Output("OrderNo:{$Id}.pdf", 'D');
?>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>