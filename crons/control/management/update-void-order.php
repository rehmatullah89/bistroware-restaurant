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

	$_SESSION["Flag"] = "";


        $iDetailIds     = IO::getArray("txtDetailIds");
        $iStatuses      = IO::getArray("ddStatus");        
        $iVoidReasons   = IO::getArray("VoidReasons");        
        $iRemarks       = IO::getArray("Remarks");        
      
	if ($iOrderId == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

                foreach($iDetailIds as $iKey => $iId)
                {
                    $sStatus    = trim($iStatuses[$iKey]);
                    $sVoidReason= trim($iVoidReasons[$iKey]);
                    $sRemarks   = trim($iRemarks[$iKey]);

                    if($iId > 0)
                    {
                        
                        $sSQL = "UPDATE tbl_order_details SET  status = '$sStatus', void_reason_id ='$sVoidReason', void_remarks = '$sRemarks', void_by='{$_SESSION['AdminId']}', void_at= NOW( )
                                WHERE order_id = '$iOrderId' AND id = '$iId'";

                        $bFlag = $objDb->execute($sSQL);

                        if($bFlag ==  false)
                            break;
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
?>
                       <script>
                           parent.$.colorbox.close( );
                           parent.showMessage("#GridMsg", "success", "The selected Order has been Updated successfully.");
                           parent.updateLine(<?= $iOrderId ?>, <?= $iIndex ?>);
                       </script>    
<?
                       // redirect("orders.php", "ORDER_UPDATED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
        }
                
?>