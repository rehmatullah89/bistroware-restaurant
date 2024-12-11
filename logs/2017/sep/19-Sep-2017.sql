
-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:17 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 09:18 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 09:26 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:11 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=53&Index=49
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:11 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=53&Index=49
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-18 19:00:00',
                                                        end_time    = '2017-09-18 21:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:11 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=53&Index=49
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 19:00:00',
                                                        end_time    = '2017-09-19 21:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = '',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:27 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 20:00:00',
                                                        end_time    = '2017-09-19 21:00:00',
                                                        guests      = '1',
                                                        floor_id    = '4',
                                                        table_id    = '3',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='65';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='66';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 10:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status=IF(status='B', 'A', 'B') WHERE id='4';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='4';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='42';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='45';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='52';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='17';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='21';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='22';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='23';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='24';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='26';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='27';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='28';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='33';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='34';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='35';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='36';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='37';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='40';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='5';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='6';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='7';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='8';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='9';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='10';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='11';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='14';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:51 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:52 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:52 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'Imran',
                                                            user_id     = '0',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 13:00:00',
                                                            end_time    = '2017-09-19 15:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '60',
                                                            created_at  = NOW( ),
                                                            modified_by = '60',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:52 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:56 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 10:57 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 10:59 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'imran',
                                                            user_id     = '0',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 13:00:00',
                                                            end_time    = '2017-09-19 15:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '60',
                                                            created_at  = NOW( ),
                                                            modified_by = '60',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:12 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:25 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:25 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '2',
                                                            name        = 'imran',
                                                            user_id     = '0',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 13:30:00',
                                                            end_time    = '2017-09-19 15:30:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '60',
                                                            created_at  = NOW( ),
                                                            modified_by = '60',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:25 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:27 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:27 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:27 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=0
-- 

UPDATE tbl_reservations SET        name        = 'imran',
                                                        phone       = '03237250696',
                                                        email       = '',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 13:30:00',
                                                        end_time    = '2017-09-19 15:30:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '23',
                                                        status      = 'R',
                                                        modified_by = '60',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   , picture='229-autumn-butterflies-35561131-1920-1200.png'
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:30 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:36 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   , picture='229-hd-desktop-wallpapers-free-download-10.jpg'
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 2
-- Admin Name  : Triple Tree Solutions
-- Admin Email : admin@3-tree.com
-- Query Time : 11:38 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=11
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:40 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 229
-- Admin Name  : Muhammad Naeem
-- Admin Email : naeem@3-tree.com
-- Query Time : 11:43 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=19:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=19:00&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '3',
                                                            name        = 'Rehmatullah',
                                                            user_id     = '0',
                                                            phone       = '03444043675',
                                                            email       = 'rehmatullah@3-tree.com',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 19:00:00',
                                                            end_time    = '2017-09-19 20:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '24',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '54',
                                                            created_at  = NOW( ),
                                                            modified_by = '54',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=19:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=3&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=3&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '4',
                                                            name        = 'Imran',
                                                            user_id     = '0',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 19:00:00',
                                                            end_time    = '2017-09-19 21:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '60',
                                                            created_at  = NOW( ),
                                                            modified_by = '60',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 11:45 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=3&ReserveDate=2017-09-19&ReserveTime=13:30&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 19:00:00',
                                                        end_time    = '2017-09-19 20:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:46 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:49 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:49 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 07:00:00',
                                                        end_time    = '2017-09-19 08:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:49 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:49 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 07:00:00',
                                                        end_time    = '2017-09-19 08:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:50 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=3&Index=1
-- 

UPDATE tbl_reservations SET        name        = 'Rehmatullah',
                                                        phone       = '03444043675',
                                                        email       = 'rehmatullah@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 07:00:00',
                                                        end_time    = '2017-09-19 08:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '24',
                                                        status      = 'R',
                                                        modified_by = '54',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:53 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=4&Index=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:53 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=4&Index=2
-- 

