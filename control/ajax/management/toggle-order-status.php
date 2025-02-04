<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.3-tree.com/imc/                                                               **
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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );

	if ($sUserRights["View"] != "Y")
	{
		print "info|-|You don't have enough Rights to perform the requested operation.";

		exit( );
	}


	$iOrderId = IO::intValue("OrderId");

	if ($iOrderId > 0)
	{
                $sStatus = getDbValue("status", "tbl_orders", "id='$iOrderId'");
                
                if($sStatus == 'A') 
                    $sSQL = "UPDATE tbl_orders SET status='C' WHERE id='$iOrderId'";
                else
                    $sSQL = "UPDATE tbl_orders SET status='B' WHERE id='$iOrderId'";
                //$sSQL = "UPDATE tbl_orders SET status=IF(status='A', 'C', 'A') WHERE id='$iOrderId'";

		if ($objDb->execute($sSQL) == true)
			print "success|-|The selected Order status has been Toggled successfully.";

		else
			print "error|-|An error occured while processing your request, please try again.";
	}

	else
		print "info|-|Inavlid Toggle status request.";


	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>