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

	header("Expires: Tue, 01 Jan 2000 12:12:12 GMT");
	header('Cache-Control: no-cache');
	header('Pragma: no-cache');

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
        $objDb2      = new Database( );
        
        $sAction   = IO::strValue("Action");
        $Category  = IO::intValue("Category");
        
        //updated Bumped Orders
        $sBumpedOrders      = getList("tbl_orders", "id", "id", "status='B'");
        
        foreach($sBumpedOrders as $iBumpedOrder)
        {
            $iInCompleteOrder = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iBumpedOrder' AND status IN ('A','R','P')");
            if($iInCompleteOrder > 0)
            {
                $sSQL   = "UPDATE tbl_orders SET status = 'A' where id='$iBumpedOrder'";
                $bFlag  = $objDb->query($sSQL);        
                
                if($bFlag == true)
                {
                    $sSQL   = "UPDATE tbl_order_details SET bumped = 'N', bumped_at = '0000-00-00 00:00:00' where order_id='$iBumpedOrder'";
                    $bFlag  = $objDb->query($sSQL);
                }
            }
        }
        
        $sTablesList = getList("tbl_tables", "id", "table_no");
        $sFloorsList = getList("tbl_floors", "id", "name");
        $sUsersList  = getList("tbl_admins", "id", "name");
        
        $sOrderBy = " ORDER BY o.id, od.ordered_at";
        
        if($sAction == 'History')
        {
            $sSubSql = " AND (o.status = 'B' OR od.bumped='Y') ";
            $sOrderBy  = " ORDER BY o.id DESC ";
            
        }
        else
            $sSubSql = " AND o.status = 'A'";
        
        if($sAction == 'Summary')
        {            
            if($Category != "")
                $sSubSql = " AND od.category_id='$Category' ";
            else
                $sSubSql = "";
            
            $sSQL = "Select COUNT(1) as _Items, od.product_name, od.category_id, od.category_name from tbl_orders o, tbl_order_details od where o.id=od.order_id AND o.status = 'A' $sSubSql GROUP BY od.product_id";
        }
        else
            $sSQL = "Select o.id, o.updated, o.table_id, o.waiter_id, o.created_at, od.ordered_at, od.bumped from tbl_orders o, tbl_order_details od where o.id=od.order_id AND o.status !='C' $sSubSql GROUP BY o.id, od.ordered_at $sOrderBy";

        $objDb->query($sSQL);
        
        $iCount = $objDb->getCount();
        
        $iCountsList     = array();
        $sItemsList      = array();
        $iProudctsList   = array();
        $sCategoriesList = getList("tbl_orders o, tbl_order_details od", "od.category_id", "od.category_name", "o.id=od.order_id AND o.status = 'A'");
        
        for($i=0; $i< $iCount; $i++)
        {
           $iItems      = $objDb->getField($i, "_Items");   
           $sProduct    = $objDb->getField($i, "product_name");   
           $iCategory   = $objDb->getField($i, "category_id");   
           $sCategory   = $objDb->getField($i, "category_name");   

           $iCountsList[]  = $iItems;
           $sItemsList[]   = $sProduct;
           $iProudctsList[] = array('count'=>$iItems, 'item'=>$sProduct);
        }
//        echo $sSQL;exit;
        if($sAction == 'Summary')
            array_multisort($iCountsList, SORT_DESC, $sItemsList, SORT_ASC, $iProudctsList);
?>

