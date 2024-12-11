
-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='25670';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='25671';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='25672';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='25673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-08-31 23:22:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25683';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-08-31 23:51:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:03 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2599
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:03 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2599
-- 

DELETE FROM tbl_payments WHERE order_id = '2599';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:03 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2599
-- 

INSERT INTO tbl_payments SET  order_id = '2599', received_amt='0', amount='0', credit='4466', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:03 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2599
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2599';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:03 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2599
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:07 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25702';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25703';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2602';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2602' AND ordered_at = '2018-09-01 00:09:06';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:13 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25704';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:13 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:13 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-08-31 23:22:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:13 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-09-01 00:12:41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:14 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2597
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:14 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2597
-- 

DELETE FROM tbl_payments WHERE order_id = '2597';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:14 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2597
-- 

INSERT INTO tbl_payments SET  order_id = '2597', received_amt='0', amount='0', credit='6438', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:14 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2597
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2597';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:14 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2597
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25712';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-09-01 00:12:41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-08-31 23:22:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:20 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25713';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:20 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25714';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:20 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:20 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2600' AND ordered_at = '2018-09-01 00:18:45';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25707';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:27 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25706';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:29 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25715';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:29 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25716';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:29 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25717';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:29 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25718';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:29 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:28:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25696';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25695';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='25686';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='25688';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='25689';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:31 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='25685';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:32 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2600
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:32 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2600
-- 

DELETE FROM tbl_payments WHERE order_id = '2600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:32 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2600
-- 

INSERT INTO tbl_payments SET  order_id = '2600', received_amt='0', amount='0', credit='35177', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:32 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2600
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2600';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:32 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2600
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25687';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='25693';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25694';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25691';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25690';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:34 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25684';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25692';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:03:33';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:06:42';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:00:15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25697';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:35 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='29' WHERE id='25697';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:36 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25697';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:36 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='25708';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:37 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25705';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:41 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25699';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:41 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25698';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:43 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25701';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:43 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25700';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:43 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2601';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:43 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2601' AND ordered_at = '2018-09-01 00:07:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:45 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25709';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:45 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25710';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:45 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25711';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:45 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2603';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:45 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2603' AND ordered_at = '2018-09-01 00:16:22';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:03:33';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:06:42';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:28:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25721';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25726';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25722';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25723';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25724';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25725';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:00:15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:53:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25720';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25719';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-08-31 23:51:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-08-31 23:26:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-08-31 23:18:01';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:55:19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2603';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2603' AND ordered_at = '2018-09-01 00:16:22';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2603' AND ordered_at = '2018-09-01 00:51:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=History
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2590' AND ordered_at = '2018-08-31 22:59:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25727';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25728';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='123' WHERE id='25642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2601';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2601' AND ordered_at = '2018-09-01 01:01:41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2601' AND ordered_at = '2018-09-01 00:07:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2590';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2590' AND ordered_at = '2018-08-31 22:59:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2590
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2590
-- 

DELETE FROM tbl_payments WHERE order_id = '2590';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2590
-- 

INSERT INTO tbl_payments SET  order_id = '2590', received_amt='0', amount='0', credit='17719', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2590
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2590';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2590
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2603
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2603
-- 

DELETE FROM tbl_payments WHERE order_id = '2603';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2603
-- 

INSERT INTO tbl_payments SET  order_id = '2603', received_amt='15000', amount='14500', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2603
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2603';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2603
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2602
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2602
-- 

DELETE FROM tbl_payments WHERE order_id = '2602';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2602
-- 

INSERT INTO tbl_payments SET  order_id = '2602', received_amt='435', amount='435', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2602
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2602';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2602
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25729';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 01:02:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:55:19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:53:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2598' AND ordered_at = '2018-09-01 00:28:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2598
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2598
-- 

DELETE FROM tbl_payments WHERE order_id = '2598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2598
-- 

INSERT INTO tbl_payments SET  order_id = '2598', received_amt='50000', amount='49213', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2598
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:19 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2598
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:25 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2601
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:25 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2601
-- 

DELETE FROM tbl_payments WHERE order_id = '2601';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:25 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2601
-- 

INSERT INTO tbl_payments SET  order_id = '2601', received_amt='8500', amount='8410', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:25 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2601
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2601';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:25 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2601
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:03 PM
-- IP Address : 111.68.103.164
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=41&Reserves=4&ReserveDate=2018-09-01&ReserveTime=7:00&People=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:03 PM
-- IP Address : 111.68.103.164
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=41&Reserves=4&ReserveDate=2018-09-01&ReserveTime=7:00&People=2
-- 

INSERT INTO tbl_reservations SET  id               = '1177',
                                                            name                = 'Aurangzeb Haneef',
                                                            user_id             = '0',
                                                            phone               = '03022190090',
                                                            email               = '',   
                                                            password            = '',
                                                            date_time           = '2018-09-01 20:00:00',
                                                            end_time            = '2018-09-01 22:00:00',
                                                            guests              = '2',
                                                            floor_id            = '3',
                                                            table_id            = '41',
                                                            reservation_type    = 'O',
                                                            user_ip             = '111.68.103.164', 
                                                            user_agent          = 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36',
                                                            status              = 'P',
                                                            created_by          = '',
                                                            created_at          = NOW( ),
                                                            modified_by         = '',
                                                            modified_at         = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 12:03 PM
-- IP Address : 111.68.103.164
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=41&Reserves=4&ReserveDate=2018-09-01&ReserveTime=7:00&People=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25734';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25732';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25730';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25733';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25731';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25741';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25740';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25739';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2604' AND ordered_at = '2018-09-01 14:39:45';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='25737';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='25738';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 14:31:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='30' WHERE id='25735';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='30' WHERE id='25736';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2604';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 02:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2604' AND ordered_at = '2018-09-01 14:22:36';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 14:31:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25743';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25742';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 02:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 14:53:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25744';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 14:53:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 14:31:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2605' AND ordered_at = '2018-09-01 15:01:30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2604
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2604
-- 

DELETE FROM tbl_payments WHERE order_id = '2604';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2604
-- 

INSERT INTO tbl_payments SET  order_id = '2604', received_amt='0', amount='0', credit='15486', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2604
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2604';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2604
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2605
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2605
-- 

DELETE FROM tbl_payments WHERE order_id = '2605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2605
-- 

INSERT INTO tbl_payments SET  order_id = '2605', received_amt='0', amount='0', credit='5046', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2605
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 03:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2605
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13754',
                                                            inventory_detail_id = '4391',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '4391';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13755',
                                                            inventory_detail_id = '3072',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '3072';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13756',
                                                            inventory_detail_id = '3736',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '3736';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13757',
                                                            inventory_detail_id = '3681',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '3681';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25750';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25748';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25749';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25745';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2606' AND ordered_at = '2018-09-01 15:29:05';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13758',
                                                            inventory_detail_id = '450',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '450';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13759',
                                                            inventory_detail_id = '4199',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '22' WHERE id = '4199';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25747';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25746';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2606';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2606' AND ordered_at = '2018-09-01 15:19:10';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2606' AND ordered_at = '2018-09-01 15:19:10';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25755';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25754';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25751';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13760',
                                                            inventory_detail_id = '3563',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '3563';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25759';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25761';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25760';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25752';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13761',
                                                            inventory_detail_id = '2928',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '2928';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13762',
                                                            inventory_detail_id = '898',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '898';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13763',
                                                            inventory_detail_id = '4587',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4587';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25757';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=168&Index=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=168&Index=2