UPDATE tbl_reservations SET        name        = 'Imran',
                                                        phone       = '03237250696',
                                                        email       = '',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 19:00:00',
                                                        end_time    = '2017-09-19 21:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '23',
                                                        status      = 'R',
                                                        modified_by = '60',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '4';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:53 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=4&Index=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='3';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='4';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 11:58 AM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'imran saeed',
                                                            user_id     = '0',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 23:59:16',
                                                            end_time    = '2017-09-20 11:59:16',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=21&Reserves=4&ReserveDate=2017-09-19&ReserveTime=21:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=21&Reserves=4&ReserveDate=2017-09-19&ReserveTime=21:00&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '2',
                                                            name        = 'Fahad',
                                                            user_id     = '0',
                                                            phone       = '03224163305',
                                                            email       = 'fahad@3-tree.com',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 21:00:00',
                                                            end_time    = '2017-09-19 22:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '21',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:02 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=21&Reserves=4&ReserveDate=2017-09-19&ReserveTime=21:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=1&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=1&Index=0
-- 

UPDATE tbl_reservations SET        name        = 'imran saeed',
                                                        phone       = '03237250696',
                                                        email       = '',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 23:59:00',
                                                        end_time    = '2017-09-20 11:59:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '23',
                                                        status      = 'R',
                                                        modified_by = '60',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=1&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=1
-- 

UPDATE tbl_reservations SET        name        = 'Fahad',
                                                        phone       = '03224163305',
                                                        email       = 'fahad@3-tree.com',   
                                                        password    = '',
                                                        date_time   = '2017-09-19 21:00:00',
                                                        end_time    = '2017-09-19 22:00:00',
                                                        guests      = '2',
                                                        floor_id    = '2',
                                                        table_id    = '21',
                                                        status      = 'R',
                                                        modified_by = '60',
                                                        modified_at = NOW( )
                                                        WHERE       id  = '2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:05 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-reservation.php?ReservationId=2&Index=1
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='126';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='123';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status=IF(status='C', 'A', 'C') WHERE id='122';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status=IF(status='B', 'A', 'B') WHERE id='19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:11 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status=IF(status='B', 'A', 'B') WHERE id='18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=19
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=19
-- 

INSERT INTO tbl_payments SET  order_id = '19', payment_mode = 'P', amount='10', marked_by='60', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=19
-- 

UPDATE tbl_orders SET  status = 'C' WHERE id = '19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=19
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_orders WHERE id='19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_order_details WHERE order_id='19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:13 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:22 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=09:30&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:22 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=09:30&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'Fahad',
                                                            user_id     = '0',
                                                            phone       = '03224163305',
                                                            email       = 'fahad@3-tree.com',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 09:30:00',
                                                            end_time    = '2017-09-19 10:30:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '24',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:22 PM
-- IP Address : 125.209.75.186
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=24&Reserves=4&ReserveDate=2017-09-19&ReserveTime=09:30&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:29 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:29 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:29 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:30 PM
-- IP Address : 202.142.186.34
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=22:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:30 PM
-- IP Address : 202.142.186.34
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=22:00&People=2
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'Fahad',
                                                            user_id     = '0',
                                                            phone       = '03224163305',
                                                            email       = 'fahad@3-tree.com',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 22:00:00',
                                                            end_time    = '2017-09-19 23:00:00',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '23',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:30 PM
-- IP Address : 202.142.186.34
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=4&ReserveDate=2017-09-19&ReserveTime=22:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 12:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:47 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:47 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'Muhammad naeem',
                                                            user_id     = '0',
                                                            phone       = '03354387055',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-20 13:46:40',
                                                            end_time    = '2017-09-20 15:46:40',
                                                            guests      = '3',
                                                            floor_id    = '2',
                                                            table_id    = '22',
                                                            reservation_type    = 'W',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:47 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 01:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 01:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '305',
                                                    po_number   = '305',
                                                    remarks     = '',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 01:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '305',
                                                                            ingredient_id   = '169',
                                                                            location_id     = '24',
                                                                            supplier_id     = '34',
                                                                            origin_id       = '107',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'I',
                                                                            quantity        = '18',
                                                                            total_quantity  = '18',
                                                                            price           = '2045',
                                                                            expiry_date     = '2019-12-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 01:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

