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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );

        
        $iReservations = getDbValue("COUNT(1)", "tbl_reservations");
        
	print '<select id="Status">';
	print '<option value="">Status</option>';
	print @utf8_encode('<option value="'.(($iReservations > 50) ? 'R' : 'Reserved').'">Reserved</option>');
	print @utf8_encode('<option value="'.(($iReservations > 50) ? 'F' : 'Free').'">Free</option>');
        print @utf8_encode('<option value="'.(($iReservations > 50) ? 'H' : 'Half-Reserved').'">Half-Reserved</option>');
	print @utf8_encode('<option value="'.(($iReservations > 50) ? '' : 'N/A').'">N/A</option>');
	print '</select>';

	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>