-- 

UPDATE tbl_ingredients SET title       = 'Sriracha HOT chili Huy fong food 793g',
                                                    unit_id     = '1',
                                                    uom         = 'S',
                                                    location_id = '6',
                                                    suppliers   = '40',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='168';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=168&Index=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25758';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25756';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2608';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 03:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2608' AND ordered_at = '2018-09-01 15:39:30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 03:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2608' AND ordered_at = '2018-09-01 15:39:30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13764',
                                                            inventory_detail_id = '1707',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '1707';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13765',
                                                            inventory_detail_id = '3584',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '3584';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13766',
                                                            inventory_detail_id = '4203',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3.3',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '43.15'  WHERE id = '4203';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13767',
                                                            inventory_detail_id = '4593',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '52',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4593';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 03:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='28' WHERE id='25753';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2607';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2607' AND ordered_at = '2018-09-01 15:33:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '673',
                                                    po_number   = '675',
                                                    remarks     = 'Due to Wrong Punching
31-08-18',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '673',
                                                                            ingredient_id   = '101',
                                                                            location_id     = '42',
                                                                            supplier_id     = '21',
                                                                            origin_id       = '162',    
                                                                            weight          = '30.8',
                                                                            total_weight    = '30.8',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '4600',
                                                                            manufac_date    = '2018-08-27',    
                                                                            expiry_date     = '2018-12-18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25764';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25763';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2610';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2610' AND ordered_at = '2018-09-01 15:51:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

UPDATE tbl_inventory SET   po_number   = '675',
                                                    remarks     = 'Due to Wrong Punching
31-08-18
LOT 671
Black Cod 30.8 KG
Salmon Whole.. 52KG',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

UPDATE tbl_inventory_details SET  inventory_id    = '673',
                                                                        ingredient_id   = '101',
                                                                        location_id     = '42',
                                                                        supplier_id     = '21',
                                                                        origin_id       = '162',    
                                                                        weight          = '30',
                                                                        total_weight    = '30',    
                                                                        item_type       = 'L',
                                                                        quantity        = '1',
                                                                        total_quantity  = '1',
                                                                        price           = '4600',
                                                                        manufac_date    = '2018-08-27',    
                                                                        expiry_date     = '2018-12-18'
                                        WHERE id = '4620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '673',
                                                                            ingredient_id   = '104',
                                                                            location_id     = '42',
                                                                            supplier_id     = '21',
                                                                            origin_id       = '162',    
                                                                            weight          = '21',
                                                                            total_weight    = '21',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '2080',
                                                                            expiry_date     = '2019-01-21';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

DELETE FROM tbl_inventory_details where id NOT IN (4620,0,4621) AND inventory_id='673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25762';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2609';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2609' AND ordered_at = '2018-09-01 15:50:40';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

UPDATE tbl_inventory SET   po_number   = '675',
                                                    remarks     = 'Due to Wrong Punching
31-08-18
LOT 671
Black Cod 30.8 KG
Salmon Whole.. 52KG',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

UPDATE tbl_inventory_details SET  inventory_id    = '673',
                                                                        ingredient_id   = '101',
                                                                        location_id     = '42',
                                                                        supplier_id     = '21',
                                                                        origin_id       = '162',    
                                                                        weight          = '30',
                                                                        total_weight    = '30',    
                                                                        item_type       = 'L',
                                                                        quantity        = '1',
                                                                        total_quantity  = '1',
                                                                        price           = '4600',
                                                                        manufac_date    = '2018-08-27',    
                                                                        expiry_date     = '2018-12-18'
                                        WHERE id = '4620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

UPDATE tbl_inventory_details SET  inventory_id    = '673',
                                                                        ingredient_id   = '296',
                                                                        location_id     = '42',
                                                                        supplier_id     = '21',
                                                                        origin_id       = '162',    
                                                                        weight          = '21',
                                                                        total_weight    = '21',    
                                                                        item_type       = 'L',
                                                                        quantity        = '1',
                                                                        total_quantity  = '1',
                                                                        price           = '2080',
                                                                        manufac_date    = '0000-00-00',    
                                                                        expiry_date     = '2019-01-21'
                                        WHERE id = '4621';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

DELETE FROM tbl_inventory_details where id NOT IN (4620,4621) AND inventory_id='673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 04:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=673&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 04:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2607' AND ordered_at = '2018-09-01 15:33:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25765';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2607';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2607' AND ordered_at = '2018-09-01 15:33:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 04:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2607' AND ordered_at = '2018-09-01 16:19:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2610
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2610
-- 

DELETE FROM tbl_payments WHERE order_id = '2610';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2610
-- 

INSERT INTO tbl_payments SET  order_id = '2610', received_amt='3000', amount='2958', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2610
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2610';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2610
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2609
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2609
-- 

DELETE FROM tbl_payments WHERE order_id = '2609';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2609
-- 

INSERT INTO tbl_payments SET  order_id = '2609', received_amt='3000', amount='2784', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2609
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2609';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2609
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2608
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2608
-- 

DELETE FROM tbl_payments WHERE order_id = '2608';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2608
-- 

INSERT INTO tbl_payments SET  order_id = '2608', received_amt='6000', amount='5336', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2608
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2608';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2608
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2606
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2606
-- 

DELETE FROM tbl_payments WHERE order_id = '2606';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2606
-- 

INSERT INTO tbl_payments SET  order_id = '2606', received_amt='0', amount='0', credit='4814', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2606
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2606';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 04:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2606
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 05:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2607
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 05:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2607
-- 

DELETE FROM tbl_payments WHERE order_id = '2607';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 05:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2607
-- 

INSERT INTO tbl_payments SET  order_id = '2607', received_amt='6000', amount='5336', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 05:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2607
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2607';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 05:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2607
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22664';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22665';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22666';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22673';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22674';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22675';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22676';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22677';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22678';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22679';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='2', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22682';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22683';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22707';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22708';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22709';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22710';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2175' AND id = '22711';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:00 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2175&Index=35
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24250';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24251';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24252';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24253';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24254';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24255';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24256';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24257';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'VC', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24258';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24299';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24322';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24323';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24324';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24329';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24330';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2400' AND id = '24331';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:02 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2400&Index=10
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24121';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24122';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24123';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24124';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24126';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24127';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24169';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24179';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24180';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24181';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24182';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24280';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24304';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24305';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24372';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24373';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24374';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24382';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24383';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24384';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24385';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'By mistake send wrong table', void_by='235', void_at= NOW( )
                                WHERE order_id = '2382' AND id = '24386';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:03 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2382&Index=28
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23529';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23530';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = 'Food was so late', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23531';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23532';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23533';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2306' AND id = '23534';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:04 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2306&Index=5
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '22943';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '22946';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='1', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '22947';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '22948';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '23010';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2216' AND id = '23011';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:05 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2216&Index=45
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:07 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:07 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_orders WHERE id='2413';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:07 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_order_details WHERE order_id='2413';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:07 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