UPDATE tbl_admins SET type_id      = '2',
		                               name         = 'Bistroware App',
		                               email        = 'apple@3-tree.com',
		                               mobile       = '03131321321',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='230';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='230';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '230',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 01:59 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=230&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:00 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:00 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:00 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:12 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:12 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_users SET      id        = '4',
                                                                name        = 'Apple Bistroware',
                                                                mobile       = '03237250696',
                                                                email       = 'apple@3-tree.com',   
                                                                password    = 'Matrix101#',
                                                                date_time   = '2017-09-19 19:10:59',
                                                                status   = 'A',
                                                                picture   = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:12 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'Apple Bistroware',
                                                            user_id     = '4',
                                                            phone       = '03237250696',
                                                            email       = 'apple@3-tree.com',   
                                                            password    = 'Matrix101#',
                                                            date_time   = '2017-09-19 19:10:59',
                                                            end_time    = '2017-09-19 21:10:59',
                                                            guests      = '5',
                                                            floor_id    = '2',
                                                            table_id    = '26',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:12 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:15 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:15 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_reservations SET  id       = '2',
                                                            name        = 'Kashif',
                                                            user_id     = '4',
                                                            phone       = '03237250696',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-19 16:13:37',
                                                            end_time    = '2017-09-19 18:13:37',
                                                            guests      = '2',
                                                            floor_id    = '2',
                                                            table_id    = '18',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 02:15 PM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '306',
                                                    po_number   = '306',
                                                    remarks     = '',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '306',
                                                                            ingredient_id   = '183',
                                                                            location_id     = '41',
                                                                            supplier_id     = '21',
                                                                            origin_id       = '44',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '15',
                                                                            total_quantity  = '15',
                                                                            price           = '1900',
                                                                            expiry_date     = '2018-09-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='1';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

DELETE FROM tbl_reservations WHERE id='2';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:32 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/reservations.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

UPDATE tbl_admins SET type_id      = '19',
		                               name         = 'Mehwish Ahmed',
		                               email        = 'mehwish.ahmed@gaia.com.pk',
		                               mobile       = '03564654654',
		                               custom_items = '',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   , password=PASSWORD('ahmed661') 
		         WHERE id='260';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='260';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '10',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '11',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '12',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '13',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '14',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '18',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '1',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '3',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '4',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '5',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '6',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '19',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '20',
														  `view`   = '',
														  `add`    = '',
														  `edit`   = '',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '260',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = '';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:35 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=260&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=306&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=306&Index=0
-- 

UPDATE tbl_inventory SET   po_number   = '306',
                                                    remarks     = '',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=306&Index=0
-- 

DELETE FROM tbl_inventory_details WHERE inventory_id='306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=306&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '306',
                                                                                ingredient_id   = '183',
                                                                                location_id     = '41',
                                                                                supplier_id     = '21',
                                                                                origin_id       = '44',    
                                                                                weight          = '',
                                                                                total_weight    = '',    
                                                                                item_type       = 'L',
                                                                                quantity        = '15',
                                                                                total_quantity  = '15',
                                                                                price           = '1900',
                                                                                expiry_date     = '2018-04-15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=306&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '135';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '136';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '137';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '138';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '139';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '140';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '141';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '142';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:38 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '135';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '136';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '137';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '138';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '139';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '140';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '141';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '142';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '143';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '144';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:41 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '135';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '136';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '137';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '138';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '139';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '140';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '141';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '142';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '143';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'A', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '144';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

UPDATE tbl_order_details SET  status = 'V', void_reason_id ='', void_remarks = '', void_by='60', void_at= NOW( )
                                WHERE order_id = '20' AND id = '145';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 02:44 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=20&Index=18
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1614',
                                                            inventory_detail_id = '600',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '307',
                                                    po_number   = '307',
                                                    remarks     = '',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                            ingredient_id   = '115',
                                                                            location_id     = '39',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '50',
                                                                            total_weight    = '50',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '57',
                                                                            expiry_date     = '2018-12-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                            ingredient_id   = '114',
                                                                            location_id     = '39',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '50',
                                                                            total_weight    = '50',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '45',
                                                                            expiry_date     = '2018-12-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                            ingredient_id   = '172',
                                                                            location_id     = '10',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '10',
                                                                            total_quantity  = '10',
                                                                            price           = '260',
                                                                            expiry_date     = '2018-11-26';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                            ingredient_id   = '226',
                                                                            location_id     = '10',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '4',
                                                                            total_quantity  = '4',
                                                                            price           = '295',
                                                                            expiry_date     = '2018-10-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                            ingredient_id   = '114',
                                                                            location_id     = '39',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '5',
                                                                            total_weight    = '5',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '55',
                                                                            expiry_date     = '2018-10-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

