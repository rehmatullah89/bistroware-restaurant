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

        @session_start( );
        @ob_start( );

        @ini_set('display_errors', 0);
        @ini_set('log_errors', 0);
        @error_reporting(0);

        @ini_set("max_execution_time", 0);
        @ini_set('memory_limit', '3072M');
        @ini_set("mysql.connect_timeout", -1);
        @set_time_limit(0);
      
	@require_once("../requires/common.php");
        @require_once("{$sRootDir}requires/PHPExcel.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );

        $sReport    = IO::strValue('ddReport');
        $sStartDate = (IO::strValue("txtStartDate") != ""?IO::strValue("txtStartDate"):date('Y-m-d', strtotime('-7 days')));
        $sEndDate   = (IO::strValue("txtEndDate") != ""?IO::strValue("txtEndDate"):date("Y-m-d"));

	if ($_POST)
        {
            @include("export-".strtolower($sReport)."-report.php"); 
            exit();
        }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/reports.js"></script>
</head>

<body>

<div id="MainDiv">

<!--  Header Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/header.php");
?>
<!--  Header Section Ends Here  -->


<!--  Navigation Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/navigation.php");
?>
<!--  Navigation Section Ends Here  -->


<!--  Body Section Starts Here  -->
  <div id="Body">
<?
	@include("{$sAdminDir}includes/breadcrumb.php");
?>

    <div id="Contents">
      <input type="hidden" id="OpenTab" value="<?= (($_POST && $bError == true) ? 1 : 0) ?>" />
<?
	@include("{$sAdminDir}includes/messages.php");
?>

      <div id="PageTabs">
	    <ul>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Export Reports</b></a></li>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>
	  <br />
<?
	if ($sUserRights["View"] == "Y")
	{
		
?>
		<div id="tabs-1">
		  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
		    <input type="hidden" name="DuplicateDocument" id="DuplicateDocument" value="0" />
			<div id="RecordMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
				<td width="600">
                                    <br/>
                                    
                                  <label for="txtStartDate">Start Date</label>
                                  <div class="date" style="float:left; margin-right: 8px;"><input type="text" name="txtStartDate" id="txtStartDate" value="<?= $sStartDate ?>" maxlength="10" size="10" class="textbox" readonly /></div>
                    							  
				  <div class="br10"></div>
                                  <label for="txtEndDate">End Date</label>
                                  <div class="date" style="float:left; margin-right: 8px;"><input type="text" name="txtEndDate" id="txtEndDate" value="<?= $sEndDate ?>" maxlength="10" size="10" class="textbox" readonly /></div>	  
				
                                <div class="br10"></div>
                                 <label for="ddReport">Report</label>
				  <div>
				    <select name="ddReport" id="ddReport">
                                        <option value="">Select a Report</option>
					<option value="SC"<?= ((IO::strValue('ddReport') == 'SC') ? ' selected' : '') ?>>Sales By Category Report</option>
					<option value="SD"<?= ((IO::strValue('ddReport') == 'SD') ? ' selected' : '') ?>>Sales By Day Report</option>
                                        <option value="SM"<?= ((IO::strValue('ddReport') == 'SM') ? ' selected' : '') ?>>Sales By Menu Item Report</option>
					<option value="SO"<?= ((IO::strValue('ddReport') == 'SO') ? ' selected' : '') ?>>Sales By Order Report</option>                                        
                                        <option value="VR"<?= ((IO::strValue('ddReport') == 'VR') ? ' selected' : '') ?>>Voids Report</option>                                        
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Export Report</button>
				  <button id="BtnReset">Clear</button>
				</td>
			  </tr>
			</table>
		  </form>
	    </div>
<?
	}
?>
	  </div>

    </div>
  </div>
<!--  Body Section Ends Here  -->


<!--  Footer Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/footer.php");
?>
<!--  Footer Section Ends Here  -->

</div>

</body>
</html>
<?
	$objDb->close( );
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>