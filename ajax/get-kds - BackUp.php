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
        $sItemCookingTime   = getList("tbl_products", "id", "cooking_time");
        
        foreach($sBumpedOrders as $iBumpedOrder)
        {
            $iInCompleteOrder = getDbValue("COUNT(1)", "tbl_order_details", "order_id='$iBumpedOrder' AND status='A'");
            if($iInCompleteOrder > 0)
            {
                $sSQL = "UPDATE tbl_orders SET status = 'A' where id='$iBumpedOrder'";
                $objDb->query($sSQL);        
            }
        }
        
        $sTablesList = getList("tbl_tables", "id", "table_no");
        $sFloorsList = getList("tbl_floors", "id", "name");
        $sUsersList = getList("tbl_admins", "id", "name");
        
        if($sAction == 'MazenineFloor')
        {
            $sMazenineTables = getDbValue("GROUP_CONCAT(id SEPARATOR ',')", "tbl_tables", "floor_id='2'");
            $sSubSql = "status = 'A' AND table_id IN ($sMazenineTables)";
        } 
        else if($sAction == 'BasementFloor')
        {
            $sBasementTables = getDbValue("GROUP_CONCAT(id SEPARATOR ',')", "tbl_tables", "floor_id='3'");
            $sSubSql = "status = 'A' AND table_id IN ($sBasementTables)";
        }
        else if($sAction == 'GroundFloor')
        {
            $sGroundTables = getDbValue("GROUP_CONCAT(id SEPARATOR ',')", "tbl_tables", "floor_id='4'");
            $sSubSql = "status = 'A' AND table_id IN ($sGroundTables)";
        }
        else if($sAction == 'History')
        {
            $sSubSql = "status = 'B' ORDER BY id DESC";
        }else
            $sSubSql = "status = 'A'";
        
        if($sAction == 'Summary')
        {
            
            if($Category != "")
                $sSubSql = " AND od.category_id='$Category' ";
            else
                $sSubSql = "";
            
            $sSQL = "Select COUNT(1) as _Items, od.product_name, od.category_id, od.category_name from tbl_orders o, tbl_order_details od where o.id=od.order_id AND o.status = 'A' $sSubSql GROUP BY od.product_id";
        }
        else
            $sSQL = "Select * from tbl_orders where $sSubSql";
        $objDb->query($sSQL);
        
        $iCount = $objDb->getCount();
        
        $iProudctsList   = array();
        $sCategoriesList = getList("tbl_orders o, tbl_order_details od", "od.category_id", "od.category_name", "o.id=od.order_id AND o.status = 'A'");
        
        for($i=0; $i< $iCount; $i++)
        {
           $iItems      = $objDb->getField($i, "_Items");   
           $sProduct    = $objDb->getField($i, "product_name");   
           $iCategory   = $objDb->getField($i, "category_id");   
           $sCategory   = $objDb->getField($i, "category_name");   

           $iProudctsList[] = array('count'=>$iItems, 'item'=>$sProduct);
        }
?>

<div id="wrap">
    <header>
			<span class="list-style-buttons">
                            <a href="<?=SITE_URL.'kds.php?Action=AllFloors'?>"><div class="btnClass <?=($sAction == 'AllFloors'?'AllFloors1':'AllFloors')?>" alt="All Floors" title="All Floors"></div></a>
