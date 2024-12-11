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


	$sEmail     = IO::strValue("Email");
        $sStatus    = IO::strValue("Status");
        $iItemId    = IO::intValue("ItemId");
        $iOrderId   = IO::intValue("OrderId");
                
	$aResponse           = array( );
	
	if ($sEmail == "")
		$aResponse["Message"] = "Invalid API Request";

	else if (getDbValue("COUNT(1)", "tbl_admins", "email LIKE '$sEmail' AND status='A'") > 0 && $iItemId > 0)
	{
            
                $VoidBy = getDbValue("id", "tbl_admins", "email LIKE '$sEmail'"); 
                        
		$sSQL  = "UPDATE tbl_order_details SET status = '$sStatus', void_by = '$VoidBy', void_at= NOW( ) WHERE id='$iItemId' AND order_id='$iOrderId'";
                $bFlag = $objDb->query($sSQL);
                
		if ($bFlag == true)
                    $aResponse["Message"] = "Success";
                else
                    $aResponse["Message"] = "Error";
	}
        else
            $aResponse["Message"] = "Invalid Requester";
        
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>