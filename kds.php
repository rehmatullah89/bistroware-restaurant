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
	
	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
      
        if($_SESSION['AdminId'] != 0)
        {
            $UserRights  = explode(",", getDbValue("custom_items", "tbl_admins", "id='{$_SESSION['AdminId']}'"));
            
            if(!in_array(10, $UserRights))
                redirect(SITE_URL.ADMIN_CP_DIR);
        }else
            redirect(SITE_URL);
 
        $sAction    = IO::strValue("Action");
        $Category   = IO::intValue("Category");
        
?>
<!doctype html>
<html lang="en">
<head>
<?
//	@include("includes/meta-tags.php");
?>
    <link rel="icon" href="images/icons/favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/kds-styles.css">
    <script type="text/javascript" src="scripts/jquery.min.js"></script>
    
    <style>


        .quadrat {
            -webkit-animation: blink-border 1s infinite;  
            -moz-animation: blink-border 1s infinite;  
            -o-animation: blink-border 1s infinite;  
            animation: blink-border 1s infinite; 
        }

      @-webkit-keyframes blink-border {
        0%, 49% {
          border-color: rgb(181, 194, 204);
        }
        50%, 100% {
          border-color: red;
        }
      }
      
      .FlashBorder
      {
            -webkit-animation: blinking-border 1s infinite;  
            -moz-animation: blinking-border 1s infinite;  
            -o-animation: blinking-border 1s infinite;  
            animation: blinking-border 1s infinite;
      }
      
      @-webkit-keyframes blinking-border {
        0%, 49% {
          color: white;
        }
        50%, 100% {
          color: yellow;
        }
      }
      
      .HideButton
      {
          display: none;
      }
    </style>
</head>
<body>

<div id="AjaxConetents"></div>
 <script type="text/javascript">
    <!--
    $( document ).ready(function() {
    
        var Act = "<?=$sAction?>";
        var Cat = "<?=$Category?>";
        $.post("ajax/get-kds.php",
                { Action:Act,
                  Category:Cat  },

                function (sResponse)
                    {
                        $("#AjaxConetents").html(sResponse);
                    },


            "text");
            
        function reloadKDS(){
            
            $.post("ajax/get-kds.php",
                { Action:Act,
                  Category:Cat },

                function (sResponse)
                    {
                        $("#AjaxConetents").html(sResponse);
                    },


            "text");
        }

        setInterval(function(){
                reloadKDS() // this will run after every 1 minut
        }, 60000);

    });
    -->
</script>

</body>
</html>

<?
    $objDb->close( );
    $objDb2->close( );
    $objDbGlobal->close( );

    @ob_end_flush( );
?>