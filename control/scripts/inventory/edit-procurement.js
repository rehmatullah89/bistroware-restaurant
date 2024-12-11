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

$(document).ready(function( )
{
	$("#BtnAddRow").button({ icons:{ primary:'ui-icon-disk' } });
        $("#BtnDelRow").button({ icons:{ primary:'ui-icon-disk' } });

	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


                if (!objFV.validate("txtPoNumber", "B", "Please enter the Po-Number."))
			return false;
                
                if (!objFV.validate("ddItemLocation0", "B", "Please enter the Location of at least one product to add."))
			return false;         
            
                if (!objFV.validate("ddItemSupplier0", "B", "Please enter the Supplier of at least one product to add."))
			return false;
           
                if (!objFV.validate("ddCountry0", "B", "Please Select Origin of Ingredient of at least one product to add."))
			return false;        
            
                if (!objFV.validate("txtQuantity0", "B", "Please enter the Quantity of at least one product to add."))
			return false;        
            
                if (!objFV.validate("txtPrice0", "B", "Please enter the Price of at least one product to add."))
			return false;    
                   
                if (!objFV.validate("txtExpiry0", "B", "Please enter the Expiry Date of at least one product to add."))
			return false;     
                    
	});
});