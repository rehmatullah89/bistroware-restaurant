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

        $iTableId           = IO::intValue("TableId");
        $iFloorId           = getDbValue("floor_id", "tbl_tables", "id='$iTableId'");
        $iTotalSeats        = getDbValue("total_seats", "tbl_tables", "id='$iTableId'");
        $iAvailableReserves = IO::intValue("Reserves");
        $sResDate           = IO::strValue("ReserveDate");
        $sReserveTime       = IO::strValue("ReserveTime");
        $sResrveDateTime    = date("m/d/Y H:i", strtotime($sResDate." ".$sReserveTime));
        $sReservePeople     = IO::intValue("People");
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
    padding: 0px 12px 10px 20px;
    margin-top: -12px;
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
    margin: 0px 0px 3px 0px;
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
.MyButton {
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

.MyButton > span{
    color: white;
    font-size: 10px;
    font-weight: bold;
    font-family: verdana, arial, sans-serif !important;
}

.MyButton:hover{
background-color: #c48527;    
}

</style>  
<link rel='stylesheet' href='http://www.gaia.com.pk/wp-content/themes/rosa/assets/css/jquery.datetimepicker.css' type='text/css' media='all' />
<script type='text/javascript' src='http://www.gaia.com.pk/wp-content/themes/rosa/assets/js/jquery.datetimepicker.full.js'></script>
<script type='text/javascript' src='http://www.gaia.com.pk/bistroware/scripts/validator.js'></script>
</head>

<body class="popupBg" style="<?=($iAvailableReserves == 0)?'background-color:white;':''?>">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
    <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>">
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
        <input type="hidden" name="TableId" id="TableId" value="<?= $iTableId ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="490px;" align="center">
	  <tr valign="top">
                <td>
                                <br/>
<?
                                if($iTotalSeats < $sReservePeople || $iTotalSeats > ($sReservePeople + 3))
                                {
?>
                                <div style="color: #CE4545; font-size: 18px; text-align: center; margin-top: 204px;margin-left: -123px; font-weight: bold;"><span style="font-size:24px;"><img width="70" src="<?=SITE_URL."images/icons/info3.png"?>" style="margin-bottom: -34px;margin-left: -110px;"/></span> Please select a table according to number of guests!<br/> We request you to choose another suitable table.&nbsp; &nbsp;<br/><br/><a href="<?=SITE_URL.'api/display-floor2.php?FloorId=2&ReserveDate='.$sResDate.'&Time='.($sReserveTime>12?$sReserveTime."pm":"am").'&People='.$sReservePeople.''?>" class="MyButton" style="text-decoration: none; color: white; padding: 5px; border-radius: 3px; font-size: 10px; font-family: verdana, arial, sans-serif;">Go Back</a></div>                                
<?
                                }
                                else if($iAvailableReserves <= 0)
                                {
?>
                                <div style="color: #CE4545; font-size: 18px; text-align: center; margin-top: 204px;margin-left: -123px; font-weight: bold;"><span style="font-size:24px;"><img width="70" src="<?=SITE_URL."images/icons/info3.png"?>" style="margin-bottom: -34px;margin-left: -110px;"/></span> We are sorry, This table is fully booked for the day!<br/> We request you to choose another table.&nbsp; &nbsp;<br/><br/><a href="<?=SITE_URL.'api/display-floor2.php?FloorId=2&ReserveDate='.$sResDate.'&Time='.($sReserveTime>12?$sReserveTime."pm":"am").'&People='.$sReservePeople.''?>" class="MyButton" style="text-decoration: none; color: white; padding: 5px; border-radius: 3px; font-size: 10px; font-family: verdana, arial, sans-serif;">Go Back</a></div>                                
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
                                                        $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):(strtotime(date('Y-m-d H:i:s'))+5400));
                                                        $StartTime  = ($StartTime >= $TempTime4 && $StartTime <= $TempTime7)?$TempTime7:$StartTime;
                                                    }
                                                    
                                                    $EndTime    = strtotime($sResDateTime);

                                                    if($StartTime <= $EndTime) // if time is less than 4pm or 7pm, check slot
                                                        $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                    {
                                                        if($StartTime <= $TempTime4)
                                                          $EndTime = $TempTime4;
                                                        
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm.";
                                                    }
                                                    
                                                    $iPrevRes   = $iResId;
                                                    $sPrevRes   = $sResDateTime;

                                                } //end foreach
                                                
                                                if($sPrevRes != "")
                                                {
                                                    $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):(strtotime(date('Y-m-d H:i:s'))+5400));
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");
                                                    
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                    {
                                                        if($StartTime <= $TempTime4)
                                                        {
                                                            $EndTime = $TempTime4;
                                                            $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm & From 7pm to 1am.";
                                                        }
                                                        else
                                                            $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."am.";
                                                    }
                                                    
                                                        
                                                }else {
                                                    
                                                    $StartTime  = strtotime(date('Y-m-d H:i:s'));
                                                    $StartTime  = ($StartTime < strtotime(date("Y-m-d 13:00:00")))?strtotime(date("Y-m-d 13:00:00")):$StartTime;
                                                    $StartTime  = ($StartTime > $TempTime4 && $StartTime < $TempTime7)?$TempTime7:$StartTime;
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime(date("Y-m-d").' +1 day'))." 1:00:00");
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
                                        }
                                        else
                                        {
                                            /////ELSE///////
                                            $StartTime          = strtotime(date($sResDate.' H:i:s'));
                                            $EndTime            = strtotime(date('Y-m-d', strtotime($sResDate.' +1 day'))." 1:00:00");
                                            //$diffHours          = round(($EndTime - $StartTime) / 3600);
                                            //$diffHours          = ($diffHours >9?9:$diffHours);
                                            //$PossibleReserves   = floor($diffHours / 2);
                                            $PossibleReserves   = 4;

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
                                                        $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):(strtotime($sResDate." h:i:s")+5400));
                                                        $StartTime  = ($StartTime >= $TempTime4 && $StartTime <= $TempTime7)?$TempTime7:$StartTime;
                                                    }
                                                    
                                                    $EndTime    = strtotime($sResDateTime);
                                                    
                                                    if($StartTime <= $EndTime) // if time is less than 4pm or 7pm, check slot
                                                        $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($HrsDiff >= 2)
                                                    {
                                                        if($StartTime <= $TempTime4)
                                                          $EndTime = $TempTime4;
                                                         
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm.";
                                                    }
                                                    
                                                    $iPrevRes   = $iResId;
                                                    $sPrevRes   = $sResDateTime;

                                                }
                                                
                                                if($sPrevRes != "")
                                                {
                                                    $StartTime  = ($sAllEndReservations[$iPrevRes] != '0000-00-00 00:00:00'?strtotime($sAllEndReservations[$iPrevRes]):5400);
                                                    $EndTime    = strtotime(date('Y-m-d', strtotime($sResDate.' +1 day'))." 1:00:00");
                                                    $HrsDiff    = round(($EndTime - $StartTime) / 3600);
                                                    
                                                    if($StartTime <= $TempTime4)
                                                    {
                                                        $EndTime = $TempTime4;
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."pm & From 7pm to 1am.";
                                                    }
                                                    else
                                                        $sMessage .= " ".(date("H", ($StartTime)))."pm to ".(date("H", ($EndTime)))."am";
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
                                   <div style="width: 99%; align-content: center; background-color: lightgoldenrodyellow; border-radius: 5px; min-height: 70px; padding: 5px;">
                                       <span style="background-color: #c48527; color: white; font-size: 12px; font-weight: bold; text-align: center; padding: 5px; border-radius: 3px; margin-left: 5px; line-height: 2px;">Available Reservation Slots For This Table</span>
                                       <br/><br/><span style="margin-left: 20px; color: darkgrey;"><i><b><?=$sMessage?></b></i></span>
                                   </div><br/>
<?
                                    }