DELETE FROM tbl_payments WHERE order_id='2413';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:07 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/ajax/management/delete-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '24623';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '24624';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '24625';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25766';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25767';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25768';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25769';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25770';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='6', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2452' AND id = '25771';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:09 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2452&Index=9
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22884';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'VP', void_reason_id ='2', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22893';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22894';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22895';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22896';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22897';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22906';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '22910';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '2202' AND id = '23642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 07:10 PM
-- IP Address : 202.141.251.97
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=2202&Index=8
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25773';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25774';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25772';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2611';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2611' AND ordered_at = '2018-09-01 19:03:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='25775';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2612';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2612' AND ordered_at = '2018-09-01 19:16:53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 07:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 07:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13768',
                                                            inventory_detail_id = '4605',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.55',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 07:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4605';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 07:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25782';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25777';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2452
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2452
-- 

DELETE FROM tbl_payments WHERE order_id = '2452';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2452
-- 

INSERT INTO tbl_payments SET  order_id = '2452', received_amt='2639', amount='2639', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2452
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2452';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2452
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25794';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2382
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2382
-- 

DELETE FROM tbl_payments WHERE order_id = '2382';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2382
-- 

INSERT INTO tbl_payments SET  order_id = '2382', received_amt='0', amount='0', credit='32161', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2382
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2382';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2382
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2400
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2400
-- 

DELETE FROM tbl_payments WHERE order_id = '2400';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2400
-- 

INSERT INTO tbl_payments SET  order_id = '2400', received_amt='0', amount='0', credit='27289', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2400
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2400';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2400
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 07:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 07:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='12' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2306
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2306
-- 

DELETE FROM tbl_payments WHERE order_id = '2306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2306
-- 

INSERT INTO tbl_payments SET  order_id = '2306', received_amt='6496', amount='6496', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2306
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2306';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 07:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2306
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25778';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25783';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2614';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2614' AND ordered_at = '2018-09-01 19:43:49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25800';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25799';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25798';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25797';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 19:54:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='17' WHERE id='25778';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='17' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25793';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2613' AND ordered_at = '2018-09-01 19:48:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='25795';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='4' WHERE id='25795';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25787';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25778';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='18' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='18' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25776';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 07:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='18' WHERE id='25778';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25786';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='25778';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2611
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2611
-- 

DELETE FROM tbl_payments WHERE order_id = '2611';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2611
-- 

INSERT INTO tbl_payments SET  order_id = '2611', received_amt='0', amount='0', credit='5162', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2611
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2611';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2611
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2614
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2614
-- 

DELETE FROM tbl_payments WHERE order_id = '2614';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2614
-- 

INSERT INTO tbl_payments SET  order_id = '2614', received_amt='2000', amount='1566', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2614
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2614';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2614
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2612
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2612
-- 

DELETE FROM tbl_payments WHERE order_id = '2612';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2612
-- 

INSERT INTO tbl_payments SET  order_id = '2612', received_amt='1972', amount='1972', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2612
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2612';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2612
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25785';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25784';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25806';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25805';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25801';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 20:00:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25796';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25795';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25802';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2616';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2616' AND ordered_at = '2018-09-01 19:53:59';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2617';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:01:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2616' AND ordered_at = '2018-09-01 19:53:59';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2617' AND ordered_at = '2018-09-01 20:01:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:01:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25803';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25804';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2175
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2175
-- 

DELETE FROM tbl_payments WHERE order_id = '2175';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2175
-- 

INSERT INTO tbl_payments SET  order_id = '2175', received_amt='0', amount='0', credit='26941', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2175
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2175';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2175
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2618';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2618' AND ordered_at = '2018-09-01 20:06:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='32' WHERE id='25791';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='32' WHERE id='25790';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='32' WHERE id='25789';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25792';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='25788';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2615';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 19:47:55';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25812';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25813';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='10' WHERE id='25812';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25811';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25812';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='46' WHERE id='25779';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='46' WHERE id='25780';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='46' WHERE id='25781';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2613';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2613' AND ordered_at = '2018-09-01 19:40:19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25810';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25818';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25819';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2621' AND ordered_at = '2018-09-01 20:29:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25816';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25817';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2621';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2621' AND ordered_at = '2018-09-01 20:21:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25821';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25820';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2615';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 19:54:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 19:47:55';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 20:00:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2615' AND ordered_at = '2018-09-01 20:31:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2621' AND ordered_at = '2018-09-01 20:21:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2615
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2615
-- 

DELETE FROM tbl_payments WHERE order_id = '2615';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2615
-- 

INSERT INTO tbl_payments SET  order_id = '2615', received_amt='0', amount='0', credit='29261', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2615
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2615';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2615
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2618
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2618
-- 

DELETE FROM tbl_payments WHERE order_id = '2618';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2618
-- 

INSERT INTO tbl_payments SET  order_id = '2618', received_amt='0', amount='0', credit='3944', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2618
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2618';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 08:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2618
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='21' WHERE id='25809';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2619';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2619' AND ordered_at = '2018-09-01 20:15:37';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25830';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='32' WHERE id='25808';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='32' WHERE id='25807';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2617';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:13:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25834';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2617';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:13:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:01:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2617' AND ordered_at = '2018-09-01 20:45:21';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25822';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25824';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25832';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='37' WHERE id='25815';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='37' WHERE id='25814';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2620' AND ordered_at = '2018-09-01 20:16:47';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25835';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2624';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2624' AND ordered_at = '2018-09-01 20:50:01';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25837';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 08:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25838';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='25823';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 08:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='25831';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25836';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25842';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25841';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2622' AND ordered_at = '2018-09-01 20:58:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25849';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25854';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25825';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25828';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25827';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25829';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25826';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2622';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2622' AND ordered_at = '2018-09-01 20:40:36';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25843';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25844';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25845';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='23' WHERE id='25833';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2623';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2623' AND ordered_at = '2018-09-01 20:45:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2626' AND ordered_at = '2018-09-01 21:00:15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25853';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25846';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='9' WHERE id='25846';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25846';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25839';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25840';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2625';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2625' AND ordered_at = '2018-09-01 20:51:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25852';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25851';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='25850';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:02:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25872';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25871';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25873';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25857';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25858';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2629';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2629' AND ordered_at = '2018-09-01 21:12:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2629' AND ordered_at = '2018-09-01 21:12:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25861';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25859';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25860';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2630' AND ordered_at = '2018-09-01 21:15:07';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25875';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2631' AND ordered_at = '2018-09-01 21:24:31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25876';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25877';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2620' AND ordered_at = '2018-09-01 20:16:47';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2620' AND ordered_at = '2018-09-01 21:25:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25863';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25862';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2629
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2629
-- 

DELETE FROM tbl_payments WHERE order_id = '2629';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2629
-- 

INSERT INTO tbl_payments SET  order_id = '2629', received_amt='3000', amount='2958', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2629
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2629';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2629
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2623
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2623
-- 

DELETE FROM tbl_payments WHERE order_id = '2623';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2623
-- 

