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

        $iOrderId       = IO::intValue("OrderId");  
        $sPaymentMode   = IO::strValue("PMode");  
        $iBillAmt       = IO::intValue("BillAmt");  
        $sStatus        = IO::strValue("PStatus");        
      
	if ($iOrderId == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
        
                $sSQL = "INSERT INTO tbl_payments SET  order_id = '$iOrderId', payment_mode = '$sPaymentMode', amount='$iBillAmt', marked_by='{$_SESSION["AdminId"]}', marked_at=NOW()";
                $bFlag = $objDb->execute($sSQL);

                if($bFlag == true)
                {
                    $sSQL = "UPDATE tbl_orders SET  status = '$sStatus' WHERE id = '$iOrderId'";
                    $bFlag = $objDb->execute($sSQL);
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
?>
                       <script>
                           parent.$.colorbox.close( );
                           parent.showMessage("#GridMsg", "success", "The selected Order has been Paid successfully.");
                           parent.updateLine(<?= $iOrderId ?>, <?= $iIndex ?>);
                       </script>    
<?
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
        }
                
?>