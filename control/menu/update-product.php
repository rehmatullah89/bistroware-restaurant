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


	$sProduct        = IO::strValue("txtProduct");
        $iMealType       = implode(",", IO::getArray("ddMealType"));
	$iCategory       = IO::intValue("ddCategory");
	$iStore          = IO::intValue("ddStore");
        $sItemDetails    = IO::strValue("txtProductDetails");
	$iTaxRate        = IO::intValue("ddTaxRate");
        $sPrice          = IO::floatValue("txtPrice");
        $fCost           = IO::floatValue("txtCost");
        $iCookingTime    = IO::intValue("txtCookTime");
	$sStatus         = IO::strValue("ddStatus");
        $sOurChoice      = IO::strValue("ddOurChoice");
	$iFiles          = IO::intValue("Files_count");
        $Picture         = IO::getFileName($_FILES['filePicture']['name']);
        
        $sOurChoice      = ($sOurChoice == ""?'N':$sOurChoice);
	$sFiles          = array( );
	$iSchool         = getDbValue("school_id", "tbl_sp_inspections", "id='$iProductId'");
        
        $sMealsList         = getList("tbl_meals", "id", "meal");
        $sCategoriesList    = getList("tbl_categories", "id", "category");
       
	
	if ($sProduct == "" || $iMealType == "" || $iCategory == 0 || $iStore == 0 || $iTaxRate == 0 || $sPrice <= 0 || $sStatus == "" || $iCookingTime == 0)
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iProduct = getDbValue("id", "tbl_products", "name LIKE '$sProduct' AND meal_id IN ($iMealType) AND id != '$iProductId'");
		
		if ($iProduct > 0)
			$_SESSION["Flag"] = "PRODUCT_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_products SET        name            = '$sProduct',
                                                        details         = '$sItemDetails',
		                                        category_id     = '$iCategory',
                                                        meal_id         = '$iMealType',
                                                        tax_id          = '$iTaxRate',
		                                        store_id        = '$iStore',
		                                        price           = '$sPrice',
                                                        cost            = '$fCost',     
                                                        cooking_time    = '$iCookingTime',
                                                        our_choice      = '$sOurChoice',    
                                                        status          = '$sStatus',
                                                        modified_by     = '{$_SESSION['AdminId']}',
		                                        modified_at     = NOW( )
                                                        WHERE id        = '$iProductId'";
                                               
		$bFlag = $objDb->execute($sSQL);
		
                if ($bFlag == true && $Picture != "")
                {
                        $sPicture = ($iProductId."-".$Picture);
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

                                        $sSQL  = "UPDATE tbl_products SET picture='$sPicture' WHERE id='$iProductId'";
                                        $bFlag = $objDb->execute($sSQL);

                                }											
                        }
                        else
                        {

                            if (!@move_uploaded_file($_FILES['filePicture']['tmp_name'], ($sRootDir.PRODUCTS_IMG_DIR.$sPicture)))
                                    $sPicture = "blank-image.jpg";
                            else
                            {
                                $sSQL  = "UPDATE tbl_products SET picture='$sPicture' WHERE id='$iProductId'";
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
					$sFile = ("{$iProductId}-{$iFile}-".IO::getFileName($sUploadName));

					$iPosition  = @strrpos($sUploadName, '.');
					$sExtension = @substr($sUploadName, $iPosition);

					if (@in_array(strtolower($sExtension), array(".jpg", ".jpeg", ".png", ".gif")))
						copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.PRODUCTS_IMG_DIR.$sFile));

					else
						copy(($sRootDir.TEMP_DIR.$sUploadName), ($sRootDir.PRODUCTS_DOC_DIR.$sFile));


					$sSQL = "INSERT INTO tbl_product_documents SET id          = '$iFile',
                                                                                        product_id = '$iProductId',
                                                                                        file       = '$sFile'";
					$bFlag = $objDb->execute($sSQL);

					if ($bFlag == false)
						break;

					$sFiles[] = $sFile;
				}


				@unlink($sRootDir.TEMP_DIR.IO::strValue("Files_{$i}_name"));
			}
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_sp_inspections.modified_by) AS _ModifiedBy
					 FROM tbl_products
					 WHERE id='$iProductId'";
			$objDb->query($sSQL);

			$sCreatedAt  = $objDb->getField(0, "created_at");
			$sCreatedBy  = $objDb->getField(0, "_CreatedBy");
			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");


			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sProduct) ?>";
                sFields[1] = "<?= getDbValue("GROUP_CONCAT(meal SEPARATOR ', ')", "tbl_meals", "id IN ($iMealType)") ?>";
		sFields[2] = "<?= $sCategoriesList[$iCategory] ?>";
                sFields[3] = "<?=  $iCookingTime?>";
		sFields[4] = "<?= @htmlentities($sPrice) ?>";
                sFields[5] = "<?= @htmlentities($fCost) ?>";
		sFields[6] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[7] = '<img class="icon details" id="<?= $iProductId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[7] = (sFields[7] + '<img class="icnEdit" id="<?= $iProductId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[7] = (sFields[7] + '<img class="icnDelete" id="<?= $iProductId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[7] = (sFields[7] + '<img class="icnView" id="<?= $iProductId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iProductId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Product has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");

			$_SESSION["Flag"] = "DB_ERROR";

			
			for ($i = 0; $i < count($sFiles); $i ++)
			{
				@unlink($sRootDir.PRODUCTS_DOC_DIR.$sFiles[$i]);
				@unlink($sRootDir.PRODUCTS_IMG_DIR.$sFiles[$i]);
			}
		}
	}
?>