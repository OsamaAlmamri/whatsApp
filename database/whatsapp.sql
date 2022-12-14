-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.40 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table whatsapp_server.cms_apicustom
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_apicustom: ~0 rows (approximately)
REPLACE INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
	(1, 'sendMessage', 'outbox', 'save_add', NULL, NULL, NULL, NULL, 'Send Messge', NULL, NULL, NULL, NULL, 'post', 'a:7:{i:0;a:5:{s:4:"name";s:6:"number";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:4:"text";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:3;a:5:{s:4:"name";s:9:"id_device";s:4:"type";s:7:"integer";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:4;a:5:{s:4:"name";s:4:"type";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:5;a:5:{s:4:"name";s:8:"url_file";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:8:"group_id";s:4:"type";s:7:"integer";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:13:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:6:"number";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:4:"text";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:6:"status";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:9:"id_device";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:13:"device_number";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:11:"device_name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:18:"device_description";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:18:"device_multidevice";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:13:"device_status";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:4:"type";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:8:"url_file";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:12;a:4:{s:4:"name";s:8:"group_id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}}');

-- Dumping structure for table whatsapp_server.cms_apikey
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_apikey: ~0 rows (approximately)
REPLACE INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'ffdca4edeac8ba84fefb1078d9cfac75', 0, 'active', '2022-12-14 19:51:57', NULL);

-- Dumping structure for table whatsapp_server.cms_dashboard
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_dashboard: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.cms_email_queues
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_email_queues: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.cms_email_templates
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_email_templates: ~0 rows (approximately)
REPLACE INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-12-11 15:26:00', NULL);

