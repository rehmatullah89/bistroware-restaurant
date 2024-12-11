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
                width: 42px;
                max-height: 25px;
                color: #8C8C91;
                margin-left: 4px;
                left: 0;
                bottom: 0;
                font-weight: 600;
                padding: 5px;
                z-index: 2;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                margin-bottom: 40px;
            }
            
            .tableID {
                display: block;
                position: absolute;
                width: 25px;
                left: 0;
                bottom: 0;
                margin-bottom: 4em;
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
                padding: 5px;
                font-size: 12px;
                font-weight: bold;
                line-height: 1;
                text-transform: uppercase;
                background-color: #0A3558;
                border-radius: 4px;
                cursor: pointer;
                color: white;
                text-decoration: none;
                border: 1px solid black;
            }

            .button > span{
                color: white;
                font-size: 10px;
                font-weight: bold;
                font-family: verdana, arial, sans-serif !important;
            }

            .button:hover{
                background-color: white;
                color: #0A3558;
                font-weight: bold;
            }  
            
            #colorbox{
                position:fixed !important;
                top:10px  !important;
                left:200px  !important;
                z-index:9999  !important;
                overflow:hidden  !important;
              }
            
    </style>
     <link type="text/css" rel="stylesheet" href="css/jquery.colorbox.css" />
    <script type="text/javascript" src="scripts/jquery.colorbox.js"></script>
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
                        <a href="<?= $sCurDir ?>/display-floor3.php?FloorId=<?= $iFloor ?>" class="icnFloor button" style=" text-decoration:none; margin: 5px; <?=($iFloorId == $iFloor?'border: 1px solid red;':'')?>"><?=$sFloor?></a>&nbsp;
<?
                    }
?>
                    </div>                    
		  <div id="droppable" class="droppableClass" style="background-image:url(<?=SITE_URL.FLOORS_IMG_DIR.$sPicture?>); background-size: 100% 100%; background-repeat: no-repeat;">
                    <p>&nbsp;</p>                    
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
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iImage' AND item_type='C'") -49;  
                                
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
                                $iXCoordinates = getDbValue("cordinates_x", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") -15;
                                $iYCoordinates = getDbValue("cordinates_y", "tbl_floor_items", "floor_id='$iFloorId' AND item_id='$iTable' AND item_type='T'") - 49;
                                $CurrentOrders = getDbValue("COUNT(1)", "tbl_orders", "table_id='$iTable' AND status='A' AND created_at LIKE '".date('Y-m-d')."%'");
                                
                                list($width, $height) = getimagesize(SITE_URL.TABLES_IMG_DIR.$sTable);
?>
                                <div id="T_<?=$iTable?>" class="draggable2" style="left:<?=$iXCoordinates.'px'?>; top:<?=$iYCoordinates.'px'?>; position: absolute !important;">
                                     <p>
<?
                                        if($CurrentOrders > 0)
                                        {
                                            $iMaxServeTime = getDbValue("Max(p.cooking_time)", "tbl_products p, tbl_orders o, tbl_order_details od", "o.id=od.order_id AND p.id=od.product_id AND o.status!='C' AND o.table_id='$iTable'");
                                            $iCurrOrderTime= getDbValue("o.created_at", "tbl_products p, tbl_orders o, tbl_order_details od", "o.id=od.order_id AND p.id=od.product_id AND o.status!='C' AND o.table_id='$iTable'");
                                            $sCurrentTime = date("Y-m-d H:i:s");                                                    
                                            $Difference   = round(abs(strtotime($sCurrentTime) - strtotime($iCurrOrderTime)) / 60,0);
?>
                                         <img class="tableID" id="<?=$iTable?>" width="70" src="<?=SITE_URL."images/icons/odInfo.png"?>"/>
                                         <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>" style="<?=($Difference > $iMaxServeTime)?'border: 2px solid red;':''?>"/>
                                         <figcaption class="wp-caption-text"><?=$sTableTitles[$iTable]?></figcaption>
<?
                                        }else
                                        {
?>
                                         <img src="<?=SITE_URL.TABLES_IMG_DIR.$sTable?>"/>
                                         <figcaption class="wp-caption-text"><?=$sTableTitles[$iTable]?></figcaption>
<?
                                        }
?>                                         
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
        
        $(".tableID").on("click", function(event)
	{
		var iTableId = this.id;

		$.colorbox({ href:("api/display-order-details.php?TableId=" + iTableId), width:"500px", height:"550px", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
	});
        
                
  });
    </script>
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>