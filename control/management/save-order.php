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

	$_SESSION["Flag"] = "";

	$iTable         = IO::intValue("ddTable");
        $iGuests        = IO::intValue("txtGuests");
        $iWaiter        = IO::intValue("ddWaiter");
        $sStatus        = IO::strValue("ddStatus");
        $sGuestName     = IO::strValue("txtGuestName");
        $sGuestEmail    = IO::strValue("txtGuestEmail");
        $sGuestPhone    = IO::strValue("txtGuestPhone");
	$sRemarks       = IO::strValue("txtRemarks");
        $sOrderDate     = IO::strValue("txtOrderDate");
        $sOrderTime     = IO::strValue("txtOrderTime");
        $iReservation   = IO::intValue("ddReservation");
	$bError         = true;

        $DateTimeCreated = date("Y-m-d H:i:s");
         
        if($sOrderTime != "" && $sOrderDate != "")
        {
            $sOrderTime     = substr($sOrderTime, 0, -2);
            $sOrderTime     = date("H:i", (strtotime($sOrderTime)+(3600*12)));        
            $DateTimeCreated= $sOrderDate." ".$sOrderTime.":00";
        }

	if ($iTable == "" || $iGuests == 0 || $iWaiter == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iOrder  = getNextId("tbl_orders");
                
		$sSQL = "INSERT INTO tbl_orders SET  id             = '$iOrder',
                                                    table_id        = '$iTable',
                                                    total_guests    = '$iGuests',
                                                    waiter_id       = '$iWaiter',
                                                    guest_name      = '$sGuestName',
                                                    guest_email     = '$sGuestEmail',
                                                    guest_phone     = '$sGuestPhone',
                                                    remarks         = '$sRemarks',
                                                    status          = 'A',  
                                                    reservation_id  = '$iReservation',
                                                    created_by      = '{$_SESSION['AdminId']}',
                                                    created_at      = '$DateTimeCreated',
                                                    modified_by     = '{$_SESSION['AdminId']}',
                                                    modified_at     = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
                if ($bFlag == true)
                {
                    $sSQL = "UPDATE tbl_reservations SET  status    = 'F',
                                                    modified_by     = '{$_SESSION['AdminId']}',
                                                    modified_at     = NOW( )
                                                   WHERE id = '$iReservation'";
                    $bFlag = $objDb->execute($sSQL);
                }
                
                if ($bFlag == true)
                {
                    $iItems     = IO::getArray("ddItems");
                    $iQuantities= IO::getArray("txtQuantity");
                    
                    foreach($iItems as $iKey => $iItem)
                    {
                        $iQuantity  = trim($iQuantities[$iKey]);
                        
                        if($iItem != "" && $iQuantity > 0)
                        {
                            
                            $sProduct   = getDbValue("name", "tbl_products", "id='$iItem'");
                            $iCost      = getDbValue("cost", "tbl_products", "id='$iItem'");
                            $iPrice     = getDbValue("price", "tbl_products", "id='$iItem'");
                            $iCategory  = getDbValue("category_id", "tbl_products", "id='$iItem'");
                            $sCategory  = getDbValue("category", "tbl_categories", "id='$iCategory'");

                            $iTotalPrice =  $iPrice * $iQuantity;
                            $iNetPrice   = $iTotalPrice + ($iTotalPrice * 0.16);
                        
                            $sSQL = "INSERT INTO tbl_order_details SET  order_id        = '$iOrder',
                                                                        product_id      = '$iItem',
                                                                        product_name    = '$sProduct',
                                                                        category_id     = '$iCategory',
                                                                        category_name   = '$sCategory',
                                                                        quantity        = '$iQuantity',
                                                                        net_price       = '$iNetPrice',
                                                                        cost_per_item   = '$iCost',    
                                                                        ordered_at      = '$DateTimeCreated',  
                                                                        price           = '$iTotalPrice'";
                            
                            $bFlag = $objDb->execute($sSQL);
                            
                            if($bFlag ==  false)
                                break;
                        }
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("orders.php", "ORDER_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>