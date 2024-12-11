<?
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

	@require_once("../requires/common.php");

	$objDbGlobal = new Database( );
	$objDb       = new Database( );
	$objDb2      = new Database( );
	$objDb3      = new Database( );
	$objDb4      = new Database( );

	if ($sUserRights["Edit"] != "Y")
		exitPopup(true);


	$iAuditId   = IO::intValue("AuditId");
	$iIndex     = IO::intValue("Index");

        $sAuditQuestionsList    = getList("tbl_audits_questionnaire", "id", "question", "status='A'");
        $sStoresList            = getList("tbl_stores", "id", "name", "status='A'");
        
	if ($_POST)
		@include("update-audit.php");


	$sSQL = "SELECT * FROM tbl_audits WHERE id='$iAuditId'";
	$objDb->query($sSQL);

	if ($objDb->getCount( ) != 1)
		exitPopup( );

	$iStoreId    = $objDb->getField(0, "store_id");
        $sComments   = $objDb->getField(0, "comments");
        $sStatus     = $objDb->getField(0, "status");
        $sCreatedAt  = $objDb->getField(0, "created_at");
        $sCreatedBy  = $objDb->getField(0, "_CreatedBy");
        $sModifiedAt = $objDb->getField(0, "modified_at");
        $sModifiedBy = $objDb->getField(0, "_ModifiedBy");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<?
	@include("{$sAdminDir}includes/meta-tags.php");
?>
  <script type="text/javascript" src="scripts/<?= $sCurDir ?>/edit-audit.js"></script>
</head>

<body class="popupBg">

<div id="PopupDiv">
<?
	@include("{$sAdminDir}includes/messages.php");
?>
  <form name="frmRecord" id="frmRecord" method="post" action="<?= @htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>" enctype="multipart/form-data">
    <input type="hidden" name="MAX_FILE_SIZE" value="10485760" />
	<input type="hidden" name="AuditId" id="AuditId" value="<?= $iAuditId ?>" />
	<input type="hidden" name="Index" value="<?= $iIndex ?>" />
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
					  <option value="<?= $iStore ?>"<?= (($iStore == $iStoreId) ? ' selected' : '') ?>><?=$sStore ?></option>
<?
		}
?>
				    </select>
				  </div>
                                
				  <div class="br10"></div>
				  <label for="txtComments">General Comments</label>
                                  <div><textarea name="txtComments" rows="6" id="txtComments"><?= $sComments ?></textarea></div>
                                    
                                 <label for="ddStatus">Status</label>
				  <div>
				    <select name="ddStatus" id="ddStatus">
                                        <option value=""></option>
					<option value="P"<?= (($sStatus == 'P') ? ' selected' : '') ?>>Pending</option>
					<option value="R"<?= (($sStatus == 'R') ? ' selected' : '') ?>>Resolved</option>
				    </select>
				  </div>
     
		</td>

		<td width="800">
		  <div>
                                  <table id="QuestionsTable" border="0" cellspacing="5" cellpadding="5" width="100%">
                                      <tr>
                                          <td style="width:5%;"><h2>#</h2></td>
                                          <td style="width:25%;"><h2>Question</h2></td>
                                          <td style="width:10%;"><h2>Status</h2></td>
                                          <td style="width:45%;"><h2>Comments</h2></td>
                                          <td style="width:15%;"><h2>Attachments</h2></td>
                                      </tr>
<?
                                    $sSQL = "SELECT * FROM tbl_audit_details WHERE audit_id='$iAuditId'";
                                    $objDb->query($sSQL);

                                    $iCount = $objDb->getCount( );
                                    
                                    for($i=0; $i<$iCount; $i++)
                                    {
                                        $iDetailId          = $objDb->getField($i, "id");
                                        $iQuestionId        = $objDb->getField($i, "question_id");
                                        $sInspecStatus      = $objDb->getField($i, "status");
                                        $sInspecComments    = $objDb->getField($i, "comments");
                                        
?>
                                      <tr>
                                          <td>1</td>
                                          <td id="QuestionsId" >
                                              <select name="ddQuestions[]" id="ddQuestion0" style="width:160px;">
                                                  <option value=""></option>
<?
                                              foreach ($sAuditQuestionsList as $iQuestion => $sQuestion)
                                              {
?>
                                                  <option value="<?=$iQuestion?>" <?=($iQuestionId == $iQuestion)?'Selected':''?>><?=$sQuestion?></option>
<?
                                              }
?>                                            </select>    
                                          </td>
                                          
                                          <td id="StatusId">
                                              <select name="ddInspecStatus[]" id="ddInspecStatus0" style="width:80px;">
                                                  <option value="P" <?=($sInspecStatus == 'P')?'Selected':''?>>Pass</option>
                                                  <option value="F" <?=($sInspecStatus == 'F')?'Selected':''?>>Fail</option>
                                                  <option value="N" <?=($sInspecStatus == 'N')?'Selected':''?>>N/A</option>
                                              </select>    
                                          </td>
                                          
                                          <td>
                                              <input type="text" size="5" name="txtInspecComments[]" value="<?=$sInspecComments?>" size="20" class="textbox" style='width:95%;' />
                                          </td>
                                          
                                          <td>
                                              <input type="file" size="5" name="fileAttachments<?=$i?>[]" multiple value="" class="textbox" />
<?
                                                $iAuditFiles = getList("tbl_audit_files", "id", "file_name", "audit_id='$iAuditId' AND audit_detail_id='$iDetailId'");    
                                                
                                                foreach($iAuditFiles as $iAuditFile => $sAuditFile)
                                                {
                                                    $exts = explode('.', $sAuditFile);
                                                    $extension = end($exts);
                                                    
                                                    if(@in_array($extension, array('jpg','jpeg','tiff','gif','bmp','png')))
                                                    {
?>
                                                        <a class="colorbox" href="<?=SITE_URL.AUDIT_IMG_DIR.$sAuditFile?>"><?=$sAuditFile?></a><br/>
<?
                                                    }
                                                    else
                                                    {
?>
                                                        <a href="<?=SITE_URL.AUDIT_IMG_DIR.$sAuditFile?>"><?=$sAuditFile?></a><br/>
<?
                                                    }
                                                }
?>
                                          </td>
                                          <input type="hidden" name="DetailsId[]" value="<?=$iDetailId?>">
                                      </tr>    
<?
                                    }
?>
                                  </table>
                                  </div>
		</td>
              <td>
                &nbsp;
            </td>
	  </tr>
	</table>
  </form>
</div>

<script type="text/javascript">
	    <!--

    var i = document.getElementById("CountRows").value;
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
        cell5.innerHTML = "<input type='file' class='textbox' name='fileAttachments"+i+"[]' multiple value='' /><input type='hidden' name='DetailsId[]' value='0'>";
     
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