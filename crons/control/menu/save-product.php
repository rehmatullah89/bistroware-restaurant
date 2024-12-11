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



	$_SESSION["Flag"] = "";



	$sProduct           = IO::strValue("txtProduct");

	$iCategory          = IO::intValue("ddCategory");

	$iStore             = IO::intValue("ddStore");
        
        $iCookingTime       = IO::intValue("txtCookTime");

	$iTaxRate           = IO::intValue("ddTaxRate");

        $sPrice             = IO::floatValue("txtPrice");
        $sItemDetails       = IO::strValue("txtProductDetails");

        $sOurChoice         = IO::strValue("ddOurChoice");
        
	$sStatus            = IO::strValue("ddStatus");

	$iFiles             = IO::intValue("Files_count");

	$sDocument          = "";

	$sFiles             = array( );

	$bError             = true;


        $sOurChoice         = ($sOurChoice == ""?'N':$sOurChoice);


	if ($sProduct == "" || $iCategory == 0 || $iStore == 0 || $iTaxRate == 0 || $sPrice <= 0 || $sStatus == "" || $iCookingTime == 0)

		$_SESSION["Flag"] = "INCOMPLETE_FORM";



	if ($_SESSION["Flag"] == "")

	{

		$iProduct = getDbValue("id", "tbl_products", "name LIKE '$sProduct'");

		

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

                                                        details     = '$sItemDetails',

		                                        category_id = '$iCategory',

                                                        tax_id      = '$iTaxRate',

		                                        store_id    = '$iStore',

		                                        price       = '$sPrice',

                                                        picture     = '',

                                                        cooking_time = '$iCookingTime',
                                                            
		                                        our_choice  = '$sOurChoice',
                                                        
                                                        status      = '$sStatus',

                                                        position    = '$iPosition',

		                                        created_by  = '{$_SESSION['AdminId']}',

		                                        created_at  = NOW( ),

		                                        modified_by = '{$_SESSION['AdminId']}',

		                                        modified_at = NOW( )";

		$bFlag = $objDb->execute($sSQL);

		

		if ($bFlag == true && $_FILES['filePicture']['name'] != "")

                {

                        $sPicture = ($iProduct."-".IO::getFileName($_FILES['filePicture']['name']));



                        if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.PRODUCTS_IMG_DIR.$sPicture)))

                                $sPicture = "";



                        else

                        {

                                $sSQL  = "UPDATE tbl_products SET picture='$sPicture' WHERE id='$iProduct'";

                                $bFlag = $objDb->execute($sSQL);				

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



					if ($bFlag == false){

                                          echo $sSQL;exit;

					//	break;

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