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
        var sUploadScript = new String(document.location);

	sUploadScript = sUploadScript.replace("edit-floor.php", "upload-floor-files.php");

	$("#Files").plupload(
	{
		container           : "Files",
		runtimes            : "html5,flash,silverlight,html4",
		url                 : sUploadScript,
		chunk_size          : '1mb',
		unique_names        : false,
		rename              : true,
		sortable            : true,
		dragdrop            : true,
		filters             : { prevent_duplicates:true, max_file_size:'10mb', mime_types:[{ title:"Audit files", extensions:"jpg,jpeg,gif,png,zip,doc,docx,pdf,xls,xslx,ppt" }] },
		views               : { list:true, thumbs:true, active:'thumbs' },
		flash_swf_url       : "plugins/plupload/Moxie.swf",
		silverlight_xap_url : "plugins/plupload/Moxie.xap"
	});
        
	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


		if (!objFV.validate("txtFloor", "B", "Please enter the Floor Name."))
			return false;
                    
                if (!objFV.validate("txtFloorWidth", "B", "Please enter the Floor Width."))
			return false;
                    
                if (!objFV.validate("txtFloorLength", "B", "Please enter the Floor Length."))
			return false;    
                    
		if (!objFV.validate("ddStore", "B", "Please select the Store."))
			return false;
                    
                if (!objFV.validate("ddStatus", "B", "Please select Status."))
			return false; 
                
                var objPlUpload = $("#Files").plupload("getUploader");

		if (objPlUpload.files.length > 0)
		{
			if (objPlUpload.files.length == (objPlUpload.total.uploaded + objPlUpload.total.failed))
			{
				$("#BtnSave").attr('disabled', true);
				$("#RecordMsg").hide( );

				return true;
			}

			else
			{
				objPlUpload.start( );

				objPlUpload.bind('UploadComplete', function( )
				{
					$("#BtnSave").attr('disabled', true);
					$("#RecordMsg").hide( );


					$("#frmRecord")[0].submit( );
				});


				return false;
			}
		}

		else
		{
			$("#BtnSave").attr('disabled', true);
			$("#RecordMsg").hide( );

			return true;
		}
                
	});
});