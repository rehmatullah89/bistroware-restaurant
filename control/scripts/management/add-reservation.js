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


		if (!objFV.validate("txtName", "B", "Please enter the Person Name."))
			return false;
                
                if (!objFV.validate("txtPhone", "B", "Please enter the Phone No."))
			return false;
                    
                if (!objFV.validate("txtGuests", "B", "Please enter the No of Guests."))
			return false;    
		
                if (!objFV.validate("txtDateTime", "B", "Please enter the Reservation Date Time."))
			return false;
                    
                $.ajax({

                url: "/bistroware/ajax/get-table-status.php",
                method: "GET",
                data: {'TableId': objFV.value("TableId"),
                    'ResDate': objFV.value("txtDateTime"),
                    'ResTime': objFV.value("txtResTime")
                }

            }).success(function (response) {

                if(response == 0)
                {
                    $('#BtnSave').attr("disabled", true);
                    document.getElementById("frmRecord").submit();
                }else
                {
                    alert("Hi, A reservation has already been made to this table at your selected time, Kindly select another time slot!");
                    return false;
                }
              //console.log("successfully run ajax request...");  
            }).done(function () {

                console.log("I am from done function");

            }).fail(function () {

                console.log("I am from fail function.");

            }).always(function () {

                console.log("I am from always function");

            });   
            
            return false;
 
	});
});