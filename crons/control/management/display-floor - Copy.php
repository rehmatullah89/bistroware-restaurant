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
    <style>
          
            #droppable { width:97%; height:600px;border:1px solid red; padding: 0.5em; float: left; margin: 20px;}
            #draggable {text-align: justify; width:1200px; border: 1px solid green; background: lightcoral;}
            .draggable2{
                display: inline-block; 
                margin: 5px;
                padding: 2px;
                
                position: relative;

            }            
            
            .draggable2 img{
                display: block;
            }
            
            .wp-caption-text {
                display: block;
                position: absolute;
                width: 100%;
                color: #8C8C91;
                left: 0;
                bottom: 0;
                padding-bottom: 2.2em;
                padding-left: 0.7em;
                font-weight: 700;
                z-index: 2;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }
    </style>
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
                <td >
                    
		  <div id="droppable" class="droppableClass" style="background-image:url(<?=SITE_URL.FLOORS_IMG_DIR.$sPicture?>); background-size: 1159px 612px; background-repeat: no-repeat;">
                    <p>Drop here</p>                    
                  </div>                    
		</td>    
            </tr>
            <tr>
              <td>
                  <div id="draggable">
<?
                        $sImagesList = getList("tbl_floor_files", "id", "file", "floor_id='$iFloorId'");
                        $sTablesList = getList("tbl_tables", "id", "picture", "floor_id='$iFloorId'");
                        $sTableTitles= getList("tbl_tables", "id", "table_no", "floor_id='$iFloorId'");
                        
                        $sDisplayedItems  = getList("tbl_floor_items", "id", "item_id", "floor_id='$iFloorId' AND item_type = 'C'");
                        $sDisplayedTables = getList("tbl_floor_items", "id", "item_id", "floor_id='$iFloorId' AND item_type = 'T'");
                        
                        
                        foreach($sImagesList as $iImage => $sImage)
                        {
                            if (@in_array($iImage, $sDisplayedItems))
                            {
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'");
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'");  
                                
                                list($width, $height) = getimagesize(SITE_URL.FLOORS_IMG_DIR.$sImage);
?>
                                <div id="C_<?=$iImage?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>;">
                                     <p><img src="<?=SITE_URL.FLOORS_IMG_DIR.$sImage?>" <?=($width>$height)?'height="40"':'width="40"'?>/></p>
                                </div>
<?                      
                            }
                            else
                            {
                                list($width, $height) = getimagesize(SITE_URL.FLOORS_IMG_DIR.$sImage);
?>
                                <div id="C_<?=$iImage?>" class="draggable2">
                                    <p><img src="<?=SITE_URL.FLOORS_IMG_DIR.$sImage?>" <?=($width>$height)?'height="40"':'width="40"'?>/></p>
                                </div>
<?
                            }
                        }
                        
                        foreach($sTablesList as $iTable => $sTable)
                        {
                            if (@in_array($iTable, $sDisplayedTables))
                            {
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'");
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'");
                                
                                list($width, $height) = getimagesize(SITE_URL.TABLES_IMG_DIR.$sTable);
?>
                                <div id="T_<?=$iTable?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>;">
                                     <p>
                                         <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>" <?=($width>$height)?'height="40"':'width="40"'?>/>
                                         <figcaption class="wp-caption-text"><?=$sTableTitles[$iTable]?></figcaption>
                                     </p>
                                </div>
<?                      
                            }
                            else
                            {            
                                list($width, $height) = getimagesize(SITE_URL.TABLES_IMG_DIR.$sTable);
?>
                                <div id="T_<?=$iTable?>" class="draggable2">
                                    <p>
                                        <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>" <?=($width>$height)?'height="40"':'width="40"'?>/>
                                        <figcaption class="wp-caption-text"><?=$sTableTitles[$iTable]?></figcaption>
                                    </p>
                                </div>
<?
                            }
                        }
                        
?>                  
                    </div>
                </td>
              </tr>
	</table>
  </form>
</div>

<script>
        
    $(function() {  
        
        $( ".draggable2" ).draggable(
        { 
            
	   revert:  function(dropped)
           {
             var $draggable = $(this),
                hasBeenDroppedBefore = $draggable.data('hasBeenDropped'),
                wasJustDropped = dropped && dropped[0].id == "droppable";
             
                if(wasJustDropped)
                {
                 // don't revert, it's in the droppable
                 return false;
                }             
                else
                {
                     if (hasBeenDroppedBefore)
                     {
                        var iItemId  = $(this).context.id;
                        var iFloorId = $("#FloorId").val();

                        //Ajax to Delete table position
                        $.post("ajax/management/remove-floor-item.php",
                        {     FloorId:iFloorId,
                              ItemId :iItemId
                            },

                            function (sResponse)
                            {
                                    showMessage("#GridMsg", sParams[0], sParams[1]);
                            },

                        "text");
                
                         // don't rely on the built in revert, do it yourself
                         $draggable.animate({ top: 0, left: 0 }, 'slow');
                         return false;
                     }

                    else
                    {
                         // just let the build in work, although really, you could animate to 0,0 here as well
                         return true;
                     }
                 }
        }
	}); 
        
        $( "#droppable" ).droppable({     
            activeClass: 'ui-state-hover',
            hoverClass: 'ui-state-active',
            drop: function(event, ui) {
                $(ui.draggable).data('hasBeenDropped', true);
               
                var offset  = ui.position;
                var xPos    = offset.left;
                var yPos    = offset.top;
                var iItemId = ui.helper.context.id;
                var iFloorId= $("#FloorId").val();
                //alert(xPos+","+yPos);
                //Ajax to add/update table position
                $.post("ajax/management/update-floor-item.php",
                {     FloorId:iFloorId,
                      ItemId :iItemId,
                      PosX   :xPos,
                      PosY   :yPos
                    },

                    function (sResponse)
                    {
                            showMessage("#GridMsg", sParams[0], sParams[1]);
                    },

                "text");
            }
        });
        
<?
            foreach($sImagesList as $iImage => $sImage)
            {
                if (@in_array($iImage, $sDisplayedItems))
                {
?>
                    $("#C_<?=$iImage?>").data('hasBeenDropped', true);
<?
                }
            }
            
            foreach($sTablesList as $iTable => $sTable)
            {
                if (@in_array($iTable, $sDisplayedTables))
                {
?>
                    $("#T_<?=$iTable?>").data('hasBeenDropped', true);
<?
                }
            }
?>
        
        
                
  });
    </script>
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>