
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

$(document).ready(function( )
{
        $("#BtnAddRow").button({ icons:{ primary:'ui-icon-circle-plus' } });
        $("#BtnDelRow").button({ icons:{ primary:'ui-icon-circle-minus' } });
        
	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


		if (!objFV.validate("ddStores", "B", "Please select a Store."))
			return false;

		if (!objFV.validate("txtComments", "B", "Please enter the Audit Comments."))
			return false;
               
                if (!objFV.validate("ddStatus", "B", "Please select Status."))
			return false;    
            
                if (!objFV.validate("ddQuestion0", "B", "Please select at least one question for audit."))
			return false;  
                    
                return true;
	});
});