INSERT INTO tbl_payments SET  order_id = '2623', received_amt='4292', amount='4292', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2623
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2623';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2623
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2624
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2624
-- 

DELETE FROM tbl_payments WHERE order_id = '2624';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2624
-- 

INSERT INTO tbl_payments SET  order_id = '2624', received_amt='1276', amount='1276', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2624
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2624';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:28 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2624
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='25855';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='25856';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2626';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2626' AND ordered_at = '2018-09-01 21:05:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25847';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25848';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='27' WHERE id='25848';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25848';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25868';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='10' WHERE id='25868';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25868';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25867';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2620
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2620
-- 

DELETE FROM tbl_payments WHERE order_id = '2620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2620
-- 

INSERT INTO tbl_payments SET  order_id = '2620', received_amt='11500', amount='11339', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2620
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2620';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2620
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2616
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2616
-- 

DELETE FROM tbl_payments WHERE order_id = '2616';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2616
-- 

INSERT INTO tbl_payments SET  order_id = '2616', received_amt='5000', amount='4872', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2616
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2616';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2616
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25883';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2622
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2622
-- 

DELETE FROM tbl_payments WHERE order_id = '2622';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2622
-- 

INSERT INTO tbl_payments SET  order_id = '2622', received_amt='0', amount='0', credit='17052', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2622
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2622';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2622
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2613
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2613
-- 

DELETE FROM tbl_payments WHERE order_id = '2613';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2613
-- 

INSERT INTO tbl_payments SET  order_id = '2613', received_amt='0', amount='0', credit='17110', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2613
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2613';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2613
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2617
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2617
-- 

DELETE FROM tbl_payments WHERE order_id = '2617';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2617
-- 

INSERT INTO tbl_payments SET  order_id = '2617', received_amt='0', amount='0', credit='7482', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2617
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2617';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2617
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2619
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2619
-- 

DELETE FROM tbl_payments WHERE order_id = '2619';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2619
-- 

INSERT INTO tbl_payments SET  order_id = '2619', received_amt='0', amount='0', credit='3654', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2619
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2619';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2619
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2621
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2621
-- 

DELETE FROM tbl_payments WHERE order_id = '2621';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2621
-- 

INSERT INTO tbl_payments SET  order_id = '2621', received_amt='0', amount='0', credit='4872', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2621
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2621';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2621
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:35:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='1' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25884';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2634';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 21:34:49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25882';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25894';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25896';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='1' WHERE id='25896';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25895';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25896';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25897';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2625';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2625' AND ordered_at = '2018-09-01 21:38:37';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2625' AND ordered_at = '2018-09-01 20:51:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25878';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13769',
                                                            inventory_detail_id = '1455',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '1455';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:02:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2625
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2625
-- 

DELETE FROM tbl_payments WHERE order_id = '2625';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2625
-- 

INSERT INTO tbl_payments SET  order_id = '2625', received_amt='0', amount='0', credit='9570', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2625
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2625';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2625
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25865';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25864';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2631';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2631' AND ordered_at = '2018-09-01 21:17:36';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13770',
                                                            inventory_detail_id = '3169',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '3169';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25870';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25874';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='25' WHERE id='25869';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:19:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25886';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25892';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13771',
                                                            inventory_detail_id = '3658',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '3658';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25904';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25903';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25905';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2626';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2626' AND ordered_at = '2018-09-01 21:05:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2626' AND ordered_at = '2018-09-01 21:00:15';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2626' AND ordered_at = '2018-09-01 21:45:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25887';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13772',
                                                            inventory_detail_id = '4615',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4615';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2626
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2626
-- 

DELETE FROM tbl_payments WHERE order_id = '2626';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2626
-- 

INSERT INTO tbl_payments SET  order_id = '2626', received_amt='0', amount='0', credit='11513', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2626
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2626';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 09:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2626
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=197&Index=3
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=197&Index=3
-- 

UPDATE tbl_ingredients SET title       = 'Lemon Grass',
                                                    unit_id     = '3',
                                                    uom         = '',
                                                    location_id = '38',
                                                    suppliers   = '36',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='197';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=197&Index=3
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13773',
                                                            inventory_detail_id = '4337',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4337';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13774',
                                                            inventory_detail_id = '4421',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4421';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13775',
                                                            inventory_detail_id = '2313',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '2313';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25866';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2630';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2630' AND ordered_at = '2018-09-01 21:18:40';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=History
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2632' AND ordered_at = '2018-09-01 21:35:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25912';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:54:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:35:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='21' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='25901';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='25898';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='25899';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='25900';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='2' WHERE id='25912';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:41:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='21' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25912';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:19:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:35:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:54:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='21' WHERE id='25885';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='2' WHERE id='25912';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='A', bumped_at='0000-00-00 00:00:00' WHERE id='2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='A', bumped_at='0000-00-00 00:00:00' WHERE id='2632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2632' AND ordered_at = '2018-09-01 21:19:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 21:19:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 09:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2627' AND ordered_at = '2018-09-01 21:02:39';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13776',
                                                            inventory_detail_id = '2548',
                                                            qty_withdraw        = '8',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '2548';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25880';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25879';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25881';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='21' WHERE id='25891';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='21' WHERE id='25893';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25902';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2636';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2636' AND ordered_at = '2018-09-01 21:37:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2636' AND ordered_at = '2018-09-01 21:43:18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2633';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 09:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2633' AND ordered_at = '2018-09-01 21:31:35';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='25888';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='25889';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='25890';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2635';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2635' AND ordered_at = '2018-09-01 21:36:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:01 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25908';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25907';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25906';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25925';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25926';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25924';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:02 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2638' AND ordered_at = '2018-09-01 22:01:41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25936';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25937';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25939';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2637' AND ordered_at = '2018-09-01 22:07:01';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25916';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25914';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25913';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2633
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2633
-- 

DELETE FROM tbl_payments WHERE order_id = '2633';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2633
-- 

INSERT INTO tbl_payments SET  order_id = '2633', received_amt='0', amount='0', credit='12528', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2633
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2633';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2633
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25920';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25919';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25946';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2631
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2631
-- 

DELETE FROM tbl_payments WHERE order_id = '2631';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2631
-- 

INSERT INTO tbl_payments SET  order_id = '2631', received_amt='7000', amount='6902', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2631
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2631';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2631
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25915';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25921';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25949';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25947';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25948';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2632' AND ordered_at = '2018-09-01 22:10:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='25928';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25933';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25932';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25938';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 22:04:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25931';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25930';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='25941';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 21:34:49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25965';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2627
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2627
-- 

DELETE FROM tbl_payments WHERE order_id = '2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2627
-- 

INSERT INTO tbl_payments SET  order_id = '2627', received_amt='7500', amount='7250', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2627
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2627
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25927';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25973';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2646';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2646' AND ordered_at = '2018-09-01 22:18:31';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25980';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2640' AND ordered_at = '2018-09-01 22:20:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25981';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25945';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25944';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25943';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25982';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 22:20:34';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:41:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:02:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25956';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25984';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='0' WHERE id='25983';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2630';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2630' AND ordered_at = '2018-09-01 21:18:40';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2630' AND ordered_at = '2018-09-01 22:21:20';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2630' AND ordered_at = '2018-09-01 21:15:07';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25966';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25967';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='25968';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25954';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25942';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:22 PM
-- IP Address : 119.160.96.197
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=1&ReserveDate=2018-09-01&ReserveTime=&People=4
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:22 PM
-- IP Address : 119.160.96.197
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=1&ReserveDate=2018-09-01&ReserveTime=&People=4
-- 

