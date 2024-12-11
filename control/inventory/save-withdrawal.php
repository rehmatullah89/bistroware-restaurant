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

	$sInventoryDetailIds= IO::getArray("InventoryDetailId");
        
        $Flag = 1;
        
        foreach($sInventoryDetailIds as $key => $iDetailId)
        {
            $iQtyWithDraw       = IO::intValue("txtOutQty_".$iDetailId);
            $iQtyAvailable      = IO::intValue("txtQty_".$iDetailId);
            $fWtAvailable       = IO::floatValue("txtWtAvailable_".$iDetailId);
            $fWtWithdraw        = IO::floatValue("txtOutWt_".$iDetailId);
            $stxtIngUom         = IO::strValue("txtIngUom_".$iDetailId);
            
            if(($iQtyWithDraw > $iQtyAvailable) || ($fWtWithdraw > $fWtAvailable))
            {
                $_SESSION["Flag"] = "QUANTITY_EXEEDS";
                break;
            }
            
            if(($iQtyWithDraw > 0 && ($iQtyWithDraw <= $iQtyAvailable)) || ($fWtWithdraw > 0 && ($fWtWithdraw <= $fWtAvailable)) )
                $Flag = 0;
        }

	if ($Flag == 1)
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "" && $Flag == 0)
	{
	
		$objDb->execute("BEGIN");
                
                foreach($sInventoryDetailIds as $key => $iDetailId)
                {
                    $iQtyWithDraw       = IO::intValue("txtOutQty_".$iDetailId);
                    $iQtyAvailable      = IO::intValue("txtQty_".$iDetailId);
                    $fWtAvailable       = IO::floatValue("txtWtAvailable_".$iDetailId);
                    $fWtWithdraw        = IO::floatValue("txtOutWt_".$iDetailId);
                    $stxtIngUom         = IO::strValue("txtIngUom_".$iDetailId);
                    
                    if((($iQtyWithDraw <= $iQtyAvailable) && $iQtyWithDraw > 0) || (($fWtWithdraw <= $fWtAvailable) && $fWtWithdraw > 0))
                    {
                        $iInvHistory  = getNextId("tbl_inventory_history");

                        $sSQL = "INSERT INTO tbl_inventory_history SET  id      = '$iInvHistory',
                                                            inventory_detail_id = '$iDetailId',
                                                            qty_withdraw        = '$iQtyWithDraw',
                                                            wt_withdraw         = '$fWtWithdraw',    
                                                            modified_by = '{$_SESSION['AdminId']}',
                                                            modified_at = NOW( )";
                        $bFlag = $objDb->execute($sSQL);

                        if($bFlag == false)
                            break;
                        
                        if($bFlag == true)
                        {
                            if($stxtIngUom == 'V')
                            {
                                $NewWt = $fWtAvailable - $fWtWithdraw;
                                $sSubSql = "";
                                
                                if($NewWt <= 0)
                                    $sSubSql = ",quantity = '0'";
                                
                                $sSQL = "UPDATE tbl_inventory_details SET  weight = '$NewWt' $sSubSql WHERE id = '$iDetailId'";

                            }else
                            {
                                $NewQty = $iQtyAvailable - $iQtyWithDraw;
                                $sSQL = "UPDATE tbl_inventory_details SET  quantity = '$NewQty' WHERE id = '$iDetailId'";
                                
                            }

                            $bFlag = $objDb->execute($sSQL);
                            
                            if($bFlag == false)
                                break;
                        }
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("withdrawals.php", "INVENTORY_UPDATED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>