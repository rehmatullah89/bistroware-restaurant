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

	if ($sUserRights["Delete"] != "Y")
	{
		print "info|-|You don't have enough Rights to perform the requested operation.";

		exit( );
	}


	$sProducts = IO::strValue("Products");

	if ($sProducts != "")
	{
		$iProducts = @explode(",", $sProducts);
		$sPictures    = array( );
		$sFiles       = array( );
		$sDocuments   = array( );


		$objDb->execute("BEGIN");

		for ($i = 0; $i < count($iProducts); $i ++)
		{
			$sSQL = "SELECT school_id, block FROM tbl_products WHERE id='{$iProducts[$i]}'";
			$objDb->query($sSQL);

			$iSchool = $objDb->getField(0, "school_id");
			$iBlock  = $objDb->getField(0, "block");

			
			$sSQL = "SELECT file FROM tbl_product_documents WHERE product_id='{$iProducts[$i]}'";
			$objDb->query($sSQL);

			$iCount = $objDb->getCount( );

			for ($j = 0; $j < $iCount; $j ++)
				$sDocuments[] = $objDb->getField($j, 0);


			$sSQL  = "DELETE FROM tbl_products WHERE id='{$iProducts[$i]}'";
			$bFlag = $objDb->execute($sSQL);

			if ($bFlag == true)
			{
				$sSQL  = "DELETE FROM tbl_product_documents WHERE product_id='{$iProducts[$i]}'";
				$bFlag = $objDb->execute($sSQL);
			}
			
			if ($bFlag == false)
				break;
		}

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");

			if (count($iProducts) > 1)
				print "success|-|The selected Product Records have been Deleted successfully.";

			else
				print "success|-|The selected Product Record has been Deleted successfully.";


			for ($i = 0; $i < count($sFiles); $i ++)
				@unlink($sRootDir.PRODUCTS_DOC_DIR.$sFiles[$i]);

			for ($i = 0; $i < count($sPictures); $i ++)
			{
				@unlink($sRootDir.PRODUCTS_IMG_DIR.$sPictures[$i]);
				@unlink($sRootDir.PRODUCTS_IMG_DIR."thumbs/".$sPictures[$i]);
			}

			for ($i = 0; $i < count($sDocuments); $i ++)
			{
				@unlink($sRootDir.PRODUCTS_DOC_DIR.$sDocuments[$i]);
				@unlink($sRootDir.PRODUCTS_IMG_DIR.$sDocuments[$i]);
			}
		}

		else
		{
			print "error|-|An error occured while processing your request, please try again.";

			$objDb->execute("ROLLBACK");
		}
	}

	else
		print "info|-|Inavlid Inspection Record Delete request.";


	$objDb->close( );
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>