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


	if ($sUserRights["Add"] != "Y")
		exitPopup(true);


	$iTableId           = IO::intValue("TableId");
        $iFloorId           = getDbValue("floor_id", "tbl_tables", "id='$iTableId'");
        $iAvailableReserves = IO::intValue("Reserves");
        $sResDate           = IO::strValue("ReserveDate");
	$iIndex             = IO::intValue("Index");


	if ($_POST)
		@include("save-reservation.php");

        
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <style type="text/css">
.form-style-2{
    max-width: 500px;
    padding: 10px 12px 10px 20px;
    font: 13px Arial, Helvetica, sans-serif;
}
.form-style-2-heading{
    font-weight: bold;
    font-style: italic;
    border-bottom: 2px solid #ddd;
    margin-bottom: 20px;
    font-size: 16px;
    padding-bottom: 3px;
}
.form-style-2 label{
    display: block;
    margin: 0px 0px 15px 0px;
}
.form-style-2 label > span{
    width: 170px;
    font-weight: bold;
    float: left;
    color: black;
    font-size: 12px;
    padding-top: 8px;
    padding-right: 5px;
}
.form-style-2 span.required{
    color:red;
}
.form-style-2 .tel-number-field{
    width: 40px;
    text-align: center;
}
.form-style-2 input.input-field{
    width: 48%;
    
}

.form-style-2 input.input-field, 
.form-style-2 .tel-number-field, 
.form-style-2 .textarea-field, 
 .form-style-2 .select-field{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    border: 1px solid #C2C2C2;
    box-shadow: 1px 1px 4px #EBEBEB;
    -moz-box-shadow: 1px 1px 4px #EBEBEB;
    -webkit-box-shadow: 1px 1px 4px #EBEBEB;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    padding: 7px;
    outline: none;
}
.form-style-2 .input-field:focus, 
.form-style-2 .tel-number-field:focus, 
.form-style-2 .textarea-field:focus,  
.form-style-2 .select-field:focus{
    border: 1px solid #0C0;
}
.form-style-2 .textarea-field{
    height:100px;
    width: 55%;
}
.form-style-2 input[type=submit],
.form-style-2 input[type=button]{
    border: none;
    padding: 8px 15px 8px 15px;
    background: #FF8500;
    color: #fff;
    box-shadow: 1px 1px 4px #DADADA;
    -moz-box-shadow: 1px 1px 4px #DADADA;
    -webkit-box-shadow: 1px 1px 4px #DADADA;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
}
.form-style-2 input[type=submit]:hover,
.form-style-2 input[type=button]:hover{
    background: #EA7B00;
    color: #fff;
}
</style>  
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/add-reservation.js"></script>
</head>

<body class="popupBg" style="<?=($iAvailableReserves == 0)?'background-color:red;':''?>">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
        <input type="hidden" name="TableId" id="TableId" value="<?= $iTableId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
                <td>
                                <br/>
