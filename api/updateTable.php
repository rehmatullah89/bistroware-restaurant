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

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );


	$iOrderId   = IO::intValue("OrderId");
        $iTableId   = IO::intValue("TableId");
        $iUserId    = IO::intValue("UserId");
                
	$aResponse  = array( );
	
	if ($iOrderId == 0 || $iTableId == 0)
		$aResponse["Message"] = "Invalid API Request";

	else if($iOrderId > 0 && $iTableId > 0)
	{
                $iPrevTable = getDbValue("table_id", "tbl_orders", "id='$iOrderId'");

                $sSQL = "INSERT INTO tbl_table_exchange_history SET order_id='$iOrderId', prev_table_id='$iPrevTable', new_table_id='$iTableId', modified_by='$iUserId', modified_at = NOW()";
                $bFlag = $objDb->query($sSQL);
                 
                if($bFlag == true)
                {
                    $sSQL = "UPDATE tbl_orders SET table_id='$iTableId'
				 WHERE id='$iOrderId'";

                    $objDb->query($sSQL);
                }
              
                if($bFlag == true)
                    $aResponse['Data'] = "Success";		
                else
                    $aResponse['Data'] = "Error";		
	}
      
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>