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



	@require_once("../requires/common.php");



	$objDbGlobal = new Database( );

	$objDb       = new Database( );

	$objDb2      = new Database( );

	$objDb3      = new Database( );

	$objDb4      = new Database( );



	if ($sUserRights["Edit"] != "Y")

		exitPopup(true);





	$iProductId = IO::intValue("ProductId");

	$iIndex     = IO::intValue("Index");



	if ($_POST)

		@include("update-product.php");





	$sSQL = "SELECT * FROM tbl_products WHERE id='$iProductId'";

	$objDb->query($sSQL);



	if ($objDb->getCount( ) != 1)

		exitPopup( );



	$iCategoryId = $objDb->getField(0, "category_id");

        $sProduct    = $objDb->getField(0, "name");
        $sItemDetails= $objDb->getField(0, "details");
        $iTaxId      = $objDb->getField(0, "tax_id");

        $iStoreId    = $objDb->getField(0, "store_id");

        $sPicture    = $objDb->getField(0, "picture");

        $iPrice      = $objDb->getField(0, "price");
        $iCookingTime= $objDb->getField(0, "cooking_time"); 
        $sOurChoice  = $objDb->getField(0, "our_choice");
        
        $sStatus     = $objDb->getField(0, "status");

	

        $sCategoriesList    = getList("tbl_categories", "id", "category");

        $sStoresList        = getList("tbl_stores", "id", "name");

        $sTaxesList         = getList("tbl_taxes", "id", "tax_rate");

?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">



<head>

<?

	@include("{$sAdminDir}includes/meta-tags.php");

?>

  <link type="text/css" rel="stylesheet" href="plugins/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css" />



  <script type="text/javascript" src="plugins/plupload/plupload.full.min.js"></script>

  <script type="text/javascript" src="plugins/plupload/jquery.ui.plupload/jquery.ui.plupload.js"></script>

  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-product.js"></script>

</head>



<body class="popupBg">



<div id="PopupDiv">

<?

	@include("{$sAdminDir}includes/messages.php");

?>

  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">

    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />

	<input type="hidden" name="ProductId" id="ProductId" value="<?= $iProductId ?>" />

	<input type="hidden" name="Index" value="<?= $iIndex ?>" />

	<div id="RecordMsg" class="hidden"></div>



	<table border="0" cellspacing="0" cellpadding="0" width="100%">

	  <tr valign="top">

		<td width="600">

                    <label for="txtProduct">Product Title</label>

                    <div><input type="text" name="txtProduct" id="txtProduct" value="<?= $sProduct ?>" maxlength="10" size="20" class="textbox" /></div>

                    <div class="br10"></div>

                    <label for="txtProductDetails">Item Details</label>
                    <div><textarea name="txtProductDetails" id="txtProductDetails" cols="20" rows="4"><?=$sItemDetails?></textarea></div>
						

                    <div class="br10"></div>

                    <label for="ddCategory">Categories</label>



				  <div>

				    <select name="ddCategory" id="ddCategory">

					  <option value=""></option>

<?

		foreach ($sCategoriesList as $iCategory => $sCategory)

		{

?> 

					  <option value="<?= $iCategory ?>"<?= (($iCategory == $iCategoryId) ? ' selected' : '') ?>><?= $sCategory ?></option>

<?

		}

?>

				    </select>

				  </div>



				  <div class="br10"></div>



				  <label for="ddStore">Store</label>



				  <div>

				    <select name="ddStore" id="ddStore">

					  <option value=""></option>

                                           <option value="1" <?= (($iStoreId == 1) ? ' selected' : '') ?>>Test Store</option>

<?

		foreach ($sStoresList as $iStore => $sStore)

		{

?>

					  <option value="<?= $iStore ?>"<?= (($iStoreId == $iStore) ? ' selected' : '') ?>><?= $sStore ?></option>

<?

		}

?>

				    </select>

				  </div>



                                <div class="br10"></div>

                                

                              <label for="ddTaxRate">Tax Rate</label>

				  <div>

                                      <select name="ddTaxRate" id="ddTaxRate">

                                          <option value=""></option>

                                           <option value="1" <?= (($iTaxId == 1) ? ' selected' : '') ?>>16%</option>

