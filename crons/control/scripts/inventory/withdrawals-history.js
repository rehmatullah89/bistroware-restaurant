
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
        $("#ApplyFilter").button({ icons:{ primary:'ui-icon-disk' } });

        
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
											   sAjaxSource     : "ajax/inventory/get-withdrawals-history.php",

											 fnDrawCallback  : function( )
															   {
																   $(".details").tipTip( );
															   },

											   fnServerData    : function (sSource, aoData, fnCallback)
																 {
																	if ($("div.toolbar #Status").length > 0)
																		aoData.push({ name:"Status", value:$("div.toolbar #Status").val( ) });
                                                                                                                                        
                                                                                                                                        if ($("#txtStartDate").val() != "")
																		aoData.push({ name:"StartDate", value:$("#txtStartDate").val( ) });
                                                                                                                                            
                                                                                                                                        if ($("#txtEndDate").val() != "")
																		aoData.push({ name:"EndDate", value:$("#txtEndDate").val( ) });    
                                                                                                                                            
													
																	$.getJSON(sSource, aoData, function(jsonData)
																	{
																		fnCallback(jsonData);


																		$("#DataGrid tbody tr").each(function(iIndex)
																		{
																			$(this).attr("id", $(this).find("img:first-child").attr("id"));
                                                                                                                                                        
                                                                                                                                                        if($(this).find(".details").attr("ref") == "I")
                                                                                                                                                        {
                                                                                                                                                            $(this).css('background-color','#E7967F !important');
                                                                                                                                                        }else
                                                                                                                                                            $(this).css('background-color','#89F688 !important');
                                                                                                                                                        
																			$(this).find("td:first-child").addClass("position");
																		});
																	});
																 },

											   fnInitComplete  : function( )
																 {
																	$.post("ajax/inventory/get-withdrawals-history-filters.php",
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
														$.post("ajax/inventory/get-withdrawals-history-filters.php",
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
        
        $(document).on("click", "#ApplyFilter", function( )
	{
                var StDate = $("#txtStartDate").val( );
                var EnDate = $("#txtEndDate").val( );
            
                if(StDate != "" && EnDate != "")
                    objTable.fnFilter($(this).val( ), 0);
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
		var sWithdrawalsHistory    = "";
		var objSelectedRows = new Array( );

		var objRows = objTable.fnGetNodes( );

		for (var i = 0; i < objRows.length; i ++)
		{
			if ($(objRows[i]).hasClass("selected"))
			{
				if (sWithdrawalsHistory != "")
					sWithdrawalsHistory += ",";

				sWithdrawalsHistory += objRows[i].id;

				objSelectedRows.push(objRows[i]);
			}
		}

		if (sWithdrawalsHistory != "")
		{
			$("#ConfirmMultiDelete").dialog( { resizable : false,
											   width     : 420,
											   height    : 110,
											   modal     : true,
											   buttons   : { "Delete" : function( )
															{
															 $.post("ajax/inventory/delete-withdrawals-history.php",
																{ History:sWithdrawalsHistory },

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
		var iHistoryId = this.id;
		var iIndex        = objTable.fnGetPosition($(this).closest('tr')[0]);

		$.colorbox({ href:("inventory/edit-withdrawals-history.php?HistoryId=" + iHistoryId + "&Index=" + iIndex), width:"40%", height:"60%", iframe:true, opacity:"0.50", overlayClose:false });

		event.stopPropagation( );
	});

	$(document).on("click", ".icnView", function(event)
	{
		var iHistoryId = this.id;

		$.colorbox({ href:("inventory/view-withdrawals-history.php?HistoryId=" + iHistoryId), width:"90%", height:"80%", iframe:true, opacity:"0.50", overlayClose:true });

		event.stopPropagation( );
	});


	$(document).on("click", ".icnDelete", function(event)
	{
		var iHistoryId = this.id;
		var objRow        = objTable.fnGetPosition($(this).closest('tr')[0]);

		$("#ConfirmDelete").dialog( { resizable : false,
		                              width     : 420,
		                              height    : 110,
		                              modal     : true,
		                              buttons   : { "Delete" : function( )
		                                                       {
																	$.post("ajax/inventory/delete-withdrawals-history.php",
																		{ History:iHistoryId },

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


function updateRecord(iHistoryId, iRow, sFields)
{
	if (parseInt($("#TotalRecords").val( )) <= 50)
	{
		$("#DataGrid thead tr th").each(function(iIndex)
		{
			if ($(this).text( ) == "Options")
				objTable.fnUpdate(sFields[5], iRow, iIndex);
		});


		$(".details").tipTip( );
	}

	else
		objTable.fnStandingRedraw( );
}