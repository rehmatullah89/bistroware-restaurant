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

	if ($_SESSION["Flag"] != "")
	{
		$sMessages = array(
						    'ERROR'                           => (($_SESSION["Error"] != "") ? "<b>ERROR:</b> {$_SESSION['Error']}" : 'An Error occured while processing your request. Please try again!'),
						    'DB_ERROR'                        => 'An Error is returned from Database while processing your request. Please try again!',
							'MAIL_ERROR'                      => 'An error occured while sending you an Email. Please try again.',
							'ACCESS_DENIED'                   => 'You havn\'t enough rights to access the requested section.',
							'INCOMPLETE_FORM'                 => '<b>Invalid Request</b> Please complete the form properly to add the record.',
							'ALREADY_LOGGED_IN'               => 'You are already Logged into your Account.',

							'WEB_PAGE_ADDED'                  => 'The specified Web Page has been Added into the System successfully.',
							'WEB_PAGE_EXISTS'                 => 'A Web Page with specified SEF URL already exists. Please specify another SEF URL.',

							'META_TAGS_SAVED'                 => 'The selected Page Meta Tags have been Saved into the System successfully.',
							'CONTENTS_SAVED'                  => 'The selected Page Contents have been Saved into the System successfully.',

                                                        'DOCUMENT_ADDED'                  => 'The specified Document has been Added into the System successfully.',
							'DOCUMENT_EXISTS'                 => 'A Document with same School & Type already exists. Please specify another Document Type or School Code.',   
                                                        'DOCUMENT_DELETED'                => 'The selected Document File has been Deleted Successfully',
                                                        'DOCUMENT_COUNT_ERROR'            => 'You can not delete all the files for this document!',  
                                                            
                                                        'MAINTENANCE_UPDATED'             => 'The website Maintenance Mode has been Updated successfully.',
                                                        'SETTINGS_UPDATED'                => 'The website Settings have been Updated successfully.',

                                                        'QUESTION_EXISTS'                 => 'The specified Question already exists. Please specify another Question.',
                                                        'QUESTION_ADDED'                  => 'The specified Question has been Added into the System successfully.',
                                                            
                                                        'CATEGORY_EXISTS'                 => 'The specified Category already exists. Please specify another Category Name.',
                                                        'CATEGORY_ADDED'                  => 'The specified Category has been Added into the System successfully.',
                                                        
                                                        'RESERVATION_EXISTS'              =>  'The specified Time Slot for reservation already exists. Please specify another Time Slot.',    
                                                        'FAILURE_REASON_EXISTS'           => 'The specified Void Reason already exists. Please specify another Reason.',
                                                        'FAILURE_REASON_ADDED'            => 'The specified Void Reason has been Added into the System successfully.',   
                                                            
                                                        'PROCUREMENT_ADDED'               => 'The specified Lot has been Added into the System successfully.',       
                                                            
                                                        'STORE_ADDED'                     => 'The specified Store has been Added into the System successfully.',    
                                                        'STORE_EXISTS'                    => 'The specified Store already exists. Please specify another Store Name.',
                                                        'ORDER_ADDED'                     => 'The specified Order has been Added into the System successfully.',    
                                                        'ORDER_UPDATED'                    => 'The specified Order has been updated into the System successfully.',    
                                                        
                                                        'QUANTITY_EXEEDS'                 => 'The specified Withdrawal Quanatity exeeds then the available quantity, Please Specify correct Quantity.',       
                                                        'INVENTORY_UPDATED'               => 'The specified Inventory has been Updated successfully.',    
                                                        
                                                        'AUDIT_ADDED'                  => 'The specified Audit has been Added into the System successfully.',    
                                                        'SUPPLIER_ADDED'                  => 'The specified Supplier has been Added into the System successfully.',    
                                                        'SUPPLIER_EXISTS'                 => 'The specified Supplier already exists. Please specify another Supplier Name.',
                                                            
                                                        'RESERVATION_ADDED'               => 'A New Reservation has been Added into the System successfully.',       
                                                        'BRAND_ADDED'                     => 'The specified Brand has been Added into the System successfully.',    
                                                        'BRAND_EXISTS'                    => 'The specified Brand already exists. Please specify another Brand Name.',
                                                            
                                                        'PRODUCT_EXISTS'                  => 'The specified Product already exists. Please specify another Product Name.',   
                                                        'PRODUCT_ADDED'                  => 'The specified Product has been Added into the System successfully.',  
                                                            
                                                        'FLOOR_EXISTS'                  => 'The specified Floor already exists. Please specify another Product Name.',   
                                                        'FLOOR_ADDED'                  => 'The specified Floor has been Added into the System successfully.',  
                                                            
                                                        'TABLE_EXISTS'                  => 'The specified Table already exists. Please specify another Table Name.',   
                                                        'TABLES_ADDED'                  => 'The specified Table has been Added into the System successfully.',     
                                                        
                                                        'UNIT_EXISTS'                     => 'The specified Unit already exists. Please specify another Unit Name.',   
                                                        'UNIT_ADDED'                      => 'The specified Unit has been Added into the System successfully.',    
                                                        'USER_EXISTS'                     => 'The specified User/Customer Email already exists. Please specify another Email.',       
                                                        'LOCATION_EXISTS'                 => 'The specified Location already exists. Please specify another Location Name.',   
                                                        'LOCATION_ADDED'                  => 'The specified Location has been Added into the System successfully.',       
                                                                
							'USER_TYPE_EXISTS'                => 'The specified User Type already exists. Please specify another User Type.',
                                                        'USER_TYPE_ADDED'                 => 'The specified Admin User Type has been Added into the System successfully.',
							'USER_EMAIL_EXISTS'               => 'The specified Email Address is already used. Please specify a new email address.',
                                                        'USER_ADDED'                      => 'The specified Admin User Account has been Added into the System successfully.',

							'BACKUP_DATABASE_TAKEN'           => 'The Backup of the Database has been Taken Successfully',
							'BACKUP_WEBSITE_TAKEN'            => 'The Backup of the Website has been Taken Successfully',
							'BACKUP_DELETED'                  => 'The selected Backup File has been Deleted Successfully',
                                                        'FLOOR_FILE_DELETED'              => 'The selected Floor File has been Deleted Successfully',
							'BACKUP_RESTORED'                 => 'The Database has been Restored from the selected Backup File successfully',
							'BACKUP_WRITE_ERROR'              => 'Unable to Create the Backup File.',
							'BACKUP_READ_ERROR'               => 'Unable to Read the Backup File.',
							
							'NOTIFICATION_SENT'               => 'Your Message has been sent to selected Users.'
						  );

		$sMsgCss = "alert";

		if (@strstr($_SESSION["Flag"], 'EXISTS') || @strstr($_SESSION["Flag"], 'ERRORS') || @strstr($_SESSION["Flag"], 'INVALID'))
			$sMsgCss = "info";

		else if (@strstr($_SESSION["Flag"], 'ERROR'))
			$sMsgCss = "error";

		else if (@strstr($_SESSION["Flag"], 'ADDED') || @strstr($_SESSION["Flag"], 'OK') || @strstr($_SESSION["Flag"], 'TAKEN') || @strstr($_SESSION["Flag"], 'DELETED') || @strstr($_SESSION["Flag"], 'UPDATED') || @strstr($_SESSION["Flag"], 'RESTORED') || @strstr($_SESSION["Flag"], 'SAVED') || @strstr($_SESSION["Flag"], 'COPIED') || @strstr($_SESSION["Flag"], 'SENT'))
			$sMsgCss = "success";
	}

	else
		$sMsgCss = "hidden";
?>
      <div id="PageMsg" class="<?= $sMsgCss ?>"><?= $sMessages[$_SESSION["Flag"]] ?></div>
<?
	$_SESSION["Flag"]  = "";
	$_SESSION["Error"] = "";
?>