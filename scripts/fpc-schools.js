
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
        $(document).on("click", ".icnSignOff", function(event)
	{
		var objIcon = this;
		
		$(objIcon).removeClass( ).addClass("icon");
		
		$.post("ajax/toggle-payment-signoff-status.php",
			{ School:objIcon.id },

			function (sResponse)
			{
				var sParams = sResponse.split("|-|");

				showMessage("#RecordMsg", sParams[0], sParams[1]);

				if (sParams[0] == "success")
				{
					
					if (objIcon.src.indexOf("green.png") != -1)
					{
						objIcon.src = objIcon.src.replace("green.png", "blue.png");
						
					}

					else
					{
						objIcon.src = objIcon.src.replace("blue.png", "green.png");
						
					}
				}

				$(objIcon).addClass("icnSignOff");
			},

			"text");

		event.stopPropagation( );
                
                setTimeout(function(){ 
                    $("#RecordMsg").hide( );
                }, 3000);
                
	});
    
});