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

	// Database Configuration
	if (@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE)
	{
		define('DB_SERVER'   , 'localhost');
		define('DB_NAME'     , 'gaiapk_bistroware');
		define('DB_USER'     , 'gaiapk_root');
		define('DB_PASSWORD' , '3tree');

	    define("SITE_URL",    "http://www.gaia.com.pk/bistroware/");
	}

	else
	{
		define("DB_SERVER",   "localhost");
		define("DB_NAME",     "bistroware");
		define("DB_USER",     "root");
		define("DB_PASSWORD", "");

		define("SITE_URL",    "http://localhost/bistroware/");
	}


	// User Queries Logging
	define("LOG_DB_TRANSACTIONS",   ((@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE) ? TRUE : FALSE));
	define("DB_LOGS_DIR",           ($_SERVER['DOCUMENT_ROOT'].((substr($_SERVER['DOCUMENT_ROOT'], -1) == "/") ? "" : "/").((@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE) ? "bistroware/" : "Bistroware/")."logs/"));
	define("API_CALLS_DIR",         ($_SERVER['DOCUMENT_ROOT'].((substr($_SERVER['DOCUMENT_ROOT'], -1) == "/") ? "" : "/").((@strpos($_SERVER['HTTP_HOST'], "localhost") === FALSE) ? "bistroware/" : "Bistroware/")."backups/api-calls/"));


	// Admin Control Panel Dir
	define("ADMIN_CP_DIR", "control");

	// Temp Dir
	define("TEMP_DIR", "temp/");

	// Images Dir
        define("CATEGORIES_IMG_DIR", "files/categories/");
	define("ADMINS_IMG_DIR",     "images/admins/");
        define("FLOORS_IMG_DIR",     "images/floors/");
        define("TABLES_IMG_DIR",     "images/tables/");
	define("ADMINS_IMG_WIDTH",   160);
	define("ADMINS_IMG_HEIGHT",  160);
        define("PER_ITEM_GST",  0.16);
	define("DOCUMENTS_DIR",      "files/documents/");
        define("PRODUCTS_IMG_DIR",   "files/product-images/");
        define("PRODUCTS_DOC_DIR",   "files/product-files/");
        define("STORES_IMG_DIR",     "files/stores/");
        define("BRANDS_IMG_DIR",     "files/brands/");
        define("AUDIT_IMG_DIR",     "files/audits/");

  	// Database Backup Config
	define('BACKUPS_DIR',               'backups/');
	define('DATABASE_FILE_NAME_FORMAT', 'db-bistroware-%Y-%m-%d-%H-%i-%s.sql');
	define('WEBSITE_FILE_NAME_FORMAT',  'www-bistroware-%Y-%m-%d-%H-%i-%s.zip');
?>