UPDATE tbl_inventory SET   po_number   = '307',
                                                    remarks     = '',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='307';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

DELETE FROM tbl_inventory_details WHERE inventory_id='307';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                                ingredient_id   = '115',
                                                                                location_id     = '39',
                                                                                supplier_id     = '4',
                                                                                origin_id       = '162',    
                                                                                weight          = '50',
                                                                                total_weight    = '50',    
                                                                                item_type       = 'L',
                                                                                quantity        = '1',
                                                                                total_quantity  = '1',
                                                                                price           = '57',
                                                                                expiry_date     = '2018-12-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                                ingredient_id   = '114',
                                                                                location_id     = '39',
                                                                                supplier_id     = '4',
                                                                                origin_id       = '162',    
                                                                                weight          = '50',
                                                                                total_weight    = '50',    
                                                                                item_type       = 'L',
                                                                                quantity        = '1',
                                                                                total_quantity  = '1',
                                                                                price           = '45',
                                                                                expiry_date     = '2018-12-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                                ingredient_id   = '172',
                                                                                location_id     = '10',
                                                                                supplier_id     = '4',
                                                                                origin_id       = '162',    
                                                                                weight          = '',
                                                                                total_weight    = '',    
                                                                                item_type       = 'L',
                                                                                quantity        = '10',
                                                                                total_quantity  = '10',
                                                                                price           = '260',
                                                                                expiry_date     = '2018-11-26';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                                ingredient_id   = '226',
                                                                                location_id     = '10',
                                                                                supplier_id     = '4',
                                                                                origin_id       = '162',    
                                                                                weight          = '',
                                                                                total_weight    = '',    
                                                                                item_type       = 'L',
                                                                                quantity        = '11',
                                                                                total_quantity  = '11',
                                                                                price           = '295',
                                                                                expiry_date     = '2018-10-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '307',
                                                                                ingredient_id   = '114',
                                                                                location_id     = '39',
                                                                                supplier_id     = '4',
                                                                                origin_id       = '162',    
                                                                                weight          = '5',
                                                                                total_weight    = '5',    
                                                                                item_type       = 'L',
                                                                                quantity        = '1',
                                                                                total_quantity  = '1',
                                                                                price           = '55',
                                                                                expiry_date     = '2018-10-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=307&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1615',
                                                            inventory_detail_id = '999',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '9' WHERE id = '999';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '308',
                                                    po_number   = '308',
                                                    remarks     = '',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '308',
                                                                            ingredient_id   = '80',
                                                                            location_id     = '10',
                                                                            supplier_id     = '17',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '15',
                                                                            total_quantity  = '15',
                                                                            price           = '392',
                                                                            expiry_date     = '2018-02-18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '308',
                                                                            ingredient_id   = '77',
                                                                            location_id     = '10',
                                                                            supplier_id     = '17',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '5',
                                                                            total_quantity  = '5',
                                                                            price           = '555',
                                                                            expiry_date     = '2018-08-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '308',
                                                                            ingredient_id   = '84',
                                                                            location_id     = '10',
                                                                            supplier_id     = '17',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '5',
                                                                            total_quantity  = '5',
                                                                            price           = '555',
                                                                            expiry_date     = '2018-08-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 03:50 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 03:50 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_orders WHERE id='20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 03:50 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_order_details WHERE order_id='20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 60
-- Admin Name  : Imran Saeed
-- Admin Email : isaeed@3-tree.com
-- Query Time : 03:50 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-supplier.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-supplier.php?SupplierId=43&Index=39
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-supplier.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-supplier.php?SupplierId=43&Index=39
-- 

