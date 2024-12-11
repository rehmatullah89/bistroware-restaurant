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

	@ini_set("max_execution_time", 0);
	@ini_set("mysql.connect_timeout", -1);

	@ini_set('display_errors', 0);
	@ini_set('log_errors', 0);
	@error_reporting(0);

        $sBaseDir = "/home/gaiapk/public_html/bistroware/";

	@require_once("{$sBaseDir}requires/configs.php");
	@require_once("{$sBaseDir}requires/db.class.php");
	@require_once("{$sBaseDir}requires/functions.php");
	@require_once("{$sBaseDir}requires/db-functions.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );

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

                return $sMobile;
        }


	$sStartDate   = date('Y-m-d');
        $sEndDate     = date('Y-m-d', strtotime('+1 day', time()));
        
        $sStartDateTime = date('Y-m-d 13:00:00', strtotime($sStartDate));
        $sEndDateTime   = date('Y-m-d 02:00:00', strtotime($sEndDate));

	if ($sStartDateTime != "" && $sEndDateTime != "")
	{            
            $sSQL = "SELECT COUNT(DISTINCT(o.id)) as _TotalOrders, 
                            SUM(od.price) as _ItemsSale,
                            SUM(od.net_price) as _ItemsNetSale
                        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.created_at BETWEEN '$sStartDateTime' AND '$sEndDateTime' AND o.status='C' AND od.status NOT IN ('V','VP','VC')";
            $objDb->query($sSQL);
             
            $iCount  = $objDb->getCount();
            
            $iTotalOrders   = (int)$objDb->getField(0, "_TotalOrders");                
            $iItemsSale     = $objDb->getField(0, "_ItemsSale");
            $iItemsNetSale  = $objDb->getField(0, "_ItemsNetSale");
            
            try
            {
                    $sMobileNumbers = getList("tbl_admins", "id", "mobile", "mobile != '' AND sales_sms='Y'"); 
                    
                    foreach($sMobileNumbers as $iUser => $sMobile)
                    {

                        $sPhoneNumbers  = formatPhoneNumber($sMobile);
                        $sMessage       = ("Sale Day: ".date("l, M j, Y", strtotime($sStartDate))."  \n Total Orders: {$iTotalOrders}  \n Total Sale (Exclusive of GST) : Rs ". formatNumber($iItemsSale)." \n Total Sale (Inclusive of GST): Rs ". formatNumber($iItemsNetSale)."");
                        $objCurl        = @curl_init('http://119.160.92.2:7700/sendsms_url.html');

                        @curl_setopt($objCurl, CURLOPT_HEADER, FALSE);
                        @curl_setopt($objCurl, CURLOPT_RETURNTRANSFER, TRUE);		
                        @curl_setopt($objCurl, CURLOPT_POST, TRUE);
                        @curl_setopt($objCurl, CURLOPT_POSTFIELDS, ("Username=03028505810&Password=123.123&From=GAIA&To=".$sPhoneNumbers."&Message=".@urlencode($sMessage)));
                        @curl_setopt($objCurl, CURLOPT_FOLLOWLOCATION, TRUE);

                        $sResponse['TxtMessage'] = @curl_exec ($objCurl);

                        @curl_close($objCurl);

                    } 
            }
            catch (Exception $e){                
            }
	}

        $objDb->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>