<div id="wrap">
    <header>
			<span class="list-style-buttons">
                            <a href="<?=SITE_URL.'kds.php?Action=AllFloors'?>"><div class="btnClass <?=($sAction == 'AllFloors'?'AllFloors1':'AllFloors')?>" alt="All Floors" title="All Floors"></div></a>
                            <a href="<?=SITE_URL.'kds.php?Action=Summary'?>"><div class="btnClass <?=($sAction == 'Summary'?'Summary1':'Summary')?>" alt="Summary" title="Summary"></div></a>
                            <a href="<?=SITE_URL.'kds.php?Action=History'?>"><div class="btnClass <?=($sAction == 'History'?'History1':'History')?>" alt="History" title="History"></div></a>
                            <a href="#" id="gridview" class="switcher"><img src="images/icons/grid-view.png" alt="Grid" title="Grid View"></a>
                            <a href="#" id="listview" class="switcher active"><img src="images/icons/list-view-active.png" alt="List" title="List View"></a>                           
			</span>
                    <h1>
                        <?                        
                            if($sAction == 'AllFloors' || $sAction == '')
                                $FloorName = 'All Floors Orders';
                            else
                                $FloorName = $sAction;

                        ?>
                        <img src="images/icons/gaia-logo.png" height="70" style="margin-top: -10px;"/>&nbsp;<span style="font-size:16px !important; font-weight: normal; letter-spacing: 0.04em;"><?//$FloorName?> <div style="display:inline-block; color: white; font-size:18px; font-weight: bolder; margin-left: 100px; line-height: 30px; text-align: center;"><?=date("F d,Y")?><br/><div style="display:inline;" class="clock"></div></div>
                            <?
                            if($sAction == 'History')
                            {
?>
                            <div style="margin-left:450px; margin-top: -70px; color: white; font-size:18px; font-weight: bolder;">Bumped Orders: <?=getDbValue("COUNT(1)", "tbl_orders", "status='B'"); /*AND DATE_FORMAT(created_at,'%Y-%m-%d') = CURDATE()*/?></div>
<?
                            }
                            else if($sAction == 'AllFloors')
                            {
?>
                            <div style="margin-left:450px; margin-top: -70px; color: white; font-size:18px; font-weight: bolder;">Active Orders: <?=getDbValue("COUNT(1)", "tbl_orders", "status='A'"); /*AND DATE_FORMAT(created_at,'%Y-%m-%d') = CURDATE()*/?></div>
<?
                            }
                            ?>                            
                        </span>
                    </h1>
                </header>
