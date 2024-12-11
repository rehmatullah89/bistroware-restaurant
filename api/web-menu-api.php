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


	$sAPI   = IO::strValue("API");
	$iMeal  = IO::intValue("MEAL");
                
	$aResponse           = array( );
	
	if ($sAPI == "")
		$aResponse["Message"] = "Invalid API Request";

	else if ($sAPI == "Y" && $iMeal != 0)
	{
		$sSQL = "SELECT c.id, c.category, c.picture
				 FROM tbl_categories c, tbl_products p
				 WHERE c.id=p.category_id AND p.meal_id='$iMeal' AND c.status='A' ORDER BY c.position DESC";

                $objDb->query($sSQL);
                $iCount  = $objDb->getCount();
                
		if ($iCount > 0)
		{
                    for($i=0; $i<$iCount; $i++)
                    {
                        $aTempArr = array( );
                        
						$iCId       = $objDb->getField($i, "id");
						$sCategory  = $objDb->getField($i, "category");
						$sPicture   = $objDb->getField($i, "picture");
						
						$aTempArr['Id']          = $iCId;										
						$aTempArr['Category']    = $sCategory;
						$aTempArr['Picture']     = $sPicture;
                        
                        $sSQL2 = "SELECT *
							 FROM tbl_products
							 WHERE status='A' AND category_id='$iCId' AND meal_id='$iMeal' ORDER BY position";

                        $objDb2->query($sSQL2);
                        $iCount2  = $objDb2->getCount();
                        
                        $sTemp2Arr = array();
                        
                        for($j=0; $j<$iCount2; $j++)
                        {
                            
                            $iPId       = $objDb2->getField($j, "id");
                            $sProduct   = $objDb2->getField($j, "name");
                            $sDetails   = $objDb2->getField($j, "details");
                            $sPrice     = $objDb2->getField($j, "price");
                            $sOurChoice = $objDb2->getField($j, "our_choice");
                            
                            $sTemp2Arr[$j] = array('Pid'=>$iPId, 'Product'=>$sProduct, 'Details'=>$sDetails, 'Price'=>$sPrice, 'Choice'=>$sOurChoice); 
                        }
                        
                        $aTempArr['Products'] = $sTemp2Arr;
                        
                        $aResponse[$iCId] = $aTempArr;
                    }
		}

		else
			$aResponse["Message"] = "No Category Found!";
	}

	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>