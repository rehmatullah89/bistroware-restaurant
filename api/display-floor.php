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


	$iFloorId       = IO::intValue("FloorId");
        $sReserveDate   = (IO::strValue("sReserveDate") == ""?date("m/d/Y"):IO::strValue("sReserveDate"));
        
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
        
        $sFloorsList = getList("tbl_floors", "id", "name");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
    <style>
          
        body, p, div, td, span, a{
            position: static !important;
        }
        
            #droppable { width:980px; height:500px;border:1px solid black; padding: 0.5em; float: left; margin: 10px;}
            #draggable {text-align: justify; width:1010px; min-height: 500px; border: 1px solid green; background: lightcoral;}
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
                padding-left: 0.5em;
                font-weight: 600;
                z-index: 2;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }
            
            .tableID {
                display: block;
                position: absolute;
                width: 20px;
                left: 0;
                bottom: 0;
                margin-bottom: 3em;
                margin-left: 0.5em;
                font-weight: 500;
                z-index: 5;
                -webkit-box-sizing: border-box;
            }
            
            .ui-datepicker-trigger{
                margin-bottom: -5px;
            }
    </style>
</head>

    <body class="popupBg" style="position: static !important;">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
    <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data" style="margin-top: -15px; margin-left: -20px;">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">	  
            <tr valign="top">
                <td  style="position: static !important;">
                    <div align="left">
<?
                    foreach($sFloorsList as $iFloor => $sFloor)
                    {
?>
                        <a href="<?= $sCurDir ?>/display-floor.php?FloorId=<?= $iFloor ?>" class="icnFloor" style="margin: 5px; <?=($iFloorId == $iFloor?'border: 1px solid red;':'')?>"><?=$sFloor?></a>&nbsp;
<?
                    }
?>
                        <span>Reserve For :<input type="text" name="sReserveDate" id="sReserveDate" size="8" class="textbox" onclick="$('#sReserveDate').datepicker('show');" value="<?=$sReserveDate?>" readonly/>&nbsp;<input type="submit" id="SearchBtn" value="Search" /></span>
                    </div>
                    <div align="right">
                        <span style="margin-left: 10px; color: #1a1919;"><i><b>Click Below Table Pins to Reserve!</b></i></span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/lblue.png' ?>" />Free Tables</span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/orange.png' ?>" />Partially Free</span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/red.png' ?>" />Fully Reserved</span>
                    </div>
		  <div id="droppable" class="droppableClass" style="background-image:url(<?=SITE_URL.FLOORS_IMG_DIR.$sPicture?>); background-size: 100% 100%; background-repeat: no-repeat;">
                    <p>Drop here</p>                    
                  </div>                    
		</td>    
            </tr>
            <tr>
              <td style="position: static !important;">
                  <div id="draggable">