?>
                                  <label for="txtName"><span>Name <span class="required">*</span></span><input type="text" name="txtName" id="txtName" value="<?= IO::strValue("txtName") ?>" size="20" class="textbox" required/></label>
				  								  
				  <div class="br10"></div>
                                  
                                  <label for="txtPhone"><span>Phone <span class="required">*</span></span><input type="text" name="txtPhone" id="txtPhone" value="<?= IO::strValue("txtPhone") ?>" size="20" maxlength="11" minlength="11" class="textbox" required/></label>
				  
                                  <div class="br10"></div>
                                  
                                  <label for="txtGuests"><span>No. of Guests <span class="required">*</span></span><input type="text" name="txtGuests" id="txtGuests" value="<?= $sReservePeople ?>" size="20" class="textbox" required/></label>
				  
				  <div class="br10"></div>
                                  
                                  <label for="txtReservationDate"><span>Reservation Date <span class="required">*</span></span><input type="text" name="txtReservationDate" id="txtReservationDate"  class="textbox" value="<?=$sResDate?>" required /></label>
				  <div class="br10"></div>
                                  
                                  <label for="txtResTime"><span>Reservation Time <span class="required">*</span></span>
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
                                            $default   = "{$sReserveTime}pm";

                                            if($time == '4:00 pm' || $time == '4:30 pm' || $time == '5:00 pm' || $time == '5:30 pm' || $time == '6:00 pm' || $time == '6:30 pm')
                                                continue;

                                            echo "<option value=\"$timeValue\" " . ( ( $timeValue == $default ) ? ' selected="selected" ' : "" ) . ">$time</option>" . PHP_EOL;
                                    }

                                    ?>
                                      </select>
				  
                                  <div class="br10"></div>
                                  <label for="txtStayHours"><span>Expected Stay Hours</span><input min="0" step="1" id="txtStayHours" class="textbox" name="txtStayHours" value="<?= IO::strValue("txtStayHours")?>" size="5" style="margin-top: -8px;"/>&nbsp;<div style="display:inline; margin-left: 10px; line-height: 5px;"><button id="setvalue1">1</button>&nbsp;<button id="setvalue2">2</button>&nbsp;<button id="setvalue3">3</button>&nbsp;<button id="setvalue4">4</button></div></label>
                                  <div class="br10"></div>
                                  
                                  <div>If you would like to register statement on reservation App, <br/>Please <b id="ClickHere" style="color:#348DDA; cursor: pointer;">click</b> and fill below information.</div><br/>
                                  <div class="br10"></div>
                                  
                                  <div id="ToggleDiv" style="display:none;">
                                      <label for="txtEmail"><span>Email</span><input type="text" name="txtEmail" id="txtEmail" value="<?= IO::strValue("txtEmail") ?>" size="20" class="textbox" /></label>
				  
                                      <div class="br10"></div>
                                      <label for="txtPassword"><span>Password</span><input type="password" name="password" id="password" value="<?= IO::strValue("password") ?>" size="20" class="textbox" /></label>
                                      <div class="br10"></div>
                                      
                                      <label for="txtCPassword"><span>Confirm Password</span><input type="password" name="cpassword" id="txtCPassword" value="<?= IO::strValue("cpassword") ?>" size="20" class="textbox" /></label>
                                  </div>
				  <br />
                                  <button type="button" id="BtnSave" onclick="return validateForm( );" class="MyButton" style="color: white !important;" value="Save Reservation">Save Reservation</button>
                                  <a href="<?=SITE_URL.'api/display-floor2.php?FloorId=2&Link=Y&ReserveDate='.$sResDate.'&Time='.($sReserveTime>12?$sReserveTime."pm":"am").'&People='.$sReservePeople.''?>" class="MyButton" style="text-decoration: none; color: white; padding: 5px; border-radius: 3px; font-size: 10px; font-family: verdana, arial, sans-serif;">Back</a>
                                  <button id="BtnCancel" class="MyButton" style="color: white !important;">Cancel</button>
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
      
    function validateForm()
     {
         var objFV = new FormValidator("frmRecord", "RecordMsg");


             if (!objFV.validate("txtName", "B", "Please enter the Person Name."))
                     return false;

             if (!objFV.validate("txtPhone", "B", "Please enter the Phone No."))
                     return false;

             if((objFV.value("txtPhone")).length < 11){
                 alert("Please enter complete 11 digits of Mobile Phone Number");
                 return false;
             }

             if (!objFV.validate("txtGuests", "B", "Please enter the No of Guests."))
                     return false;    

             if (!objFV.validate("txtReservationDate", "B", "Please enter the Reservation Date."))
                     return false;
				 
             if (!objFV.validate("txtResTime", "B", "Please enter the Reservation Time."))
                     return false;
                 
            if(objFV.value("txtStayHours") > 4)
            {
                alert("A reservation can not be more than 4 hours.");
                return false;
            }
           
            $.ajax({

        url: "/bistroware/ajax/get-table-status.php",
        method: "GET",
        data: {'TableId': "<?= $iTableId?>",
            'ResDate': objFV.value("txtReservationDate"),
            'ResTime': objFV.value("txtResTime")
        }

    }).success(function (response) {

        if(response == 0)
        {
            $('#BtnSave').attr("disabled", true);
            document.getElementById("frmRecord").submit();
        }else
        {
            alert("Hi, A reservation has already been made to this table at your selected time, Kindly select another time slot!");
            return false;
        }
      //console.log("successfully run ajax request...");  
    }).done(function () {

        console.log("I am from done function");

    }).fail(function () {

        console.log("I am from fail function.");

    }).always(function () {

        console.log("I am from always function");

    });
           
			
			//return true;
     }
     
     jQuery("#ClickHere").click(function () {
            $("#ToggleDiv").toggle();
        });
        
  jQuery( function() {
      
       
        
        jQuery("#BtnCancel").click(function(){
           parent.jQuery.colorbox.close( ); 
        });

    jQuery("#txtReservationDate").datetimepicker(
    {
        format          : 'Y-m-d',
        timepicker  : false,
	formatDate      :'m/d/Y',
        step            : 30,
        minDate         :'<?=date("m/d/Y")?>',
        value           :'<?=date("Y/m/d", strtotime($sResDate))?>'
    });
    
    
        
    /*var spinner = jQuery( "#txtStayHours" ).spinner();
 
    jQuery( "#setvalue1" ).on( "click", function() {
      spinner.spinner( "value", 1 );
      return false;
    });
 
    jQuery( "#setvalue2" ).on( "click", function() {
      spinner.spinner( "value", 2 );
      return false;
    });

    jQuery( "#setvalue3" ).on( "click", function() {
      spinner.spinner( "value", 3 );
      return false;
    });
    
    jQuery( "#setvalue4" ).on( "click", function() {
      spinner.spinner( "value", 4 );
      return false;
    });*/
	
	jQuery( "#setvalue1" ).on( "click", function() {
      jQuery("#txtStayHours").val(1);
      return false;
    });
 
    jQuery( "#setvalue2" ).on( "click", function() {
      jQuery("#txtStayHours").val(2);
      return false;
    });

    jQuery( "#setvalue3" ).on( "click", function() {
      jQuery("#txtStayHours").val(3);
      return false;
    });
    
    jQuery( "#setvalue4" ).on( "click", function() {
      jQuery("#txtStayHours").val(4);
      return false;
    });
    
    jQuery( "button" ).button();
    
  } );
  </script>
</body>
</html>
<?
	$objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>