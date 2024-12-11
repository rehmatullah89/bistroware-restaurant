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


	$iTableId   = IO::intValue("TableId");
	$iIndex     = IO::intValue("Index");
        
        $sFloorsList = getList("tbl_floors", "id", "name");

	if ($_POST)
		@include("update-table.php");


	$sSQL = "SELECT * FROM tbl_tables WHERE id='$iTableId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$sTitle         = $objDb->getField(0, "table_no");
        $sSeatsCapacity = $objDb->getField(0, "total_seats");
        $iFloorId       = $objDb->getField(0, "floor_id");
        $sPositionX     = $objDb->getField(0, "position_x");
        $sPositionY     = $objDb->getField(0, "position_y");
        $sPicture       = $objDb->getField(0, "picture");
        $sStatus        = $objDb->getField(0, "status");
        
        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-floor.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="TableId" id="TableId" value="<?= $iTableId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
                <td width="600">
                        <br/>

                       <label for="txtTableTitle">Table Title</label>
                       <div><input type="text" name="txtTableTitle" id="txtTableTitle" value="<?= $sTitle ?>" size="20" class="textbox" /></div>

                       <div class="br10"></div>

                        <label for="txtSeatsCapacity">No. Of Seats</label>
                       <div><input type="text" name="txtSeatsCapacity" id="txtSeatsCapacity" value="<?= $sSeatsCapacity ?>" size="20" class="textbox" /></div>

                       <div class="br10"></div>

                       <label for="txtXCordinates">Table Poistion X-Cordinates</label>
                       <div><input type="text" name="txtXCordinates" id="txtXCordinates" value="<?= $sPositionX ?>" size="20" class="textbox" /></div>

                       <div class="br10"></div>

                       <label for="txtYCordinates">Table Poistion Y-Cordinates</label>
                       <div><input type="text" name="txtYCordinates" id="txtYCordinates" value="<?= $sPositionY ?>" size="20" class="textbox" /></div>

                       <div class="br10"></div>
                       <label for="filePicture">Table Picture<span><?= (($sPicture == "") ? '' : ('(<a href="'.(SITE_URL.TABLES_IMG_DIR.$sPicture).'" class="colorbox">'.$sPicture.'</a>)')) ?></span></label>
                       <div><input type="file" name="filePicture" id="filePicture" value="" maxlength="20" size="8" class="textbox" /></div>
                       <div class="br10"></div>

                       <label for="ddFloor">Floor</label>

                       <div>
                         <select name="ddFloor" id="ddFloor">
                               <option value=""></option>
<?
     foreach ($sFloorsList as $iFloor => $sFloor)
     {
?>
                               <option value="<?= $iFloor ?>"<?= (($iFloorId == $iFloor) ? ' selected' : '') ?>><?= $sFloor ?></option>
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