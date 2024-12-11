
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
	var sUploadScript = new String(document.location);

	sUploadScript = sUploadScript.replace("edit-product.php", "upload-product-document.php");

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


		if (!objFV.validate("txtProduct", "B", "Please enter the Product Name"))
			return false;
		
		if (!objFV.validate("ddCategory", "B", "Please select the Category."))
			return false;

		if (!objFV.validate("ddStore", "B", "Please select the Store Name."))
			return false;

		if (!objFV.validate("ddTaxRate", "B", "Please select the Tax Rate."))
			return false;
                    
               if (!objFV.validate("txtPrice", "B", "Please enter the product price."))
			return false;
                    
                if (!objFV.validate("txtCookTime", "B", "Please enter the Estimated Cooking time."))
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