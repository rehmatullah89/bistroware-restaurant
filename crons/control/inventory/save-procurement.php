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

	$sPoNumber  = IO::strValue("txtPoNumber");
	$sRemarks   = IO::strValue("txtRemarks");
	$bError     = true;


	if ($sPoNumber == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	if ($_SESSION["Flag"] == "")
	{
		$iProcurement = getDbValue("id", "tbl_inventory", "po_number LIKE '$sPoNumber'");
		
		if ($iProcurement > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}
	
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");
                
                $iProcurement  = getNextId("tbl_inventory");
                
		$sSQL = "INSERT INTO tbl_inventory SET  id      = '$iProcurement',
                                                    po_number   = '$sPoNumber',
                                                    remarks     = '$sRemarks',
                                                    created_by  = '{$_SESSION['AdminId']}',
                                                    created_at  = NOW( ),
                                                    modified_by = '{$_SESSION['AdminId']}',
                                                    modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);
		
                if ($bFlag == true)
                {
                    $iItems     = IO::getArray("ddItem");
                    $iItemTypes = IO::getArray("ddItemType");
                    $iQuantities= IO::getArray("txtQuantity");
                    $iPrices    = IO::getArray("txtPrice");
                    $iExpiries  = IO::getArray("txtExpiry");                    
                    $iLocations = IO::getArray("ddItemLocation");
                    $iSuppliers = IO::getArray("ddItemSupplier");
                    $iWeights   = IO::getArray("txtWeight");
                    $iCountries = IO::getArray("ddCountry");
                    
                    foreach($iItems as $iKey => $iItem)
                    {
                        $iItemType = $iItemTypes[$iKey];
                        $iQuantity = trim($iQuantities[$iKey]);
                        $iPrice    = trim($iPrices[$iKey]);
                        $iExpiry   = trim($iExpiries[$iKey]);                        
                        $iLocation = trim($iLocations[$iKey]);
                        $iSupplier = trim($iSuppliers[$iKey]);
                        $iWeight   = trim($iWeights[$iKey]);
                        $iCountry  = trim($iCountries[$iKey]);
                       
                        if($iItem != "" && $iItemType != "" && $iQuantity != "" && $iPrice != "" && $iExpiry != "" && $iLocation != "" && $iSupplier != "")
                        {
                            $sSQL = "INSERT INTO tbl_inventory_details SET  inventory_id    = '$iProcurement',
                                                                            ingredient_id   = '$iItem',
                                                                            location_id     = '$iLocation',
                                                                            supplier_id     = '$iSupplier',
                                                                            origin_id       = '$iCountry',    
                                                                            weight          = '$iWeight',
                                                                            total_weight    = '$iWeight',
                                                                            item_type       = '$iItemType',
                                                                            quantity        = '$iQuantity',
                                                                            total_quantity  = '$iQuantity',
                                                                            price           = '$iPrice',
                                                                            expiry_date     = '$iExpiry'";
                            
                            $bFlag = $objDb->execute($sSQL);
                            
                            if($bFlag ==  false)
                                break;
                        }
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("procurements.php", "PROCUREMENT_ADDED");
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>