<!--                            <a href="<?//SITE_URL.'kds.php?Action=MazenineFloor'?>"><div class="btnClass <?//($sAction == 'MazenineFloor'?'MazenineFloor1':'MazenineFloor')?>" alt="Mazenine Floor" title="Mazenine Floor"></div></a>
                            <a href="<?//SITE_URL.'kds.php?Action=BasementFloor'?>"><div class="btnClass <?//($sAction == 'BasementFloor'?'BasementFloor1':'BasementFloor')?>" alt="Basement Floor" title="Basement Floor"></div></a>
                            <a href="<?//SITE_URL.'kds.php?Action=GroundFloor'?>"><div class="btnClass <?//($sAction == 'GroundFloor'?'GroundFloor1':'GroundFloor')?>" alt="Ground Floor" title="Ground Floor"></div></a> -->
                            <a href="<?=SITE_URL.'kds.php?Action=TableView'?>"><div class="btnClass <?=($sAction == 'TableView'?'TableView1':'TableView')?>" alt="Table View" title="Table View"></div></a>
                            <a href="<?=SITE_URL.'kds.php?Action=Summary'?>"><div class="btnClass <?=($sAction == 'Summary'?'Summary1':'Summary')?>" alt="Summary" title="Summary"></div></a>
                            <a href="<?=SITE_URL.'kds.php?Action=History'?>"><div class="btnClass <?=($sAction == 'History'?'History1':'History')?>" alt="History" title="History"></div></a>
                            <a href="#" id="gridview" class="switcher"><img src="images/icons/grid-view.png" alt="Grid" title="Grid View"></a>
                            <a href="#" id="listview" class="switcher active"><img src="images/icons/list-view-active.png" alt="List" title="List View"></a>                           
			</span>
                    <h1>
                        <?                        
                            if($sAction == 'AllFloors' || $sAction == '')
                                $FloorName = 'All Floors Orders';
                            else if($sAction == 'MazenineFloor')
                                $FloorName = 'Mazenine Floor Orders';
                            else if($sAction == 'BasementFloor')
                                $FloorName = 'Basement Floor Orders';
                            else if($sAction == 'GroundFloor')
                                $FloorName = 'Ground Floor Orders';
                            else if($sAction == 'TableView')
                                $FloorName = 'Table View';
                            else
                                $FloorName = $sAction;
                        ?>
                        <img src="images/icons/gaia-logo.png" height="70" style="margin-top: -10px;"/>&nbsp;<span style="font-size:16px !important; font-weight: normal; letter-spacing: 0.04em;"><?//$FloorName?> <div style="display:inline-block; color: white; font-size:18px; font-weight: bolder; margin-left: 100px; line-height: 30px; text-align: center;"><?=date("F d,Y")?><br/><div style="display:inline;" class="clock"></div></div></span>
                    </h1>
                </header>
