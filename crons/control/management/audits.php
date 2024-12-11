<?
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

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );

	if ($_POST)
		@include("save-audit.php");
        
        $sAuditQuestionsList    = getList("tbl_audits_questionnaire", "id", "question", "status='A'");
        $sStoresList            = getList("tbl_stores", "id", "name", "status='A'");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/audits.js"></script>
</head>

<body>

<div id="MainDiv">

<!--  Header Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/header.php");
?>
<!--  Header Section Ends Here  -->


<!--  Navigation Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/navigation.php");
?>
<!--  Navigation Section Ends Here  -->


<!--  Body Section Starts Here  -->
  <div id="Body">
<?
	@include("{$sAdminDir}includes/breadcrumb.php");
?>

    <div id="Contents">
      <input type="hidden" id="OpenTab" value="<?= (($_POST && $bError == true) ? 1 : 0) ?>" />
<?
	@include("{$sAdminDir}includes/messages.php");
?>

      <div id="PageTabs">
	    <ul>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-1"><b>Audits</b></a></li>
<?
	if ($sUserRights["Add"] == "Y")
	{
?>
	      <li><a href="<?= $_SERVER['REQUEST_URI'] ?>#tabs-2">Add New Audit</a></li>
<?
	}

?>
	    </ul>


	    <div id="tabs-1">
	      <div id="GridMsg" class="hidden"></div>

	      <div id="ConfirmDelete" title="Delete Inspection?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete this Audit Record?<br />
	      </div>

	      <div id="ConfirmMultiDelete" title="Delete Products?" class="hidden dlgConfirm">
	        <span class="ui-icon ui-icon-trash"></span>
	        Are you sure, you want to Delete the selected Audits Records?<br />
	      </div>
		
		  <br />


		  <div class="dataGrid ex_highlight_row">
		    <input type="hidden" id="TotalRecords" value="<?= $iTotalRecords = getDbValue('COUNT(1)', 'tbl_audits', "status='A'") ?>" />
		    <input type="hidden" id="RecordsPerPage" value="<?= $_SESSION["PageRecords"] ?>" />

			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tblData" id="DataGrid">
			  <thead>
			    <tr>
			      <th width="5%">#</th>
			      <th width="20%">Store</th>
			      <th width="40%">Comments</th>
			      <th width="12%">Audit Date</th>
			      <th width="8%">Status</th>
			      <th width="15%">Options</th>
			    </tr>
			  </thead>

			  <tbody>
