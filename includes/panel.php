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

	if ($iPageId != "")
	{
?>
          <div id="Login">
              <img src="images/bistroware.png" height="50"><h4 class="small" style="text-align:center;" alt="Bistroware" title="Bistroware">User Area</h4>
<?
		if ($_SESSION['AdminId'] == 0)
		{
?>
            <form name="frmLogin" id="frmLogin" onsubmit="return false;">
              <input type="hidden" id="RequestUrl" value="<?= $_SESSION['RequestUrl'] ?>" />
			  <div id="LoginMsg"></div>

              <input type="text" name="txtUsername" id="txtUsername" value="" maxlength="100" class="textbox" placeholder="Email Address" />
              <div class="br5"></div>
              <input type="password" name="txtPassword" id="txtPassword" value="" maxlength="50" class="textbox" placeholder="Password" />
              <div class="br10"></div>
              <div><input type="submit" name="btnLogin" id="btnLogin" value=" Login " class="button" /></div>
              <br />
              <center><a href="./" onclick="return false;">Forgot password?</a></center>
            </form>
<?
		}

		else
		{
			$sSQL = "SELECT type_id, picture FROM tbl_admins WHERE id='{$_SESSION['AdminId']}'";
			$objDb->query($sSQL);

			$iType    = $objDb->getField(0, "type_id");
			$sPicture = $objDb->getField(0, "picture");


			if ($sPicture == "" || !@file_exists(ADMINS_IMG_DIR.'thumbs/'.$sPicture))
				$sPicture = "default.jpg";
?>
		    <div class="member">
		      <div class="pic"><img src="<?= (ADMINS_IMG_DIR.'thumbs/'.$sPicture) ?>" alt="" title="" /></div>

		      <br />
		      <h5><?= $_SESSION['AdminName'] ?></h5>
		      [
<?
//			if ($iType == 1)
			{
?>
		        <a href="control/" target="_blank">Admin Panel</a> |
<?
			}
?>
		        <a href="logout.php">Logout</a>
		      ]<br />
		    </div>
                    <br/>                     
<?
            }
?>
         </div>

<?
        }
?>
