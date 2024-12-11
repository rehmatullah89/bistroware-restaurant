/*********************************************************************************************\
***********************************************************************************************
**                                                                                           **
**  BISTROWARE - Resturent Management System                                                 **
**  Version 1.0                                                                              **
**                                                                                           **
**  http://www.bistroware.com                                                                 **
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
	$("#txtPhone1").mask("03nnnnnnnnn", { placeholder:"" });

	$(document).on("click", "#View, #Add, #Edit, #Delete, #All", function( )
	{
		var iCount  = $("#PageCount").val( );
		var bStatus = true;

		for (var i = 0; i < iCount; i ++)
		{
			if ($("#cb" + this.id + i).is(":checked") == false)
			{
				bStatus = false;

				break;
			}
		}


		bStatus = ((bStatus == false) ? true : false);


		for (var i = 0; i < iCount; i ++)
		{
			if (this.id == "All")
			{
				$("#cb" + this.id + i).prop("checked", ((bStatus == true) ? false : true));
				$("#cb" + this.id + i).trigger("click");
			}

			else
				$("#cb" + this.id + i).prop("checked", bStatus);


			if ($("#cbAdd" + i).is(":checked") || $("#cbEdit" + i).is(":checked") || $("#cbDelete" + i).is(":checked"))
				$("#cbView" + i).prop("checked", true);

			if ($("#cbView" + i).is(":checked") && $("#cbAdd" + i).is(":checked") && $("#cbEdit" + i).is(":checked") && $("#cbDelete" + i).is(":checked"))
				$("#cbAll" + i).prop("checked", true);
		}

		return false;
	});


	$(document).on("click", "input[type='checkbox']", function( )
	{
		var iId = this.id.replace("cbView", "").replace("cbAdd", "").replace("cbEdit", "").replace("cbDelete", "").replace("cbAll", "");

		if (this.id == ("cbAll" + iId))
		{
			if ($("#cbAll" + iId).is(":checked"))
			{
				$("#cbView" + iId).prop("checked", true);
				$("#cbAdd" + iId).prop("checked", true);
				$("#cbEdit" + iId).prop("checked", true);
				$("#cbDelete" + iId).prop("checked", true);
			}

			else
			{
				$("#cbView" + iId).prop("checked", false);
				$("#cbAdd" + iId).prop("checked", false);
				$("#cbEdit" + iId).prop("checked", false);
				$("#cbDelete" + iId).prop("checked", false);
			}
		}

		else
		{
			if ($("#cbAdd" + iId).is(":checked") || $("#cbEdit" + iId).is(":checked") || $("#cbDelete" + iId).is(":checked"))
				$("#cbView" + iId).prop("checked", true);


			if ($("#cbView" + iId).is(":checked") && $("#cbAdd" + iId).is(":checked") && $("#cbEdit" + iId).is(":checked") && $("#cbDelete" + iId).is(":checked"))
				$("#cbAll" + iId).prop("checked", true);

			else
				$("#cbAll" + iId).prop("checked", false);
		}
	});



	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


                if (!objFV.validate("txtName", "B", "Please enter the Name."))
			return false;

		if (!objFV.validate("txtPhone1", "B,N,L(11)", "Please enter a valid Phone Number."))
			return false;

		if (!objFV.validate("txtPhone2", "B,N,L(11)", "Please enter a valid Mobile Number."))
			return false;

		if (!objFV.validate("txtEmail", "B,E", "Please enter a valid Email Address."))
			return false;

		if (!objFV.validate("ddBrand", "B", "Please select the Brand."))
			return false;

		if (objFV.value("filePicture") != "")
		{
			if (!checkImage(objFV.value("filePicture")))
			{
				showMessage("#RecordMsg", "alert", "Invalid File Format. Please select an image file of type jpg, gif or png.");

				objFV.focus("filePicture");
				objFV.select("filePicture");

				return false;
			}
		}

		$("#BtnSave").attr('disabled', true);
		$("#RecordMsg").hide( );

		return true;
	});
      
});