<?
                                if($iAvailableReserves <= 0)
                                {
?>
                                <div style="color:white; font-size: 16px; text-align: center; font-weight: bold;">We are sorry, This table is fully booked for the day!<br/> We request you to choose another table.</div>
<?
                                }else
                                {
                                    
?>
                                  <div class="form-style-2"> 
                                       <div class="form-style-2-heading">Please Provide your information for Reservation</div>
<?
                                    if($iAvailableReserves > 0)
                                    {
                                        if(strtotime($sResDate) == strtotime(date("Y-m-d")))
                                        {
                                            $StartTime  = strtotime(date('Y-m-d H:i:s'));
                                            $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");

                                            $diffHours = round(($EndTime - $StartTime) / 3600);
                                            $diffHours = ($diffHours >9?9:$diffHours);
                                            $PossibleReserves   = floor($diffHours / 2);

                                            $CurrentOrders          = getDbValue("COUNT(1)", "tbl_orders", "table_id='$iTableId' AND status='A' AND created_at LIKE '".date('Y-m-d')."%'");
                                            $CurrentOrders          = ($CurrentOrders > 0?1:0);
                                            $CurrentReserves        = getDbValue("COUNT(1)", "tbl_reservations", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".date('Y-m-d')."%'");                                
                                            $iTotalPossibleReserves = $PossibleReserves - ($CurrentOrders + $CurrentReserves);                                    

                                            $sMessage = "Welcome! You can reserve this table any time between";

                                            if($iTotalPossibleReserves == 4)
                                                $sMessage .= " 1pm to 4pm OR From 7pm to 1am.";
                                            else if($iTotalPossibleReserves == 3 && $CurrentOrders == 1)
                                                $sMessage .= " 7pm to 1am.";
                                            else if($iTotalPossibleReserves >0)
                                            {
                                                $sAllStartReservations  = getList("tbl_reservations", "id", "date_time", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".date('Y-m-d')."%'", "date_time");
                                                $sAllEndReservations    = getList("tbl_reservations", "id", "end_time", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".date('Y-m-d')."%'", "date_time");
                                                
                                                $sPrevRes   = "";
                                                $iPrevRes   = 0;
                                                $TempTime4  = strtotime(date('Y-m-d')." 16:00:00");
                                                $TempTime7  = strtotime(date('Y-m-d')." 19:00:00");
                                                    
                                                //if we have some reservations then check
                                                foreach($sAllStartReservations as $iResId => $sResDateTime)
                                                {
                                                    if($sPrevRes == "")
                                                    {
                                                        $StartTime  = strtotime(date('Y-m-d H:i:s'));
                                                        $StartTime  = ($StartTime < strtotime(date("Y-m-d 13:00:00")))?strtotime(date("Y-m-d 13:00:00")):$StartTime;
                                                        $StartTime  = ($StartTime > $TempTime4 && $StartTime <= $TempTime7)?$TempTime7:$StartTime;
                                                    }else
                                                    {
                                                        $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):5400);
                                                        $StartTime  = ($StartTime >= $TempTime4 && $StartTime <= $TempTime7)?$TempTime7:$StartTime;
                                                    }
                                                    
                                                    $EndTime    = strtotime($sResDateTime);

                                                    if($StartTime <= $EndTime) // if time is less than 4pm or 7pm, check slot
                                                        $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm.";
                                                    
                                                    $iPrevRes   = $iResId;
                                                    $sPrevRes   = $sResDateTime;

                                                }
                                                
                                                if($sPrevRes != "")
                                                {
                                                    $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):5400);
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= " ".(date("H", ($StartTime+5400)))."pm to ".(date("H", ($EndTime)))."am.";
                                                }else {
                                                    
                                                    $StartTime  = strtotime(date('Y-m-d H:i:s'));
                                                    $StartTime  = ($StartTime < strtotime(date("Y-m-d 13:00:00")))?strtotime(date("Y-m-d 13:00:00")):$StartTime;
                                                    $StartTime  = ($StartTime > $TempTime4 && $StartTime < $TempTime7)?$TempTime7:$StartTime;
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= "  ".(date("H", ($StartTime+5400)))."pm to ".(date("H", ($EndTime)))."am.";
                                                }
                                                
                                            }
                                            else
                                            {
?>
                                                <div style="color:white; font-size: 16px; text-align: center; font-weight: bold;">We are sorry, This table is fully booked for the day!<br/> We request you to choose another table.</div>
<?
                                            }
                                        }
                                        else
                                        {
                                            /////ELSE///////
                                            $StartTime          = strtotime(date($sResDate.' H:i:s'));
                                            $EndTime            = strtotime(date('Y-m-d', strtotime($sResDate.' +1 day'))." 1:00:00");
                                            $diffHours          = round(($EndTime - $StartTime) / 3600);
                                            $diffHours          = ($diffHours >9?9:$diffHours);
                                            $PossibleReserves   = floor($diffHours / 2);

                                            $iTotalPossibleReserves = $PossibleReserves - getDbValue("COUNT(1)", "tbl_reservations", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".$sResDate."%'");                                
                                            $sMessage = "Welcome! You can reserve this table any time between";

                                            if($iTotalPossibleReserves == 4)
                                                $sMessage .= " 1pm to 4pm OR From 7pm to 1am.";
                                            else if($iTotalPossibleReserves >0)
                                            {
                                                $sAllStartReservations  = getList("tbl_reservations", "id", "date_time", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".$sResDate."%'", "date_time");
                                                $sAllEndReservations    = getList("tbl_reservations", "id", "end_time", "table_id='$iTableId' AND status!='C' AND date_time LIKE '".$sResDate."%'", "date_time");
                                                
                                                $sPrevRes   = "";
                                                $iPrevRes   = 0;
                                                $TempTime4  = strtotime($sResDate." 16:00:00");
                                                $TempTime7  = strtotime($sResDate." 19:00:00");
                                                    
                                                //if we have some reservations then check
                                                foreach($sAllStartReservations as $iResId => $sResDateTime)
                                                {
                                                    if($sPrevRes == "")
                                                    {
                                                        $StartTime  = strtotime(date($sResDate.' H:i:s'));
                                                        $StartTime  = ($StartTime < strtotime(date($sResDate." 13:00:00")))?strtotime(date($sResDate." 13:00:00")):$StartTime;
                                                        $StartTime  = ($StartTime > $TempTime4 && $StartTime < $TempTime7)?$TempTime7:$StartTime;
                                                    }else
                                                    {
                                                        $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):5400);
                                                        $StartTime  = ($StartTime >= $TempTime4 && $StartTime <= $TempTime7)?$TempTime7:$StartTime;
                                                    }
                                                    
                                                    $EndTime    = strtotime($sResDateTime);
                                                    
                                                    if($StartTime <= $EndTime) // if time is less than 4pm or 7pm, check slot
                                                        $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm.";
                                                    
                                                    $iPrevRes   = $iResId;
                                                    $sPrevRes   = $sResDateTime;

                                                }
                                                
                                                if($sPrevRes != "")
                                                {
                                                    $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):5400);
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime($sResDate.' +1 day'))." 1:00:00");
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= " ".(date("H", ($StartTime+5400)))."pm to ".(date("H", ($EndTime)))."am.";
                                                }else {
                                                    
                                                    $StartTime  = strtotime(date($sResDate.' H:i:s'));
                                                    $StartTime  = ($StartTime < strtotime(date($sResDate." 13:00:00")))?strtotime(date($sResDate." 13:00:00")):$StartTime;
                                                    $StartTime  = ($StartTime > $TempTime4 && $StartTime < $TempTime7)?$TempTime7:$StartTime;
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime($sResDate.' +1 day'))." 1:00:00");
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                        $sMessage .= "  ".(date("H", ($StartTime+5400)))."pm to ".(date("H", ($EndTime)))."am.";
                                                }
                                                
                                            }else
                                            {
?>
                                                <div style="color:white; font-size: 16px; text-align: center; font-weight: bold;">We are sorry, This table is fully booked for the day!<br/> We request you to choose another table.</div>
<?
                                            }
                                            ////END ELSE//////
                                        }
