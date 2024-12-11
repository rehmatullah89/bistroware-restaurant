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

var objUserTable;
var objTypeTable;

$(document).ready(function( )
{
	$("#frmStore #BtnSave").button({ icons:{ primary:'ui-icon-disk' } });
	$("#frmStore #BtnReset").button({ icons:{ primary:'ui-icon-refresh' } });
	$("#frmBrand #BtnSave").button({ icons:{ primary:'ui-icon-disk' } });
	$("#frmBrand #BtnReset").button({ icons:{ primary:'ui-icon-refresh' } });

	$("#BtnStoreSelectAll").button({ icons:{ primary:'ui-icon-check' } });
	$("#BtnStoreSelectNone").button({ icons:{ primary:'ui-icon-cancel' } });
	$("#BtnBrandSelectAll").button({ icons:{ primary:'ui-icon-check' } });
	$("#BtnBrandSelectNone").button({ icons:{ primary:'ui-icon-cancel' } });

	$("#txtMobile").mask("03nnnnnnnnn", { placeholder:"" });

	$("#frmStore #BtnReset").click(function( )
	{
		$("#frmStore")[0].reset( );
		$("#UserMsg").hide( );
		$("#txtName").focus( );

		return false;
	});


	$("#frmStore").submit(function( )
	{
		var objFV = new FormValidator("frmStore", "UserMsg");


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

		$("#frmStore #BtnSave").attr('disabled', true);
		$("#UserMsg").hide( );
	});





	if (parseInt($("#TotalRecords").val( )) > 50)
	{
		objUserTable = $("#StoreGrid").dataTable( { sDom            : '<"H"f<"toolbar"><"TableTools">>t<"F"ip>',
											   aoColumnDefs    : [ { bSortable:false, aTargets:[7] } ],
											   aaSorting       : [ [ 0, "asc" ] ],
											   oLanguage       : { sEmptyTable:"No record found", sInfoEmpty:"0 records", sZeroRecords:"No matching record found" },
											   bJQueryUI       : true,
											   sPaginationType : "full_numbers",
											   bPaginate       : true,
											   bLengthChange   : false,
											   iDisplayLength  : parseInt($("#RecordsPerPage").val( )),
											   bFilter         : true,
											   bSort           : true,
											   bInfo           : true,
											   bStateSave      : false,
											   bProcessing     : false,
											   bAutoWidth      : false,
											   bServerSide     : true,
											   sAjaxSource     : "ajax/management/get-stores.php",

											   fnServerData    : function (sSource, aoData, fnCallback)
																 {
																	if ($("div.toolbar #Brand").length > 0)
																		aoData.push({ name:"Brand", value:$("div.toolbar #Brand").val( ) });


																	$.getJSON(sSource, aoData, function(jsonData)
																	{
																		fnCallback(jsonData);


																		$("#StoreGrid tbody tr").each(function(iIndex)
																		{
																			$(this).attr("id", $(this).find("img:first-child").attr("id"));
																			$(this).find("td:first-child").addClass("position");
																		});
																	});
																 },

											   fnInitComplete  : function( )
													 {
														$.post("ajax/management/get-store-filters.php",
															   {},

															   function (sResponse)
															   {
																	$("div.toolbar").html(sResponse);
															   },

															   "text");


														if ($("#SelectStoreButtons").length == 1)
														{
															if (this.fnGetNodes( ).length > 5 && $("#StoreGrid .icnDelete").length > 0)
																$("#SelectStoreButtons").show( );

															else
																$("#SelectStoreButtons").hide( );
														}
													 }
										   } );
	}

	else
	{
		objUserTable = $("#StoreGrid").dataTable( { sDom            : '<"H"f<"toolbar"><"TableTools">>t<"F"ip>',
											   aoColumnDefs    : [ { bSortable:false, aTargets:[7] } ],
											   aaSorting       : [ [ 0, "asc" ] ],
											   oLanguage       : { sEmptyTable:"No record found", sInfoEmpty:"0 records", sZeroRecords:"No matching record found" },
											   bJQueryUI       : true,
											   sPaginationType : "full_numbers",
											   bPaginate       : true,
											   bLengthChange   : false,
											   iDisplayLength  : parseInt($("#RecordsPerPage").val( )),
											   bFilter         : true,
											   bSort           : true,
											   bInfo           : true,
											   bStateSave      : false,
											   bProcessing     : false,
											   bAutoWidth      : false,

											   fnInitComplete  : function( )
																 {

																 }
													   } );
	}


	$("#BtnStoreSelectAll").click(function( )
	{
		var objRows = objUserTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if (!$(objRows[i]).hasClass("selected"))
				$(objRows[i]).addClass("selected");
		}

		$("#BtnUserMultiDelete").show( );
	});


	$("#BtnStoreSelectNone").click(function( )
	{
		var objRows = objUserTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
			$(objRows[i]).removeClass("selected");

		$("#BtnUserMultiDelete").hide( );
	});



	$(document).on("change", "div.toolbar #Brand", function( )
	{
		var objRows = objUserTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
			$(objRows[i]).removeClass("selected");

		$("#BtnUserMultiDelete").hide( );


		var iColumn = 0;

		$("#StoreGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Brand")
				iColumn = iIndex;
		});


		objUserTable.fnFilter($(this).val( ), iColumn);


		if (parseInt($("#TotalRecords").val( )) <= 100)
		{
			$("#StoreGrid td.position").each(function(iIndex)
			{
				var objRow = objUserTable.fnGetPosition($(this).closest('tr')[0]);

				objUserTable.fnUpdate((iIndex + 1), objRow, 0);
			});

			objUserTable.fnDraw( );
		}
	});


	$(document).on("click", "#StoreGrid tr", function( )
	{
		if ($(this).find("img.icnDelete").length == 0)
			return false;


		if ($(this).hasClass("selected"))
			$(this).removeClass("selected");

		else
			$(this).addClass("selected");


		var bSelected = false;
		var objRows   = objUserTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				bSelected = true

				break;
			}
		}

		if (bSelected == true)
			$("#BtnUserMultiDelete").show( );

		else
			$("#BtnUserMultiDelete").hide( );
	});


	$("#tabs-1 .TableTools").prepend('<button id="BtnUserMultiDelete">Delete Selected Rows</button>')
	$("#BtnUserMultiDelete").button({ icons:{ primary:'ui-icon-trash' } });
	$("#BtnUserMultiDelete").hide( );


	$("#BtnUserMultiDelete").click(function(event)
	{
		var sStores          = "";
		var objSelectedRows = new Array( );

		var objRows = objUserTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				if (sStores != "")
					sStores += ",";

				sStores += objRows[i].id;

				objSelectedRows.push(objRows[i]);
			}
		}


		if (sStores != "")
		{
			$("#ConfirmUserMultiDelete").dialog( { resizable : false,
						           width     : 420,
						      	   height    : 110,
						           modal     : true,
						           buttons   : { "Delete" : function( )
									            {
											     $.post("ajax/management/delete-store.php",
												    { Stores:sStores },

												    function (sResponse)
												    {
													    var sParams = sResponse.split("|-|");

													    showMessage("#StoreGridMsg", sParams[0], sParams[1]);

													    if (sParams[0] == "success")
													    {
													         for (var i = 0; i < objSelectedRows.length; i ++)
														      objUserTable.fnDeleteRow(objSelectedRows[i]);

													          $("#BtnUserMultiDelete").hide( );


														  if ($("#SelectStoreButtons").length == 1)
														  {
														  	if (objUserTable.fnGetNodes( ).length > 5 && $("#StoreGrid .icnDelete").length > 0)
																$("#SelectStoreButtons").show( );

														  	else
																$("#SelectStoreButtons").hide( );
														  }
													    }
												    },

												    "text");

											    $(this).dialog("close");
									            },

								          Cancel  : function( )
									            {
											     $(this).dialog("close");

									            }
								       }
						         });
		}

		event.stopPropagation( );
	});

	$(document).on("click", "#StoreGrid .icnEdit", function(event)
	{
		var iStoreId = this.id;
		var iIndex  = objUserTable.fnGetPosition($(this).closest('tr')[0]);

		$.colorbox({ href:("management/edit-store.php?StoreId=" + iStoreId + "&Index=" + iIndex), width:"50%", height:"80%", iframe:true, opacity:"0.50", overlayClose:false });

		event.stopPropagation( );
	});


	$(document).on("click", "#StoreGrid .icnView", function(event)
	{
		var iStoreId = this.id;

		$.colorbox({ href:("management/view-store.php?StoreId=" + iStoreId), width:"50%", height:"80%", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
	});


	$(document).on("click", "#StoreGrid .icnDelete", function(event)
	{
		var iStoreId = this.id;
		var objRow  = objUserTable.fnGetPosition($(this).closest('tr')[0]);

		$("#ConfirmUserDelete").dialog( { resizable : false,
		                              width     : 420,
		                              height    : 110,
		                              modal     : true,
		                              buttons   : { "Delete" : function( )
		                                                       {
										$.post("ajax/management/delete-store.php",
											{ Stores:iStoreId },

											function (sResponse)
											{
												var sParams = sResponse.split("|-|");

												showMessage("#StoreGridMsg", sParams[0], sParams[1]);

												if (sParams[0] == "success")
													objUserTable.fnDeleteRow(objRow);


											  	if ($("#SelectStoreButtons").length == 1)
											  	{
											  		if (objUserTable.fnGetNodes( ).length > 5 && $("#StoreGrid .icnDelete").length > 0)
														$("#SelectStoreButtons").show( );

											  		else
														$("#SelectStoreButtons").hide( );
												}
											},

											"text");

		                                                      	    	$(this).dialog("close");
		                                                       },

		                                             Cancel  : function( )
		                                                       {
		                                                            	$(this).dialog("close");
		                                                       }
		                                          }
		                            });

		event.stopPropagation( );
	});









	$("#View, #Add, #Edit, #Delete, #All").click(function( )
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


	$("input[type='checkbox']").click(function( )
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


	$("#frmBrand #BtnReset").click(function( )
	{
		$("#frmBrand")[0].reset( );
		$("#TypeMsg").hide( );
		$("#txtBrand").focus( );

		return false;
	});


	$("#frmBrand").submit(function( )
	{
		var objFV = new FormValidator("frmBrand", "TypeMsg");


		if (!objFV.validate("txtBrand", "B", "Please enter the Brand."))
			return false;
                    
                if (!objFV.validate("fileLogo", "B", "Please select a Logo."))
			return false;    

		$("#frmBrand #BtnSave").attr('disabled', true);
		$("#TypeMsg").hide( );
	});




	objTypeTable = $("#BrandGrid").dataTable( {     sDom            : '<"H"fCR>t<"F"ip>',
						       aoColumnDefs    : [ { bSortable:false, aTargets:[3] } ],
						       oLanguage       : { sEmptyTable:"No record found", sInfoEmpty:"0 records", sZeroRecords:"No matching record found" },
						       bJQueryUI       : true,
						       sPaginationType : "full_numbers",
						       bPaginate       : true,
						       bLengthChange   : false,
						       iDisplayLength  : parseInt($("#RecordsPerPage").val( )),
						       bFilter         : true,
						       bSort           : true,
						       bInfo           : true,
						       bStateSave      : true,
						       bProcessing     : false,
						       bAutoWidth      : false } );


	$("#BtnBrandSelectAll").click(function( )
	{
		var objRows = objTypeTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if (!$(objRows[i]).hasClass("selected"))
				$(objRows[i]).addClass("selected");
		}

		$("#BtnTypeMultiDelete").show( );
	});


	$("#BtnBrandSelectNone").click(function( )
	{
		var objRows = objTypeTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
			$(objRows[i]).removeClass("selected");

		$("#BtnTypeMultiDelete").hide( );
	});


	$(document).on("click", "#BrandGrid tr", function( )
	{
		if ($(this).find("img.icnDelete").length == 0)
			return false;


		if ($(this).hasClass("selected"))
			$(this).removeClass("selected");

		else
			$(this).addClass("selected");


		var bSelected = false;
		var objRows   = objTypeTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				bSelected = true

				break;
			}
		}

		if (bSelected == true)
			$("#BtnTypeMultiDelete").show( );

		else
			$("#BtnTypeMultiDelete").hide( );
	});


	$("#tabs-3 .TableTools").prepend('<button id="BtnTypeMultiDelete">Delete Selected Rows</button>')
	$("#BtnTypeMultiDelete").button({ icons:{ primary:'ui-icon-trash' } });
	$("#BtnTypeMultiDelete").hide( );


	$("#BtnTypeMultiDelete").click(function(event)
	{
		var sTypes          = "";
		var objSelectedRows = new Array( );

		var objRows = objTypeTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				if (sTypes != "")
					sTypes += ",";

				sTypes += objRows[i].id;

				objSelectedRows.push(objRows[i]);
			}
		}


		if (sTypes != "")
		{
			$("#ConfirmTypeMultiDelete").dialog( { resizable : false,
						           width     : 420,
						      	   height    : 110,
						           modal     : true,
						           buttons   : { "Delete" : function( )
									            {
											     $.post("ajax/management/delete-brand.php",
												    { Types:sTypes },

												    function (sResponse)
												    {
													    var sParams = sResponse.split("|-|");

													    showMessage("#BrandGridMsg", sParams[0], sParams[1]);

													    if (sParams[0] == "success")
													    {
													         for (var i = 0; i < objSelectedRows.length; i ++)
														      objTypeTable.fnDeleteRow(objSelectedRows[i]);

													          $("#BtnTypeMultiDelete").hide( );


														  if ($("#SelectTypeButtons").length == 1)
														  {
														  	if (objTypeTable.fnGetNodes( ).length > 5 && $("#BrandGrid .icnDelete").length > 0)
																$("#SelectTypeButtons").show( );

														  	else
																$("#SelectTypeButtons").hide( );
														  }
													    }
												    },

												    "text");

											    $(this).dialog("close");
									            },

								          Cancel  : function( )
									            {
											     $(this).dialog("close");

									            }
								       }
						         });
		}

		event.stopPropagation( );
	});


	$(document).on("click", "#BrandGrid .icnEdit", function(event)
	{
		var iBrandId = this.id;
		var iIndex  = objTypeTable.fnGetPosition($(this).closest('tr')[0]);

		$.colorbox({ href:("management/edit-brand.php?BrandId=" + iBrandId + "&Index=" + iIndex), width:"40%", height:"40%", iframe:true, opacity:"0.50", overlayClose:false });

		event.stopPropagation( );
	});


	$(document).on("click", "#BrandGrid .icnView", function(event)
	{
		var iBrandId = this.id;

		$.colorbox({ href:("management/view-brand.php?BrandId=" + iBrandId), width:"40%", height:"40%", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
	});


	$(document).on("click", "#BrandGrid .icnDelete", function(event)
	{
		var iBrandId = this.id;
		var objRow  = objTypeTable.fnGetPosition($(this).closest('tr')[0]);

		$("#ConfirmTypeDelete").dialog( { resizable : false,
		                              width     : 420,
		                              height    : 110,
		                              modal     : true,
		                              buttons   : { "Delete" : function( )
		                                                       {
										$.post("ajax/management/delete-brand.php",
											{ Types:iBrandId },

											function (sResponse)
											{
												var sParams = sResponse.split("|-|");

												showMessage("#BrandGridMsg", sParams[0], sParams[1]);

												if (sParams[0] == "success")
													objTypeTable.fnDeleteRow(objRow);


											  	if ($("#SelectTypeButtons").length == 1)
											  	{
											  		if (objTypeTable.fnGetNodes( ).length > 5 && $("#BrandGrid .icnDelete").length > 0)
														$("#SelectTypeButtons").show( );

											  		else
														$("#SelectTypeButtons").hide( );
												}
											},

											"text");

		                                                      	    	$(this).dialog("close");
		                                                       },

		                                             Cancel  : function( )
		                                                       {
		                                                            	$(this).dialog("close");
		                                                       }
		                                          }
		                            });

		event.stopPropagation( );
	});
});


