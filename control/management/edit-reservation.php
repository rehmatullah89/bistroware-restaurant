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


	$iReservationId = IO::intValue("ReservationId");
	$iIndex         = IO::intValue("Index");
        $sTablesList    = getList("tbl_tables", "id", "table_no");
         
	if ($_POST)
		@include("update-reservation.php");

	$sSQL = "SELECT * FROM tbl_reservations WHERE id='$iReservationId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$iTableId   = $objDb->getField(0, "table_id");
        $iFloorId   = $objDb->getField(0, "floor_id");
	$sResDate   = $objDb->getField(0, "date_time");        
        $sName      = $objDb->getField(0, "name");
        $sPhone     = $objDb->getField(0, "phone");
        $sEmail     = $objDb->getField(0, "email");
        $iGuests    = $objDb->getField(0, "guests");
        $sStatus    = $objDb->getField(0, "status");
        $iStayHours = $objDb->getField(0, "end_time");  
        $sResTime   = (ltrim(date("H:i", (strtotime($sResDate)-(3600*12))), '0')).'pm';        

        if($iStayHours == '0000-00-00 00:00:00')
            $iStayHours = 0;
        else
            $iStayHours = round((strtotime($iStayHours) - strtotime($sResDate)) / 3600);
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
    margin:0 auto;
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
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-reservation.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="FloorId" id="FloorId" value="<?= $iFloorId ?>" />
        <input type="hidden" name="TableId" id="TableId" value="<?= $iTableId ?>" />
        <input type="hidden" name="ReservationId" id="ReservationId" value="<?= $iReservationId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
	<div id="RecordMsg" class="hidden"></div>

	<table border="0" cellspacing="0" cellpadding="0" width="100%">
	  <tr valign="top">
                <td>
                                <br/>
                                  <div class="form-style-2"> 
                                       <div class="form-style-2-heading"><?=$sName?> Reservation Information For Table#(<?=$sTablesList[$iTableId]?>) </div>
                                  <label for="txtName"><span>Name <span class="required">*</span></span><input type="text" name="txtName" id="txtName" value="<?= $sName ?>" size="20" class="textbox" /></label>
				  								  
				  <div class="br10"></div>
                                  
                                  <label for="txtPhone"><span>Phone <span class="required">*</span></span><input type="text" name="txtPhone" id="txtPhone" value="<?= $sPhone ?>" size="20" class="textbox" /></label>
				  
                                  <div class="br10"></div>
                                  
                                  <label for="txtEmail"><span>Email</span><input type="text" name="txtEmail" id="txtEmail" value="<?=$sEmail ?>" size="20" class="textbox" /></label>
				  
                                  <div class="br10"></div>
                                  
                                  <label for="txtGuests"><span>No. of Guests <span class="required">*</span></span><input type="text" name="txtGuests" id="txtGuests" value="<?= $iGuests ?>" size="20" class="textbox" /></label>
				  
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
						//$default   = "7:00pm";
                                                
                                                if($time == '4:00 pm' || $time == '4:30 pm' || $time == '5:00 pm' || $time == '5:30 pm' || $time == '6:00 pm' || $time == '6:30 pm')
                                                    continue;
                                                
						echo "<option value=\"$timeValue\" " . ( ( $timeValue == $sResTime ) ? ' selected="selected" ' : "" ) . ">$time</option>" . PHP_EOL;
					}

					?>
                                          </select>
                                    </label>
                                  
                                  <div class="br10"></div>
                                  <label for="txtStayHours"><span>Expected Stay Hours</span><input min="0" step="1" id="txtStayHours" name="txtStayHours" value="<?= $iStayHours?>" size="5"/>&nbsp;<button id="setvalue1">1</button>&nbsp;<button id="setvalue2">2</button>&nbsp;<button id="setvalue3">3</button>&nbsp;<button id="setvalue4">4</button></label>
                                  
                                  <div class="br10"></div>
                                  <div class="br10"></div>
                                  <label for="ddStatus"><span>Status</span>
                                      <select style="width:165px;" name="ddStatus" id="ddStatus">
                                          <option value="P" <?=($sStatus == 'P'?'selected':'')?>>Pending</option>
                                          <option value="R" <?=($sStatus == 'R'?'selected':'')?>>Reserved</option>
                                          <option value="F" <?=($sStatus == 'F'?'selected':'')?>>Completed</option>
                                          <option value="C" <?=($sStatus == 'C'?'selected':'')?>>Cancelled</option>
                                      </select>
                                  </label>
                                  
				  <br />
				  <button id="BtnSave">Update Reservation</button>
				  <button id="BtnCancel">Cancel</button>
                                   </div><br/>

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
            minDate         : new Date(<?php echo(date('Y'));?>,<?php echo(date('m'));?>,<?php echo(date('d'));?>),
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