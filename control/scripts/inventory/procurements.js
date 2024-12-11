
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

var objTable;

$(document).ready(function( )
{
        $("#BtnExport").button({ icons:{ primary:'ui-icon-disk' } });
        $("#BtnAddRow").button({ icons:{ primary:'ui-icon-disk' } });
        $("#BtnDelRow").button({ icons:{ primary:'ui-icon-disk' } });

        $("#BtnExport").click(function( )
	{
		document.location = ($(this).attr("rel") + "?StartDate=" + $("#txtStartDate").val( ) + "&EndDate=" + $("#txtEndDate").val( ));
	});
    
        $("#txtStartDate, #txtEndDate").datepicker(
	{
		showOn          : "both",
		buttonImage     : "images/icons/calendar.gif",
		buttonImageOnly : true,
		dateFormat      : "yy-mm-dd"
	});
        
	$("#BtnReset").click(function( )
	{
		$("#frmRecord")[0].reset( );
		$("#RecordMsg").hide( );
		$("#txtPoNumber").focus( );
                $("#txtRemarks").val("");

		return false;
	});

        $("#txtExpiry1").datepicker(
	{
		minDate         : 0,
		dateFormat      : "yy-mm-dd"
	});
        
        $("#txtManufac1").datepicker(
	{
		dateFormat      : "yy-mm-dd"
	});

	$("#frmRecord").submit(function( )
	{
		var objFV = new FormValidator("frmRecord", "RecordMsg");


		if (!objFV.validate("txtPoNumber", "B", "Please enter the Po-Number."))
			return false;
                
                /*if(objFV.value("ddItemLocation1") == "")
                {
                    alert("Please enter the Location of at least one product to add.");
                    return false;  
                }
            
                if (!objFV.validate("ddItemSupplier1", "B", "Please enter the Supplier of at least one product to add."))
			return false;
                
                if (!objFV.validate("ddCountry1", "B", "Please Select Origin of Ingredient of at least one product to add."))
			return false;*/
            
                if (!objFV.validate("txtQuantity1", "B", "Please enter the Quantity of at least one product to add."))
			return false;        
            
                if (!objFV.validate("txtPrice1", "B", "Please enter the Price of at least one product to add."))
			return false;    
                   
                if (!objFV.validate("txtExpiry1", "B", "Please enter the Expiry Date of at least one product to add."))
			return false;
                    
                if (!objFV.validate("txtManufac1", "B", "Please enter the Manufacture Date of at least one product to add."))
			return false;    
	});



	if (parseInt($("#TotalRecords").val( )) > 50)
	{
		objTable = $("#DataGrid").dataTable( { sDom            : '<"H"f<"toolbar"><"TableTools">>t<"F"ip>',
											   aoColumnDefs    : [ { bSortable:false, aTargets:[5] } ],
											   aaSorting       : [ [ 0, "desc" ] ],
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
											   sAjaxSource     : "ajax/inventory/get-procurements.php",

											 fnDrawCallback  : function( )
															   {
																   $(".details").tipTip( );
															   },

											   fnServerData    : function (sSource, aoData, fnCallback)
																 {
																	if ($("div.toolbar #Status").length > 0)
																		aoData.push({ name:"Status", value:$("div.toolbar #Status").val( ) });

													
																	$.getJSON(sSource, aoData, function(jsonData)
																	{
																		fnCallback(jsonData);


																		$("#DataGrid tbody tr").each(function(iIndex)
																		{
																			$(this).attr("id", $(this).find("img:first-child").attr("id"));
																			$(this).find("td:first-child").addClass("position");
																		});
																	});
																 },

											   fnInitComplete  : function( )
																 {
																	$.post("ajax/inventory/get-procurement-filters.php",
																		   {},

																		   function (sResponse)
																		   {
																				$("div.toolbar").html(sResponse);
																		   },

																		   "text");

																	var iStatus    = 0;
																	
																	$("#DataGrid thead tr th").each(function(iIndex)
																	{
																		if ($(this).text( ) == "Status")
																			iStatus = iIndex;

																	});

																	this.fnFilter("", iStatus);
																	
																	if ($("#SelectButtons").length == 1)
																	{
																		if (this.fnGetNodes( ).length > 5 && $("#DataGrid .icnDelete").length > 0)
																			$("#SelectButtons").show( );

																		else
																			$("#SelectButtons").hide( );
																	}
																 }
										   } );
	}

	else
	{
		objTable = $("#DataGrid").dataTable( { sDom            : '<"H"f<"toolbar"><"TableTools">>t<"F"ip>',
											   aoColumnDefs    : [ { bSortable:false, aTargets:[5] } ],
											   aaSorting       : [ [ 0, "desc" ] ],
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

												 fnDrawCallback  : function( )
																   {
																	   $(".details").tipTip( );
																   },

											   fnInitComplete  : function( )
													 {
														$.post("ajax/inventory/get-procurement-filters.php",
															   {},

															   function (sResponse)
															   {
																$("div.toolbar").html(sResponse);
															   },

															   "text");

														var iStatus    = 0;
														
														$("#DataGrid thead tr th").each(function(iIndex)
														{
															if ($(this).text( ) == "Status")
																iStatus = iIndex;
														});

														this.fnFilter("", iStatus);														
													 }
											  } );
	}


	$("#BtnSelectAll").click(function( )
	{
		var iStatus    = 0;


		$("#DataGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Status")
				iStatus = iIndex;
		});


		var objRows    = objTable.fnGetNodes( );
		var bSelected  = false;
		var sStatus    = "";

		if ($("div.toolbar #Status").length > 0)
			sStatus = $("div.toolbar #Status").val( );

		if (parseInt($("#TotalRecords").val( )) <= 50)
		{
			for (var i = 0; i < objRows.length; i ++)
			{
				if ((sStatus == "" || sStatus == objTable.fnGetData(objRows[i])[iStatus]))
				{
					if (!$(objRows[i]).hasClass("selected"))
					{
						$(objRows[i]).addClass("selected");

						bSelected = true;
					}
				}

				else
					$(objRows[i]).removeClass("selected");
			}
		}

		else
		{
			for (var i = 0; i < objRows.length; i ++)
			{
				if (!$(objRows[i]).hasClass("selected"))
				{
					$(objRows[i]).addClass("selected");

					bSelected = true;
				}
			}
		}

		if (bSelected == true)
			$("#BtnMultiDelete").show( );
	});


	$("#BtnSelectNone").click(function( )
	{
		var objRows = objTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
			$(objRows[i]).removeClass("selected");

		$("#BtnMultiDelete").hide( );
	});

	$(document).on("change", "div.toolbar #Status", function( )
	{
		var objRows = objTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
			$(objRows[i]).removeClass("selected");

		$("#BtnMultiDelete").hide( );


		var iColumn = 0;

		$("#DataGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Status")
				iColumn = iIndex;
		});


		objTable.fnFilter($(this).val( ), iColumn);


		if (parseInt($("#TotalRecords").val( )) <= 50)
		{
			$("#DataGrid td.position").each(function(iIndex)
			{
				var objRow = objTable.fnGetPosition($(this).closest('tr')[0]);

				objTable.fnUpdate((iIndex + 1), objRow, 0);
			});

			objTable.fnDraw( );
		}
	});


	$(document).on("click", "#DataGrid tr", function( )
	{
		if ($(this).find("img.icnDelete").length == 0)
			return false;


		if ($(this).hasClass("selected"))
			$(this).removeClass("selected");

		else
			$(this).addClass("selected");


		var bSelected = false;
		var objRows   = objTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				bSelected = true

				break;
			}
		}

		if (bSelected == true)
			$("#BtnMultiDelete").show( );

		else
			$("#BtnMultiDelete").hide( );
	});


	$(".TableTools").prepend('<button id="BtnMultiDelete">Delete Selected Rows</button>')
	$("#BtnMultiDelete").button({ icons:{ primary:'ui-icon-trash' } });
	$("#BtnMultiDelete").hide( );


	$("#BtnMultiDelete").click(function( )
	{
		var sProcurements    = "";
		var objSelectedRows = new Array( );

		var objRows = objTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				if (sProcurements != "")
					sProcurements += ",";

				sProcurements += objRows[i].id;

				objSelectedRows.push(objRows[i]);
			}
		}

		if (sProcurements != "")
		{
			$("#ConfirmMultiDelete").dialog( { resizable : false,
											   width     : 420,
											   height    : 110,
											   modal     : true,
											   buttons   : { "Delete" : function( )
															{
															 $.post("ajax/inventory/delete-procurement.php",
																{ Procurements:sProcurements },

																function (sResponse)
																{
																	var sParams = sResponse.split("|-|");

																	showMessage("#GridMsg", sParams[0], sParams[1]);

																	if (sParams[0] == "success")
																	{
																		 for (var i = 0; i < objSelectedRows.length; i ++)
																		  objTable.fnDeleteRow(objSelectedRows[i]);

																		  $("#BtnMultiDelete").hide( );


																	  if ($("#SelectButtons").length == 1)
																	  {
																		if (objTable.fnGetNodes( ).length > 5 && $("#DataGrid .icnDelete").length > 0)
																			$("#SelectButtons").show( );

																		else
																			$("#SelectButtons").hide( );
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
	});


	$(document).on("click", ".icnEdit", function(event)
	{
		var iProcurementId = this.id;
		var iIndex        = objTable.fnGetPosition($(this).closest('tr')[0]);

		$.colorbox({ href:("inventory/edit-procurement.php?ProcurementId=" + iProcurementId + "&Index=" + iIndex), width:"90%", height:"80%", iframe:true, opacity:"0.50", overlayClose:false });

		event.stopPropagation( );
	});

	$(document).on("click", ".icnView", function(event)
	{
		var iProcurementId = this.id;

		$.colorbox({ href:("inventory/view-procurement.php?ProcurementId=" + iProcurementId), width:"90%", height:"80%", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
	});


	$(document).on("click", ".icnDelete", function(event)
	{
		var iProcurementId = this.id;
		var objRow        = objTable.fnGetPosition($(this).closest('tr')[0]);

		$("#ConfirmDelete").dialog( { resizable : false,
		                              width     : 420,
		                              height    : 110,
		                              modal     : true,
		                              buttons   : { "Delete" : function( )
		                                                       {
																	$.post("ajax/inventory/delete-procurement.php",
																		{ Procurements:iProcurementId },

																		function (sResponse)
																		{
																			var sParams = sResponse.split("|-|");

																			showMessage("#GridMsg", sParams[0], sParams[1]);

																			if (sParams[0] == "success")
																				objTable.fnDeleteRow(objRow);


																			if ($("#SelectButtons").length == 1)
																			{
																				if (objTable.fnGetNodes( ).length > 5 && $("#DataGrid .icnDelete").length > 0)
																					$("#SelectButtons").show( );

																				else
																					$("#SelectButtons").hide( );
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


function updateRecord(iProcurementId, iRow, sFields)
{
	if (parseInt($("#TotalRecords").val( )) <= 50)
	{
		$("#DataGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Lot Number")
				objTable.fnUpdate(sFields[0], iRow, iIndex);
                            
			else if ($(this).text( ) == "Date Time")
				objTable.fnUpdate(sFields[1], iRow, iIndex);

			else if ($(this).text( ) == "Total Quantity")
				objTable.fnUpdate(sFields[2], iRow, iIndex);
                            
                        else if ($(this).text( ) == "Remarks")
				objTable.fnUpdate(sFields[3], iRow, iIndex);    

			else if ($(this).text( ) == "Options")
				objTable.fnUpdate(sFields[4], iRow, iIndex);
		});


		$(".details").tipTip( );
	}

	else
		objTable.fnStandingRedraw( );
}