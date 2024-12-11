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


	$sProduct           = IO::strValue("txtProduct");
	$iCategory          = IO::intValue("ddCategory");
        $sMealType          = implode(",", IO::getArray("ddMealType"));
	$iStore             = IO::intValue("ddStore");       
        $iCookingTime       = IO::intValue("txtCookTime");
	$iTaxRate           = IO::intValue("ddTaxRate");
        $sPrice             = IO::floatValue("txtPrice");
        $sCost              = IO::floatValue("txtCost");
        $sItemDetails       = IO::strValue("txtProductDetails");
        $sOurChoice         = IO::strValue("ddOurChoice");        
	$sStatus            = IO::strValue("ddStatus");
	$iFiles             = IO::intValue("Files_count");
        $Picture            = IO::getFileName($_FILES['filePicture']['name']);

	$sDocument          = "";
	$sFiles             = array( );
	$bError             = true;

        $sOurChoice         = ($sOurChoice == ""?'N':$sOurChoice);


	if ($sProduct == "" || $sMealType == "" || $iCategory == 0 || $iStore == 0 || $iTaxRate == 0 || $sPrice <= 0 || $sStatus == "" || $iCookingTime == 0)
		$_SESSION["Flag"] = "INCOMPLETE_FORM";



	if ($_SESSION["Flag"] == "")
	{
		$iProduct = getDbValue("id", "tbl_products", "name LIKE '$sProduct' AND meal_id IN ($sMealType)");
                
		if ($iProduct > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}

	
	if ($_SESSION["Flag"] == "")
	{

		$objDb->execute("BEGIN");

                $iProduct  = getNextId("tbl_products");

                $iPosition = $iProduct + 1;

		$sSQL = "INSERT INTO tbl_products SET id            = '$iProduct',
                                                        name        = '$sProduct',
                                                        meal_id     = '$sMealType',    
                                                        details     = '$sItemDetails',
		                                        category_id = '$iCategory',
                                                        tax_id      = '$iTaxRate',
		                                        store_id    = '$iStore',
		                                        price       = '$sPrice',
                                                        cost        = '$sCost',
                                                        picture     = 'blank-image.jpg',
                                                        cooking_time = '$iCookingTime',                                                           
		                                        our_choice  = '$sOurChoice',                                                        
                                                        status      = '$sStatus',
                                                        position    = '$iPosition',
		                                        created_by  = '{$_SESSION['AdminId']}',
		                                        created_at  = NOW( ),
		                                        modified_by = '{$_SESSION['AdminId']}',
		                                        modified_at = NOW( )";
		$bFlag = $objDb->execute($sSQL);

		
		if ($bFlag == true && $Picture != "")
                {                                
                                $sPicture = ($iProduct."-".$Picture);
                                //$sExtension  = substr($sPicture, strrpos($Picture, "."));
                                $array = explode('.', $Picture);
                                $sExtension = end($array);
                                
                                if(strtolower($sExtension) == 'jpg' || strtolower($sExtension) == 'jpeg' || strtolower($sExtension) == 'png')
				{
					if (@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.TEMP_DIR.$sPicture)))
					{
						@list($iWidth, $iHeight) = @getimagesize($sRootDir.TEMP_DIR.$sPicture);

						$bResize = false;

						if ($iWidth > $iHeight && $iWidth > 600)
						{
								$bResize = true;
								$fRatio  = (600 / $iWidth);

								$iWidth  = 600;
								$iHeight = @ceil($fRatio * $iHeight);
						}

						else if ($iWidth < $iHeight && $iHeight > 600)
						{
								$bResize = true;
								$fRatio  = (600 / $iHeight);

								$iWidth  = @ceil($fRatio * $iWidth);
								$iHeight = 600;
						}


						if ($bResize == true && ($iWidth >= 600 || $iHeight >= 600))
							makeImage(($sRootDir.TEMP_DIR.$sPicture), ($sRootDir.PRODUCTS_IMG_DIR.$sPicture), $iWidth, $iHeight);

						else
							@copy(($sRootDir.TEMP_DIR.$sPicture), ($sRootDir.PRODUCTS_IMG_DIR.$sPicture));


						@unlink($sRootDir.TEMP_DIR.$sPicture);

						$sSQL  = "UPDATE tbl_products SET picture='$sPicture' WHERE id='$iProduct'";
                                                $bFlag = $objDb->execute($sSQL);
						
					}											
				}
                                else
                                {
                    
                                    if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.PRODUCTS_IMG_DIR.$sPicture)))
                                            $sPicture = "blank-image.jpg";
                                    else
                                    {
                                        $sSQL  = "UPDATE tbl_products SET picture='$sPicture' WHERE id='$iProduct'";
                                        $bFlag = $objDb->execute($sSQL);
                                    }
                                }                        				                        
                }

		if ($bFlag == true)
		{

			for ($i = 0; $i < $iFiles; $i ++)
			{
				$sUploadName   = IO::strValue("Files_{$i}_name");

				$sUploadStatus = IO::strValue("Files_{$i}_status");

				if ($sUploadStatus == "done" && $sUploadName != "")
				{

					$iFile = getNextId("tbl_product_documents");
					$sFile = ("{$iProduct}-{$iFile}-".IO::getFileName($sUploadName));

					$iPosition  = @strrpos($sUploadName, '.');

					$sExtension = @substr($sUploadName, $iPosition);

					if (@in_array($sExtension, array(".jpg", ".jpeg", ".png", ".gif")))

						copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.PRODUCTS_IMG_DIR.$sFile));
					else
						copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.PRODUCTS_DOC_DIR.$sFile));

					$sSQL = "INSERT INTO tbl_product_documents SET id       = '$iFile',
                                                                                    product_id  = '$iProduct',
                                                                                    file        = '$sFile'";

					$bFlag = $objDb->execute($sSQL);

					if ($bFlag == false)
                                        {
                                            echo $sSQL;exit;
                                            //break;
                                        }

					$sFiles[] = $sFile;
				}

				@unlink($sRootDir.TEMP_DIR.IO::strValue("Files_{$i}_name"));
			}
		}


		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
                        redirect("products.php", "PRODUCT_ADDED");
		}
		else
		{
			$objDb->execute("ROLLBACK");
                        $_SESSION["Flag"] = "DB_ERROR";

			for ($i = 0; $i < count($sFiles); $i ++)
			{
				@unlink($sRootDir.PRODUCTS_IMG_DIR.$sFiles[$i]);
				@unlink($sRootDir.PRODUCTS_DOC_DIR.$sFiles[$i]);
			}

		}

	}

?>