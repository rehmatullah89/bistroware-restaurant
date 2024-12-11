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


	if ($sUserRights["Edit"] != "Y")
		exitPopup(true);


	$iFloorId   = IO::intValue("FloorId");
	$iIndex     = IO::intValue("Index");
        
        $sStoresList = getList("tbl_stores", "id", "name");

	if ($_POST)
		@include("update-floor.php");


	$sSQL = "SELECT * FROM tbl_floors WHERE id='$iFloorId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sTitle     = $objDb->getField(0, "name");
        $fWidth     = $objDb->getField(0, "width");
        $fLength    = $objDb->getField(0, "length");
        $sPicture   = $objDb->getField(0, "picture");
        $iStoreId   = $objDb->getField(0, "store_id");
        $sStatus    = $objDb->getField(0, "status");
        
        
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
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-floor.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
                <td width="600">
                                <br/>
                                    
                                  <label for="txtFloor">Floor Title</label>
				  <div><input type="text" name="txtFloor" id="txtFloor" value="<?= $sTitle ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>
                                  
                                   <label for="txtFloorWidth">Floor Width</label>
				  <div><input type="text" name="txtFloorWidth" id="txtFloorWidth" value="<?= $fWidth ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>
                                  
                                  <label for="txtFloorLength">Floor Length</label>
				  <div><input type="text" name="txtFloorLength" id="txtFloorLength" value="<?= $fLength ?>" size="20" class="textbox" /></div>
												  
				  <div class="br10"></div>

				  <label for="filePicture">Floor Picture<span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.FLOORS_IMG_DIR.$sPicture).'" class="colorbox">'.$sPicture.'</a>)')) ?></span></label>
				  <div><input type="file" name="filePicture" id="filePicture" value="" maxlength="20" size="8" class="textbox" /></div>
                                  <div class="br10"></div>
                                  
				  <label for="ddStore">Store</label>

				  <div>
				    <select name="ddStore" id="ddStore">
					  <option value=""></option>
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
	$sSQL = "SELECT * FROM tbl_floor_files WHERE floor_id='$iFloorId' ORDER BY id";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	if ($iCount > 0)
	{
?>
		  <h3>Additional Files</h3>

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
				if (@file_exists($sRootDir.FLOORS_IMG_DIR.$sFile))
				{
?>
	    	  <a href="<?= (SITE_URL.FLOORS_IMG_DIR.$sFile) ?>" class="colorbox"><?= substr($sFile, strlen("{$iFloorId}-{$iFile}-")) ?></a>
<?
				}

				else
				{
?>
	    	  <a href="<?= (SITE_URL.FLOORS_IMG_DIR.$sFile) ?>" class="colorbox"><?= substr($sFile, strlen("{$iFloorId}-{$iFile}-")) ?></a>
<?
				}
			}

			else
			{
?>
		  	  <a href="<?= $sCurDir ?>/download-floor-file.php?Id=<?= $iFile ?>&File=<?= $sFile ?>"><?= substr($sFile, strlen("{$iFloorId}-{$iFile}-")) ?></a>
<?
			}
?>
		  	  &nbsp;-&nbsp;
		  	  <b><a href="<?= $sCurDir ?>/delete-floor-file.php?FloorId=<?= $iFloorId ?>&FileId=<?= $iFile ?>">x</a></b>
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
	$objDbGlobal->close( );

	@ob_end_flush( );
?>