<?
                        $sImagesList = getList("tbl_floor_files", "id", "file", "floor_id='$iFloorId'", "id");
                        $sTablesList = getList("tbl_tables", "id", "picture", "floor_id='$iFloorId'", "id");
                        $sTableTitles= getList("tbl_tables", "id", "table_no", "floor_id='$iFloorId'", "id");
                        $sTableSeats = getList("tbl_tables", "id", "total_seats", "floor_id='$iFloorId'", "id");
                       
                        $sDisplayedItems  = getList("tbl_floor_items", "id", "item_id", "floor_id='$iFloorId' AND item_type = 'C'");
                        $sDisplayedTables = getList("tbl_floor_items", "id", "item_id", "floor_id='$iFloorId' AND item_type = 'T'");
                        
                        
                        foreach($sImagesList as $iImage => $sImage)
                        {
                            if (@in_array($iImage, $sDisplayedItems))
                            {
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'") - 15;
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'") + 5;  
                                
                                list($width, $height) = getimagesize(SITE_URL.FLOORS_IMG_DIR.$sImage);
?>
                                <div id="C_<?=$iImage?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>; position: absolute !important;">
                                     <p><img src="<?=SITE_URL.FLOORS_IMG_DIR.$sImage?>"/></p>
                                </div>
<?                      
                            }
                            else
                            {
                                list($width, $height) = getimagesize(SITE_URL.FLOORS_IMG_DIR.$sImage);
?>
                                <div id="C_<?=$iImage?>" class="draggable2">
                                    <p><img src="<?=SITE_URL.FLOORS_IMG_DIR.$sImage?>"/></p>
                                </div>
<?
                            }
                        }
                        
                        foreach($sTablesList as $iTable => $sTable)
                        {
                            if (@in_array($iTable, $sDisplayedTables))
                            {
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") -15;
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") +5;
                                
                                 
                                $CurrentOrders          = 0;
                                $iTotalPossibleReserves = 0;
                                $OnlineReserved         = getDbValue("COUNT(1)", "tbl_reservations", "table_id='$iTable' AND status='R' AND date_time LIKE '".date('Y-m-d', strtotime($sReserveDate))."%'");
                                
                                if(strtotime($sReserveDate) == strtotime(date("m/d/Y")))
                                {
                                    
                                    $StartTime  = strtotime(date('Y-m-d H:i:s'));
                                    $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");

                                    $diffHours          = round(($EndTime - $StartTime) / 3600);
                                    $diffHours          = ($diffHours >9?9:$diffHours);
                                    $PossibleReserves   = floor($diffHours / 2);

                                    $CurrentOrders          = getDbValue("COUNT(1)", "tbl_orders", "table_id='$iTable' AND status='A' AND created_at LIKE '".date('Y-m-d')."%'");
                                    $CurrentOrders          = ($CurrentOrders > 0?1:0);
                                    $iTotalPossibleReserves = $PossibleReserves - ($CurrentOrders + $OnlineReserved);                                 
                                }
                                else  
                                    $iTotalPossibleReserves = 4 - $OnlineReserved;                                
                                
                               
                                if($CurrentOrders == 0 && $OnlineReserved == 0)
                                    $sIcon = "lblue.png";
                                else if($iTotalPossibleReserves <= 0)
                                    $sIcon = "red.png";
                                else 
                                    $sIcon = "orange.png";
                                
                                list($width, $height) = getimagesize(SITE_URL.TABLES_IMG_DIR.$sTable);
?>
                                <div id="T_<?=$iTable?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>; position: absolute !important;">
                                     <p>
                                         <img class="tableID" id="<?=$iTable?>" res="<?=$iTotalPossibleReserves?>" date="<?=date('Y-m-d', strtotime($sReserveDate))?>" src="<?=SITE_URL."images/icons/".$sIcon?>"/>
                                         <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>"/>
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
                                        <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>"/>
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
        
        $("#sReserveDate").datepicker(
	{
                buttonImage     : "images/icons/calendar.gif",
		buttonImageOnly : true,
                minDate         : 0,
                formatDate      : 'Y-m-d'

	});
        
        $("#SearchBtn").button({ icons:{ primary:'ui-icon-disk' } });
        
        $(".icnFloor").button({ icons:{ primary:'ui-icon-arrowrefresh-1-e' } });
        
        var Tables   = <?php echo json_encode($sTablesList) ?>;

        $.each(Tables, function(key, val) {
               $("#T_"+key).click(function(){
                  return key;
               });
        });
        
        $(".tableID").click(function(event){
                var iTableId = $(this).attr("id");
                var iReserves= $(this).attr("res");
                var sResDate = $(this).attr("date");
                
		$.colorbox({ href:("management/add-reservation.php?TableId=" + iTableId+"&Reserves="+iReserves+"&ReserveDate="+sResDate), width:"55%", height:"80%", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
        });
        
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

                        $("#"+iItemId).css("position", "relative");
                        //Ajax to Delete table position
                        $.post("ajax/management/remove-floor-item.php",
                        {     FloorId:iFloorId,
                              ItemId :iItemId
                            },

                            function (sResponse)
                            {
                                    //showMessage("#GridMsg", sResponse[0], sResponse[1]);
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
               
                
                var offset  = ui.offset;
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
                            //showMessage("#GridMsg", sResponse[0], sResponse[1]);
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