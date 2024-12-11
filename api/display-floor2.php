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

        $sLink          = IO::strValue("Link");
	$iFloorId       = IO::intValue("FloorId");
        $sReserveDate   = (IO::strValue("ReserveDate") == ""?date("m/d/Y"):IO::strValue("ReserveDate"));
        $sResTime       = IO::strValue("Time");
        $sReserveTime   = substr($sResTime, 0, -2);
        $TimeFormat     = substr($sResTime, -2);

        //if($sLink != "Y" && $TimeFormat == 'pm')
        //    $sReserveTime = date("H:i", (strtotime($sReserveTime)+(3600*12)));
        
        
        $sReservePeople = IO::intValue("People");
        
	$sSQL = "SELECT * FROM tbl_floors WHERE id='$iFloorId'";
	$objDb->query($sSQL);

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
            #draggable {text-align: justify;}
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
                padding-bottom: 2.8em;
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
                margin-bottom: 3.5em;
                margin-left: 0.5em;
                font-weight: 500;
                z-index: 5;
                -webkit-box-sizing: border-box;
            }
            
            .ui-datepicker-trigger{
                margin-bottom: -5px;
            }
            
          
            .button {
                font-family: verdana, arial, sans-serif !important;
                padding: 3px 2px;
                font-size: 12px;
                font-weight: bold;
                line-height: 1;
                text-transform: uppercase;
                background-color: #262526;
                border-radius: 4px;
                cursor: pointer;
            }

            .button > span{
                color: white;
                font-size: 10px;
                font-weight: bold;
                font-family: verdana, arial, sans-serif !important;
            }

            .button:hover{
                background-color: #c48527;    
            }  
    </style>
</head>

    <body class="popupBg" style="position: static !important; width:1100px;">

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
                <td  style="position: static !important;">
                    <div align="left" style="display:inline;">
<?
                    foreach($sFloorsList as $iFloor => $sFloor)
                    {                        
?>
                        <a href="<?= $sCurDir ?>/display-floor2.php?FloorId=<?= $iFloor ?>&ReserveDate=<?=$sReserveDate?>&Time=<?=$sResTime?>&People=<?=$sReservePeople?>" class="icnFloor button" style="text-decoration: none; color: white; padding: 5px; border-radius: 3px; font-size: 10px; font-family: verdana, arial, sans-serif; margin: 5px; <?=($iFloorId == $iFloor?'border: 1px solid red;':'')?>"><?=$sFloor?></a>&nbsp;
<?
                    }
?>
                    </div>
                    <div align="right" style="display:inline;">
                        <span style="margin-left: 10px; color: #1a1919;"><i><b>Click Below Table Pins to Reserve!</b></i></span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/lblue.png' ?>" />Free Tables</span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/orange.png' ?>" />Partially Free</span>
                        <span><img width="20" src="<?= SITE_URL.'images/icons/red.png' ?>" />Fully Reserved</span>
                    </div>
                    <div id="droppable" class="droppableClass" style="background-image:url(<?=SITE_URL.FLOORS_IMG_DIR.$sPicture?>); background-size: 100% 100%; background-repeat: no-repeat;">
                      <p></p>                    
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
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'") +5;
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'") -16;  
                                
                                list($width, $height) = getimagesize(SITE_URL.FLOORS_IMG_DIR.$sImage);
?>
                                <div id="C_<?=$iImage?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>; position: absolute !important;">
                                     <p><img src="<?=SITE_URL.FLOORS_IMG_DIR.$sImage?>"/></p>
                                </div>
<?                      
                            }
                        }
                        
                        foreach($sTablesList as $iTable => $sTable)
                        {
                            if (@in_array($iTable, $sDisplayedTables))
                            {
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") +5;
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") -16;
                                
                                $CurrentOrders          = 0;
                                $iTotalPossibleReserves = 0;
                                $OnlineReserved         = getDbValue("COUNT(1)", "tbl_reservations", "table_id='$iTable' AND status!='c' AND date_time LIKE '".date('Y-m-d', strtotime($sReserveDate))."%'");
                                
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
                                
                                
                                $sReserveDate = date('Y-m-d', strtotime($sReserveDate));
                                list($width, $height) = getimagesize(SITE_URL.TABLES_IMG_DIR.$sTable);
?>
                                <div id="T_<?=$iTable?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>; position: absolute !important;">
                                     <p>
                                         <a href='<?=SITE_URL."api/add-reservation.php?TableId={$iTable}&Reserves={$iTotalPossibleReserves}&ReserveDate={$sReserveDate}&ReserveTime={$sReserveTime}&People={$sReservePeople}"?>'><img class="tableID" src="<?=SITE_URL."images/icons/".$sIcon?>"/></a>
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
        
    jQuery(function() {  
        
<?
            foreach($sImagesList as $iImage => $sImage)
            {
                if (@in_array($iImage, $sDisplayedItems))
                {
?>
                    jQuery("#C_<?=$iImage?>").data('hasBeenDropped', true);
<?
                }
            }
            
            foreach($sTablesList as $iTable => $sTable)
            {
                if (@in_array($iTable, $sDisplayedTables))
                {
?>
                    jQuery("#T_<?=$iTable?>").data('hasBeenDropped', true);
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