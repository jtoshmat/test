-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table juniors.coupon_aggregated
DROP TABLE IF EXISTS `coupon_aggregated`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3155 DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- Dumping data for table juniors.coupon_aggregated: ~82 rows (approximately)
DELETE FROM `coupon_aggregated`;
/*!40000 ALTER TABLE `coupon_aggregated` DISABLE KEYS */;
INSERT INTO `coupon_aggregated` (`id`, `period`, `store_id`, `order_status`, `coupon_code`, `coupon_uses`, `subtotal_amount`, `discount_amount`, `total_amount`, `subtotal_amount_actual`, `discount_amount_actual`, `total_amount_actual`, `rule_name`) VALUES
	(3073, '2015-11-01', 1, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3074, '2015-11-01', 1, 'complete', 'anniversary65 ', 37, 2096.3700, 260.0000, 1836.3700, 2096.3700, -260.0000, 2356.3700, 'Anniversary 2015'),
	(3075, '2015-11-01', 1, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 5, 276.7500, 25.0000, 251.7500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3076, '2015-11-01', 1, 'pending', 'anniversary65', 9, 332.5500, 45.0000, 287.5500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3077, '2015-11-01', 1, 'shipment_processing', 'Anniversary65', 1, 56.9500, 5.0000, 51.9500, 56.9500, -5.0000, 61.9500, 'Anniversary 2015'),
	(3078, '2015-11-02', 1, 'closed', 'Anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3079, '2015-11-02', 1, 'complete', 'ANNIVERSARY65', 34, 1566.1200, 185.0000, 1381.1200, 1566.1200, -185.0000, 1751.1200, 'Anniversary 2015'),
	(3080, '2015-11-02', 1, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 4, 147.8000, 20.0000, 127.8000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3081, '2015-11-03', 1, 'closed', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3082, '2015-11-03', 1, 'complete', '10offship-ch', 3, 123.8500, 30.0000, 93.8500, 123.8500, -30.0000, 153.8500, '$10 off shipping'),
	(3083, '2015-11-03', 1, 'complete', 'Anniversary65', 40, 2091.4000, 260.0000, 1831.4000, 2091.4000, -260.0000, 2351.4000, 'Anniversary 2015'),
	(3084, '2015-11-03', 1, 'order_canceled_with_payment_exce', 'anniversary65', 2, 287.6500, 35.0000, 252.6500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3085, '2015-11-04', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3086, '2015-11-04', 1, 'closed', 'anniversary65', 2, 81.9000, 10.0000, 71.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3087, '2015-11-04', 1, 'complete', 'Anniversary65', 61, 3201.2300, 360.0000, 2841.2300, 3201.2300, -360.0000, 3561.2300, 'Anniversary 2015'),
	(3088, '2015-11-05', 1, 'closed', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3089, '2015-11-05', 1, 'complete', 'ANNIVERSARY65', 20, 988.8000, 120.0000, 868.8000, 988.8000, -120.0000, 1108.8000, 'Anniversary 2015'),
	(3090, '2015-11-05', 1, 'order_canceled_with_payment_exce', 'Anniversary65', 3, 119.8500, 15.0000, 104.8500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3091, '2015-11-06', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3092, '2015-11-06', 1, 'closed', 'anniversary65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3093, '2015-11-06', 1, 'complete', 'ANNIVERSARY65', 27, 1662.1500, 185.0000, 1477.1500, 1662.1500, -185.0000, 1847.1500, 'Anniversary 2015'),
	(3094, '2015-11-06', 1, 'order_canceled_with_payment_exce', 'anniversary65', 3, 146.8500, 15.0000, 131.8500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3095, '2015-11-06', 1, 'shipping_label_issued', 'ANNIVERSARY65', 1, 62.9500, 5.0000, 57.9500, 62.9500, -5.0000, 67.9500, 'Anniversary 2015'),
	(3096, '2015-11-07', 1, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3097, '2015-11-07', 1, 'complete', 'Anniversary65', 15, 914.9400, 100.0000, 814.9400, 914.9400, -100.0000, 1014.9400, 'Anniversary 2015'),
	(3098, '2015-11-07', 1, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 2, 104.9000, 10.0000, 94.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3099, '2015-11-09', 1, 'closed', '99OFF-TEST', 1, 38.9500, 38.5600, 0.3900, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3100, '2015-11-10', 1, 'canceled', '99off-test', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3101, '2015-11-11', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3102, '2015-11-16', 1, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3103, '2015-11-16', 1, 'complete', 'ANNIVERSARY65', 1, 42.9500, 5.0000, 37.9500, 42.9500, -5.0000, 47.9500, 'Anniversary 2015'),
	(3104, '2015-11-18', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3105, '2015-11-19', 1, 'complete', '10offship-ch', 2, 94.9000, 20.0000, 74.9000, 94.9000, -20.0000, 114.9000, '$10 off shipping'),
	(3106, '2015-11-19', 1, 'pending', '99off-test', 3, 116.8700, 115.7000, 1.1700, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3107, '2015-11-20', 1, 'canceled', '99OFF-TEST', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3108, '2015-11-24', 1, 'closed', '9offship-ch', 1, 44.9500, 9.0000, 35.9500, 0.0000, 0.0000, 0.0000, '$9 off shipping'),
	(3109, '2015-11-24', 1, 'complete', '10offship-ch', 2, 90.9000, 20.0000, 70.9000, 90.9000, -20.0000, 110.9000, '$10 off shipping'),
	(3110, '2015-11-24', 1, 'complete', '9offship-ch', 2, 77.9000, 19.0000, 58.9000, 77.9000, -19.0000, 96.9000, '$9 off shipping'),
	(3111, '2015-11-25', 1, 'canceled', '99off-test', 3, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3112, '2015-12-01', 1, 'complete', '9offship-ch', 1, 33.9500, 9.0000, 24.9500, 33.9500, -9.0000, 42.9500, '$9 off shipping'),
	(3113, '2015-12-03', 1, 'shipping_address_error', '99off-test', 1, 49.9500, 49.4500, 0.5000, 49.9500, -49.4500, 99.4000, '99% OFF TEST DISCOUNT'),
	(3114, '2015-11-01', 0, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3115, '2015-11-01', 0, 'complete', 'anniversary65 ', 37, 2096.3700, 260.0000, 1836.3700, 2096.3700, -260.0000, 2356.3700, 'Anniversary 2015'),
	(3116, '2015-11-01', 0, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 5, 276.7500, 25.0000, 251.7500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3117, '2015-11-01', 0, 'pending', 'anniversary65', 9, 332.5500, 45.0000, 287.5500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3118, '2015-11-01', 0, 'shipment_processing', 'Anniversary65', 1, 56.9500, 5.0000, 51.9500, 56.9500, -5.0000, 61.9500, 'Anniversary 2015'),
	(3119, '2015-11-02', 0, 'closed', 'Anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3120, '2015-11-02', 0, 'complete', 'ANNIVERSARY65', 34, 1566.1200, 185.0000, 1381.1200, 1566.1200, -185.0000, 1751.1200, 'Anniversary 2015'),
	(3121, '2015-11-02', 0, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 4, 147.8000, 20.0000, 127.8000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3122, '2015-11-03', 0, 'closed', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3123, '2015-11-03', 0, 'complete', '10offship-ch', 3, 123.8500, 30.0000, 93.8500, 123.8500, -30.0000, 153.8500, '$10 off shipping'),
	(3124, '2015-11-03', 0, 'complete', 'Anniversary65', 40, 2091.4000, 260.0000, 1831.4000, 2091.4000, -260.0000, 2351.4000, 'Anniversary 2015'),
	(3125, '2015-11-03', 0, 'order_canceled_with_payment_exce', 'anniversary65', 2, 287.6500, 35.0000, 252.6500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3126, '2015-11-04', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3127, '2015-11-04', 0, 'closed', 'anniversary65', 2, 81.9000, 10.0000, 71.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3128, '2015-11-04', 0, 'complete', 'Anniversary65', 61, 3201.2300, 360.0000, 2841.2300, 3201.2300, -360.0000, 3561.2300, 'Anniversary 2015'),
	(3129, '2015-11-05', 0, 'closed', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3130, '2015-11-05', 0, 'complete', 'ANNIVERSARY65', 20, 988.8000, 120.0000, 868.8000, 988.8000, -120.0000, 1108.8000, 'Anniversary 2015'),
	(3131, '2015-11-05', 0, 'order_canceled_with_payment_exce', 'Anniversary65', 3, 119.8500, 15.0000, 104.8500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3132, '2015-11-06', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3133, '2015-11-06', 0, 'closed', 'anniversary65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3134, '2015-11-06', 0, 'complete', 'ANNIVERSARY65', 27, 1662.1500, 185.0000, 1477.1500, 1662.1500, -185.0000, 1847.1500, 'Anniversary 2015'),
	(3135, '2015-11-06', 0, 'order_canceled_with_payment_exce', 'anniversary65', 3, 146.8500, 15.0000, 131.8500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3136, '2015-11-06', 0, 'shipping_label_issued', 'ANNIVERSARY65', 1, 62.9500, 5.0000, 57.9500, 62.9500, -5.0000, 67.9500, 'Anniversary 2015'),
	(3137, '2015-11-07', 0, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3138, '2015-11-07', 0, 'complete', 'Anniversary65', 15, 914.9400, 100.0000, 814.9400, 914.9400, -100.0000, 1014.9400, 'Anniversary 2015'),
	(3139, '2015-11-07', 0, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 2, 104.9000, 10.0000, 94.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3140, '2015-11-09', 0, 'closed', '99OFF-TEST', 1, 38.9500, 38.5600, 0.3900, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3141, '2015-11-10', 0, 'canceled', '99off-test', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3142, '2015-11-11', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3143, '2015-11-16', 0, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3144, '2015-11-16', 0, 'complete', 'ANNIVERSARY65', 1, 42.9500, 5.0000, 37.9500, 42.9500, -5.0000, 47.9500, 'Anniversary 2015'),
	(3145, '2015-11-18', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3146, '2015-11-19', 0, 'complete', '10offship-ch', 2, 94.9000, 20.0000, 74.9000, 94.9000, -20.0000, 114.9000, '$10 off shipping'),
	(3147, '2015-11-19', 0, 'pending', '99off-test', 3, 116.8700, 115.7000, 1.1700, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3148, '2015-11-20', 0, 'canceled', '99OFF-TEST', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3149, '2015-11-24', 0, 'closed', '9offship-ch', 1, 44.9500, 9.0000, 35.9500, 0.0000, 0.0000, 0.0000, '$9 off shipping'),
	(3150, '2015-11-24', 0, 'complete', '10offship-ch', 2, 90.9000, 20.0000, 70.9000, 90.9000, -20.0000, 110.9000, '$10 off shipping'),
	(3151, '2015-11-24', 0, 'complete', '9offship-ch', 2, 77.9000, 19.0000, 58.9000, 77.9000, -19.0000, 96.9000, '$9 off shipping'),
	(3152, '2015-11-25', 0, 'canceled', '99off-test', 3, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3153, '2015-12-01', 0, 'complete', '9offship-ch', 1, 33.9500, 9.0000, 24.9500, 33.9500, -9.0000, 42.9500, '$9 off shipping'),
	(3154, '2015-12-03', 0, 'shipping_address_error', '99off-test', 1, 49.9500, 49.4500, 0.5000, 49.9500, -49.4500, 99.4000, '99% OFF TEST DISCOUNT');
/*!40000 ALTER TABLE `coupon_aggregated` ENABLE KEYS */;


-- Dumping structure for table juniors.coupon_aggregated_order
DROP TABLE IF EXISTS `coupon_aggregated_order`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- Dumping data for table juniors.coupon_aggregated_order: ~0 rows (approximately)
DELETE FROM `coupon_aggregated_order`;
/*!40000 ALTER TABLE `coupon_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated_order` ENABLE KEYS */;


-- Dumping structure for table juniors.coupon_aggregated_updated
DROP TABLE IF EXISTS `coupon_aggregated_updated`;
CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3511 DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated';

-- Dumping data for table juniors.coupon_aggregated_updated: ~94 rows (approximately)
DELETE FROM `coupon_aggregated_updated`;
/*!40000 ALTER TABLE `coupon_aggregated_updated` DISABLE KEYS */;
INSERT INTO `coupon_aggregated_updated` (`id`, `period`, `store_id`, `order_status`, `coupon_code`, `coupon_uses`, `subtotal_amount`, `discount_amount`, `total_amount`, `subtotal_amount_actual`, `discount_amount_actual`, `total_amount_actual`, `rule_name`) VALUES
	(3369, '2015-12-04', 1, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3418, '2015-12-04', 0, 'order_canceled_with_payment_exce', 'ANNIVERSARY65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3419, '2015-11-01', 1, 'pending', 'anniversary65', 9, 332.5500, 45.0000, 287.5500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3420, '2015-11-02', 1, 'closed', 'Anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3421, '2015-11-02', 1, 'complete', 'anniversary65 ', 7, 315.6000, 40.0000, 275.6000, 315.6000, -40.0000, 355.6000, 'Anniversary 2015'),
	(3422, '2015-11-03', 1, 'complete', '10offship-ch', 3, 123.8500, 30.0000, 93.8500, 123.8500, -30.0000, 153.8500, '$10 off shipping'),
	(3423, '2015-11-03', 1, 'complete', 'ANNIVERSARY65', 15, 649.2200, 75.0000, 574.2200, 649.2200, -75.0000, 724.2200, 'Anniversary 2015'),
	(3424, '2015-11-04', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3425, '2015-11-04', 1, 'closed', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3426, '2015-11-04', 1, 'complete', 'ANNIVERSARY65', 28, 1265.4000, 160.0000, 1105.4000, 1265.4000, -160.0000, 1425.4000, 'Anniversary 2015'),
	(3427, '2015-11-05', 1, 'closed', 'anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3428, '2015-11-05', 1, 'complete', 'Anniversary65', 15, 771.1000, 90.0000, 681.1000, 771.1000, -90.0000, 861.1000, 'Anniversary 2015'),
	(3429, '2015-11-06', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3430, '2015-11-06', 1, 'closed', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3431, '2015-11-06', 1, 'complete', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 36.9500, -5.0000, 41.9500, 'Anniversary 2015'),
	(3432, '2015-11-07', 1, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3433, '2015-11-08', 1, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3434, '2015-11-09', 1, 'closed', '99OFF-TEST', 1, 38.9500, 38.5600, 0.3900, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3435, '2015-11-09', 1, 'closed', 'anniversary65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3436, '2015-11-09', 1, 'complete', 'anniversary65', 36, 2027.5700, 240.0000, 1787.5700, 2027.5700, -240.0000, 2267.5700, 'Anniversary 2015'),
	(3437, '2015-11-10', 1, 'canceled', '99off-test', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3438, '2015-11-10', 1, 'complete', 'ANNIVERSARY65', 16, 723.1500, 85.0000, 638.1500, 723.1500, -85.0000, 808.1500, 'Anniversary 2015'),
	(3439, '2015-11-11', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3440, '2015-11-11', 1, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3441, '2015-11-11', 1, 'complete', 'Anniversary65', 15, 865.9700, 100.0000, 765.9700, 865.9700, -100.0000, 965.9700, 'Anniversary 2015'),
	(3442, '2015-11-12', 1, 'complete', 'ANNIVERSARY65', 3, 127.8500, 15.0000, 112.8500, 127.8500, -15.0000, 142.8500, 'Anniversary 2015'),
	(3443, '2015-11-16', 1, 'complete', 'Anniversary65', 10, 523.3500, 65.0000, 458.3500, 523.3500, -65.0000, 588.3500, 'Anniversary 2015'),
	(3444, '2015-11-17', 1, 'complete', 'ANNIVERSARY65', 12, 800.0500, 95.0000, 705.0500, 800.0500, -95.0000, 895.0500, 'Anniversary 2015'),
	(3445, '2015-11-18', 1, 'complete', 'Anniversary65', 19, 1078.7000, 125.0000, 953.7000, 1078.7000, -125.0000, 1203.7000, 'Anniversary 2015'),
	(3446, '2015-11-19', 1, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3447, '2015-11-19', 1, 'complete', '10offship-ch', 2, 94.9000, 20.0000, 74.9000, 94.9000, -20.0000, 114.9000, '$10 off shipping'),
	(3448, '2015-11-19', 1, 'complete', 'ANNIVERSARY65', 7, 504.4400, 50.0000, 454.4400, 504.4400, -50.0000, 554.4400, 'Anniversary 2015'),
	(3449, '2015-11-19', 1, 'pending', '99off-test', 3, 116.8700, 115.7000, 1.1700, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3450, '2015-11-20', 1, 'canceled', '99OFF-TEST', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3451, '2015-11-23', 1, 'complete', 'ANNIVERSARY65', 32, 1601.1200, 185.0000, 1416.1200, 1601.1200, -185.0000, 1786.1200, 'Anniversary 2015'),
	(3452, '2015-11-24', 1, 'complete', '10offship-ch', 2, 90.9000, 20.0000, 70.9000, 90.9000, -20.0000, 110.9000, '$10 off shipping'),
	(3453, '2015-11-24', 1, 'complete', '9offship-ch', 2, 77.9000, 19.0000, 58.9000, 77.9000, -19.0000, 96.9000, '$9 off shipping'),
	(3454, '2015-11-24', 1, 'complete', 'Anniversary65', 13, 600.2500, 75.0000, 525.2500, 600.2500, -75.0000, 675.2500, 'Anniversary 2015'),
	(3455, '2015-11-25', 1, 'canceled', '99off-test', 3, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3456, '2015-11-25', 1, 'complete', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 73.9000, -10.0000, 83.9000, 'Anniversary 2015'),
	(3457, '2015-11-26', 1, 'closed', '9offship-ch', 1, 44.9500, 9.0000, 35.9500, 0.0000, 0.0000, 0.0000, '$9 off shipping'),
	(3458, '2015-11-26', 1, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3459, '2015-11-30', 1, 'complete', 'ANNIVERSARY65', 2, 157.8500, 15.0000, 142.8500, 157.8500, -15.0000, 172.8500, 'Anniversary 2015'),
	(3460, '2015-12-01', 1, 'complete', '9offship-ch', 1, 33.9500, 9.0000, 24.9500, 33.9500, -9.0000, 42.9500, '$9 off shipping'),
	(3461, '2015-12-01', 1, 'complete', 'Anniversary65', 1, 59.9500, 5.0000, 54.9500, 59.9500, -5.0000, 64.9500, 'Anniversary 2015'),
	(3462, '2015-12-02', 1, 'complete', 'Anniversary65', 1, 246.7000, 30.0000, 216.7000, 246.7000, -30.0000, 276.7000, 'Anniversary 2015'),
	(3463, '2015-12-02', 1, 'shipping_label_issued', 'ANNIVERSARY65', 1, 62.9500, 5.0000, 57.9500, 62.9500, -5.0000, 67.9500, 'Anniversary 2015'),
	(3464, '2015-12-03', 1, 'complete', 'ANNIVERSARY65', 1, 134.8400, 10.0000, 124.8400, 134.8400, -10.0000, 144.8400, 'Anniversary 2015'),
	(3465, '2015-11-01', 0, 'pending', 'anniversary65', 9, 332.5500, 45.0000, 287.5500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3466, '2015-11-02', 0, 'closed', 'Anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3467, '2015-11-02', 0, 'complete', 'anniversary65 ', 7, 315.6000, 40.0000, 275.6000, 315.6000, -40.0000, 355.6000, 'Anniversary 2015'),
	(3468, '2015-11-03', 0, 'complete', '10offship-ch', 3, 123.8500, 30.0000, 93.8500, 123.8500, -30.0000, 153.8500, '$10 off shipping'),
	(3469, '2015-11-03', 0, 'complete', 'ANNIVERSARY65', 15, 649.2200, 75.0000, 574.2200, 649.2200, -75.0000, 724.2200, 'Anniversary 2015'),
	(3470, '2015-11-04', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3471, '2015-11-04', 0, 'closed', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3472, '2015-11-04', 0, 'complete', 'ANNIVERSARY65', 28, 1265.4000, 160.0000, 1105.4000, 1265.4000, -160.0000, 1425.4000, 'Anniversary 2015'),
	(3473, '2015-11-05', 0, 'closed', 'anniversary65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3474, '2015-11-05', 0, 'complete', 'Anniversary65', 15, 771.1000, 90.0000, 681.1000, 771.1000, -90.0000, 861.1000, 'Anniversary 2015'),
	(3475, '2015-11-06', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3476, '2015-11-06', 0, 'closed', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3477, '2015-11-06', 0, 'complete', 'ANNIVERSARY65', 1, 36.9500, 5.0000, 31.9500, 36.9500, -5.0000, 41.9500, 'Anniversary 2015'),
	(3478, '2015-11-07', 0, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3479, '2015-11-08', 0, 'canceled', 'ANNIVERSARY65', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3480, '2015-11-09', 0, 'closed', '99OFF-TEST', 1, 38.9500, 38.5600, 0.3900, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3481, '2015-11-09', 0, 'closed', 'anniversary65', 1, 38.9500, 5.0000, 33.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3482, '2015-11-09', 0, 'complete', 'anniversary65', 36, 2027.5700, 240.0000, 1787.5700, 2027.5700, -240.0000, 2267.5700, 'Anniversary 2015'),
	(3483, '2015-11-10', 0, 'canceled', '99off-test', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3484, '2015-11-10', 0, 'complete', 'ANNIVERSARY65', 16, 723.1500, 85.0000, 638.1500, 723.1500, -85.0000, 808.1500, 'Anniversary 2015'),
	(3485, '2015-11-11', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3486, '2015-11-11', 0, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3487, '2015-11-11', 0, 'complete', 'Anniversary65', 15, 865.9700, 100.0000, 765.9700, 865.9700, -100.0000, 965.9700, 'Anniversary 2015'),
	(3488, '2015-11-12', 0, 'complete', 'ANNIVERSARY65', 3, 127.8500, 15.0000, 112.8500, 127.8500, -15.0000, 142.8500, 'Anniversary 2015'),
	(3489, '2015-11-16', 0, 'complete', 'Anniversary65', 10, 523.3500, 65.0000, 458.3500, 523.3500, -65.0000, 588.3500, 'Anniversary 2015'),
	(3490, '2015-11-17', 0, 'complete', 'ANNIVERSARY65', 12, 800.0500, 95.0000, 705.0500, 800.0500, -95.0000, 895.0500, 'Anniversary 2015'),
	(3491, '2015-11-18', 0, 'complete', 'Anniversary65', 19, 1078.7000, 125.0000, 953.7000, 1078.7000, -125.0000, 1203.7000, 'Anniversary 2015'),
	(3492, '2015-11-19', 0, 'canceled', '99OFF-TEST', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3493, '2015-11-19', 0, 'complete', '10offship-ch', 2, 94.9000, 20.0000, 74.9000, 94.9000, -20.0000, 114.9000, '$10 off shipping'),
	(3494, '2015-11-19', 0, 'complete', 'ANNIVERSARY65', 7, 504.4400, 50.0000, 454.4400, 504.4400, -50.0000, 554.4400, 'Anniversary 2015'),
	(3495, '2015-11-19', 0, 'pending', '99off-test', 3, 116.8700, 115.7000, 1.1700, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3496, '2015-11-20', 0, 'canceled', '99OFF-TEST', 4, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3497, '2015-11-23', 0, 'complete', 'ANNIVERSARY65', 32, 1601.1200, 185.0000, 1416.1200, 1601.1200, -185.0000, 1786.1200, 'Anniversary 2015'),
	(3498, '2015-11-24', 0, 'complete', '10offship-ch', 2, 90.9000, 20.0000, 70.9000, 90.9000, -20.0000, 110.9000, '$10 off shipping'),
	(3499, '2015-11-24', 0, 'complete', '9offship-ch', 2, 77.9000, 19.0000, 58.9000, 77.9000, -19.0000, 96.9000, '$9 off shipping'),
	(3500, '2015-11-24', 0, 'complete', 'Anniversary65', 13, 600.2500, 75.0000, 525.2500, 600.2500, -75.0000, 675.2500, 'Anniversary 2015'),
	(3501, '2015-11-25', 0, 'canceled', '99off-test', 3, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '99% OFF TEST DISCOUNT'),
	(3502, '2015-11-25', 0, 'complete', 'anniversary65', 1, 73.9000, 10.0000, 63.9000, 73.9000, -10.0000, 83.9000, 'Anniversary 2015'),
	(3503, '2015-11-26', 0, 'closed', '9offship-ch', 1, 44.9500, 9.0000, 35.9500, 0.0000, 0.0000, 0.0000, '$9 off shipping'),
	(3504, '2015-11-26', 0, 'closed', 'ANNIVERSARY65', 1, 44.9500, 5.0000, 39.9500, 0.0000, 0.0000, 0.0000, 'Anniversary 2015'),
	(3505, '2015-11-30', 0, 'complete', 'ANNIVERSARY65', 2, 157.8500, 15.0000, 142.8500, 157.8500, -15.0000, 172.8500, 'Anniversary 2015'),
	(3506, '2015-12-01', 0, 'complete', '9offship-ch', 1, 33.9500, 9.0000, 24.9500, 33.9500, -9.0000, 42.9500, '$9 off shipping'),
	(3507, '2015-12-01', 0, 'complete', 'Anniversary65', 1, 59.9500, 5.0000, 54.9500, 59.9500, -5.0000, 64.9500, 'Anniversary 2015'),
	(3508, '2015-12-02', 0, 'complete', 'Anniversary65', 1, 246.7000, 30.0000, 216.7000, 246.7000, -30.0000, 276.7000, 'Anniversary 2015'),
	(3509, '2015-12-02', 0, 'shipping_label_issued', 'ANNIVERSARY65', 1, 62.9500, 5.0000, 57.9500, 62.9500, -5.0000, 67.9500, 'Anniversary 2015'),
	(3510, '2015-12-03', 0, 'complete', 'ANNIVERSARY65', 1, 134.8400, 10.0000, 124.8400, 134.8400, -10.0000, 144.8400, 'Anniversary 2015');
/*!40000 ALTER TABLE `coupon_aggregated_updated` ENABLE KEYS */;


-- Dumping structure for table juniors.salesrule_coupon
DROP TABLE IF EXISTS `salesrule_coupon`;
CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`),
  CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- Dumping data for table juniors.salesrule_coupon: ~30 rows (approximately)
DELETE FROM `salesrule_coupon`;
/*!40000 ALTER TABLE `salesrule_coupon` DISABLE KEYS */;
INSERT INTO `salesrule_coupon` (`coupon_id`, `rule_id`, `code`, `usage_limit`, `usage_per_customer`, `times_used`, `expiration_date`, `is_primary`, `created_at`, `type`) VALUES
	(16, 15, 'RTL25OFF', NULL, NULL, 1, '2015-05-01 00:00:00', 1, '2013-04-09 01:52:40', 0),
	(17, 16, 'WHL20OFF', NULL, NULL, 5, NULL, 1, '2013-04-09 01:59:31', 0),
	(18, 18, 'WHL80OFF', NULL, NULL, 0, NULL, 1, '2013-04-09 02:01:54', 0),
	(19, 21, 'VIP10OFF', NULL, NULL, 0, NULL, 1, '2013-04-09 03:43:32', 0),
	(21, 24, 'VIP25OFF', NULL, NULL, 1, NULL, 1, '2013-04-09 04:10:57', 0),
	(22, 27, 'PSFREESHIP', NULL, NULL, 0, NULL, 1, '2013-04-10 00:48:32', 0),
	(23, 28, 'GEN25OFF', NULL, NULL, 1, NULL, 1, '2013-04-10 00:54:39', 0),
	(24, 31, 'GEN10OFF', NULL, NULL, 0, NULL, 1, '2013-04-10 01:33:12', 0),
	(27, 37, 'PS15OFF', NULL, NULL, 0, '2015-11-30 00:00:00', 1, '2013-04-11 02:44:21', 0),
	(29, 10, 'BMDDFH9SR707', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(30, 10, 'ZFB8E6FOQ4NB', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(31, 10, '5Y60LFCXFF7Y', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(32, 10, 'ZOYKXXRV9E8H', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(33, 10, 'P2ZPG9XIRX07', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(34, 10, 'EAR5GWJRYKJT', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(35, 10, 'G2NEV76PJMGD', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(36, 10, 'ZKKKZSO7SLYM', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(37, 10, 'A9FYK1KC2IDQ', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(38, 10, '3I5REXK80NUN', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(39, 10, 'YZH7AE5BU9EA', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(40, 10, 'D826WAWK6EGC', 0, 0, 0, NULL, NULL, '2013-04-11 04:39:21', 1),
	(44, 11, 'Register10', 999999, NULL, 1, NULL, 1, '2013-05-25 09:53:12', 0),
	(45, 36, 'makeawish', 1, NULL, 0, NULL, 1, '2013-05-25 11:36:42', 0),
	(46, 41, 'VIP250ff', NULL, NULL, 0, NULL, 1, '2013-05-27 21:33:14', 0),
	(47, 43, 'evening15', 1, NULL, 0, NULL, 1, '2013-05-28 00:58:57', 0),
	(48, 42, '25OFF', NULL, 999999, 0, NULL, 1, '2013-05-29 00:05:42', 0),
	(49, 50, '99OFF-TEST', NULL, NULL, 49, '2015-10-22 00:00:00', 1, '2015-10-13 19:26:48', 0),
	(50, 51, 'ANNIVERSARY_65', NULL, 1, 272, '2015-11-04 00:00:00', 1, '2015-10-30 14:11:05', 0),
	(51, 54, '9offShip-CH', NULL, NULL, 11, NULL, 1, '2015-11-03 10:16:33', 0),
	(52, 55, '10offShip-CH', NULL, NULL, 0, NULL, 1, '2015-12-01 13:14:30', 0);
/*!40000 ALTER TABLE `salesrule_coupon` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