INSERT INTO tbl_reservations SET  id               = '1178',
                                                            name                = 'Safdar',
                                                            user_id             = '0',
                                                            phone               = '03034442225',
                                                            email               = '',   
                                                            password            = '',
                                                            date_time           = '2018-09-01 23:00:00',
                                                            end_time            = '2018-09-02 00:00:00',
                                                            guests              = '4',
                                                            floor_id            = '2',
                                                            table_id            = '23',
                                                            reservation_type    = 'O',
                                                            user_ip             = '119.160.96.197', 
                                                            user_agent          = 'Mozilla/5.0 (Linux; Android 8.0.0; SM-N950F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36',
                                                            status              = 'P',
                                                            created_by          = '',
                                                            created_at          = NOW( ),
                                                            modified_by         = '',
                                                            modified_at         = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 0
-- Admin Name  : 
-- Admin Email : 
-- Query Time : 10:22 PM
-- IP Address : 119.160.96.197
-- Web Page   : /bistroware/api/add-reservation.php
-- Referer    : http://www.gaia.com.pk/bistroware/api/add-reservation.php?TableId=23&Reserves=1&ReserveDate=2018-09-01&ReserveTime=&People=4
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25986';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='25985';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2636';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2636' AND ordered_at = '2018-09-01 21:43:18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2636' AND ordered_at = '2018-09-01 21:37:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2636' AND ordered_at = '2018-09-01 22:22:03';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='6' WHERE id='25970';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='6' WHERE id='25969';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='25974';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25977';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='25963';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='25910';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='25911';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='25909';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2637';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2637' AND ordered_at = '2018-09-01 21:54:09';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25918';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='36' WHERE id='25917';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2638' AND ordered_at = '2018-09-01 21:58:18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='25988';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2638';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2638' AND ordered_at = '2018-09-01 22:25:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2638' AND ordered_at = '2018-09-01 22:25:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '674',
                                                    po_number   = '676',
                                                    remarks     = 'Market Purchase
01-09-18',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '35',
                                                                            location_id     = '18',
                                                                            supplier_id     = '36',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '4056',
                                                                            manufac_date    = '2018-08-26',    
                                                                            expiry_date     = '2019-02-07';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:02:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 21:41:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 22:20:34';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='33' WHERE id='25929';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='37' WHERE id='25922';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='25923';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2639';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2639' AND ordered_at = '2018-09-01 21:58:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='25998';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2628' AND ordered_at = '2018-09-01 22:34:40';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='25987';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='25996';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2630
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2630
-- 

DELETE FROM tbl_payments WHERE order_id = '2630';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2630
-- 

INSERT INTO tbl_payments SET  order_id = '2630', received_amt='0', amount='0', credit='8004', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2630
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2630';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2630
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2640';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2640' AND ordered_at = '2018-09-01 22:03:35';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='25975';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='25976';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:23:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2628
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2628
-- 

DELETE FROM tbl_payments WHERE order_id = '2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2628
-- 

INSERT INTO tbl_payments SET  order_id = '2628', received_amt='0', amount='0', credit='15283', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2628
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2628
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/ingredients.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/ingredients.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/ingredients.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/ingredients.php
-- 

INSERT INTO tbl_ingredients SET id     = '442',
                                                    title       = 'TONIC SODA 12CAN',
                                                    unit_id     = '11',
                                                    uom         = 'S',
                                                    location_id = '20',
                                                    suppliers   = '36',    
                                                    status      = 'A',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/ingredients.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/ingredients.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='30' WHERE id='25940';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25990';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='25989';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25971';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='25972';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25950';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='27' WHERE id='25951';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2643' AND ordered_at = '2018-09-01 22:09:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2645' AND ordered_at = '2018-09-01 22:17:25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='25999';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26000';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='25997';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2643';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2643' AND ordered_at = '2018-09-01 22:33:22';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2645';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2645' AND ordered_at = '2018-09-01 22:37:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='25995';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='25994';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='25993';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

UPDATE tbl_inventory SET   po_number   = '676',
                                                    remarks     = 'Market Purchase
01-09-18
Mars INT Also',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='674';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

UPDATE tbl_inventory_details SET  inventory_id    = '674',
                                                                        ingredient_id   = '35',
                                                                        location_id     = '18',
                                                                        supplier_id     = '36',
                                                                        origin_id       = '162',    
                                                                        weight          = '0',
                                                                        total_weight    = '0',    
                                                                        item_type       = 'L',
                                                                        quantity        = '1',
                                                                        total_quantity  = '1',
                                                                        price           = '4056',
                                                                        manufac_date    = '2018-08-26',    
                                                                        expiry_date     = '2019-02-07'
                                        WHERE id = '4622';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '442',
                                                                            location_id     = '18',
                                                                            supplier_id     = '36',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '1068',
                                                                            expiry_date     = '2018-12-13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '245',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '5',
                                                                            total_weight    = '5',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '100',
                                                                            expiry_date     = '2018-09-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '195',
                                                                            location_id     = '42',
                                                                            supplier_id     = '26',
                                                                            origin_id       = '162',    
                                                                            weight          = '3',
                                                                            total_weight    = '3',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '800',
                                                                            expiry_date     = '2018-12-19';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '366',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '3',
                                                                            total_weight    = '3',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '200',
                                                                            expiry_date     = '2018-09-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '392',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '10',
                                                                            total_weight    = '10',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '70',
                                                                            expiry_date     = '2018-09-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '396',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '2',
                                                                            total_weight    = '2',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '60',
                                                                            expiry_date     = '2018-09-23';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '394',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '2',
                                                                            total_weight    = '2',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '80',
                                                                            expiry_date     = '2018-09-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '401',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '2',
                                                                            total_weight    = '2',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '120',
                                                                            expiry_date     = '2018-09-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '397',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',    
                                                                            item_type       = 'L',
                                                                            quantity        = '10',
                                                                            total_quantity  = '10',
                                                                            price           = '7',
                                                                            expiry_date     = '2018-09-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '400',
                                                                            location_id     = '42',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',    
                                                                            item_type       = 'L',
                                                                            quantity        = '1',
                                                                            total_quantity  = '1',
                                                                            price           = '400',
                                                                            expiry_date     = '2018-09-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '199',
                                                                            location_id     = '42',
                                                                            supplier_id     = '26',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',    
                                                                            item_type       = 'L',
                                                                            quantity        = '12',
                                                                            total_quantity  = '12',
                                                                            price           = '210',
                                                                            expiry_date     = '2018-10-30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '674',
                                                                            ingredient_id   = '34',
                                                                            location_id     = '18',
                                                                            supplier_id     = '36',
                                                                            origin_id       = '162',    
                                                                            weight          = '0',
                                                                            total_weight    = '0',    
                                                                            item_type       = 'L',
                                                                            quantity        = '21',
                                                                            total_quantity  = '21',
                                                                            price           = '165',
                                                                            expiry_date     = '2019-02-26';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

