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
?>
<header>
  <div id="TopBar">
    <div>
      <ul>
        <li><a href="./" target="_blank" class="feed"><i class="fa fa-feed"></i></a></li>
        <li><a href="https://www.youtube.com/" target="_blank" class="youtube"><i class="fa fa-youtube"></i></a></li>
        <li><a href="https://twitter.com/BistroWare" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://www.facebook.com/BistroWare" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a></li>
      </ul>

      For more info call: +92 51 8485050 or write on email: <a href="mailto:portal@3-tree.com">portal@3-tree.com</a>
    </div>
  </div>

  <div id="NavBar">
    <a href="./"><img src="images/bistroware1.png" height="50" alt="" title="" /></a>

    <nav>
<?
	$sSQL = "SELECT id, title, sef_url FROM tbl_web_pages WHERE FIND_IN_SET('H', placements) AND status='P' AND id <= '8' ORDER BY position";
	$objDb->query($sSQL);

	$iCount = $objDb->getCount( );

	for ($i = 0; $i < $iCount; $i ++)
	{
		$iPage   = $objDb->getField($i, "id");
		$sPage   = $objDb->getField($i, "title");
		$sSefUrl = $objDb->getField($i, "sef_url");
?>
      <a href="<?= getPageUrl($iPage, $sSefUrl) ?>"<?= (($iPageId == $iPage) ? ' class="selected"' : '') ?>><?= $sPage ?></a>
<?
	}
?>
    </nav>
  </div>
</header>
