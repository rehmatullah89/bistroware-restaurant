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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );


	$iTableId   = IO::intValue("TableId");
        $sResDate   = IO::strValue("ResDate");
        $sResTime   = IO::strValue("ResTime");
        
        $sResTime       = substr($sResTime, 0, -2);
        $sReserveTime   = date("H:i", (strtotime($sResTime)+(3600*12)));
        $ResDateTime    = date("Y-m-d H:i:s", strtotime(($sResDate." ".$sReserveTime.":00")));
        //print "SELECT * from tbl_reservations where table_id = '$iTable' AND status != 'C' AND '$ResDateTime' BETWEEN date_time AND end_time";
       
        $reservationSlot= (int)getDbValue("COUNT(1)", "tbl_reservations", "table_id = '$iTableId' AND status != 'C' AND '$ResDateTime' BETWEEN date_time AND DATE_SUB(end_time,INTERVAL 10 MINUTE)", "id DESC");
            
        print $reservationSlot;
                
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>