DELETE FROM tbl_inventory_details where id NOT IN (4622,0,4623,0,4624,0,4625,0,4626,0,4627,0,4628,0,4629,0,4630,0,4631,0,4632,0,4633,0,4634) AND inventory_id='674';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-procurement.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-procurement.php?ProcurementId=674&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13777',
                                                            inventory_detail_id = '4634',
                                                            qty_withdraw        = '9',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '12' WHERE id = '4634';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13778',
                                                            inventory_detail_id = '4626',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4626';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='25992';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='25991';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2648' AND ordered_at = '2018-09-01 22:28:50';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13779',
                                                            inventory_detail_id = '4631',
                                                            qty_withdraw        = '10',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4631';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13780',
                                                            inventory_detail_id = '4628',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4628';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='30' WHERE id='25961';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='30' WHERE id='25960';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13781',
                                                            inventory_detail_id = '4627',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '10',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4627';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25978';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='29' WHERE id='25979';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2647';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:19:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2636
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2636
-- 

DELETE FROM tbl_payments WHERE order_id = '2636';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2636
-- 

INSERT INTO tbl_payments SET  order_id = '2636', received_amt='0', amount='0', credit='8816', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2636
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2636';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2636
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26002';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=400&Index=1
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=400&Index=1
-- 

UPDATE tbl_ingredients SET title       = 'Onion Green',
                                                    unit_id     = '3',
                                                    uom         = '',
                                                    location_id = '42',
                                                    suppliers   = '4',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='400';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=400&Index=1
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13782',
                                                            inventory_detail_id = '4632',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26014';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2637' AND ordered_at = '2018-09-01 21:54:09';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2637' AND ordered_at = '2018-09-01 22:07:01';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26009';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13783',
                                                            inventory_detail_id = '4629',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4629';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13784',
                                                            inventory_detail_id = '4630',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4630';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13785',
                                                            inventory_detail_id = '4598',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4598';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26001';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13786',
                                                            inventory_detail_id = '4622',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4622';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13787',
                                                            inventory_detail_id = '4623',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4623';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:53 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26027';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2638
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2638
-- 

DELETE FROM tbl_payments WHERE order_id = '2638';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2638
-- 

INSERT INTO tbl_payments SET  order_id = '2638', received_amt='8316.8', amount='8316.8', credit='5000', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2638
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2638';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2638
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2646
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2646
-- 

DELETE FROM tbl_payments WHERE order_id = '2646';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2646
-- 

INSERT INTO tbl_payments SET  order_id = '2646', received_amt='174', amount='174', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2646
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2646';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 10:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2646
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26011';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26010';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26003';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13788',
                                                            inventory_detail_id = '4564',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '6' WHERE id = '4564';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13789',
                                                            inventory_detail_id = '4569',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4569';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26033';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26029';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13790',
                                                            inventory_detail_id = '4412',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '12' WHERE id = '4412';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13791',
                                                            inventory_detail_id = '4366',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '11' WHERE id = '4366';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13792',
                                                            inventory_detail_id = '4206',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '38' WHERE id = '4206';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13793',
                                                            inventory_detail_id = '4397',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '5' WHERE id = '4397';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 10:58 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 10:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2635' AND ordered_at = '2018-09-01 21:36:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='26008';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26023';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='17' WHERE id='26018';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:00 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26007';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26040';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='26038';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26054';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26053';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2635';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2635' AND ordered_at = '2018-09-01 22:56:05';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26037';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26036';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2637';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2637' AND ordered_at = '2018-09-01 22:48:14';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26025';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26024';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='26020';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:03 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='26019';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2652';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 22:44:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13794',
                                                            inventory_detail_id = '4594',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4594';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='26021';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='26022';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='19' WHERE id='26021';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26039';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26047';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2655';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:04 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 22:50:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='26028';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 22:04:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:05 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='20' WHERE id='26021';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13795',
                                                            inventory_detail_id = '4551',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4551';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='26050';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='13' WHERE id='26051';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13796',
                                                            inventory_detail_id = '4465',
                                                            qty_withdraw        = '7',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '14' WHERE id = '4465';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:06 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='26015';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='54' WHERE id='25952';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='54' WHERE id='25953';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='54' WHERE id='25955';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2644';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2644' AND ordered_at = '2018-09-01 22:12:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26067';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26068';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='2' WHERE id='26067';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='A', serve_time='2' WHERE id='26068';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2637
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2637
-- 

DELETE FROM tbl_payments WHERE order_id = '2637';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2637
-- 

INSERT INTO tbl_payments SET  order_id = '2637', received_amt='13978', amount='13978', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2637
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2637';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:07 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2637
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='26066';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13797',
                                                            inventory_detail_id = '4516',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '7',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '18'  WHERE id = '4516';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 23:03:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:08 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2642' AND ordered_at = '2018-09-01 23:03:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26061';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26060';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='26068';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='26067';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2660';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2660' AND ordered_at = '2018-09-01 23:05:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13798',
                                                            inventory_detail_id = '4510',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '6' WHERE id = '4510';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='26032';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='26031';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='26026';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2653';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:09 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2653' AND ordered_at = '2018-09-01 22:45:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26065';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:10 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26064';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26056';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13799',
                                                            inventory_detail_id = '4574',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '4' WHERE id = '4574';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:11 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:23:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:19:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26073';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26074';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26075';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2647';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:12 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 23:10:30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2643
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2643
-- 

DELETE FROM tbl_payments WHERE order_id = '2643';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2643
-- 

INSERT INTO tbl_payments SET  order_id = '2643', received_amt='13630', amount='13630', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2643
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2643';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2643
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2639
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2639
-- 

DELETE FROM tbl_payments WHERE order_id = '2639';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2639
-- 

INSERT INTO tbl_payments SET  order_id = '2639', received_amt='13195', amount='13195', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2639
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2639';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2639
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='23' WHERE id='26041';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='26006';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2648';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:13 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2648' AND ordered_at = '2018-09-01 22:42:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13800',
                                                            inventory_detail_id = '4592',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '5.1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '19.3'  WHERE id = '4592';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13801',
                                                            inventory_detail_id = '4203',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '3.5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '39.65'  WHERE id = '4203';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:14 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='26052';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='22' WHERE id='26051';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='26049';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26076';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:19:04';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 23:03:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='22' WHERE id='26049';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26078';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2648';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2648' AND ordered_at = '2018-09-01 22:42:29';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2648' AND ordered_at = '2018-09-01 23:14:07';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2635
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2635
-- 

DELETE FROM tbl_payments WHERE order_id = '2635';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2635
-- 

INSERT INTO tbl_payments SET  order_id = '2635', received_amt='0', amount='0', credit='13369', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2635
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2635';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:15 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2635
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='23' WHERE id='26052';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:16 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='28' WHERE id='26030';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26079';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2640';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2640' AND ordered_at = '2018-09-01 23:14:34';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2640' AND ordered_at = '2018-09-01 22:20:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2640' AND ordered_at = '2018-09-01 22:03:35';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 22:04:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 23:13:41';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 23:03:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26082';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

