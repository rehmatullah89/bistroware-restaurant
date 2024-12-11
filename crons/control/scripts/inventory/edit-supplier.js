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
	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


                if (!objFV.validate("txtName", "B", "Please enter the Name."))
			return false;
		
		if (!objFV.validate("txtAddress", "B", "Please enter the Adrress."))
			return false;
                /*
                if (!objFV.validate("txtPhone", "B", "Please enter the Phone."))
			return false;
                    
                if (!objFV.validate("txtEmail", "B", "Please enter the Email."))
			return false;
                    
                if (!objFV.validate("txtCity", "B", "Please enter the City."))
			return false;*/
                    
                 if (!objFV.validate("ddCountry", "B", "Please select the Country."))
			return false;   
                    
                if (!objFV.validate("ddStatus", "B", "Please select Status."))
			return false;     
	});
});