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
        $("#BtnAddRow").button({ icons:{ primary:'ui-icon-circle-plus' } });
        $("#BtnDelRow").button({ icons:{ primary:'ui-icon-circle-minus' } });

	$("#frmRecord").submit(function( )
	{
                var obj = document.getElementById("ToggleId");
            
                if(obj.checked == false)
                {
                    var objFV = new FormValidator("frmRecord", "RecordMsg");

                    var BillAmt   = objFV.value("BillAmount");               
                    var CashAmt   = objFV.value("CashAmt");                
                    var CreditAmt = objFV.value("CreditAmt");  

                    if(isNaN(CashAmt))
                        CashAmt = -1;

                    if(isNaN(CreditAmt))
                        CreditAmt = -1;

                    var PaidBill = parseFloat(CashAmt) + parseFloat(CreditAmt);

                    if(PaidBill < 0 || PaidBill == null)
                    {
                        if (!objFV.validate("CashAmt", "B", "Please Enter a Valid Bill Amount."))
                            return false;
                    }

                    if(PaidBill < BillAmt && PaidBill != 0)
                    {
                        alert("Bill paid amount can not be less then the bill amount.");
                        return false;
                    }                      
                    else
                        return true;
                }
	});
});