<?
                if($iCount == 0)
                    echo "<div style='width: 100%; height: 800px;'>No Order Exists!</div>"; 
                        
                if($sAction != 'Summary')
                {
                        
?>    
		<ul id="products" class="list clearfix">
			<!-- row 1 -->                        
<?
                        for($i=0; $i< $iCount; $i++)
                        {
                            $iOrder     = $objDb->getField($i, "id");         
                            $sUpdated   = $objDb->getField($i, "updated");                    
                            $iTable     = $objDb->getField($i, "table_id");                    
                            $iWaiter    = $objDb->getField($i, "waiter_id");
                            $sCreated   = $objDb->getField($i, "created_at");
                            $sOrderAt   = $objDb->getField($i, "ordered_at");
                            $sBumped    = $objDb->getField($i, "bumped");
                            $iFloor     = getDbValue("floor_id", "tbl_tables", "id='$iTable'");
                            $sTable     = $sTablesList[$iTable];
                            $sFloor     = $sFloorsList[$iFloor];        
                            
                            //$iMaxServeTime = getDbValue("Max(p.cooking_time)", "tbl_products p, tbl_orders o, tbl_order_details od", "o.id=od.order_id AND p.id=od.product_id AND o.status!='C' AND o.id='$iOrder'");
                            $iOrderStatus  = getDbValue("COUNT(1)", "tbl_order_details", "status = 'A' AND order_id='$iOrder'");
                            
                            $sCurrentTime = date("Y-m-d H:i:s");                                                    
                            $Difference   = round(abs(strtotime($sCurrentTime) - strtotime(($sCreated != $sOrderAt?$sOrderAt:$sCreated))) / 60,0);
                           
                            if($sBumped == 'Y' && $sAction != 'History')
                                continue;
                        ?>
                        <li id="LiId<?=$i?>" style="border: 3px solid white;" class="clearfix <?=($i%2==0?'alt':'')?> <?=(($sCreated != $sOrderAt)?'quadrat':'')?>">
				<section class="left">
                                    <span class="thumb" style="<?=($iOrderStatus == 0?'background-color: rgb(117, 209, 63);':'')?>">Floor: <?=$sFloor?><br/>Table: <?=$sTable?></span>
                                    <h3 style="color:white;"><?=$sUsersList[$iWaiter]?></h3>
					<span class="meta">Order ID: <?=$iOrder?></span><br/>
                                        <span class="meta"><?=date("H:ia", strtotime(($sCreated != $sOrderAt?$sOrderAt:$sCreated)))?></span>
<?
                                        if($sCreated != $sOrderAt)
                                        {
?>
                                        <br/><span class="meta" style="color: red; font-size: 12px;">Running Order</span><br/>
<?
                                        }
?>
				</section>
                            
				<section class="right">
					<span class="price">
                                        <span class="darkview">
					<table border="0" cellspacing="1" cellpadding="3" width="100%">
                                            <thead>
                                                <tr style="line-height: 0px;">
                                                <th width="215">&nbsp;</th>
                                                <th width="35">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <?
                                                $sOldCategory = "";
                                                $sSQL2 = "Select * from tbl_order_details where order_id='$iOrder' AND ordered_at='$sOrderAt' ORDER By category_name";
                                                $objDb2->query($sSQL2);

                                                $iCount2 = $objDb2->getCount();
                                                
                                                for($j=0; $j<$iCount2; $j++)
                                                {
                                                    $iDetailId  = $objDb2->getField($j, "id");
                                                    $iProductId = $objDb2->getField($j, "product_id");
                                                    $sStatus    = $objDb2->getField($j, "status");
                                                    $sCategory  = $objDb2->getField($j, "category_name");
                                                    $sItem      = $objDb2->getField($j, "product_name");
                                                    $iQuantity  = $objDb2->getField($j, "quantity");
                                                    $sRemarks   = $objDb2->getField($j, "remarks");
                                                    $iServeTime = $objDb2->getField($j, "serve_time");
                                                   
                                                            
                                                    //if (@in_array($sStatus, array('A','R','V')) || $sAction == 'History')
                                                    {
                                                        if($sCategory != $sOldCategory)
                                                        {
                                            ?>
                                            <tr style="background: white; color: black; font-size: 10px;"><td colspan="2"><?=$sCategory?></td></tr>
                                            <?
                                                        }
                                            ?>
                                            <tr class="<?=@in_array($sStatus,array('P','PC'))?'FlashBorder':''?>">                                                
                                                <td id="Td<?=$i."_".$j?>" style="padding: 5px; cursor: pointer; <?=(@in_array($sStatus,array('C','PC','RC','VC'))?'background-color:#007E1C;':'background-color:#7E1B00;')?>">
<? 
                                                        if($sStatus == 'P'  && $sStatus == 'PC')
                                                        {
?>
                                                            <span style="display: block;" id="<?=$i."_".$j?>" src="<?=($sStatus == 'PC'?'green':'red')?>" onclick='ToggleItemStatus(this.id,"<?=$iDetailId?>","<?=$iOrder?>","<?=$sOrderAt?>","<?=$i?>")'><?=$iQuantity." X ".$sItem.($sRemarks != ""?"<br/><div style='font-size:10px; background-color:yellow; color: black;'>".substr($sRemarks , 0, 32)."<br />".substr($sRemarks , 32)."</div>":"")?></span>
<?                                                          
                                                        }
                                                        else if(/*$sStatus != 'P'  && $sStatus != 'PC' &&*/ $sStatus != 'V' && $sStatus != 'VC' && $sStatus != 'VP')
                                                        {
?>
                                                    <span style="display: block;" id="<?=$i."_".$j?>" src="<?=(@in_array($sStatus,array('C','RC'))?'green':'red')?>" onclick='ToggleItemStatus(this.id,"<?=$iDetailId?>","<?=$iOrder?>","<?=$sOrderAt?>","<?=$i?>")'><?=$iQuantity." X ".$sItem.($sRemarks != ""?"<br/><div style='font-size:10px; background-color:yellow; color: black;'>".substr($sRemarks , 0, 32)."<br />".substr($sRemarks , 32)."</div>":"")?></span>
<?
                                                        }                                                         
                                                        else 
                                                        {
?>
                                                            <span style="text-decoration: line-through;"><?=$iQuantity." X ".$sItem.($sRemarks != ""?"<br/><div style='font-size:10px; background-color:yellow; color: black;'>".substr($sRemarks , 0, 32)."<br />".substr($sRemarks , 32)."</div>":"")?></span>
<?                                                          
                                                        }
?>
                                                </td>
                                                <td id="Td2<?=$i."_".$j?>" style="font-size:10px; <?=(@in_array($sStatus,array('C','PC','RC','VC'))?'background-color:#007E1C;':'background-color:#7E1B00;')?>">
<?
                                                    if($sStatus == 'P' || $sStatus == 'PC' || $sStatus == 'V' || $sStatus == 'VC' || $sStatus == 'VP')
                                                    {
                                                        echo "0";
                                                    }
                                                    else if($sStatus == 'R' || $sStatus == 'RC' || $sStatus == 'A')
                                                    {
                                                        echo ($Difference > 180?180:$Difference).":00";
                                                    }
                                                    else if($sStatus == 'C')
                                                    {
                                                        echo ($iServeTime>180?180:$iServeTime).":00";
                                                    }
?>
                                                </td>
                                            </tr>
                                            <?
                                                    }
                                                    
                                                    $sOldCategory = $sCategory;
                                                }
                                            ?>
                                        </tbody>
                                    </table>
					</span>
                                        <div style="font-size: 20px; margin-right: 37px; margin-top: 20px; color: white;">
                                           <span id="countdown<?=$i?>" ref="<?=$TimeLeft?>" class="timer"></span>
                                        </div>
                                        <?
                                            if($sAction == 'History')
                                            {
                                                $ActiveItems = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iOrder' AND ordered_at='$sOrderAt' AND status IN ('A','R','P')");
?>
                                        <img  class="<?=($ActiveItems > 0?'':'HideButton')?>" id="UnDoneIcon<?=$i?>" OrderId="<?=$iOrder?>" OrderTime="<?=$sOrderAt?>" src="images/icons/redone.png" style="cursor: pointer; margin-top:20px; margin-right: 25px !important;" />
<?                                      
                                            }
                                            else                                                 
                                            {
                                                $ActiveItems = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iOrder' AND ordered_at='$sOrderAt' AND status IN ('A','R','P')");
                                        ?>
                                        <img class="<?=($ActiveItems == 0?'':'HideButton')?>" id="DoneIcon<?=$i?>" OrderId="<?=$iOrder?>" OrderTime="<?=$sOrderAt?>" src="images/icons/done1.png" style="cursor: pointer; margin-top:20px; margin-right: 25px !important;" />
<?
                                            }
?>
				</section>
			</li>
<?
                        }
?>			
		</ul>
<?
                }
                else if($sAction == 'Summary')
                {
?>
                       
    <div class="SummaryTable" style="margin-top: 120px;">
                    <table style="font-size: 20px !important; border-radius: 10px;" id="SummaryTable" border="0" cellspacing="5" cellpadding="10" width="100%">
                        <tr style="background: #000000; color: white;"><th><h2>Summary</h2></th><th>&nbsp;</th>
                            <th><?
?>
                                <select name="Category" id="Category" style="width: 150px; font-size: 15px;" onchange="PostCategory(this.value)">
                                    <option value="">All Categories</option>
<?
                                    foreach($sCategoriesList as $iCategory => $sCategory)
                                    {
?>
                                        <option value="<?=$iCategory?>" <?=($iCategory == $Category)?'selected':''?>><?=$sCategory?></option>
<?
                                    }
?>
                                </select>
                            </th>
                        </tr>
<?
                    for($i=0; $i< count($iProudctsList); $i+=3)
                    {                                                
?>
                        <tr>
                            <td><?=$iProudctsList[$i]['count']." X ".$iProudctsList[$i]['item']?></td>
                            <td><?=$iProudctsList[$i+1]['count']." X ".$iProudctsList[$i+1]['item']?></td>
                            <td><?=$iProudctsList[$i+2]['count']." X ".$iProudctsList[$i+2]['item']?></td>
                        </tr>
<?
                    }
?>
                    </table>
        </div>
<?
                }
                else
                {
?>
                    <div style="margin-top: 120px;">&nbsp;</div>
                    <div class="Floorview clearfix" style="display: table; margin: 0 auto;">
                        <iframe src="<?=SITE_URL."api/display-floor3.php?FloorId=2"?>" height="600" width="1100" style="border:none; overflow: hidden;"></iframe>
                    </div>    
<?
                }
