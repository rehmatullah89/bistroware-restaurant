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



	function redirect($sPage, $sError = "")

	{

		if ($sError != "")

			$_SESSION["Flag"] = $sError;



		if ($sPage == "")

			$sPage = SITE_URL;



		header("Location: $sPage");

		exit( );

	}





	function exitPopup($sClass = "error", $sMessage = "An ERROR occured while processing your request, please try again.")

	{

?>

	<script type="text/javascript">

	<!--

		if (top == self)

			document.location = 'login-register.php';



		else

		{

			parent.$.colorbox.close( );



			if (parent.$("#PageMsg").length == 0)

				parent.$("#Contents").append('<div id="PageMsg"></div>');



			parent.showMessage("#PageMsg", "<?= $sClass ?>", "<?= $sMessage ?>");

		}

	-->

	</script>

<?

		exit( );

	}





	function formValue($sValue)

	{

		return htmlentities(html_entity_decode($sValue, ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8');

	}





	function formatDate($sDate, $sFormat = "d-M-Y")

	{

		if ($sDate == "" || $sDate == "0000-00-00" || $sDate == "1970-01-01" || $sDate == "0000-00-00 00:00:00" || $sDate == "1970-01-01 00:00:00")

			return "";



		else

			return date($sFormat, strtotime($sDate));

	}





	function formatTime($sTime, $sFormat = "h:i A")

	{

		if ($sTime == "" || $sTime == "00:00:00")

			return "";



		else

			return date($sFormat, strtotime($sTime));

	}





	function formatNumber($fNumber, $bDecimals = true, $iDecimals = 2)

	{

		if ($bDecimals == false)

			$iDecimals = 0;



		return @number_format($fNumber, $iDecimals, '.', ',');

	}



	function getSefUrl($sValue)

	{

		$sValue = trim($sValue);

		$sValue = strtolower($sValue);

		$sValue = stripslashes($sValue);



		$sValue = str_replace('�','a',$sValue);

		$sValue = str_replace('�','e',$sValue);

		$sValue = str_replace('�','i',$sValue);

		$sValue = str_replace('�','o',$sValue);

		$sValue = str_replace('�','u',$sValue);

		$sValue = str_replace('�','a',$sValue);

		$sValue = str_replace('�','e',$sValue);

		$sValue = str_replace('�','i',$sValue);

		$sValue = str_replace('�','o',$sValue);

		$sValue = str_replace('�','u',$sValue);

		$sValue = str_replace('&aacute;','a',$sValue);

		$sValue = str_replace('&eacute;','e',$sValue);

		$sValue = str_replace('&iacute;','i',$sValue);

		$sValue = str_replace('&oacute;','o',$sValue);

		$sValue = str_replace('&uacute;','u',$sValue);

		$sValue = str_replace('&ntilde;','n',$sValue);

		$sValue = str_replace('�','n',$sValue);

		$sValue = str_replace('�','n',$sValue);

		$sValue = str_replace('�','a',$sValue);

		$sValue = str_replace('�','e',$sValue);

		$sValue = str_replace('�','i',$sValue);

		$sValue = str_replace('�','o',$sValue);

		$sValue = str_replace('�','u',$sValue);

		$sValue = str_replace('�','a',$sValue);

		$sValue = str_replace('�','e',$sValue);

		$sValue = str_replace('�','i',$sValue);

		$sValue = str_replace('�','o',$sValue);

		$sValue = str_replace('�','u',$sValue);

		$sValue = str_replace('&auml;','a',$sValue);

		$sValue = str_replace('&euml;','e',$sValue);

		$sValue = str_replace('&iuml;','i',$sValue);

		$sValue = str_replace('&ouml;','o',$sValue);

		$sValue = str_replace('&uuml;','u',$sValue);



		$sValidChars = "abcdefghijklmnopqrstuvwxyz0123456789-";

		$iLength     = @strlen($sValue);

		$sTempValue  = "";



		for ($i = 0; $i < $iLength; $i ++)

		{

			if (strstr($sValidChars, $sValue{$i}))

				$sTempValue .= $sValue{$i};



			else

				$sTempValue .= "-";

		}



		$sValue = $sTempValue;



		while (strpos($sValue, "--") !== FALSE)

		{

			$sValue = str_replace("--", "-", $sValue);

		}



		if ($sValue{0} == "-")

			$sValue = substr($sValue, 1);



		if ($sValue{strlen($sValue) - 1} == "-")

			$sValue = substr($sValue, 0, (strlen($sValue) - 1));



		return $sValue;

	}





	function createImage($sSrcFile, $sDestFile, $iImgWidth, $iImgHeight, $sImageResize = "C")

	{

		@list($iWidth, $iHeight, $sType, $sAttributes) = @getimagesize($sSrcFile);



		$fRatio = @($iWidth / $iHeight);





		$iPosition  = @strrpos($sSrcFile, '.');

		$sExtension = @substr($sSrcFile, $iPosition);



		switch($sExtension)

		{

			case '.jpg'  : $objPicture = @imagecreatefromjpeg($sSrcFile);

						   break;



			case '.jpeg' : $objPicture = @imagecreatefromjpeg($sSrcFile);

						   break;



			case '.png'  : $objPicture = @imagecreatefrompng($sSrcFile);

						   break;



			case '.gif'  : $objPicture = @imagecreatefromgif($sSrcFile);

						   break;

		}





		// Resize, Cener & Crop

		if ($sImageResize == "C")

		{

			if (@($iImgWidth / $iImgHeight) > $fRatio)

			{

				$iNewWidth  = $iImgWidth;

				$iNewHeight = @($iImgWidth / $fRatio);

			}



			else

			{

				$iNewWidth  = ($iImgHeight * $fRatio);

				$iNewHeight = $iImgHeight;

			}



			$iMidX = @($iNewWidth / 2);

			$iMidY = @($iNewHeight / 2);

			$iLeft = @($iMidX - ($iImgWidth / 2));

			$iTop  = @($iMidY - ($iImgHeight / 2));





			$objTemp = @imagecreatetruecolor($iNewWidth, $iNewHeight);



			if ($sExtension == ".png" || $sExtension == ".gif")

			{

				@imagealphablending($objTemp, false);

				@imagesavealpha($objTemp,true);

				@imagecolortransparent($objTemp, @imagecolorallocatealpha($objTemp, 0, 0, 0, 127));

			}



			@imagecopyresampled($objTemp, $objPicture, 0, 0, 0, 0, $iNewWidth, $iNewHeight, $iWidth, $iHeight);





			$objThumb = @imagecreatetruecolor($iImgWidth, $iImgHeight);



			if ($sExtension == ".png" || $sExtension == ".gif")

			{



				@imagealphablending($objThumb, false);

				@imagesavealpha($objThumb,true);

				@imagecolortransparent($objThumb, @imagecolorallocatealpha($objThumb, 0, 0, 0, 127));

			}



			@imagecopyresampled($objThumb, $objTemp, 0, 0, $iLeft, $iTop, $iImgWidth, $iImgHeight, $iImgWidth, $iImgHeight);

		}





		// Resize & Fit to Size

		else

		{

			$iNewWidth  = $iImgWidth;

			$iNewHeight = $iImgHeight;

			$iLeft      = 0;

			$iTop       = 0;



			if (@($iNewWidth / $iNewHeight) > $fRatio)

			   $iNewWidth = ($iNewHeight * $fRatio);



			else

			   $iNewHeight = @($iNewWidth / $fRatio);





			if ($iNewWidth < $iImgWidth)

				$iLeft = @ceil(($iImgWidth - $iNewWidth) / 2);



			if ($iNewHeight < $iImgHeight)

				$iTop = @ceil(($iImgHeight - $iNewHeight) / 2);





			$objTemp = @imagecreatetruecolor($iNewWidth, $iNewHeight);



			if ($sExtension == ".png" || $sExtension == ".gif")

			{

				@imagealphablending($objTemp, false);

				@imagesavealpha($objTemp,true);

				@imagecolortransparent($objTemp, @imagecolorallocatealpha($objTemp, 0, 0, 0, 127));

			}



			@imagecopyresampled($objTemp, $objPicture, 0, 0, 0, 0, $iNewWidth, $iNewHeight, $iWidth, $iHeight);





			$objThumb = @imagecreatetruecolor($iImgWidth, $iImgHeight);



			if ($sExtension == ".png" || $sExtension == ".gif")

			{

				@imagealphablending($objThumb, false);

				@imagesavealpha($objThumb,true);

				@imagecolortransparent($objTemp, @imagecolorallocatealpha($objThumb, 0, 0, 0, 127));

			}



			else

				@imagefill($objThumb, 0, 0, @imagecolorallocate($objThumb, 255, 255, 255));





			@imagecopy($objThumb, $objTemp, $iLeft, $iTop, 0, 0, $iNewWidth, $iNewHeight);

		}





		if ($sExtension == ".png")

			@imagepng($objThumb, $sDestFile, 9);



		else if ($sExtension == ".gif")

			@imagegif($objThumb, $sDestFile);



		else

			@imagejpeg($objThumb, $sDestFile, 100);





		@imagedestroy($objTemp);

		@imagedestroy($objThumb);

		@imagedestroy($objPicture);

	}





	function calculateDistance($fLatitudeA, $fLongitudeA, $fLatitudeB, $fLongitudeB, $sUnit = "K")

	{

		$fTheta    = ($fLongitudeA - $fLongitudeB);

		$fDistance = @sin(deg2rad($fLatitudeA)) * sin(deg2rad($fLatitudeB)) +  cos(deg2rad($fLatitudeA)) * cos(deg2rad($fLatitudeB)) * cos(deg2rad($fTheta));

		$fDistance = acos($fDistance);

		$fDistance = rad2deg($fDistance);

		$fMiles    = ($fDistance * 60 * 1.1515);





		if ($sUnit == "K")

		{

			$fKiloMeters = @round(($fMiles * 1.609344), 2);



			if ($fKiloMeters < 1)

				return (@round($fKiloMeters * 1000)." Meters");



			return "{$fKiloMeters} Km";

		}



		else if ($sUnit == "N")

			return (@round(($fMiles * 0.8684), 2)." NM");



		else

			return (@round($fMiles, 2)." Miles");

	}





	function getExcelCol($iColumn)

	{

		$iColumn = (($iColumn < 0) ? 0 : $iColumn);

		$sColumn = chr(($iColumn % 26) + 65);



		$iQuotient = @floor($iColumn / 26);



		while ($iQuotient > 0)

		{

			$sColumn   .= chr(($iQuotient % 26) + (($iQuotient % 26) == 0 ? 90 : 64));

			$iQuotient -= 26;

			$iQuotient  = @ceil($iQuotient / 26);

		}



		return strrev($sColumn);

	}	

	

	

	function logApiCall($sParams)

	{

		$sLogDir = ($sRootDir.API_CALLS_DIR.date("Y")."/");



		if (!@file_exists($sLogDir))

		{

			@mkdir($sLogDir, 0777);

			@chmod($sLogDir, 0777);

		}



		$sLogDir .= (strtolower(date("M"))."/");



		if (!@file_exists($sLogDir))

		{

			@mkdir($sLogDir, 0777);

			@chmod($sLogDir, 0777);

		}



		$sLogFile = ($sLogDir.date("d-M-Y").".txt");





		$hFile = @fopen($sLogFile, "a+");



		if ($hFile)

		{

			@flock($hFile, LOCK_EX);

			@fwrite($hFile, "\n-- \n");

			@fwrite($hFile, ("-- Query Time : ".date('h:i A')."\n"));

			@fwrite($hFile, ("-- IP Address : ".$_SERVER['REMOTE_ADDR']."\n"));

			@fwrite($hFile, ("-- API Call   : ".$_SERVER['PHP_SELF']."\n"));

			@fwrite($hFile, "-- \n\n");

			

			foreach ($sParams as $sKey => $sValue)

			{

				@fwrite($hFile, "{$sKey} = {$sValue}\n");

			}



			@fwrite($hFile, "\n\n-- ----------------------------------------------------------------------------\n");

			@flock($hFile, LOCK_UN);

			@fclose($hFile);

		}

	}

	

	function numberToWord($iNumber)

    {

        if (($iNumber < 0) || ($iNumber > 999999999))

            return $iNumber;



        $iMillions = @floor($iNumber / 1000000);  /* Millions */

            $iNumber -= $iMillions * 1000000;



        $iLacs = @floor($iNumber / 100000);       /* Lac */

            $iNumber -= $iLacs * 100000;



        $iThousands = @floor($iNumber / 1000);    /* Thousands */

            $iNumber -= $iThousands * 1000;



        $iHundreds = @floor($iNumber / 100);      /* Hundreds */

            $iNumber -= $iHundreds * 100;



        $iTens = @floor($iNumber / 10);           /* Tens (deca) */

            $iOnes = $iNumber % 10;               /* Ones */





        $sNumber = "";



        if ($iMillions)

            $sNumber .= (numberToWord($iMillions)." Million");



        if ($iLacs)

            $sNumber .= (((empty($sNumber) ? "" : " ").numberToWord($iLacs)." Lac"));



        if ($iThousands)

            $sNumber .= (((empty($sNumber) ? "" : " ").numberToWord($iThousands)." Thousand"));



        if ($iHundreds)

            $sNumber .= (((empty($sNumber) ? "" : " ").numberToWord($iHundreds)." Hundred"));





        $sOnes = array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",

                       "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eightteen", "Nineteen");

        $sTens = array("", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eigthy", "Ninety");



        if ($iTens || $iOnes)

        {

            if (!empty($sNumber))

                $sNumber .= " and ";





            if ($iTens < 2)

                $sNumber .= $sOnes[($iTens * 10) + $iOnes];



            else

            {

                $sNumber .= $sTens[$iTens];



                if ($iOnes)

                    $sNumber .= ("-".$sOnes[$iOnes]);

            }

        }



        if (empty($sNumber))

            $sNumber = "zero";



        return $sNumber;

    }	

    

    function calculateSchoolProgress($iSchool, $sToDate)

    {

        $objDb           = new Database( );

        $fSchoolArea     = 0;

        $fWeightage      = 0;

        $fProgress       = 0;

        

        if($sToDate == "")

            $sToDate = date("Y-m-d");

        else

            $sToDate = date("Y-m-d", strtotime($sToDate));

        

        $sSQL = "SELECT block, storey_type, design_type, work_type, covered_area, progress FROM tbl_school_blocks WHERE school_id='$iSchool'";

        $objDb->query($sSQL);

                                

        $iCount = $objDb->getCount( );

        

        for($i=0; $i < $iCount; $i++)

        {

            $iBlock         = $objDb->getField($i, "block");

            $sStoreyType    = $objDb->getField($i, "storey_type");

            $sDesignType    = $objDb->getField($i, "design_type");

            $sWorkType      = $objDb->getField($i, "work_type");

            $fCoveredArea   = $objDb->getField($i, "covered_area");

            $fBProgress     = $objDb->getField($i, "progress");



            $sBlockType     = (($sWorkType == "R") ? "R" : (($sDesignType == "B") ? "B" : $sStoreyType));

            $sLastStage     = getDbValue("count(1)", "tbl_stages", "status='A' AND name LIKE '%Demobilization%' AND `type`='$sBlockType' AND id IN (SELECT DISTINCT(stage_id) FROM tbl_inspections WHERE school_id='$iSchool' AND block='$iBlock' AND `date` <= '$sToDate' AND status='P' AND stage_completed='Y')");                                                                                             

            

            if($sLastStage>0 && $fBProgress == 100)

                $fBlockProgress = 100;

            else

            {

                if ($sBlockType == "R")

                        $fBlockProgress = @round(getDbValue("COALESCE(SUM(weightage), '0')", "tbl_stages", "status='A' AND `type`='$sBlockType' AND id IN (SELECT DISTINCT(stage_id) FROM tbl_inspections WHERE school_id='$iSchool' AND block='$iBlock' AND `date` <= '$sToDate' AND status='P' AND stage_completed='Y')"), 2);                                                                                             

                else

                {

                    $iStagePosition = (int)getDbValue("s.position", "tbl_inspections i, tbl_stages s", "s.id=i.stage_id AND s.weightage>'0' AND i.school_id='$iSchool' AND i.block='$iBlock' AND i.date <= '$sToDate' AND i.status='P' AND i.stage_completed='Y' AND s.type='$sBlockType' AND s.skip!='Y'", "s.position DESC");

                    $fBlockProgress = @round(getDbValue("COALESCE(SUM(weightage), '0')", "tbl_stages", "status='A' AND position<='$iStagePosition' AND `type`='$sBlockType'"), 2);                                                                                                                                            

                }

            }

            

            $fSchoolArea    +=  $fCoveredArea;

            $fWeightage     += (($fBlockProgress / 100) * $fCoveredArea); 

            

        }

        $fProgress    = @round(($fWeightage / $fSchoolArea) * 100);

        

        return $fProgress;

    }
    
    function makeImage($sSrcFile, $sDestFile, $iDestWidth, $iDestHeight)
    {
            $iPosition  = @strrpos($sSrcFile, '.');
            $sExtension = @substr($sSrcFile, $iPosition);

            switch(strtolower($sExtension))
            {
                    case '.jpg'  : $sSource = @imagecreatefromjpeg($sSrcFile);
                                               break;

                    case '.jpeg' : $sSource = @imagecreatefromjpeg($sSrcFile);
                                               break;

                    case '.png'  : $sSource = @imagecreatefrompng($sSrcFile);
                                               break;

                    case '.gif'  : $sSource = @imagecreatefromgif($sSrcFile);
                                               break;
            }

            @list($iSrcWidth, $iSrcHeight) = @getimagesize($sSrcFile);

            $sImage = @imagecreatetruecolor($iDestWidth, $iDestHeight);

            @imagecopyresized($sImage, $sSource, 0, 0, 0, 0, $iDestWidth, $iDestHeight, $iSrcWidth, $iSrcHeight);
            @imagejpeg($sImage, $sDestFile, 100);

            @imagedestroy($sImage);
            @imagedestroy($sSource);
    }

?>