UPDATE tbl_ingredients SET title       = 'Lipton Tea 950grm',
                                                    unit_id     = '3',
                                                    uom         = 'V',
                                                    location_id = '4',
                                                    suppliers   = '35',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='166';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2642' AND ordered_at = '2018-09-01 23:16:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26081';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26080';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2644';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2644' AND ordered_at = '2018-09-01 23:15:24';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 22:23:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 23:10:30';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='26052';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13802',
                                                            inventory_detail_id = '4518',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4518';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:17 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='24' WHERE id='26049';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

UPDATE tbl_ingredients SET title       = 'Lipton Tea 950grm',
                                                    unit_id     = '8',
                                                    uom         = 'S',
                                                    location_id = '4',
                                                    suppliers   = '35',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='166';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=166&Index=2
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2642
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2642
-- 

DELETE FROM tbl_payments WHERE order_id = '2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2642
-- 

INSERT INTO tbl_payments SET  order_id = '2642', received_amt='5000', amount='4292', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2642
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2642';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:18 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2642
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:19 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='26' WHERE id='26051';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='76' WHERE id='25934';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='76' WHERE id='25935';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2641';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:20 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2641' AND ordered_at = '2018-09-01 22:03:45';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13803',
                                                            inventory_detail_id = '4459',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '7',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '23'  WHERE id = '4459';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:21 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='22' WHERE id='26055';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='35' WHERE id='26034';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='35' WHERE id='26035';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25959';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:22 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='66' WHERE id='25959';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='43' WHERE id='26005';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='43' WHERE id='26004';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='43' WHERE id='26004';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26077';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2649' AND ordered_at = '2018-09-01 22:40:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25959';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25962';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13804',
                                                            inventory_detail_id = '4420',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4420';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25964';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25957';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='66' WHERE id='25958';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2634';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 22:16:47';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2647';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2647' AND ordered_at = '2018-09-01 23:13:59';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='26013';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='26012';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2650';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2650' AND ordered_at = '2018-09-01 22:42:57';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2654';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2654' AND ordered_at = '2018-09-01 22:47:56';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2647
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2647
-- 

DELETE FROM tbl_payments WHERE order_id = '2647';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2647
-- 

INSERT INTO tbl_payments SET  order_id = '2647', received_amt='0', amount='0', credit='15544', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2647
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2647';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2647
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13805',
                                                            inventory_detail_id = '4586',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4586';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:23 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='26048';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2657';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 22:53:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='34' WHERE id='26045';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2640
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2640
-- 

DELETE FROM tbl_payments WHERE order_id = '2640';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2640
-- 

INSERT INTO tbl_payments SET  order_id = '2640', received_amt='0', amount='0', credit='7743', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2640
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2640';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2640
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory SET  id      = '675',
                                                    po_number   = '677',
                                                    remarks     = 'Ice Cube',
                                                    created_by  = '224',
                                                    created_at  = NOW( ),
                                                    modified_by = '224',
                                                    modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

INSERT INTO tbl_inventory_details SET  inventory_id    = '675',
                                                                            ingredient_id   = '361',
                                                                            location_id     = '12',
                                                                            supplier_id     = '4',
                                                                            origin_id       = '162',    
                                                                            weight          = '',
                                                                            total_weight    = '',
                                                                            item_type       = 'L',
                                                                            quantity        = '3',
                                                                            total_quantity  = '3',
                                                                            price           = '200',
                                                                            manufac_date    = '2018-08-29',    
                                                                            expiry_date     = '2018-09-25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:24 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/procurements.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/procurements.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13806',
                                                            inventory_detail_id = '4635',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '4635';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='26070';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26083';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='7' WHERE id='26083';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26084';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:25 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26083';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2662';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2662' AND ordered_at = '2018-09-01 23:18:53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13807',
                                                            inventory_detail_id = '4157',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '4157';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2662' AND ordered_at = '2018-09-01 23:18:53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2644
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2644
-- 

DELETE FROM tbl_payments WHERE order_id = '2644';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2644
-- 

INSERT INTO tbl_payments SET  order_id = '2644', received_amt='14500', amount='14152', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2644
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2644';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2644
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:26 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2653' AND ordered_at = '2018-09-01 22:45:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2653' AND ordered_at = '2018-09-01 22:45:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=369&Index=0
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=369&Index=0
-- 

UPDATE tbl_ingredients SET title       = 'Garbage bag',
                                                    unit_id     = '3',
                                                    uom         = '',
                                                    location_id = '4',
                                                    suppliers   = '38',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='369';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=369&Index=0
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13808',
                                                            inventory_detail_id = '4411',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '10' WHERE id = '4411';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:27 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='19' WHERE id='26071';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2653' AND ordered_at = '2018-09-01 22:45:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26098';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26096';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26097';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26095';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='3' WHERE id='26099';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2665';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:29 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2665' AND ordered_at = '2018-09-01 23:25:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='26093';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13809',
                                                            inventory_detail_id = '4567',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '4' WHERE id = '4567';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:30 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='6' WHERE id='26085';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 22:53:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 22:44:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='23' WHERE id='26069';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:31 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2649' AND ordered_at = '2018-09-01 23:08:38';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:32 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='7' WHERE id='26087';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13810',
                                                            inventory_detail_id = '3793',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.26',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '3793';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=177&Index=3
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=177&Index=3
-- 

UPDATE tbl_ingredients SET title       = 'Dry Red Chilli long 150g',
                                                    unit_id     = '3',
                                                    uom         = '',
                                                    location_id = '6',
                                                    suppliers   = '35',    
                                                    status      = 'A',
                                                    modified_by = '224',
                                                    modified_at = NOW( )
                                                    WHERE id='177';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:33 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/edit-ingredient.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/edit-ingredient.php?IngredientId=177&Index=3
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='51' WHERE id='26016';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='51' WHERE id='26017';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26091';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26092';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13811',
                                                            inventory_detail_id = '4171',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4171';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2651';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2651' AND ordered_at = '2018-09-01 22:43:25';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26089';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2653';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2653' AND ordered_at = '2018-09-01 23:25:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:34 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26094';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26106';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2655';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 22:50:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:35 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 23:34:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13812',
                                                            inventory_detail_id = '4496',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4496';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:36 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13813',
                                                            inventory_detail_id = '4443',
                                                            qty_withdraw        = '6',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '23' WHERE id = '4443';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2660
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2660
-- 

DELETE FROM tbl_payments WHERE order_id = '2660';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2660
-- 

