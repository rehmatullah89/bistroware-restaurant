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

        $sAdministration    = array( );
	$sManagement        = array( );
	$sInventory         = array( );
	$sSettings          = array( );
	$sMenu              = array( );

        $sSQL = "SELECT ap.section, ap.files
	         FROM tbl_admin_pages ap, tbl_admin_rights ar
	         WHERE ap.id=ar.page_id AND ar.`view`='Y' AND ar.admin_id='{$_SESSION["AdminId"]}' AND ap.module='Administration'
	         ORDER BY ap.position";
	$objDb->query($sSQL);

	$iAdministration = $objDb->getCount( );

	for ($i = 0; $i < $iAdministration; $i ++)
	{
		$sAdministration[$i]['Section'] = $objDb->getField($i, 0);
		$sAdministration[$i]['Files']   = $objDb->getField($i, 1);
	}
        
        $sSQL = "SELECT ap.section, ap.files
	         FROM tbl_admin_pages ap, tbl_admin_rights ar
	         WHERE ap.id=ar.page_id AND ar.`view`='Y' AND ar.admin_id='{$_SESSION["AdminId"]}' AND ap.module='Inventory'
	         ORDER BY ap.position";
	$objDb->query($sSQL);

	$iInventory = $objDb->getCount( );

	for ($i = 0; $i < $iInventory; $i ++)
	{
		$sInventory[$i]['Section'] = $objDb->getField($i, 0);
		$sInventory[$i]['Files']   = $objDb->getField($i, 1);
	}

	$sSQL = "SELECT ap.section, ap.files
	         FROM tbl_admin_pages ap, tbl_admin_rights ar
	         WHERE ap.id=ar.page_id AND ar.`view`='Y' AND ar.admin_id='{$_SESSION["AdminId"]}' AND ap.module='Management'
	         ORDER BY ap.position";
	$objDb->query($sSQL);

	$iManagement = $objDb->getCount( );

	for ($i = 0; $i < $iManagement; $i ++)
	{
		$sManagement[$i]['Section'] = $objDb->getField($i, 0);
		$sManagement[$i]['Files']   = $objDb->getField($i, 1);
	}


	$sSQL = "SELECT ap.section, ap.files
	         FROM tbl_admin_pages ap, tbl_admin_rights ar
	         WHERE ap.id=ar.page_id AND ar.`view`='Y' AND ar.admin_id='{$_SESSION["AdminId"]}' AND ap.module='Menu'
	         ORDER BY ap.position";
	$objDb->query($sSQL);

	$iMenu = $objDb->getCount( );

	for ($i = 0; $i < $iMenu; $i ++)
	{
		$sMenu[$i]['Section'] = $objDb->getField($i, 0);
		$sMenu[$i]['Files']   = $objDb->getField($i, 1);
	}
        
?>
  <div id="Navigation">
<?
	if ($_SESSION["AdminId"] != "")
	{
?>
    <ul>
	  <li>
	    <a href="dashboard.php">Dashboard<img src="images/themes/<?= $_SESSION["CmsTheme"] ?>/nav-arrow.png" alt="" title="" /></a>

	    <ul>
	      <li><a href="my-account.php">My Account</a></li>
	      <li><a href="logout.php">Logout</a></li>
	    </ul>
	  </li>
<?

		if ($iInventory > 0)
		{
?>

	  <li>
	    <a href="inventory/">Inventory<img src="images/themes/<?= $_SESSION["CmsTheme"] ?>/nav-arrow.png" alt="" title="" /></a>

	    <ul>
<?
			for ($i = 0; $i < $iInventory; $i ++)
			{
				$sFile = substr($sInventory[$i]['Files'], 1);
				$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li><a href="inventory/<?= $sFile ?>"><?= $sInventory[$i]['Section'] ?></a></li>
<?
                        }
?>
	    </ul>
	  </li>
<?
		}
		
		if ($iMenu > 0)
		{
?>

	  <li>
	    <a href="menu/">Menu<img src="images/themes/<?= $_SESSION["CmsTheme"] ?>/nav-arrow.png" alt="" title="" /></a>

	    <ul>
<?
			for ($i = 0; $i < $iMenu; $i ++)
			{
				$sFile = substr($sMenu[$i]['Files'], 1);
				$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li><a href="menu/<?= $sFile ?>"><?= $sMenu[$i]['Section'] ?></a></li>
<?
			}
?>
	    </ul>
	  </li>
<?
		}


		if ($iManagement > 0)
		{
?>

	  <li>
	    <a href="management/">Management<img src="images/themes/<?= $_SESSION["CmsTheme"] ?>/nav-arrow.png" alt="" title="" /></a>

	    <ul>
<?
			for ($i = 0; $i < $iManagement; $i ++)
			{
				$sFile = substr($sManagement[$i]['Files'], 1);
				$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li><a href="management/<?= $sFile ?>"><?= $sManagement[$i]['Section'] ?></a></li>
<?
			}
?>
	    </ul>
	  </li>
<?
		}
                
                if ($iAdministration > 0)
		{
?>

	  <li>
	    <a href="administration/">Administration<img src="images/themes/<?= $_SESSION["CmsTheme"] ?>/nav-arrow.png" alt="" title="" /></a>

	    <ul>
<?
			for ($i = 0; $i < $iAdministration; $i ++)
			{
				$sFile = substr($sAdministration[$i]['Files'], 1);
				$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li><a href="administration/<?= $sFile ?>"><?= $sAdministration[$i]['Section'] ?></a></li>
<?
			}
?>
	    </ul>
	  </li>
<?
		}
?>
    </ul>
<?
	}
?>
  </div>
