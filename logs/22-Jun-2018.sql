
-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='31' WHERE id='10087';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='10109';

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

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='468';

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

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='468' AND ordered_at = '2018-06-22 00:00:58';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:01 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='10108';

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

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='473';

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

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='473' AND ordered_at = '2018-06-22 00:00:07';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=474
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=474
-- 

DELETE FROM tbl_payments WHERE order_id = '474';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=474
-- 

INSERT INTO tbl_payments SET  order_id = '474', received_amt='1050', amount='1044', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=474
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '474';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:02 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=474
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='35' WHERE id='10088';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='35' WHERE id='10086';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='471';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='471' AND ordered_at = '2018-06-21 23:28:38';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='10107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='476';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='476' AND ordered_at = '2018-06-21 23:54:34';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='10' WHERE id='10107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='C', serve_time='10' WHERE id='10107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : Kds@gaia.com.pk
-- Query Time : 12:04 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=AllFloors
-- 

UPDATE tbl_order_details SET status='A', serve_time='10' WHERE id='10107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:05 AM
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
-- Query Time : 12:05 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '10241',
                                                            inventory_detail_id = '3131',
                                                            qty_withdraw        = '1',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:05 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '0' WHERE id = '3131';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:05 AM
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
-- Query Time : 12:06 AM
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
-- Query Time : 12:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '10242',
                                                            inventory_detail_id = '3302',
                                                            qty_withdraw        = '4',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:06 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '11' WHERE id = '3302';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:06 AM
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
-- Query Time : 12:09 AM
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
-- Query Time : 12:09 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

INSERT INTO tbl_inventory_history SET  id      = '10243',
                                                            inventory_detail_id = '3232',
                                                            qty_withdraw        = '5',
                                                            wt_withdraw         = '0',    
                                                            modified_by = '224',
                                                            modified_at = NOW( );

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:09 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/inventory/withdrawals.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/inventory/withdrawals.php
-- 

UPDATE tbl_inventory_details SET  quantity = '12' WHERE id = '3232';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 224
-- Admin Name  : Mudassar Hussain
-- Admin Email : Mudassar.hussain@gaia.com.pk
-- Query Time : 12:09 AM
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
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=467
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=467
-- 

DELETE FROM tbl_payments WHERE order_id = '467';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=467
-- 

INSERT INTO tbl_payments SET  order_id = '467', received_amt='15000', amount='11774', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=467
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '467';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:10 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=467
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

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='10115';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='477' AND ordered_at = '2018-06-22 00:13:40';

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

UPDATE tbl_order_details SET status='C', serve_time='1' WHERE id='10116';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='476' AND ordered_at = '2018-06-22 00:15:02';

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

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='10114';

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

UPDATE tbl_order_details SET status='C', serve_time='5' WHERE id='10113';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='473' AND ordered_at = '2018-06-22 00:11:13';

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

UPDATE tbl_order_details SET status='C', serve_time='12' WHERE id='10112';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:16 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='477' AND ordered_at = '2018-06-22 00:05:05';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=475
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=475
-- 

DELETE FROM tbl_payments WHERE order_id = '475';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=475
-- 

INSERT INTO tbl_payments SET  order_id = '475', received_amt='200', amount='116', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=475
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '475';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:18 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=475
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'VC', void_reason_id ='3', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10082';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10083';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10084';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10085';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10086';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10087';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10088';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'C', void_reason_id ='0', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10089';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

UPDATE tbl_order_details SET  status = 'VC', void_reason_id ='3', void_remarks = '', void_by='235', void_at= NOW( )
                                WHERE order_id = '471' AND id = '10117';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 235
-- Admin Name  : Asim Malik
-- Admin Email : asim.malik@gaia.com.pk
-- Query Time : 12:21 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/void-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/void-order.php?OrderId=471&Index=6
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=468
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=468
-- 

DELETE FROM tbl_payments WHERE order_id = '468';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=468
-- 

INSERT INTO tbl_payments SET  order_id = '468', received_amt='8000', amount='7511', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=468
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '468';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:23 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=468
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:24 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=471
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:24 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=471
-- 

DELETE FROM tbl_payments WHERE order_id = '471';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:24 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=471
-- 

INSERT INTO tbl_payments SET  order_id = '471', received_amt='11000', amount='10991', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:24 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=471
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '471';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:24 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=471
-- 

COMMIT;

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

UPDATE tbl_order_details SET status='C', serve_time='23' WHERE id='10110';

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

UPDATE tbl_order_details SET status='C', serve_time='23' WHERE id='10111';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:27 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='473' AND ordered_at = '2018-06-22 00:05:00';

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

UPDATE tbl_order_details SET status='C', serve_time='6' WHERE id='10118';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:27 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='473';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:27 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='473' AND ordered_at = '2018-06-22 00:21:49';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:30 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:30 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

DELETE FROM tbl_payments WHERE order_id = '477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:30 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

INSERT INTO tbl_payments SET  order_id = '477', received_amt='3000', amount='2407', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:30 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 12:30 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

COMMIT;

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

UPDATE tbl_order_details SET status='C', serve_time='2' WHERE id='10119';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:41 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_orders SET status='B', bumped_at=NOW() WHERE id='473';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 237
-- Admin Name  : KDS
-- Admin Email : kds@gaia.com.pk
-- Query Time : 12:41 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/ajax/update-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php
-- 

UPDATE tbl_order_details SET bumped='Y', bumped_at = NOW() WHERE order_id='473' AND ordered_at = '2018-06-22 00:39:17';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=473
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=473
-- 

DELETE FROM tbl_payments WHERE order_id = '473';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=473
-- 

INSERT INTO tbl_payments SET  order_id = '473', received_amt='15000', amount='13079', credit='0', marked_by='250', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=473
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '250', modified_at = NOW( ) WHERE id = '473';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 250
-- Admin Name  : Muhammad Taimoor
-- Admin Email : taimoor@gaia.com.pk
-- Query Time : 01:00 AM
-- IP Address : 43.245.207.87
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=473
-- 

COMMIT;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 275
-- Admin Name  : Saif Hasan
-- Admin Email : saif@3-tree.com
-- Query Time : 11:03 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/ajax/update-orderitem-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/kds.php?Action=History
-- 

UPDATE tbl_order_details SET status='C', serve_time='669' WHERE id='10107';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 275
-- Admin Name  : Saif Hasan
-- Admin Email : saif@3-tree.com
-- Query Time : 11:04 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/ajax/management/toggle-order-status.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/orders.php
-- 

UPDATE tbl_orders SET status='B' WHERE id='477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:08 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

BEGIN;

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:08 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

DELETE FROM tbl_payments WHERE order_id = '477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:08 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

INSERT INTO tbl_payments SET  order_id = '477', received_amt='2407', amount='2407', credit='0', marked_by='54', marked_at=NOW();

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:08 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

UPDATE tbl_orders SET  rims = 'P', status = 'C', modified_by = '54', modified_at = NOW( ) WHERE id = '477';

-- ----------------------------------------------------------------------------

-- 
-- Admin ID    : 54
-- Admin Name  : Rehmatullah
-- Admin Email : rehmatullah@3-tree.com
-- Query Time : 11:08 AM
-- IP Address : 125.209.75.182
-- Web Page   : /bistroware/control/management/pay-order.php
-- Referer    : http://www.gaia.com.pk/bistroware/control/management/pay-order.php?OrderId=477
-- 

COMMIT;

-- ----------------------------------------------------------------------------
