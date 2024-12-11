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

	@require_once("../requires/common.php");

        @ini_set('display_errors', 0);
	@ini_set('log_errors', 0);
	@error_reporting(0);
	
	
	@ini_set("max_execution_time", 0);
	@ini_set("mysql.connect_timeout", -1);

	@ini_set('max_execution_time', 0);
	@set_time_limit(0);
        
	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );


        
	$sEmail   = IO::strValue("Email");
        $iReport  = IO::intValue("Report");
                
        $iGstSale           = 0;
        $iNonGstSale        = 0;        
        $sStartMonth        = date("Y-m-d",strtotime("-1 month"));; 
        $sEndMonth          = date("Y-m-d");
                        
	$aResponse  = array( );
	
	if ($sEmail == "")
		$aResponse["Message"] = "Invalid API Request";

	else if (getDbValue("COUNT(1)", "tbl_admins", "email LIKE '$sEmail' AND status='A'") > 0 && $iReport > 0)
	{
                $sSQL = "SELECT COALESCE(SUM(od.net_price), '0') as _ItemsGstSale,
                                COALESCE(SUM(od.price), '0') as _ItemsNonGstSale
                        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND DATE(o.created_at) BETWEEN '$sStartMonth' AND '$sEndMonth' AND o.status='C' AND od.status NOT IN ('V','VP','VC')";
                
                $objDb->query($sSQL);
                
                $iSaleWithoutGst= $objDb->getField(0, "_ItemsNonGstSale");
                $iSaleWithGst   = $objDb->getField(0, "_ItemsGstSale");
                
                $AverageGstSale = ceil($iSaleWithGst/30);
                $AverageNonGstSale = ceil($iSaleWithoutGst/30);
                    
                // ************** Sales Report Starts **********//
                if($iReport == 1)
                {
                        $sStartDate = IO::strValue("StartDate");
                        $sEndDate   = IO::strValue("EndDate");

                        if($sStartDate == "" || $sEndDate == "")
                        {
                            $sEndDate   = date("Y-m-d");
                            $sStartDate = date('Y-m-d', strtotime('-7 day', strtotime($sEndDate)));                        
                        }

                        $DateDiff = strtotime($sEndDate) - strtotime($sStartDate);
                        $iDays    =  round($DateDiff / (60 * 60 * 24));

                        if($iDays > 7)
                        {
                            $sStartDate = date("Y-m-d", strtotime('monday this week', strtotime($sStartDate)));   
                            $sEndDate   = date("Y-m-d", strtotime('sunday this week', strtotime($sEndDate)));

                            $sSQL = "SELECT COUNT(DISTINCT(o.id)) as _TotalOrders, WEEK(o.created_at) as _CreatedDate,
                                                SUM(od.price) as _ItemsSale,
                                                SUM(od.net_price) as _ItemsNetSale
                                    FROM tbl_orders o, tbl_order_details od
                                    WHERE o.id= od.order_id AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate' AND o.status='C' AND od.status NOT IN ('V','VP','VC')
                                    GROUP BY _CreatedDate
                                    ORDER BY _CreatedDate DESC";
                        }
                        else
                        {                    
                                $sSQL = "SELECT COUNT(DISTINCT(o.id)) as _TotalOrders, DATE_FORMAT(o.created_at, '%Y-%m-%d') as _CreatedDate,
                                                SUM(od.price) as _ItemsSale,
                                                SUM(od.net_price) as _ItemsNetSale
                                    FROM tbl_orders o, tbl_order_details od
                                    WHERE o.id= od.order_id AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate' AND o.status='C' AND od.status NOT IN ('V','VP','VC')
                                    GROUP BY _CreatedDate
                                    ORDER BY _CreatedDate";
                        }
                    
                        $objDb->query($sSQL);

                        $iCount = $objDb->getCount();

                        if ($iCount > 0)
                        {
                            $sResponseList =  array();

                            for($i=0; $i<$iCount; $i++)
                            {

                                $iTotalOrders   = $objDb->getField($i, "_TotalOrders");
                                $sOrderDate     = $objDb->getField($i, "_CreatedDate");
                                $iSaleWithoutGst= $objDb->getField($i, "_ItemsSale");
                                $iSaleWithGst   = $objDb->getField($i, "_ItemsNetSale");

                                $sResponseList[$sOrderDate] = array('total_orders'=> $iTotalOrders, 'exclusive_gst_sale'=>$iSaleWithoutGst, 'inclusive_gst_sale'=>$iSaleWithGst); 
                            }

                            $aResponse['AverageGstSale']    = $AverageGstSale;
                            $aResponse['AverageNonGstSale'] = $AverageNonGstSale;
                            $aResponse['Data']              = $sResponseList;
                            $aResponse["Message"]           = "Ok";
                        }
                        else
                                $aResponse["Message"] = "No Record Found!";    
                }                
                // ************** Sales Report Ends **********//
                
                // ************** Sales By Category Report Starts **********//
                else if($iReport == 2)
                {
                    $sStartDate = IO::strValue("StartDate");
                    $sEndDate   = IO::strValue("EndDate");
                    
                    if($sStartDate == "" || $sEndDate == "")
                    {
                        $sEndDate   = date("Y-m-d");
                        $sStartDate = date('Y-m-d', strtotime('-7 day', strtotime($sEndDate)));                        
                    }
                    
                    $sSQL = "SELECT od.category_name, od.category_id, SUM(od.price) as _GrossSale, SUM(od.net_price) as _NetSale
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id ANd DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate' AND o.status='C' AND od.status NOT IN ('V','VP','VC')
                        GROUP BY od.category_id
                        ORDER BY od.category_name";

                    $objDb->query($sSQL);
                    
                    $iCount = $objDb->getCount();
                    
                    if ($iCount > 0)
                    {
                        $sResponseList =  array();
                        
                        for($i=0; $i<$iCount; $i++)
                        {
                            $iCategory      = $objDb->getField($i, "category_name");
                            $sCategory      = $objDb->getField($i, "category_id");
                            $iSaleWithoutGst= $objDb->getField($i, "_GrossSale");
                            $iSaleWithGst   = $objDb->getField($i, "_NetSale");

                            //$iGstSale    += $iSaleWithGst;
                            //$iNonGstSale += $iSaleWithoutGst;
                            $sResponseList[$iCategory] = array('category'=> $sCategory, 'exclusive_gst_sale'=>$iSaleWithoutGst, 'inclusive_gst_sale'=>$iSaleWithGst); 
                        }

                        $aResponse['AverageGstSale']    = $AverageGstSale;
                        $aResponse['AverageNonGstSale'] = $AverageNonGstSale;
                        $aResponse['Data']              = $sResponseList;
                        $aResponse["Message"]           = "Ok";
                    }
                    else
                            $aResponse["Message"] = "No Record Found!";                    
                }                
                // ************** Sales By Category Report Ends **********//
                
                // ************** Sales By Menu Item Report Starts **********//
                else if($iReport == 3)
                {
                    $sStartDate = IO::strValue("StartDate");
                    $sEndDate   = IO::strValue("EndDate");
                    $Category   = IO::intValue("Category");
                    $sCategories= array();
                    
                    $sList = getList("tbl_categories", "id", "category", "status='A'");
                    foreach($sList as $iCategory => $sCategory)
                        $sCategories[$iCategory] = $sCategory;
                    
                    if($sStartDate == "" || $sEndDate == "")
                    {
                        $sEndDate   = date("Y-m-d");
                        $sStartDate = date('Y-m-d', strtotime('-7 day', strtotime($sEndDate)));                        
                    }
                    
                    if($Category == 0)
                        $Category = '5';
                    
                    $sSQL = "SELECT od.product_id, od.category_name, od.product_name, SUM(od.price) as _GrossSale, SUM(od.net_price) as _NetSale
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate' AND od.category_id='$Category' AND o.status='C'
                        GROUP BY od.product_name
                        ORDER BY od.product_name";
                   
                    $objDb->query($sSQL);
                    
                    $iCount = $objDb->getCount();
                    
                    if ($iCount > 0)
                    {
                        $sResponseList =  array();
                        
                        for($i=0; $i<$iCount; $i++)
                        {
                            $iProduct       = $objDb->getField($i, "product_id");
                            $sProduct       = $objDb->getField($i, "product_name");
                            $sCategory      = $objDb->getField($i, "category_name");
                            $iSaleWithoutGst= $objDb->getField($i, "_GrossSale");
                            $iSaleWithGst   = $objDb->getField($i, "_NetSale");

                            //$iGstSale    += $iSaleWithGst;
                            //$iNonGstSale += $iSaleWithoutGst;
                            $sResponseList["$sProduct"] = array('item'=> $sProduct, 'exclusive_gst_sale'=>$iSaleWithoutGst, 'inclusive_gst_sale'=>$iSaleWithGst); 
                        }

                        $aResponse['AllCategories']     = $sCategories;
                        $aResponse['SelectedCategory']  = $sCategory;
                        $aResponse['AverageGstSale']    = $AverageGstSale;
                        $aResponse['AverageNonGstSale'] = $AverageNonGstSale;
                        $aResponse['Data']              = $sResponseList;
                        $aResponse["Message"]           = "Ok";
                    }
                    else
                            $aResponse["Message"] = "No Record Found!";                    
                }                
                // ************** Sales By Menu Item Report Ends **********//
                
                // ************** Voids Report Starts **********//
                else if($iReport == 4)
                {
                    $sStartDate = IO::strValue("StartDate");
                    $sEndDate   = IO::strValue("EndDate");
                    
                    if($sStartDate == "" || $sEndDate == "")
                    {
                        $sEndDate   = date("Y-m-d");
                        $sStartDate = date('Y-m-d', strtotime('-7 day', strtotime($sEndDate)));                        
                    }
                    
                    $DateDiff = strtotime($sEndDate) - strtotime($sStartDate);
                    $iDays    =  round($DateDiff / (60 * 60 * 24));

                    if($iDays > 7)
                    {
                        $sStartDate = date("Y-m-d", strtotime('monday this week', strtotime($sStartDate)));   
                        $sEndDate   = date("Y-m-d", strtotime('sunday this week', strtotime($sEndDate)));

                        $sSQL = "SELECT WEEK(o.created_at) as _Date,
                                   sum(IF(od.status = 'P',1,0)+IF(od.status = 'PC',1,0)) as _Pending,
                                   sum(IF(od.status = 'VC',1,0)+IF(od.status = 'VP',1,0)) as _Approved,
                                   sum(IF(od.status = 'R',1,0)+IF(od.status = 'RC',1,0)) as _Rejected
		        FROM tbl_orders o, tbl_order_details od
                        WHERE o.id= od.order_id AND o.status='C' AND od.status IN ('P','PC','VP','VC','RC','R','V') 
                        AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'
                        GROUP BY _Date    
                        ORDER BY _Date DESC";
                    }
                    else
                    {
                        $sSQL = "SELECT DATE_FORMAT(o.created_at, '%Y-%m-%d') as _Date,
                                       sum(IF(od.status = 'P',1,0)+IF(od.status = 'PC',1,0)) as _Pending,
                                       sum(IF(od.status = 'VC',1,0)+IF(od.status = 'VP',1,0)) as _Approved,
                                       sum(IF(od.status = 'R',1,0)+IF(od.status = 'RC',1,0)) as _Rejected
                            FROM tbl_orders o, tbl_order_details od
                            WHERE o.id= od.order_id AND o.status='C' AND od.status IN ('P','PC','VP','VC','RC','R','V') 
                            AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'
                            GROUP BY _Date    
                            ORDER BY _Date";
                    }
                    $objDb->query($sSQL);
                    
                    $iCount = $objDb->getCount();
                    
                    if ($iCount > 0)
                    {
                        $sResponseList =  array();
                        
                        for($i=0; $i<$iCount; $i++)
                        {
                            $sDate      = $objDb->getField($i, "_Date");
                            $iPending   = $objDb->getField($i, "_Pending");
                            $iApproved  = $objDb->getField($i, "_Approved");
                            $iRejected  = $objDb->getField($i, "_Rejected");
                            
                            $sResponseList[$sDate] = array('pending'=> $iPending, 'approved'=>$iApproved, 'rejected'=>$iRejected); 
                        }

                        $iVoidsCostWithGst    = getDbValue("SUM(od.quantity*od.net_price)", "tbl_orders o, tbl_order_details od", "o.id= od.order_id AND o.status='C' AND od.status IN ('VP','VC','V') AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'");
                        $iVoidsCostWithoutGst = getDbValue("SUM(od.quantity*od.price)", "tbl_orders o, tbl_order_details od", "o.id= od.order_id AND o.status='C' AND od.status IN ('VP','VC','V') AND DATE_FORMAT(o.created_at, '%Y-%m-%d') BETWEEN '$sStartDate' AND '$sEndDate'");       
                        
                        $aResponse['VoidsCostWithGst']      = $iVoidsCostWithGst;
                        $aResponse['VoidsCostWithoutGst']   = $iVoidsCostWithoutGst;
                        $aResponse['Data']                  = $sResponseList;
                        $aResponse["Message"]               = "Ok";
                    }
                    else
                            $aResponse["Message"] = "No Record Found!";                    
                }                
                // **************Voids Report Ends **********//
	}
        else
            $aResponse["Message"] = "Invalid Report Requested";
        
	print @json_encode($aResponse);

        $objDb->close( );
	$objDb2->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>