?>
	</div>
    <script type="text/javascript" src="scripts/kds-script.js"></script>
    <script type="text/javascript">
        <!--
 
    function PostCategory(Val)
    {
        var url = window.location.href;
        
        if(url.includes("&Category"))
            url  = url.split('&Category')[0];
        
        window.location.href = url+"&Category="+Val;
    }
    
    function clock() 
    {
        var time = new Date(),
        hours = time.getHours(),
        minutes = time.getMinutes(),
        seconds = time.getSeconds();
        document.querySelectorAll('.clock')[0].innerHTML = harold(hours) + ":" + harold(minutes) + ":" + harold(seconds);
  
        function harold(standIn) {
          if (standIn < 10) {
            standIn = '0' + standIn
          }
          return standIn;
        }
    }
    setInterval(clock, 1000);

    function ToggleItemStatus(ImgId, ItemId, OrderId, OrderAt, TabId)
    {
    
        var Source = $('#'+ImgId).attr('src');  

        if(Source == 'red')
        {
            $('#Td'+ImgId).css('background-color', '#007E1C');
            $('#Td2'+ImgId).css('background-color', '#007E1C');
            $('#'+ImgId).attr("src", "green");
        }
        else{
            $('#Td'+ImgId).css('background-color', '#7E1B00');
            $('#Td2'+ImgId).css('background-color', '#7E1B00');
            $('#'+ImgId).attr("src", "red");
        }

        $.post("ajax/update-orderitem-status.php",
        { OrderItemId:ItemId,
          OrderId: OrderId,
          OrderTime:OrderAt},

        function (sResponse)
            {
            console.log(sResponse);
                if(sResponse == 0)
                {
                   $("#UnDoneIcon"+TabId).addClass("HideButton");
                    $("#DoneIcon"+TabId).removeClass("HideButton");
                }
                else
                {
                    $("#UnDoneIcon"+TabId).removeClass("HideButton");
                    $("#DoneIcon"+TabId).addClass("HideButton");
                }
            },


        "text");

    }
       
