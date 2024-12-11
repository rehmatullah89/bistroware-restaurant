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

	@require_once("requires/common.php");

        if ($_SESSION['AdminId'] != 0 || $_SESSION['AdminId'] != "")
        {
            $UserRights  = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
            
            if(@in_array(10, $UserRights))
            {
                redirect(SITE_URL."kds.php");
            }else
                redirect(SITE_URL.ADMIN_CP_DIR);
        }
	
	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("includes/meta-tags.php");
?>
    <style>
        body, html {
    
        width: 100%;
        height: 100%;
        margin: 0;
        padding: 0;
        display:table;
        overflow: auto;
    }
        </style>
</head>

    <body style="background: #1b1f2b;">

<?
	//@include("includes/header.php");
?>


<main style="width:100%" >
  <section  style="max-width: 350px; margin: 0 auto;">
<?
	@include("includes/messages.php");

	@include("includes/panel.php");
?>
  </section>
</main>


<?
	//@include("includes/footer.php");
?>

</body>
</html>
<?
	$objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>