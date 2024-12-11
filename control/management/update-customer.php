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


	$sName      = IO::strValue("txtName");
	$sEmail     = IO::strValue("txtEmail");
        $sPhone     = IO::strValue("txtPhone");
        $sPassword  = IO::strValue("txtPassword");
	$sStatus    = IO::strValue("ddStatus");
        
      
	if ($sName == "" || $sEmail == "" || $sPhone == "" || $sStatus == "")
		$_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "")
	{
		$iCustomer = getDbValue("id", "tbl_users", "(email LIKE '$sEmail') AND id != '$iCustomerId'");
		
		if ($iCustomer > 0)
			$_SESSION["Flag"] = "USER_EXISTS";
	}
        
	if ($_SESSION["Flag"] == "")
	{
		$objDb->execute("BEGIN");

		$sSQL = "UPDATE tbl_users SET   name        = '$sName',
                                                    email       = '$sEmail',
                                                    mobile      = '$sPhone',    
                                                    status      = '$sStatus',
                                                    password    = '$sPassword'
                                            WHERE id='$iCustomerId'";
                                                    
		$bFlag = $objDb->execute($sSQL);
	

		if ($bFlag == true)
		{
			$objDb->execute("COMMIT");
			
			
			$sSQL = "SELECT date_time
					 FROM tbl_users
					 WHERE id='$iCustomerId'";
			$objDb->query($sSQL);

			$sCreatedAt  = $objDb->getField(0, "created_at");

			$sInfo = ("<b>Created At:</b><br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
	<script type="text/javascript">
	<!--
		var sFields = new Array( );

		sFields[0] = "<?= @htmlentities($sName) ?>";
		sFields[1] = "<?= @htmlentities($sEmail) ?>";
                sFields[2] = "<?= @htmlentities($sPhone) ?>";
		sFields[3] = "<?= @htmlentities(($sStatus == 'A')?'Active':($sStatus == 'I'?'In-Active':'N/A')) ?>";
		sFields[4] = '<img class="icon details" id="<?= $iStudentId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" /> ';
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnEdit" id="<?= $iCustomerId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" /> ');
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
		sFields[4] = (sFields[4] + '<img class="icnDelete" id="<?= $iCustomerId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" /> ');
<?
			}
?>
		sFields[4] = (sFields[4] + '<img class="icnView" id="<?= $iCustomerId ?>" src="images/icons/view.gif" alt="View" title="View" /> ');

		parent.updateRecord(<?= $iCustomerId ?>, <?= $iIndex ?>, sFields);
		parent.$.colorbox.close( );
		parent.showMessage("#GridMsg", "success", "The selected Customer has been Updated successfully.");
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