<?
                if($iCount == 0)
                    echo "<div style='width: 100%; height: 800px;'>No Order Exists!</div>"; 
                        
                if($sAction != 'TableView' && $sAction != 'Summary')
                {
                        
?>    
		<ul id="products" class="list clearfix">
			<!-- row 1 -->                        
                        <?
                        for($i=0; $i< $iCount; $i++)
                        {
                            $iOrder     = $objDb->getField($i, "id");                    
                            $iTable     = $objDb->getField($i, "table_id");                    
                            $iWaiter    = $objDb->getField($i, "waiter_id");
                            $sCreated   = $objDb->getField($i, "created_at");
                            $iFloor     = getDbValue("floor_id", "tbl_tables", "id='$iTable'");
                            $sTable     = $sTablesList[$iTable];
                            $sFloor     = $sFloorsList[$iFloor];        
                            
                            $iMaxServeTime = getDbValue("Max(p.cooking_time)", "tbl_products p, tbl_orders o, tbl_order_details od", "o.id=od.order_id AND p.id=od.product_id AND o.status!='C' AND o.id='$iOrder'");
                            $iOrderStatus  = getDbValue("COUNT(1)", "tbl_order_details", "status = 'A' AND order_id='$iOrder'");
                            
                            $sCurrentTime = date("Y-m-d H:i:s");                                                    
                            $Difference   = round(abs(strtotime($sCurrentTime) - strtotime($sCreated)) / 60,0);
                            
                            $TimeLeft   =  ($Difference>$iMaxServeTime)?0:($iMaxServeTime-$Difference);
                            
/*                            if($Difference < 60)
                                $NewDateTime  = date("Y-m-d H:{$Difference}:s");
                            else
                            {
                                $Hours      = floor($Difference/60); 
                                $Difference = $Difference -  ($Hours*60);
                                $NewDateTime= date("Y-m-d H:{$Difference}:s", strtotime("+{$Hours} hours"));
                            }
                            $DiffTime     = strtotime($NewDateTime);*/
                        ?>
                        <li id="LiId<?=$i?>" style="border: 3px solid white;" class="clearfix <?=($i%2==0?'alt':'')?> <?=(($Difference>$iMaxServeTime && $iOrderStatus != 0)?'quadrat':'')?>">
				<section class="left">
                                    <span class="thumb" style="<?=($iOrderStatus == 0?'background-color: rgb(117, 209, 63);':'')?>">Floor: <?=$sFloor?><br/>Table: <?=$sTable?></span>
                                    <h3 style="color:white;"><?=$sUsersList[$iWaiter]?></h3>
					<span class="meta">Order ID: <?=$iOrder?></span><br/>
                                        <span class="meta"><?=date("H:ia", strtotime($sCreated))?></span>
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
                                                $sSQL2 = "Select * from tbl_order_details where order_id='$iOrder' AND status != 'V' ORDER By category_name";
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
                                                   
                                                            
                                                    //if (@in_array($sStatus, array('A','R','V')) || $sAction == 'History')
                                                    {
                                                        if($sCategory != $sOldCategory)
                                                        {
                                            ?>
                                            <tr style="background: white; color: black; font-size: 10px;"><td colspan="2"><?=$sCategory?></td></tr>
                                            <?
                                                        }
                                            ?>
                                            <tr>                                                
                                                <td id="Td<?=$i."_".$j?>" style="padding: 5px; cursor: pointer; <?=($sStatus == 'C'?'background-color:#007E1C;':'background-color:#7E1B00;')?>">
<? 
                                                        if($sStatus != 'P' && $sStatus != 'V')
                                                        {
?>
                                                            <span id="<?=$i."_".$j?>" src="<?=($sStatus == 'C'?'green':'red')?>" onclick='ToggleItemStatus(this.id,"<?=$iDetailId?>")'><?=$iQuantity." X ".$sItem.($sRemarks != ""?"<br/><div style='font-size:10px; background-color:yellow; color: black;'>".substr($sRemarks , 0, 32)."<br />".substr($sRemarks , 32)."</div>":"")?></span>
<?
                                                        }else{
?>
                                                            <span style="text-decoration: line-through;"><?=$iQuantity." X ".$sItem.($sRemarks != ""?"<br/><div style='font-size:10px; background-color:yellow; color: black;'>".substr($sRemarks , 0, 32)."<br />".substr($sRemarks , 32)."</div>":"")?></span>
<?                                                          
                                                        }
?>
                                                </td>
                                                <td id="Td2<?=$i."_".$j?>" style="font-size:10px; <?=($sStatus == 'C'?'background-color:#007E1C;':'background-color:#7E1B00;')?>"><?=($sItemCookingTime[$iProductId] != "")?$sItemCookingTime[$iProductId].":00":"0"?></td>
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
?>
                                        <img id="UnDoneIcon<?=$i?>" OrderId="<?=$iOrder?>" src="images/icons/redone.png" style="cursor: pointer; margin-top:20px; margin-right: 25px !important;" />
<?                                      
                                            }
                                            else{
                                        ?>
                                        <img id="DoneIcon<?=$i?>" OrderId="<?=$iOrder?>" src="images/icons/done1.png" style="cursor: pointer; margin-top:20px; margin-right: 25px !important;" />
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
                                    <option value="">Select Category</option>
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

    function ToggleItemStatus(ImgId, ItemId)
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
        { OrderItemId:ItemId },

        function (sResponse)
            {
               
            },


        "text");

    }
       
<?
       if($sAction != "Summary")
       {
?>

    $( document ).ready(function() {
    
        var timerData = [];
        
        function secondPassed(row) {
            var seconds = timerData[row].remaining;
            var minutes = Math.round((seconds - 30) / 60);
            var remainingSeconds = seconds % 60;
            if (remainingSeconds < 10) {
                remainingSeconds = "0" + remainingSeconds;
            }
            document.getElementById('countdown' + row).innerHTML = minutes + ":" + remainingSeconds;
            if (seconds == 0) {
                clearInterval(timerData[row].timerId);
                document.getElementById('countdown' + row).innerHTML = "Time Up";
            } else {
                seconds--;
            }
            timerData[row].remaining = seconds;
        }

        function timer(row, min) {
            timerData[row] = {
                remaining: min * 60,
                timerId: setInterval(function () { secondPassed(row); }, 1000)
            };
        }
    
        var TotalOrder = <?=$iCount?>;
        
        for(i=0; i<TotalOrder; i++)
        {
            
            $('#DoneIcon'+i).on('click', function() {
 
                $(this).closest("li").remove();
                var OrderId = $(this).attr('OrderId');
                $.post("ajax/update-order-status.php",
                { OrderId:OrderId },

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
                $.post("ajax/update-order-status.php",
                { OrderId:OrderId },

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
            
            
            
            var TimeLeft = $('#countdown'+i).attr('ref');
            timer(i, TimeLeft);
        }
        

        /*timer(1, 3);
        timer(2, 2);
        timer(3, 5);*/
        
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
