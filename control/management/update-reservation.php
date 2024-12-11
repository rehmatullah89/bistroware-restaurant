<?
	/*********************************************************************************************\
	***********************************************************************************************
	**                                                                                           **
	**  SCRP - School Construction and Rehabilitation Programme                                  **
	**  Version 1.0                                                                              **
	**                                                                                           **
	**  http://www.humdaqam.pk                                                                   **
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
	**                                                                                           **
	***********************************************************************************************
	\*********************************************************************************************/

	$_SESSION["Flag"] = "";

        $iReservationId = IO::intValue("ReservationId");
	$iFloor         = IO::intValue("FloorId");
        $iTable         = IO::intValue("TableId");        
        $sName          = IO::strValue("txtName");
        $sPhone         = IO::strValue("txtPhone");
        $sEmail         = IO::strValue("txtEmail");
        $iGuests        = IO::intValue("txtGuests");
        $sStatus        = IO::strValue("ddStatus");
        $sResDate       = date("Y-m-d", strtotime(IO::strValue("txtDateTime")));
        $sResTime       = IO::strValue("txtResTime");
        $sResTime       = substr($sResTime, 0, -2);
        $sResTime       = date("H:i", (strtotime($sResTime)+(3600*12)));        
        $sDateTime      = $sResDate." ".$sResTime.":00";
        $iStayHours     = (IO::intValue("txtStayHours")>0?IO::intValue("txtStayHours"):2);
        $iStayDateTime  = date('Y-m-d H:i:s', strtotime($sDateTime.' +'.$iStayHours.' hour'));        
        $bError         = true;        
      
        $sFloorsList    = getList("tbl_floors", "id", "name");
        $sTablesList    = getList("tbl_tables", "id", "table_no");
                
	if ($iFloor <= 0 || $iTable <= 0 || $sName == "" || $sPhone == "" || $iGuests <= 0 || $sDateTime == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";
        
        function formatPhoneNumber($sMobile)
        {
                $sMobile = str_replace(array(" ", "-", ".", "(", ")"), "", $sMobile);

                if (substr($sMobile, 0, 3) == "+03")
                        $sMobile = str_replace("+03", "+923", $sMobile);

                if (substr($sMobile, 0, 2) == "03")
                        $sMobile = substr_replace($sMobile, "+923", 0, 2);

                if (substr($sMobile, 0, 5) == "009203")
                        $sMobile = str_replace("009203", "+923", $sMobile);

                if (substr($sMobile, 0, 5) == "00923")
                        $sMobile = str_replace("00923", "+923", $sMobile);

                if (substr($sMobile, 0, 5) == "+0088")
                        $sMobile = str_replace("+0088", "+88", $sMobile);

                if (substr($sMobile, 0, 4) == "0088")
                        $sMobile = str_replace("0088", "+88", $sMobile);

                return $sMobile;
        }
        
        if($sStatus == 'R')
        {
            $sAllStartReservations  = getList("tbl_reservations", "id", "date_time", "table_id='$iTable' AND status='R' AND date_time LIKE '".date('Y-m-d', strtotime($sDateTime))."%'", "date_time");
            $sAllEndReservations    = getList("tbl_reservations", "id", "DATE_SUB(end_time,INTERVAL 5 MINUTE)", "table_id='$iTable' AND status='R' AND date_time LIKE '".date('Y-m-d', strtotime($sDateTime))."%'", "date_time");
            
            foreach($sAllStartReservations as $iReserve => $sStartTime)
            {
                $sEndTime = ($sAllEndReservations[$iReserve] != '0000-00-00 00:00:00'?$sAllEndReservations[$iReserve]:5400);
                
                if(strtotime($sDateTime) >= strtotime($sStartTime) && strtotime($sDateTime) <= strtotime($sEndTime))      
                    $_SESSION["Flag"] = "RESERVATION_EXISTS";
            }
        }
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

                $sSQL = "UPDATE tbl_reservations SET    name        = '$sName',
                                                        phone       = '$sPhone',
                                                        email       = '$sEmail',   
                                                        password    = '',
                                                        date_time   = '$sDateTime',
                                                        end_time    = '$iStayDateTime',
                                                        guests      = '$iGuests',
                                                        floor_id    = '$iFloor',
                                                        table_id    = '$iTable',
                                                        status      = '$sStatus',
                                                        modified_by = '{$_SESSION['AdminId']}',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '$iReservationId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

                if($sStatus == 'R' && $bFlag == true && strtotime($sResDate) >= strtotime(date("Y-m-d")))
                {
                    try
                    {
                            $sPhoneNumbers  = formatPhoneNumber($sPhone);
                            $sMessage        = ("Your reservation at GAIA for {$iGuests} people on ".date("l jS F Y , g:ia", strtotime($sDateTime))." on table number {$sTablesList[$iTable]}  has been confirmed. Please notify 2 hrs prior to your expected arrival if there is any cancellation involved, so that we can accomodate somebody else in the same time slot.");
                            $objCurl        = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                            @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                            @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                            @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                            @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                            @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                            print $sResponse = @curl_exec ($objCurl);
                            print curl_error($objCurl);

                            @curl_close($objCurl);
                        
                            $sUsersList     = getList("tbl_admins", "id", "mobile", "mobile != '' AND reservation_sms='Y'");                            
                            foreach($sUsersList as $iUser => $sMobile)
                            {
                                $sPhoneNumbers = formatPhoneNumber($sMobile);
                                $sMessage        = ("Your reservation at GAIA for {$iGuests} people on ".date("l jS F Y , g:ia", strtotime($sDateTime))." on table number {$sTablesList[$iTable]}  has been confirmed. Please notify 2 hrs prior to your expected arrival if there is any cancellation involved, so that we can accomodate somebody else in the same time slot.");
                                $objCurl = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                                @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                                @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                                @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                                @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                                @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                                print $sResponse = @curl_exec ($objCurl);
                                print curl_error($objCurl);

                                @curl_close($objCurl);
                            }
                    }

                    catch (Exception $e)
                    {                                                                              
                    }
                }
                
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT created_at, modified_at,
							(SELECT name FROM tbl_admins WHERE id=tbl_tables.created_by) AS _CreatedBy,
							(SELECT name FROM tbl_admins WHERE id=tbl_tables.modified_by) AS _ModifiedBy
					 FROM tbl_reservations
					 WHERE id='$iReservationId'";
			$objDb->query($sSQL);

			$sCreatedAt  = $objDb->getField(0, "created_at");
			$sCreatedBy  = $objDb->getField(0, "_CreatedBy");
			$sModifiedAt = $objDb->getField(0, "modified_at");
			$sModifiedBy = $objDb->getField(0, "_ModifiedBy");


			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
                                
                                
                        switch ($sStatus)
			{
				case "P" : $sStatus = "Pending"; break;
				case "R" : $sStatus = "Reserved"; break;
                                case "F" : $sStatus = "Completed"; break; // Free Or Completed
                                case "C" : $sStatus = "Cancelled"; break;
				default  : $sStatus = "N/A"; break;
			}        
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sName) ?>";
                sFields[1] = "<?= @htmlentities($sPhone) ?>";
                sFields[2] = "<?= @htmlentities($sDateTime) ?>";
                sFields[3] = "<?= @htmlentities($iGuests) ?>";
		sFields[4] = "<?= @htmlentities($sFloorsList[$iFloor]) ?>";
                sFields[5] = "<?= @htmlentities($sTablesList[$iTable]) ?>";
		sFields[6] = "<?= @htmlentities($sStatus) ?>";
		sFields[7] = '<img class="icon details" id="<?= $iReservationId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[7] = (sFields[7] + '<img class="icnEdit" id="<?= $iReservationId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[7] = (sFields[7] + '<img class="icnDelete" id="<?= $iReservationId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[7] = (sFields[7] + '<img class="icnView" id="<?= $iReservationId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iReservationId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Reservation has been Updated successfully.");
	-->
	</script>
<?
			exit( );
		}

		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>