<?
	if ($iTotalRecords <= 50)
	{
		$sSQL = "SELECT id, store_id, comments, status, created_at, modified_at,
						(SELECT name FROM tbl_admins WHERE id=tbl_audits.created_by) AS _CreatedBy,
						(SELECT name FROM tbl_admins WHERE id=tbl_audits.modified_by) AS _ModifiedBy
		        FROM tbl_audits
                        ORDER BY id";
               
		$objDb->query($sSQL);

		$iCount = $objDb->getCount( );

		for ($i = 0; $i < $iCount; $i ++)
		{
			$iId            = $objDb->getField($i, "id");
			$iStoreId       = $objDb->getField($i, "store_id");
                        $sComments      = $objDb->getField($i, "comments");
                        $sStatus        = $objDb->getField($i, "status");
			$sCreatedAt     = $objDb->getField($i, "created_at");
			$sCreatedBy     = $objDb->getField($i, "_CreatedBy");
			$sModifiedAt    = $objDb->getField($i, "modified_at");
			$sModifiedBy    = $objDb->getField($i, "_ModifiedBy");

			switch ($sStatus)
			{
				case "P" : $sStatus = "Pending"; break;
				case "R" : $sStatus = "Resolved"; break;
				default  : $sStatus = "N/A"; break;
			}
                        
                 
			$sInfo = ("<b>Created By:</b><br />{$sCreatedBy}<br />".formatDate($sCreatedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");

			if ($sCreatedAt != $sModifiedAt)
				$sInfo .= ("<br /><b>Modified By:</b><br />{$sModifiedBy}<br />".formatDate($sModifiedAt, "{$_SESSION['DateFormat']} {$_SESSION['TimeFormat']}")."<br />");
?>
		        <tr id="<?= $iId ?>">
		          <td class="position"><?= str_pad($iId, 3, '0', STR_PAD_LEFT) ?></td>
		          <td><?= $sStoresList[$iStoreId] ?></td>
		          <td><?= $sComments ?></td>
                          <td><?=date("Y-m-d", strtotime($sCreatedAt))?></td>
		          <td><?= $sStatus ?></td>

		          <td>
		            <img class="icon details" id="<?= $iId ?>" src="images/icons/info.png" alt="" title="<?= $sInfo ?>" />
<?
			if ($sUserRights["Edit"] == "Y")
			{
?>
					<img class="icnEdit" id="<?= $iId ?>" src="images/icons/edit.gif" alt="Edit" title="Edit" />
<?
			}

			if ($sUserRights["Delete"] == "Y")
			{
?>
					<img class="icnDelete" id="<?= $iId ?>" src="images/icons/delete.gif" alt="Delete" title="Delete" />
<?
			}
?>
					<img class="icnView" id="<?= $iId ?>" src="images/icons/view.gif" alt="View" title="View" />
		          </td>
		        </tr>
<?
		}
	}
?>
	          </tbody>
            </table>
		  </div>

	      <div id="SelectButtons"<?= (($iTotalRecords > 5 && $sUserRights["Delete"] == "Y") ? '' : ' class="hidden"') ?>>
	        <div class="br10"></div>

	        <div align="right">
		      <button id="BtnSelectAll">Select All</button>
		      <button id="BtnSelectNone">Clear Selection</button>
		    </div>
	      </div>
		</div>


<?
	if ($sUserRights["Add"] == "Y")
	{
		
?>
		<div id="tabs-2">
		  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
		    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
		    <input type="hidden" name="DuplicateDocument" id="DuplicateDocument" value="0" />
			<div id="RecordMsg" class="hidden"></div>

			<table border="0" cellspacing="0" cellpadding="0" width="100%">
			  <tr valign="top">
				<td width="300">
                                    <br/>
                                    
                                 <label for="ddStores">Store</label>

				  <div>
				    <select name="ddStores" id="ddStores">
					  <option value=""></option>
<?
		foreach ($sStoresList as $iStore => $sStore)
		{
?> 
					  <option value="<?= $iStore ?>"<?= (($iStore == IO::intValue('ddStores')) ? ' selected' : '') ?>><?=$sStore ?></option>
<?
		}
?>
				    </select>
				  </div>
                                
				  <div class="br10"></div>
				  <label for="txtComments">General Comments</label>
                                  <div><textarea name="txtComments" rows="6" id="txtComments"><?= IO::strValue('txtComments', true) ?></textarea></div>
                                    
                                 <label for="ddStatus">Status</label>
				  <div>
				    <select name="ddStatus" id="ddStatus">
                                        <option value=""></option>
					<option value="P"<?= ((IO::strValue('ddStatus') == 'P') ? ' selected' : '') ?>>Pending</option>
					<option value="R"<?= ((IO::strValue('ddStatus') == 'R') ? ' selected' : '') ?>>Resolved</option>
				    </select>
				  </div>

				  <br />
				  <button id="BtnSave">Save Audit</button>
				  <button id="BtnReset">Clear</button>
				</td>

				<td  width="800">
				  <div>
                                  <table id="QuestionsTable" border="0" cellspacing="5" cellpadding="5" width="100%">
                                      <tr>
                                          <td style="width:5%;"><h2>#</h2></td>
                                          <td style="width:25%;"><h2>Question</h2></td>
                                          <td style="width:10%;"><h2>Status</h2></td>
                                          <td style="width:45%;"><h2>Comments</h2></td>
                                          <td style="width:15%;"><h2>Attachments</h2></td>
                                      </tr>
                                      <tr>
                                          <td>1</td>
                                          <td id="QuestionsId" >
                                              <select name="ddQuestions[]" id="ddQuestion0" style="width:160px;">
                                                  <option value=""></option>
<?
                                              foreach ($sAuditQuestionsList as $iQuestion => $sQuestion)
                                              {
?>
                                                  <option value="<?=$iQuestion?>"><?=$sQuestion?></option>
<?
                                              }
?>                                            </select>    
                                          </td>
                                          
                                          <td id="StatusId">
                                              <select name="ddInspecStatus[]" id="ddInspecStatus0" style="width:80px;">
                                                  <option value="P">Pass</option>
                                                  <option value="F">Fail</option>
                                                  <option value="N">N/A</option>
                                              </select>    
                                          </td>
                                          
                                          <td>
                                              <input type="text" size="5" name="txtInspecComments[]" value="" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          
                                          <td>
                                              <input type="file" size="5" name="fileAttachments0[]" multiple value="" class="textbox" />
                                          </td>
                                         
                                      </tr>    
                                  </table>
                                      <br/>
                                        <input type="hidden" name="CountRows" id="CountRows" value="1"/>
                                        <a id="BtnAddRow" onclick="AddNewRow()">Add New</a>
                                        <a id="BtnDelRow" onclick="DeleteRow()">Remove Last</a>
                                  </div>
				</td>
                              <td>
                                  &nbsp;
                              </td>
			  </tr>
			</table>
		  </form>
	    </div>
<?
	}
?>
	  </div>

    </div>
  </div>
<!--  Body Section Ends Here  -->


<!--  Footer Section Starts Here  -->
<?
	@include("{$sAdminDir}includes/footer.php");
?>
<!--  Footer Section Ends Here  -->

</div>
<script type="text/javascript">
	    <!--

    var i=2;
    function AddNewRow() {
        var table = document.getElementById("QuestionsTable");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);
        var cell1  = row.insertCell(0);
        var cell2  = row.insertCell(1);
        var cell3  = row.insertCell(2);
        var cell4  = row.insertCell(3);
        var cell5  = row.insertCell(4);

        cell1.innerHTML = i;
        cell2.innerHTML = document.getElementById("QuestionsId").innerHTML;
        cell3.innerHTML = document.getElementById("StatusId").innerHTML;
        cell4.innerHTML = "<input type='text' size='5' class='textbox' name='txtInspecComments[]' value=''  style='width:95%;'/>";
        cell5.innerHTML = "<input type='file' class='textbox' name='fileAttachments"+(i-1)+"[]' multiple value='' />";
     
        i++;
        document.getElementById("CountRows").value = i;
    }

    function DeleteRow() 
    {
        var table = document.getElementById("QuestionsTable");
        var rowCount = table.rows.length;
        
        if(rowCount > 2)
        {
            table.deleteRow(rowCount-1);
            i--;
            document.getElementById("CountRows").value = i;
        }
    }
    -->
</script>                
</body>
</html>
<?
	$objDb->close( );
	$objDb2->close( );
	$objDb3->close( );
	$objDb4->close( );
	$objDbGlobal->close( );

	@ob_end_flush( );
?>