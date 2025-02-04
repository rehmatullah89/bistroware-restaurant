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

	@require_once("requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
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
<?
	@include("{$sAdminDir}includes/messages.php");

	
        if ($iInventory > 0)
	{
?>
      <fieldset>
        <legend><a href="inventory">Inventory</a></legend>

	    <ul>
<?
		for ($i = 0; $i < $iInventory; $i ++)
		{
			$sFile = substr($sInventory[$i]['Files'], 1);
			$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li>
		    <a href="inventory/<?= $sFile ?>">
		      <img src="images/inventory/<?= str_replace('.php', '.png', $sFile) ?>" title="" alt="" />
		      <span><?= $sInventory[$i]['Section'] ?></span>
		    </a>
		  </li>
<?
		}
?>
	    </ul>
      </fieldset>
<?
	}

                
                
	if ($iMenu > 0)
	{
?>
      <fieldset>
        <legend><a href="menu">Menu</a></legend>

	    <ul>
<?
		for ($i = 0; $i < $iMenu; $i ++)
		{
			$sFile = substr($sMenu[$i]['Files'], 1);
			$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li>
		    <a href="menu/<?= $sFile ?>">
		      <img src="images/menu/<?= str_replace('.php', '.png', $sFile) ?>" title="" alt="" />
		      <span><?= $sMenu[$i]['Section'] ?></span>
		    </a>
		  </li>
<?
		}
?>
	    </ul>
      </fieldset>
<?
	}


	if ($iManagement > 0)
	{
?>
      <fieldset>
        <legend><a href="management/">Management</a></legend>

	    <ul>
<?
		for ($i = 0; $i < $iManagement; $i ++)
		{
			$sFile = substr($sManagement[$i]['Files'], 1);
			$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li>
		    <a href="management/<?= $sFile ?>">
		      <img src="images/management/<?= str_replace('.php', '.png', $sFile) ?>" title="" alt="" />
		      <span><?= $sManagement[$i]['Section'] ?></span>
		    </a>
		  </li>
<?
		}
?>
	    </ul>
      </fieldset>
<?
	}
        	if ($iAdministration > 0)
	{
?>
      <fieldset>
        <legend><a href="administration/">Administration</a></legend>

	    <ul>
<?
		for ($i = 0; $i < $iAdministration; $i ++)
		{
			$sFile = substr($sAdministration[$i]['Files'], 1);
			$sFile = substr($sFile, 0, strpos($sFile, "'"));
?>
		  <li>
		    <a href="administration/<?= $sFile ?>">
		      <img src="images/administration/<?= str_replace('.php', '.png', $sFile) ?>" title="" alt="" />
		      <span><?= $sAdministration[$i]['Section'] ?></span>
		    </a>
		  </li>
<?
		}
?>
	    </ul>
      </fieldset>
<?
	}
?>

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
	$objDbGlobal->close( );

	@ob_end_flush( );
?>