?>
                                   <div style="width: 99%; align-content: center; background-color: lightgoldenrodyellow; border-radius: 5px; min-height: 80px; padding: 5px;">
                                       <span style="background-color: lightsteelblue; color: white; font-size: 12px; font-weight: bold; text-align: center; padding: 5px; border-radius: 3px; margin-left: 5px; line-height: 2px;">Available Reservation Slots</span>
                                       <br/><br/><span style="margin-left: 20px; color: darkcyan;"><i><b><?=$sMessage?></b></i></span>
                                   </div><br/>
<?
                                    }
?>
                                  <label for="txtName"><span>Name <span class="required">*</span></span><input type="text" name="txtName" id="txtName" value="<?= IO::strValue("txtName") ?>" size="20" class="textbox" /></label>
				  								  
				  <div class="br10"></div>
                                  
                                  <label for="txtPhone"><span>Phone <span class="required">*</span></span><input type="text" name="txtPhone" id="txtPhone" value="<?= IO::strValue("txtPhone") ?>" size="20" class="textbox" /></label>
				  
                                  <div class="br10"></div>
                                  
                                  <label for="txtEmail"><span>Email</span><input type="text" name="txtEmail" id="txtEmail" value="<?= IO::strValue("txtEmail") ?>" size="20" class="textbox" /></label>
				  
                                  <div class="br10"></div>
                                  
                                  <label for="txtGuests"><span>No. of Guests <span class="required">*</span></span><input type="text" name="txtGuests" id="txtGuests" value="<?= IO::strValue("txtGuests") ?>" size="20" class="textbox" /></label>
				  
				  <div class="br10"></div>
                                  
                                  <label for="txtDateTime"><span>Reservation Date <span class="required">*</span></span><input type="text" name="txtDateTime" id="txtDateTime"  class="textbox" value="<?=date("Y-m-d", strtotime($sResDate))?>" readonly /></label>
				  
                                  <div class="br10"></div>
                                    <label for="txtResTime"><span>Reservation Time</span>
                                        <select style="width:165px;" id="txtResTime" name="txtResTime">
                                              <?php
					//Time Loop
					$inc = 30 * 60;
					$start = ( strtotime( '1PM' ) ); // 1  PM
					$end = ( strtotime( '11:59PM' ) ); // 11:30 PM


					for ( $i = $start; $i <= $end; $i += $inc ) {
						// to the standart format
						$time      = date( 'g:i a', $i );
						$timeValue = date( 'g:ia', $i );
						$default   = "7:00pm";
                                                
                                                if($time == '4:00 pm' || $time == '4:30 pm' || $time == '5:00 pm' || $time == '5:30 pm' || $time == '6:00 pm' || $time == '6:30 pm')
                                                    continue;
                                                
						echo "<option value=\"$timeValue\" " . ( ( $timeValue == $default ) ? ' selected="selected" ' : "" ) . ">$time</option>" . PHP_EOL;
					}

					?>
                                          </select>
                                    </label>
                                  
                                  <div class="br10"></div>
                                  <label for="txtStayHours"><span>Expected Stay Hours</span><input style="width:165px !important;" min="0" step="1" id="txtStayHours" name="txtStayHours" value="<?= IO::strValue("txtStayHours")?>" size="5"/>&nbsp;<button id="setvalue1">1</button>&nbsp;<button id="setvalue2">2</button>&nbsp;<button id="setvalue3">3</button>&nbsp;<button id="setvalue4">4</button></label>
                                  
				  <br />
				  <button id="BtnSave">Save Reservation</button>
<!--                                  <button id="BtnBack"><span class="ui-icon-arrowthick-1-nw"></span>Back</button> -->
				  <button id="BtnCancel">Cancel</button>
                                   </div><br/>
<?
                                }
?>
                    </td>                                  
            </tr>
	</table>
  </form>
</div>

  <script>
  $( function() {
      
    
    $("#txtDateTime").datepicker(
    {
            showOn          : "both",
            buttonImage     : "images/icons/calendar.gif",
            minDate         : 0,
            buttonImageOnly : true,
            dateFormat      : "yy-mm-dd"
    });
        
    var spinner = $( "#txtStayHours" ).spinner();
 
    $( "#setvalue1" ).on( "click", function() {
      spinner.spinner( "value", 1 );
      return false;
    });
 
    $( "#setvalue2" ).on( "click", function() {
      spinner.spinner( "value", 2 );
      return false;
    });

    $( "#setvalue3" ).on( "click", function() {
      spinner.spinner( "value", 3 );
      return false;
    });
    
    $( "#setvalue4" ).on( "click", function() {
      spinner.spinner( "value", 4 );
      return false;
    });
    
    $( "button" ).button();
    
  } );
  </script>
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>