-- Dumping structure for table whatsapp_server.cms_logs
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_logs: ~42 rows (approximately)
REPLACE INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-11 15:27:11', NULL),
	(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/device/add-save', 'Add New Data Osama at Device', '', 1, '2022-12-11 15:28:56', NULL),
	(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-12-11 15:32:53', NULL),
	(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/device/add-save', 'Add New Data osama2 at Device', '', 1, '2022-12-11 15:36:46', NULL),
	(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/device/edit-save/2', 'Update data osama2 at Device', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_users</td><td>1</td><td></td></tr><tr><td>multidevice</td><td>YES</td><td>NO</td></tr><tr><td>status</td><td>disconnected</td><td></td></tr></tbody></table>', 1, '2022-12-11 15:40:48', NULL),
	(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 15:49:57', NULL),
	(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 15:59:50', NULL),
	(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 15:59:52', NULL),
	(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:00:39', NULL),
	(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:01:30', NULL),
	(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/outbox/delete/5', 'Delete data 5 at Outbox', '', 1, '2022-12-11 16:07:30', NULL),
	(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/outbox/delete/5', 'Delete data  at Outbox', '', 1, '2022-12-11 16:07:33', NULL),
	(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:33:41', NULL),
	(14, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G955U Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:34:41', NULL),
	(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:42:25', NULL),
	(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:43:00', NULL),
	(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:43:36', NULL),
	(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:44:46', NULL),
	(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:47:10', NULL),
	(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:47:56', NULL),
	(21, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:50:25', NULL),
	(22, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:56:41', NULL),
	(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 16:57:40', NULL),
	(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-11 17:02:43', NULL),
	(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/login', 'yemencoder@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-12-12 17:40:25', NULL),
	(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/device/edit-save/2', 'Update data osama2 at Device', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_users</td><td>1</td><td></td></tr><tr><td>number</td><td>0096773569041</td><td>00967773569041</td></tr><tr><td>status</td><td>disconnected</td><td></td></tr></tbody></table>', 1, '2022-12-12 17:41:36', NULL),
	(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-12 20:33:36', NULL),
	(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/device/add-save', 'Add New Data salwa at Device', '', 1, '2022-12-12 20:40:44', NULL),
	(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/device/edit-save/2', 'Update data osama2 at Device', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_users</td><td>1</td><td></td></tr><tr><td>multidevice</td><td>NO</td><td>YES</td></tr><tr><td>status</td><td>disconnected</td><td></td></tr></tbody></table>', 1, '2022-12-12 20:41:00', NULL),
	(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://laravel-whatsapp-server.test/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-12 20:42:33', NULL),
	(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/login', 'yemencoder@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-12-13 18:05:42', NULL),
	(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-13 18:06:36', NULL),
	(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-13 18:19:46', NULL),
	(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-13 18:24:34', NULL),
	(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/delete/22', 'Delete data 22 at Outbox', '', 1, '2022-12-13 18:24:57', NULL),
	(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/edit-save/21', 'Update data  at Outbox', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>text</td><td>wwwwwwwwwwwwwww</td><td>wwwwwwwwwwwwwwwooooooooooooooooooooooo</td></tr><tr><td>status</td><td>1</td><td></td></tr></tbody></table>', 1, '2022-12-13 18:25:35', NULL),
	(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/edit-save/21', 'Update data  at Outbox', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>text</td><td>wwwwwwwwwwwwwwwooooooooooooooooooooooo</td><td>wwwwwwwwwwwwwwwooooooooooooooooooooooopppp</td></tr></tbody></table>', 1, '2022-12-13 18:27:09', NULL),
	(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/edit-save/21', 'Update data  at Outbox', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>text</td><td>wwwwwwwwwwwwwwwooooooooooooooooooooooopppp</td><td>iii9999</td></tr></tbody></table>', 1, '2022-12-13 18:27:39', NULL),
	(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/groups/add-save', 'Add New Data ookkkkkkk at Group', '', 1, '2022-12-13 18:55:50', NULL),
	(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/groups/edit-save/1', 'Update data test at Group', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>ookkkkkkk</td><td>test</td></tr></tbody></table>', 1, '2022-12-13 18:58:42', NULL),
	(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/phones/add-save', 'Add New Data osama at Phone', '', 1, '2022-12-13 19:14:35', NULL),
	(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/login', 'yemencoder@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-12-14 17:00:42', NULL),
	(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/groups/add-save', 'Add New Data test2 at Group', '', 1, '2022-12-14 19:08:41', NULL),
	(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/outbox/add-save', 'Add New Data  at Outbox', '', 1, '2022-12-14 19:24:24', NULL),
	(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/menu_management/edit-save/4', 'Update data المجموعة at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Group</td><td>المجموعة</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-12-14 19:43:11', NULL),
	(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/menu_management/edit-save/1', 'Update data الاجهزة at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Device</td><td>الاجهزة</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2022-12-14 19:43:47', NULL),
	(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/menu_management/edit-save/4', 'Update data المجموعات at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>المجموعة</td><td>المجموعات</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-12-14 19:44:00', NULL),
	(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/menu_management/edit-save/3', 'Update data الرسائل at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Outbox</td><td>الرسائل</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-12-14 19:44:18', NULL),
	(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/menu_management/edit-save/5', 'Update data اراقام الهواتف at Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Phone</td><td>اراقام الهواتف</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-12-14 19:44:44', NULL),
	(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/statistic_builder/add-save', 'Add New Data الاعدادات at Statistic Builder', '', 1, '2022-12-14 19:46:44', NULL),
	(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/statistic_builder/delete/1', 'Delete data الاعدادات at Statistic Builder', '', 1, '2022-12-14 19:47:44', NULL),
	(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://127.0.0.1/admin/device/delete/3', 'Delete data salwa at Device', '', 1, '2022-12-14 20:10:49', NULL);

-- Dumping structure for table whatsapp_server.cms_menus
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_menus: ~5 rows (approximately)
REPLACE INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(1, 'الاجهزة', 'Route', 'AdminDeviceControllerGetIndex', 'normal', 'fa fa-qrcode', 0, 1, 0, 1, 1, '2022-02-05 23:49:42', '2022-12-14 19:43:46'),
	(2, 'Contact', 'Route', 'AdminContactControllerGetIndex', NULL, 'fa fa-book', 0, 0, 0, 1, 1, '2022-02-05 23:53:46', NULL),
	(3, 'الرسائل', 'Route', 'AdminOutboxControllerGetIndex', 'normal', 'fa fa-send', 0, 1, 0, 1, 3, '2022-02-05 23:59:55', '2022-12-14 19:44:18'),
	(4, 'المجموعات', 'Route', 'AdminGroupsControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 2, '2022-12-13 18:42:58', '2022-12-14 19:44:00'),
	(5, 'اراقام الهواتف', 'Route', 'AdminPhonesControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 4, '2022-12-13 19:05:43', '2022-12-14 19:44:44');

-- Dumping structure for table whatsapp_server.cms_menus_privileges
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_menus_privileges: ~5 rows (approximately)
REPLACE INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(2, 2, 1),
	(7, 1, 1),
	(8, 4, 1),
	(9, 3, 1),
	(10, 5, 1);

-- Dumping structure for table whatsapp_server.cms_moduls
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_moduls: ~16 rows (approximately)
REPLACE INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-02-04 06:46:11', NULL, NULL),
	(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-02-04 06:46:11', NULL, NULL),
	(12, 'Device', 'fa fa-qrcode', 'device', 'device', 'AdminDeviceController', 0, 0, '2022-02-05 23:49:42', NULL, NULL),
	(13, 'Contact', 'fa fa-book', 'contact', 'contact', 'AdminContactController', 0, 0, '2022-02-05 23:53:46', NULL, NULL),
	(14, 'Outbox', 'fa fa-send', 'outbox', 'outbox', 'AdminOutboxController', 0, 0, '2022-02-05 23:59:55', NULL, NULL),
	(15, 'Group', 'fa fa-glass', 'groups', 'groups', 'AdminGroupsController', 0, 0, '2022-12-13 18:42:58', NULL, NULL),
	(16, 'Phone', 'fa fa-glass', 'phones', 'phones', 'AdminPhonesController', 0, 0, '2022-12-13 19:05:43', NULL, NULL);

-- Dumping structure for table whatsapp_server.cms_notifications
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_notifications: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.cms_privileges
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_privileges: ~0 rows (approximately)
REPLACE INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-red', '2022-12-11 15:26:00', NULL);

-- Dumping structure for table whatsapp_server.cms_privileges_roles
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_privileges_roles: ~11 rows (approximately)
REPLACE INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 0, 0, 0, 1, 1, '2022-12-11 15:26:00', NULL),
	(2, 1, 1, 1, 1, 1, 1, 2, '2022-12-11 15:26:00', NULL),
	(3, 0, 1, 1, 1, 1, 1, 3, '2022-12-11 15:26:00', NULL),
	(4, 1, 1, 1, 1, 1, 1, 4, '2022-12-11 15:26:00', NULL),
	(5, 1, 1, 1, 1, 1, 1, 5, '2022-12-11 15:26:00', NULL),
	(6, 1, 1, 1, 1, 1, 1, 6, '2022-12-11 15:26:00', NULL),
	(7, 1, 1, 1, 1, 1, 1, 7, '2022-12-11 15:26:00', NULL),
	(8, 1, 1, 1, 1, 1, 1, 8, '2022-12-11 15:26:00', NULL),
	(9, 1, 1, 1, 1, 1, 1, 9, '2022-12-11 15:26:00', NULL),
	(10, 1, 1, 1, 1, 1, 1, 10, '2022-12-11 15:26:00', NULL),
	(11, 1, 0, 1, 0, 1, 1, 11, '2022-12-11 15:26:00', NULL),
	(12, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(13, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);

-- Dumping structure for table whatsapp_server.cms_settings
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_settings: ~16 rows (approximately)
REPLACE INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-02-04 06:46:11', NULL, 'Login Register Style', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-02-04 06:46:11', NULL, 'Login Register Style', 'Login Font Color'),
	(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Login Register Style', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Email Setting', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-02-04 06:46:11', NULL, 'Email Setting', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Email Setting', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-02-04 06:46:11', NULL, 'Email Setting', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Email Setting', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Email Setting', 'SMTP Password'),
	(10, 'appname', 'واتساب', 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-02-04 06:46:11', NULL, 'Application Setting', 'Default Paper Print Size'),
	(12, 'logo', NULL, 'upload_image', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'Logo'),
	(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'API Debug Mode'),
	(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'Google API Key'),
	(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-02-04 06:46:11', NULL, 'Application Setting', 'Google FCM Key');

-- Dumping structure for table whatsapp_server.cms_statistics
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_statistics: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.cms_statistic_components
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_statistic_components: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.cms_users
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.cms_users: ~0 rows (approximately)
REPLACE INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', NULL, 'yemencoder@gmail.com', '$2y$10$zINiNxGbvgJlvjahu.u9xOk.30G0MKFkKO0MofYca4Mo4PIw/lupe', 1, '2022-12-11 15:26:00', NULL, 'Active'),
	(2, 'Super Admin2', NULL, 'yemencoder2@gmail.com', '$2y$10$zINiNxGbvgJlvjahu.u9xOk.30G0MKFkKO0MofYca4Mo4PIw/lupe', 1, '2022-12-11 15:26:00', NULL, 'Active');

-- Dumping structure for table whatsapp_server.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_device` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.contact: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.device
CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_users` int(11) DEFAULT NULL,
  `number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `multidevice` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.device: ~0 rows (approximately)
REPLACE INTO `device` (`id`, `id_users`, `number`, `name`, `description`, `multidevice`, `created_at`, `updated_at`, `status`) VALUES
	(1, 1, '00967779558800', 'Osama', 'test', 'YES', '2022-12-11 18:28:56', '2022-12-14 23:10:49', 'disconnected'),
	(2, 1, '00967773569041', 'osama2', 'test', 'YES', '2022-12-11 18:36:46', '2022-12-14 23:10:49', 'disconnected');

-- Dumping structure for table whatsapp_server.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.groups: ~1 rows (approximately)
REPLACE INTO `groups` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'test', 1, NULL, NULL),
	(2, 'test2', 1, '2022-12-14 19:08:41', NULL);

-- Dumping structure for table whatsapp_server.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.migrations: ~29 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
	(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
	(3, '2016_08_07_151210_add_table_cms_logs', 1),
	(4, '2016_08_07_151211_add_details_cms_logs', 1),
	(5, '2016_08_07_152014_add_table_cms_privileges', 1),
	(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
	(7, '2016_08_07_152320_add_table_cms_settings', 1),
	(8, '2016_08_07_152421_add_table_cms_users', 1),
	(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
	(10, '2016_08_07_154624_add_table_cms_moduls', 1),
	(11, '2016_08_17_225409_add_status_cms_users', 1),
	(12, '2016_08_20_125418_add_table_cms_notifications', 1),
	(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
	(14, '2016_09_16_035347_add_group_setting', 1),
	(15, '2016_09_16_045425_add_label_setting', 1),
	(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
	(17, '2016_10_01_141740_add_method_type_apicustom', 1),
	(18, '2016_10_01_141846_add_parameters_apicustom', 1),
	(19, '2016_10_01_141934_add_responses_apicustom', 1),
	(20, '2016_10_01_144826_add_table_apikey', 1),
	(21, '2016_11_14_141657_create_cms_menus', 1),
	(22, '2016_11_15_132350_create_cms_email_templates', 1),
	(23, '2016_11_15_190410_create_cms_statistics', 1),
	(24, '2016_11_17_102740_create_cms_statistic_components', 1),
	(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
	(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(27, '2022_02_06_161234_create_laravel_wa_server_table', 1),
	(30, '2022_12_13_211811_create_groups', 2),
	(31, '2022_12_13_213708_create_phones', 2),
	(32, '2022_12_14_222344_add_group_id_to_outbox', 3);

-- Dumping structure for table whatsapp_server.outbox
CREATE TABLE IF NOT EXISTS `outbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `id_device` int(11) DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `outbox_group_id_foreign` (`group_id`),
  CONSTRAINT `outbox_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.outbox: ~21 rows (approximately)
REPLACE INTO `outbox` (`id`, `number`, `text`, `status`, `created_at`, `id_device`, `type`, `url_file`, `group_id`) VALUES
	(1, '00967779558800', 'hi osama', '0', '2022-12-11 18:49:57', 2, 'Text', NULL, NULL),
	(2, '967773569041', 'hi osama', '1', '2022-12-11 18:59:47', 1, 'Text', NULL, NULL),
	(3, '967773569041', 'hi osama', '1', '2022-12-11 18:59:51', 1, 'Text', NULL, NULL),
	(4, '97779558800', 'hi salwa', '0', '2022-12-11 19:00:36', 1, 'Text', NULL, NULL),
	(6, '97773569041', 'hi this is for test', '0', '2022-12-11 19:33:39', 1, 'Text', NULL, NULL),
	(7, '97773569041', 'hi test', '0', '2022-12-11 19:34:39', 1, 'Text', NULL, NULL),
	(8, '9773569041', 'hhhhhhhhhh hhhhhhh', '0', '2022-12-11 19:42:25', 1, 'Text', NULL, NULL),
	(9, '9773569041', 'tt tt gytc gy', '0', '2022-12-11 19:42:59', 1, 'Text', NULL, NULL),
	(10, '9773569041', 'yyy yy vuv', '0', '2022-12-11 19:43:35', 1, 'Text', NULL, NULL),
	(11, '9773569041', 'uuuuuuuu', '0', '2022-12-11 19:44:46', 1, 'Text', NULL, NULL),
	(12, '97773569041', 'hi osama', '0', '2022-12-11 19:47:03', 1, 'Text', NULL, NULL),
	(13, '967773569041', 'hi osama', '1', '2022-12-11 19:47:54', 1, 'Text', NULL, NULL),
	(14, '967773569041', 'hi osama', '1', '2022-12-11 19:50:20', 1, 'Text', NULL, NULL),
	(15, '967779558800,967773569041', 'test multi users', '1', '2022-12-11 19:56:37', 1, 'Text', NULL, NULL),
	(16, '967779558899,967773569041', 'test multi users', '1', '2022-12-11 19:57:37', 1, 'Text', NULL, NULL),
	(17, '967779558899,967773569041', 'hi test', '0', '2022-12-11 20:02:42', 1, 'Text', 'uploads/1/2022-12/logo.png', NULL),
	(18, '967779558899,967773569041', 'test connection', '1', '2022-12-12 23:33:33', 1, 'Text', NULL, NULL),
	(19, '967779558899,967779558800,967773569041', 'test onother', '1', '2022-12-12 23:42:27', 2, 'Text', NULL, NULL),
	(20, '967773569041', 'test tt', '1', '2022-12-13 21:06:35', 2, 'Text', NULL, NULL),
	(21, '967779558800', 'iii9999', '1', '2022-12-13 21:19:44', 2, 'Text', NULL, NULL),
	(22, '967779558800', 'yyyyyyyy', '0', '2022-12-14 22:24:24', 2, 'Text', NULL, 2);

-- Dumping structure for table whatsapp_server.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.password_resets: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.phones
CREATE TABLE IF NOT EXISTS `phones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `number` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phones_group_id_foreign` (`group_id`),
  CONSTRAINT `phones_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.phones: ~0 rows (approximately)
REPLACE INTO `phones` (`id`, `group_id`, `number`, `name`, `created_at`, `updated_at`) VALUES
	(1, 1, 967779558800, 'osama', '2022-12-14 19:06:45', NULL),
	(2, 1, 967779558800, 'osama', '2022-12-14 19:06:45', NULL),
	(3, 1, 967779558800, 'osama', '2022-12-14 19:07:25', NULL),
	(4, 1, 967779558800, 'osama', '2022-12-14 19:07:25', NULL),
	(5, 1, 967779558800, 'osama', '2022-12-14 19:09:08', NULL),
	(6, 1, 967779558800, 'osama', '2022-12-14 19:09:08', NULL),
	(7, 2, 967779558800, 'osama', '2022-12-14 19:09:39', NULL),
	(8, 2, 967779558800, 'osama', '2022-12-14 19:09:39', NULL);

-- Dumping structure for table whatsapp_server.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.users: ~0 rows (approximately)

-- Dumping structure for table whatsapp_server.whatsapp_log
CREATE TABLE IF NOT EXISTS `whatsapp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table whatsapp_server.whatsapp_log: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