<?
       if($sAction != "Summary")
       {
?>

    $( document ).ready(function() {
    
        var TotalOrder = <?=$iCount?>;
        
        for(i=0; i<TotalOrder; i++)
        {
            
            $('#DoneIcon'+i).on('click', function() {
 
                $(this).closest("li").remove();
                var OrderId = $(this).attr('OrderId');
                var OrderAt = $(this).attr('OrderTime');
                $.post("ajax/update-order-status.php",
                { OrderId:OrderId,
                  OrderTime:  OrderAt},

                function (sResponse)
                    {
                        console.log(sResponse);
                    },


                "text");
            });
            
            $('#DoneIcon'+i).mouseover(function() {

                $(this).attr('src', "images/icons/done2.png");
            });

            $('#DoneIcon'+i).mouseout(function() {

                $(this).attr('src', "images/icons/done1.png");
            });
            
            $('#UnDoneIcon'+i).on('click', function() {
 
                $(this).closest("li").remove();
                var OrderId = $(this).attr('OrderId');
                var OrderAt = $(this).attr('OrderTime');
                $.post("ajax/update-order-status.php",
                { OrderId:OrderId,
                  OrderTime:  OrderAt },

                function (sResponse)
                    {
                        console.log(sResponse);
                    },


                "text");
            });
            
            $('#UnDoneIcon'+i).mouseover(function() {

                $(this).attr('src', "images/icons/redone1.png");
            });

            $('#UnDoneIcon'+i).mouseout(function() {

                $(this).attr('src', "images/icons/redone.png");
            });
            
            if(i == (TotalOrder-1))
                window.location.hash = 'LiId'+i;
        }
        
});
<?
       }
?>
       $('.btnClass').on('click', 'div', function() {
            $('div.active').removeClass('active');
            $(this).addClass('active');
        });
 
-->
    </script>