UPDATE tbl_suppliers SET   name        = 'Seasons foods Menu',
                                                    address     = '171-Shadman-II, Lahore - Pakistan.',
                                                    phone       = '92-42-35961021-',    
                                                    mobile      = '',
                                                    fax         = '92-42-35961020',    
                                                    email       = 'info@seasonsfoods.com.pk',
                                                    website     = 'http://www.seasonsfoods.com.pk',
                                                    city        = 'Lahore',
                                                    country_id  = '162',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-supplier.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-supplier.php?SupplierId=43&Index=39
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '309',
                                                    po_number   = '309',
                                                    remarks     = '',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '309',
                                                                            ingredient_id   = '106',
                                                                            location_id     = '41',
                                                                            supplier_id     = '43',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '10',
                                                                            total_quantity  = '10',
                                                                            price           = '690',
                                                                            expiry_date     = '2018-05-31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '309',
                                                                            ingredient_id   = '108',
                                                                            location_id     = '41',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '18',
                                                                            total_weight    = '18',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '345',
                                                                            expiry_date     = '2018-03-28';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 03:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1616',
                                                            inventory_detail_id = '178',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '16' WHERE id = '178';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1617',
                                                            inventory_detail_id = '884',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '884';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1618',
                                                            inventory_detail_id = '168',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '30' WHERE id = '168';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1619',
                                                            inventory_detail_id = '213',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.7',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '59.3'  WHERE id = '213';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1620',
                                                            inventory_detail_id = '754',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '9' WHERE id = '754';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1621',
                                                            inventory_detail_id = '892',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '8' WHERE id = '892';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1622',
                                                            inventory_detail_id = '979',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '18.5'  WHERE id = '979';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1623',
                                                            inventory_detail_id = '751',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '751';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1624',
                                                            inventory_detail_id = '1005',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '13'  WHERE id = '1005';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1625',
                                                            inventory_detail_id = '705',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '24.5'  WHERE id = '705';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1626',
                                                            inventory_detail_id = '982',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '78.5'  WHERE id = '982';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1627',
                                                            inventory_detail_id = '376',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '57'  WHERE id = '376';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1628',
                                                            inventory_detail_id = '306',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '4' WHERE id = '306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1629',
                                                            inventory_detail_id = '303',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '13' WHERE id = '303';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1630',
                                                            inventory_detail_id = '305',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '10' WHERE id = '305';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1631',
                                                            inventory_detail_id = '981',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '981';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1632',
                                                            inventory_detail_id = '929',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '25'  WHERE id = '929';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1633',
                                                            inventory_detail_id = '609',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '609';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1634',
                                                            inventory_detail_id = '748',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '4' WHERE id = '748';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1635',
                                                            inventory_detail_id = '799',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '799';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1636',
                                                            inventory_detail_id = '962',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '7' WHERE id = '962';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1637',
                                                            inventory_detail_id = '986',
                                                            qty_withdraw        = '4',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '986';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1638',
                                                            inventory_detail_id = '616',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '20'  WHERE id = '616';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1639',
                                                            inventory_detail_id = '945',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '945';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1640',
                                                            inventory_detail_id = '983',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '5' WHERE id = '983';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1641',
                                                            inventory_detail_id = '238',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '238';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1642',
                                                            inventory_detail_id = '771',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '6' WHERE id = '771';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1643',
                                                            inventory_detail_id = '695',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '5' WHERE id = '695';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1644',
                                                            inventory_detail_id = '464',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '464';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1645',
                                                            inventory_detail_id = '427',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '427';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1646',
                                                            inventory_detail_id = '1000',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '3'  WHERE id = '1000';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1647',
                                                            inventory_detail_id = '727',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '2'  WHERE id = '727';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1648',
                                                            inventory_detail_id = '974',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '974';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1649',
                                                            inventory_detail_id = '859',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '859';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1650',
                                                            inventory_detail_id = '858',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '6',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '4'  WHERE id = '858';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1651',
                                                            inventory_detail_id = '948',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.3',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0.7'  WHERE id = '948';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1652',
                                                            inventory_detail_id = '977',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0.9'  WHERE id = '977';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1653',
                                                            inventory_detail_id = '947',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '5' WHERE id = '947';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1654',
                                                            inventory_detail_id = '946',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '6' WHERE id = '946';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1655',
                                                            inventory_detail_id = '966',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '10' WHERE id = '966';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1656',
                                                            inventory_detail_id = '692',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '7'  WHERE id = '692';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1657',
                                                            inventory_detail_id = '967',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '967';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1658',
                                                            inventory_detail_id = '518',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '518';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1659',
                                                            inventory_detail_id = '966',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '8' WHERE id = '966';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1660',
                                                            inventory_detail_id = '969',
                                                            qty_withdraw        = '8',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '12' WHERE id = '969';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1661',
                                                            inventory_detail_id = '970',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '970';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 04:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1662',
                                                            inventory_detail_id = '602',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '602';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1663',
                                                            inventory_detail_id = '808',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '4' WHERE id = '808';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1664',
                                                            inventory_detail_id = '962',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '5' WHERE id = '962';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1665',
                                                            inventory_detail_id = '666',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '12' WHERE id = '666';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1666',
                                                            inventory_detail_id = '859',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '859';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Omer Rauf',
		                               email        = 'omer@3-tree.com',
		                               mobile       = '03214300069',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'redmond',
		                               status       = 'A'
									   
									   
		         WHERE id='5';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='5';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '21',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