<?

		foreach ($sTaxesList as $iTax => $sTax)

		{

?>

					  <option value="<?= $iTax ?>"<?= (($iTax == $iTaxId) ? ' selected' : '') ?>><?= $sTax ?></option>

<?

		}

?>

                                      </select>

				  </div>

                                  

                                 <div class="br10"></div>



                                <label for="filePicture">Picture <span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.PRODUCTS_IMG_DIR.$sPicture).'" class="colorbox">'.substr($sPicture, strlen("{$iProductId}-")).'</a>)')) ?></span></label>

                                <div><input type="file" name="filePicture" id="filePicture" value="" size="50" class="textbox" /></div>

                                  

                                  

  				  <div class="br10"></div>

				  <label for="txtPrice">Price</label>

				  <div><input type="text" name="txtPrice" id="txtPrice" value="<?= $iPrice;?>" maxlength="20" size="8" class="textbox" /></div>

                                  <div class="br10"></div>
				  <label for="txtCookTime">Cooking Time (Minutes Only)</label>
				  <div><input type="text" name="txtCookTime" id="txtCookTime" value="<?= $iCookingTime ?>" maxlength="20" size="8" class="textbox" /></div>
                                  
                                  <div class="br10"></div>

                                    <label for="ddOurChoice">Our Choice</label>
				  <div><input type="checkbox" name="ddOurChoice" id="ddOurChoice" value="Y" <?= (($sOurChoice == 'Y') ? 'checked' : '') ?> /></div>
                                  <div class="br10"></div>

                                 <label for="ddStatus">Status</label>

				  <div>

				    <select name="ddStatus" id="ddStatus">

                                        <option value=""></option>

					<option value="A"<?= (($sStatus == 'A') ? ' selected' : '') ?>>Active</option>

					<option value="I"<?= (($sStatus == 'I') ? ' selected' : '') ?>>In-Active</option>

				    </select>

				  </div>





		</td>



		<td>

		  <div id="Files" style="width:98%; height:350px;">Loading ...</div>

<?

	$sSQL = "SELECT * FROM tbl_product_documents WHERE product_id='$iProductId' ORDER BY id";

	$objDb->query($sSQL);



	$iCount = $objDb->getCount( );



	if ($iCount > 0)

	{

?>

		  <h3>Additional Documents</h3>



		  <ul style="list-style:none; margin:0px; padding:0px;">

<?

		for ($i = 0; $i < $iCount; $i ++)

		{

			$iFile = $objDb->getField($i, "id");

			$sFile = $objDb->getField($i, "file");





			$iPosition  = @strrpos($sFile, '.');

			$sExtension = @substr($sFile, $iPosition);

			$sImages    = array(".jpg", ".jpeg", ".png", ".gif");

?>

		    <li>

<?

			if (@in_array($sExtension, $sImages))

			{

				if (@file_exists($sRootDir.PRODUCTS_IMG_DIR.$sFile))

				{

?>

	    	  <a href="<?= (SITE_URL.PRODUCTS_IMG_DIR.$sFile) ?>" class="colorbox"><?= substr($sFile, strlen("{$iProductId}-{$iFile}-")) ?></a>

<?

				}



				else

				{

?>

	    	  <a href="<?= (SITE_URL.PRODUCTS_DOC_DIR.$sFile) ?>" class="colorbox"><?= substr($sFile, strlen("{$iProductId}-{$iFile}-")) ?></a>

<?

				}

			}



			else

			{

?>

		  	  <a href="<?= $sCurDir ?>/download-product-document.php?Id=<?= $iFile ?>&File=<?= $sFile ?>"><?= substr($sFile, strlen("{$iProductId}-{$iFile}-")) ?></a>

<?

			}

?>

		  	  &nbsp;-&nbsp;

		  	  <b><a href="<?= $sCurDir ?>/delete-product-document.php?ProductId=<?= $iProductId ?>&FileId=<?= $iFile ?>">x</a></b>

		    </li>

<?

		}

?>

		  </ul>



		  <div class="br5"></div>

<?

	}

?>

		</td>

	  </tr>

	</table>

  </form>

</div>





</body>

</html>

<?

	$objDb->close( );

	$objDb2->close( );

	$objDb3->close( );

	$objDb4->close( );

	$objDbGlobal->close( );



	@ob_end_flush( );

?>