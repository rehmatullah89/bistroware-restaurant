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

	header("Expires: Tue, 01 Jan 2010 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );

	$iTableId     = IO::intValue("TableId");
	$sOrderDate   = IO::strValue("OrderDate");

        $sReservation = getList("tbl_reservations", "id", "CONCAT(name, ' :: ', phone)", "table_id = '$iTableId' AND status='R' AND date_time LIKE '$sOrderDate%'");
        
        foreach ($sReservation as $iReservation => $sReservaer)
        {
?>
            <option value="<?=$iReservation?>" <?=(IO::intValue("ddReservation") == $iReservation)?'selected':''?>><?=$sReservaer?></option>
<?
        }
	$objDb->close( );
	$objDbGlobal->close( );
	@ob_end_flush( );
?>