INSERT INTO tbl_payments SET  order_id = '2660', received_amt='1000', amount='638', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2660
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2660';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:37 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2660
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13814',
                                                            inventory_detail_id = '4442',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '8' WHERE id = '4442';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='26088';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2662' AND ordered_at = '2018-09-01 23:18:53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26116';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2662';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:38 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2662' AND ordered_at = '2018-09-01 23:38:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13815',
                                                            inventory_detail_id = '4456',
                                                            qty_withdraw        = '4',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '4456';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='38' WHERE id='26062';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2662' AND ordered_at = '2018-09-01 23:18:53';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:39 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='26072';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13816',
                                                            inventory_detail_id = '4249',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '4249';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='31' WHERE id='26072';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='26059';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='26057';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='40' WHERE id='26058';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2658';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2658' AND ordered_at = '2018-09-01 23:00:38';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13817',
                                                            inventory_detail_id = '3112',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '3112';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='39' WHERE id='26063';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2659';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2659' AND ordered_at = '2018-09-01 23:01:46';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='15' WHERE id='26090';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='16' WHERE id='26086';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13818',
                                                            inventory_detail_id = '4567',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '4567';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:40 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26100';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2652';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 23:30:23';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26118';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26117';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2641';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2641' AND ordered_at = '2018-09-01 23:40:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2641' AND ordered_at = '2018-09-01 22:03:45';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2662
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2662
-- 

DELETE FROM tbl_payments WHERE order_id = '2662';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2662
-- 

INSERT INTO tbl_payments SET  order_id = '2662', received_amt='0', amount='0', credit='4002', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2662
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2662';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2662
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13819',
                                                            inventory_detail_id = '4400',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '4400';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:41 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2664';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2664' AND ordered_at = '2018-09-01 23:25:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2663';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2663' AND ordered_at = '2018-09-01 23:24:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='52' WHERE id='26044';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='52' WHERE id='26042';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='52' WHERE id='26043';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='52' WHERE id='26046';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26119';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2656';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2656' AND ordered_at = '2018-09-01 22:50:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:42 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2649' AND ordered_at = '2018-09-01 23:42:08';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13820',
                                                            inventory_detail_id = '4396',
                                                            qty_withdraw        = '2',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '14' WHERE id = '4396';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26120';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='35' WHERE id='26072';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2661';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2661' AND ordered_at = '2018-09-01 23:43:00';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2661' AND ordered_at = '2018-09-01 23:09:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13821',
                                                            inventory_detail_id = '4290',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '20' WHERE id = '4290';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:43 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2645
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2645
-- 

DELETE FROM tbl_payments WHERE order_id = '2645';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2645
-- 

INSERT INTO tbl_payments SET  order_id = '2645', received_amt='0', amount='0', credit='6380', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2645
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2645';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2645
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2632
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2632
-- 

DELETE FROM tbl_payments WHERE order_id = '2632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2632
-- 

INSERT INTO tbl_payments SET  order_id = '2632', received_amt='0', amount='0', credit='11049', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2632
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2632';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2632
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13822',
                                                            inventory_detail_id = '4558',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '2',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '19'  WHERE id = '4558';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='14' WHERE id='26104';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26105';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2666';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:44 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2666' AND ordered_at = '2018-09-01 23:33:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13823',
                                                            inventory_detail_id = '4463',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '2' WHERE id = '4463';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26111';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2664' AND ordered_at = '2018-09-01 23:25:44';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2641
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2641
-- 

DELETE FROM tbl_payments WHERE order_id = '2641';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2641
-- 

INSERT INTO tbl_payments SET  order_id = '2641', received_amt='0', amount='0', credit='10324', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2641
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2641';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:45 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2641
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13824',
                                                            inventory_detail_id = '4418',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '43'  WHERE id = '4418';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 23:34:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26129';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26130';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='56' WHERE id='26038';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='56' WHERE id='26039';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='56' WHERE id='26038';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='56' WHERE id='26039';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2652';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 23:45:18';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 23:30:23';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 22:50:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2652' AND ordered_at = '2018-09-01 22:44:12';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26131';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2655' AND ordered_at = '2018-09-01 23:34:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26127';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='26128';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 23:34:48';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2661
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2661
-- 

DELETE FROM tbl_payments WHERE order_id = '2661';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2661
-- 

INSERT INTO tbl_payments SET  order_id = '2661', received_amt='0', amount='0', credit='5278', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2661
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2661';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:46 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2661
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26108';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:47 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='9' WHERE id='26109';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13825',
                                                            inventory_detail_id = '3992',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '3992';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:48 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2649
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2649
-- 

DELETE FROM tbl_payments WHERE order_id = '2649';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2649
-- 

INSERT INTO tbl_payments SET  order_id = '2649', received_amt='0', amount='0', credit='9454', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2649
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2649';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2649
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26112';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:49 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26110';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13826',
                                                            inventory_detail_id = '4228',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '25' WHERE id = '4228';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:50 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2663' AND ordered_at = '2018-09-01 23:24:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13827',
                                                            inventory_detail_id = '4566',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0' ,quantity = '0' WHERE id = '4566';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:51 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13828',
                                                            inventory_detail_id = '4633',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '11' WHERE id = '4633';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2658' AND ordered_at = '2018-09-01 23:00:38';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26139';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26140';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2658';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2658' AND ordered_at = '2018-09-01 23:00:38';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2658' AND ordered_at = '2018-09-01 23:51:32';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='8' WHERE id='26125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2652
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2652
-- 

DELETE FROM tbl_payments WHERE order_id = '2652';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2652
-- 

INSERT INTO tbl_payments SET  order_id = '2652', received_amt='0', amount='0', credit='7076', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2652
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '2652';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=2652
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26126';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26121';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='8' WHERE id='26122';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13829',
                                                            inventory_detail_id = '4624',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '4'  WHERE id = '4624';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:52 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13830',
                                                            inventory_detail_id = '4200',
                                                            qty_withdraw        = '7',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '43' WHERE id = '4200';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='4' WHERE id='26134';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13831',
                                                            inventory_detail_id = '4578',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '0.1',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '0.6'  WHERE id = '4578';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:54 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2666' AND ordered_at = '2018-09-01 23:33:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26141';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2666';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2666' AND ordered_at = '2018-09-01 23:55:05';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='N', bumped_at = '0000-00-00 00:00:00' WHERE order_id='2666' AND ordered_at = '2018-09-01 23:55:05';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26113';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26114';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='18' WHERE id='26115';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2667';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2667' AND ordered_at = '2018-09-01 23:37:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='6' WHERE id='26136';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:55 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26123';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13832',
                                                            inventory_detail_id = '4510',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '3' WHERE id = '4510';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='11' WHERE id='26125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='11' WHERE id='26125';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13833',
                                                            inventory_detail_id = '4574',
                                                            qty_withdraw        = '3',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '1' WHERE id = '4574';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 11:56 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2667' AND ordered_at = '2018-09-01 23:37:51';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='26' WHERE id='26101';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='26' WHERE id='26102';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='26' WHERE id='26103';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='26124';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13834',
                                                            inventory_detail_id = '4559',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '5',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '54.6'  WHERE id = '4559';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '13835',
                                                            inventory_detail_id = '4369',
                                                            qty_withdraw        = '0',
                                                            wt_withdraw         = '5.4',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  weight = '7.9'  WHERE id = '4369';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2657';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 23:30:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2655';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:57 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2655' AND ordered_at = '2018-09-01 23:45:02';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 22:16:47';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 21:34:49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26143';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26144';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26145';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26146';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26147';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2634';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2634' AND ordered_at = '2018-09-01 23:58:16';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 23:30:43';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 22:53:13';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26149';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26148';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='26150';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='2657';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 11:59 PM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='2657' AND ordered_at = '2018-09-01 23:58:50';

-- ----------------------------------------------------------------------------
