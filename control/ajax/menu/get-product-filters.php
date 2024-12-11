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

	@require_once("../../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );

        $iProducts = getDbValue("COUNT(1)", "tbl_products", $sInspectionsSQL);
        $sCategoriestList = getList("tbl_categories", "id", "category");
        
        print '<select id="Category">';
	print '<option value="">Select Category</option>';
        foreach ($sCategoriestList as $iCategory => $sCategory)
        {
            print @utf8_encode('<option value="'.(($iProducts > 50) ? $iCategory : $sCategory).'">'.$sCategory.'</option>');
        }
	print '</select>';
        
	print '<select id="Status">';
	print '<option value="">Status</option>';
	print @utf8_encode('<option value="'.(($iProducts > 50) ? 'A' : 'Active').'">Active</option>');
	print @utf8_encode('<option value="'.(($iProducts > 50) ? 'I' : 'In-Active').'">In-Active</option>');
	print @utf8_encode('<option value="'.(($iProducts > 50) ? '' : 'N/A').'">N/A</option>');
	print '</select>';

	$objDb->close( );
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>