INSERT INTO tbl_admin_rights SET admin_id = '5',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=5&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Imran Saeed',
		                               email        = 'isaeed@3-tree.com',
		                               mobile       = '03237250696',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'redmond',
		                               status       = 'A'
									   
									   
		         WHERE id='60';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='60';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '21',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

INSERT INTO tbl_admin_rights SET admin_id = '60',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=60&Index=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Fahad Bashir',
		                               email        = 'fahad@3-tree.com',
		                               mobile       = '03224163305',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'redmond',
		                               status       = 'A'
									   
									   
		         WHERE id='221';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='221';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '21',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

INSERT INTO tbl_admin_rights SET admin_id = '221',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=221&Index=3
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Omer Rauf',
		                               email        = 'omer@apparelco.com',
		                               mobile       = '03214300069',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='228';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='228';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '21',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

INSERT INTO tbl_admin_rights SET admin_id = '228',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:20 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=228&Index=4
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

UPDATE tbl_admins SET type_id      = '1',
		                               name         = 'Muhammad Naeem',
		                               email        = 'naeem@3-tree.com',
		                               mobile       = '03354387055',
		                               custom_items = '9,6,5,1,8,10,4,7,3,2',
		                               records      = '50',
		                               theme        = 'smoothness',
		                               status       = 'A'
									   
									   
		         WHERE id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

DELETE FROM tbl_admin_rights WHERE admin_id='229';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '10',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '11',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '12',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '13',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '14',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '18',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '21',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '1',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '3',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '4',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '5',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '6',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '9',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '15',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '16',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '17',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '19',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '20',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '7',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

INSERT INTO tbl_admin_rights SET admin_id = '229',
														  page_id  = '8',
														  `view`   = 'Y',
														  `add`    = 'Y',
														  `edit`   = 'Y',
														  `delete` = 'Y';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 05:21 PM
-- IP Address : 125.209.75.178
-- Web Page   : /bistroware/control/management/edit-user.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/edit-user.php?UserId=229&Index=5
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1667',
                                                            inventory_detail_id = '746',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '746';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 05:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1668',
                                                            inventory_detail_id = '959',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '959';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1669',
                                                            inventory_detail_id = '839',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1.7',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '839';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1670',
                                                            inventory_detail_id = '909',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1.15',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '3'  WHERE id = '909';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1671',
                                                            inventory_detail_id = '935',
                                                            qty_withdraw        = '10',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '935';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 06:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1672',
                                                            inventory_detail_id = '864',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '864';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1673',
                                                            inventory_detail_id = '873',
                                                            qty_withdraw        = '6',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '873';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '1674',
                                                            inventory_detail_id = '394',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '394';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Akhlaq Ahmed Khan
-- Admin Email : akhlaq.ahmed@gaia.com.pk
-- Query Time : 07:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 09:18 PM
-- IP Address : 103.255.4.31
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 09:18 PM
-- IP Address : 103.255.4.31
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

INSERT INTO tbl_reservations SET  id       = '1',
                                                            name        = 'bury an',
                                                            user_id     = '4',
                                                            phone       = '03354387055',
                                                            email       = '',   
                                                            password    = '',
                                                            date_time   = '2017-09-20 22:15:57',
                                                            end_time    = '2017-09-21 00:15:57',
                                                            guests      = '4',
                                                            floor_id    = '3',
                                                            table_id    = '29',
                                                            reservation_type    = 'O',
                                                            status      = 'P',
                                                            created_by  = '',
                                                            created_at  = NOW( ),
                                                            modified_by = '',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 09:18 PM
-- IP Address : 103.255.4.31
-- Web Page   : /bistroware/api/save-reservation.php
-- Referer    : 
-- 

COMMIT;

-- ----------------------------------------------------------------------------
