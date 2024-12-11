<?
/*********************************************************************************************\
 * 	***********************************************************************************************	
 * **                                                                                           
 * **	**  BISTROWARE - Resturent Management System                                                 
 * **	**  Version 1.0                                                                              
 * **	**                                                                                           
 * **	**  http://www.bstroware.com                                                                 
 * **	**                                                                                           
 * **	**  Copyright 2015 (C) Triple Tree Solutions                                                 
 * **	**  http://www.3-tree.com                                                                    
 * **	**                                                                                           
 * **	**  ***************************************************************************************  
 * **	**                                                                                           
 * **	**  Project Manager:                                                                         
 * **	**                                                                                           
 * **	**      Name  :  Muhammad Tahir Shahzad                                                      
 * **	**      Email :  mtshahzad@sw3solutions.com                                                  
 * **	**      Phone :  +92 333 456 0482                                                            
 * **	**      URL   :  http://www.mtshahzad.com                                                    
 * **	**  ***************************************************************************************  
 * **	**                                                                                           
 * **	**  Project Developer:                                                                       
 * **	**                                                                                           
 * **	**      Name  :  Rehmatullah Bhatti                                                          
 * **	**      Email :  rehmatullahbhatti@gmail.com                                                 
 * **	**      Phone :  +92 344 404 3675                                                            
 * **	**      URL   :  http://www.rehmatullahbhatti.com                                            
 * **	***********************************************************************************************	\
 * *********************************************************************************************/

        $_SESSION["Flag"] = "";
        $sMeal        = IO::strValue("txtMeal");
        $sStatus      = IO::strValue("ddStatus");
        $sMealsList   = getList("tbl_meals", "id", "meal");

        if ($sMeal == "" || $sStatus == "")
            $_SESSION["Flag"] = "INCOMPLETE_FORM";

        if ($_SESSION["Flag"] == "") 
        {
            $sSQL = "SELECT * FROM tbl_meals WHERE meal LIKE '$sMeal' AND id!='$iMeal'";

            if ($objDb->query($sSQL) == true && $objDb->getCount() == 1)
                $_SESSION["Flag"] = "MEAL_EXISTS";
        }

        if ($_SESSION["Flag"] == "") 
        {
            $sSQL  = "UPDATE tbl_meals SET  meal            = '$sMeal',
                                            status          = '$sStatus',
                                            modified_at     = NOW( ),
                                            modified_by     = '{$_SESSION['AdminId']}'
                                            WHERE id        = '$iMeal'";
                        
            $bFlag = $objDb->execute($sSQL);

            
            if ($bFlag == true) {
?>	
            <script type="text/javascript">		
                var sFields = new Array( );		
                sFields[0] = "<?= @addslashes($sMeal); ?>";		
                sFields[1] = "<?= (($sStatus == 'A') ? 'Active' : 'In-Active'); ?>";		
                parent.updateRecord(<?= $iMeal ?>, <?= $iIndex ?>, sFields);		
                parent.$.colorbox.close( );		
                parent.showMessage("#GridMsg", "success", "The selected Meal has been Updated successfully.");	
                    </script>
<?
                    exit();
            } 
            else
                $_SESSION["Flag"] = "DB_ERROR";
        }
?>