function updateStore(iStoreId, iRow, sFields)
{
	if (parseInt($("#TotalRecords").val( )) <= 50)
	{
		$("#StoreGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Name")
				objUserTable.fnUpdate(sFields[0], iRow, iIndex);

			else if ($(this).text( ) == "Address")
				objUserTable.fnUpdate(sFields[1], iRow, iIndex);

			else if ($(this).text( ) == "Phone")
				objUserTable.fnUpdate(sFields[2], iRow, iIndex);

                        else if ($(this).text( ) == "Email")
				objUserTable.fnUpdate(sFields[3], iRow, iIndex);
        
			else if ($(this).text( ) == "Brand")
				objUserTable.fnUpdate(sFields[4], iRow, iIndex);

			else if ($(this).text( ) == "Status")
				objUserTable.fnUpdate(sFields[5], iRow, iIndex);

			else if ($(this).text( ) == "Options")
				objUserTable.fnUpdate(sFields[6], iRow, iIndex);
		});
	}

	else
		objUserTable.fnStandingRedraw( );
}


function updateBrand(iBrandId, iRow, sFields)
{
	$("#BrandGrid thead tr th").each(function(iIndex)
	{
		if ($(this).text( ) == "Brand")
			objTypeTable.fnUpdate(sFields[0], iRow, iIndex);

		else if ($(this).text( ) == "Status")
			objTypeTable.fnUpdate(sFields[1], iRow, iIndex);
                    
                else if ($(this).text( ) == "Options")
                        objUserTable.fnUpdate(sFields[2], iRow, iIndex);    
	});
}
