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

	$_SESSION["Flag"] = "";

	$iFloor         = IO::intValue("FloorId");
        $iTable         = IO::intValue("TableId");        
        $sName          = IO::strValue("txtName");
        $sPhone         = IO::strValue("txtPhone");
        $sEmail         = IO::strValue("txtEmail");
        $iGuests        = IO::intValue("txtGuests");
        $sResDate       = date("Y-m-d", strtotime(IO::strValue("txtDateTime")));
        $sResTime       = IO::strValue("txtResTime");
        $sResTime       = substr($sResTime, 0, -2);
        $sResTime       = date("H:i", (strtotime($sResTime)+(3600*12)));        
        $sResDateTime   = $sResDate." ".$sResTime.":00";
        $iStayHours     = (IO::intValue("txtStayHours")>0?IO::intValue("txtStayHours"):2);
        $iStayDateTime  = date('Y-m-d H:i:s', strtotime($sResDateTime.' +'.$iStayHours.' hour'));
        $sUserIp        = $_SERVER['REMOTE_ADDR'];
        $sUserAgent     = $_SERVER['HTTP_USER_AGENT'];
        $bError         = true;
        $bFlag          = true;


	if ($iFloor <= 0 || $iTable <= 0 || $sName == "" || $sPhone == "" || $iGuests <= 0 || $sResDate == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

	
        if($_SESSION["Flag"] == "")
        {
            $reservationSlot     = getDbValue("COUNT(1)", "tbl_reservations", "table_id = '$iTable' AND status != 'C' AND '$sResDateTime' BETWEEN date_time AND DATE_SUB(end_time,INTERVAL 10 MINUTE)", "id DESC");
            
            if($reservationSlot > 0)
            {
                $bFlag  = false;
?>
<script>
                    parent.jQuery.colorbox.close( );
                    alert("Hi, A reservation has already been made to this table at your selected time, Kindly select another time slot!");                    
</script>
<?
            }
        }
        
	if ($_SESSION["Flag"] == "" && $bFlag  == true)
	{
		$objDb->execute("BEGIN");
                
                $iReservation  = getNextId("tbl_reservations");
                
		$sSQL = "INSERT INTO tbl_reservations SET  id           = '$iReservation',
                                                            name        = '$sName',
                                                            phone       = '$sPhone',
                                                            email       = '$sEmail',   
                                                            password    = '',
                                                            date_time   = '$sResDateTime',
                                                            end_time    = '$iStayDateTime',
                                                            guests      = '$iGuests',
                                                            floor_id    = '$iFloor',
                                                            table_id    = '$iTable',
                                                            status      = 'P',
                                                            user_ip     = '$sUserIp',
                                                            user_agent  = '$sUserAgent',
                                                            created_by  = '{$_SESSION['AdminId']}',
                                                            created_at  = NOW( ),
                                                            modified_by = '{$_SESSION['AdminId']}',
                                                            modified_at = NOW( )";
                                                            
		$bFlag = $objDb->execute($sSQL);
               
		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
?>
<script>
                    parent.$.colorbox.close( );
                    parent.parent.$.colorbox.close( );
                    parent.parent.showMessage("#GridMsg", "success", "A New Reservation has been Added into the System successfully."); 
                    parent.parent.reloadMyPage();
</script>
<?
		}
		else
		{
			$objDb->execute("ROLLBACK");
			$_SESSION["Flag"] = "DB_ERROR";
		}
	}
?>