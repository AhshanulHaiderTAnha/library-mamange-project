-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 09:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finallmsistt`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Jony', 'Test', '2020-11-07 13:32:14', NULL),
(2, 'Sandra', 'Test-01', '2020-11-16 00:18:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booklanguages`
--

CREATE TABLE `booklanguages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bl_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bl_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booklanguages`
--

INSERT INTO `booklanguages` (`id`, `bl_code`, `bl_name`, `created_at`, `updated_at`) VALUES
(1, 'BD-1', 'Bangle', '2020-11-08 00:23:41', NULL),
(2, 'ENG', 'English', '2020-11-16 00:18:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booklatefines`
--

CREATE TABLE `booklatefines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versity_id` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fines_ammount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booklatefines`
--

INSERT INTO `booklatefines` (`id`, `name`, `versity_id`, `mobile`, `dept_name`, `email`, `book_name`, `fines_ammount`, `day_duration`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'Faisal Ahmed', '696969', '01656789221', 'CSE', 'faisal@gmail.com', '10', '80', '5', 'Unpaid', '4', NULL, NULL),
(10, 'Faisal Ahmed', '696969', '01656789221', 'CSE', 'faisal@gmail.com', '11', '100', '2', 'Unpaid', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booklists`
--

CREATE TABLE `booklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_available` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genres_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_publish_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booklists`
--

INSERT INTO `booklists` (`id`, `book_code`, `book_name`, `book_description`, `cover_image`, `book_quantity`, `book_available`, `price`, `author_name`, `publisher_name`, `genres_name`, `book_publish_year`, `book_lang`, `created_at`, `updated_at`) VALUES
(10, '632330', 'Java Book', 'This is Java book', 'uploads/1/2020-12/tttt.jpg', '3', '3', 400, '1', '2', '2', '2016', '2', '2020-12-26 12:12:26', NULL),
(11, '204531', 'Web Book', 'this is web book', 'uploads/4/2020-12/1118871642.jpg', '5', '5', 500, '2', '2', '2', '2018', '2', '2020-12-27 10:50:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookscirculation`
--

CREATE TABLE `bookscirculation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_submit_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-11-03 09:51:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-03 09:55:15', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-03 09:57:00', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-03 09:57:06', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-03 10:53:05', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/genres/add-save', 'Add New Data ddd at Genres', '', 1, '2020-11-03 10:55:07', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-03 11:37:53', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/module_generator/delete/12', 'Delete data Genres at Module Generator', '', 1, '2020-11-03 11:40:12', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/genres/delete/1', 'Delete data ddd at Genres', '', 1, '2020-11-03 11:41:27', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/genres/add-save', 'Add New Data Programming at Genres', '', 1, '2020-11-03 11:41:52', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-04 03:53:05', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 13:01:10', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/authors/add-save', 'Add New Data Jony at Authors', '', 1, '2020-11-07 13:32:14', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 13:43:20', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 13:43:29', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/publishers/add-save', 'Add New Data rokomari at Publishers', '', 1, '2020-11-07 13:58:23', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data tertter at Add Book', '', 1, '2020-11-07 13:58:42', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/delete/1', 'Delete data tertter at Add Book', '', 1, '2020-11-07 14:11:30', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data tertter at Add Book', '', 1, '2020-11-07 14:12:03', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-11/265712.jpg</td></tr><tr><td>password</td><td>$2y$10$7rP6/Fbb8ofHCJipgtODAObB5rRk0CCnUkz2LdBKikGTLeRNc.bZS</td><td>$2y$10$cZuNpL/Nj1S2mPtkYvoki.wyb2jeU1p0U3VS/LC/Y8NRej/vhlIFC</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-11-07 14:28:19', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 14:28:37', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 14:28:53', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 14:29:42', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 14:33:21', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 14:36:53', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 14:37:04', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 15:01:19', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 15:03:15', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-07 15:16:33', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-07 23:59:41', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/publishers/edit-save/1', 'Update data Rokomari Porokasoni at Publishers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>rokomari</td><td>Rokomari Porokasoni</td></tr><tr><td>details</td><td>dfghkopl;</td><td>Test</td></tr><tr><td>address</td><td>esdrtfhjkl;\'</td><td>Dhaka-1210</td></tr></tbody></table>', 1, '2020-11-08 00:07:06', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklanguages/add-save', 'Add New Data Bangle at Book Languages', '', 1, '2020-11-08 00:23:41', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/2', 'Update data tertter at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_lang</td><td></td><td>1</td></tr></tbody></table>', 1, '2020-11-08 00:25:59', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/2', 'Update data Test Bokk at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_code</td><td>eueuyei8888</td><td>book1</td></tr><tr><td>book_name</td><td>tertter</td><td>Test Bokk</td></tr><tr><td>book_description</td><td>rtterterrrrrrrrrrrrrrrw</td><td>Test Description</td></tr></tbody></table>', 1, '2020-11-08 00:27:24', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/delete/2', 'Delete data Test Bokk at Add Book', '', 1, '2020-11-08 01:35:38', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Test Bo0k at Add Book', '', 1, '2020-11-08 01:42:29', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/3', 'Update data Test Book at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_name</td><td>Test Bo0k</td><td>Test Book</td></tr></tbody></table>', 1, '2020-11-08 01:43:06', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-09 11:12:58', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-09 11:22:02', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-09 11:26:42', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Java Language at Add Book', '', 1, '2020-11-09 11:29:55', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-11 12:57:02', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-11 13:37:14', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/department/add-save', 'Add New Data CSE at Department', '', 1, '2020-11-11 13:45:13', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/department/add-save', 'Add New Data ECE at Department', '', 1, '2020-11-11 13:45:21', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/department/add-save', 'Add New Data FDE at Department', '', 1, '2020-11-11 13:45:32', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/userslist/add-save', 'Add New Data sdfghjkl at Members List', '', 1, '2020-11-11 14:42:41', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-11 14:45:33', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-12 10:57:10', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2020-11-12 11:02:48', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-12 11:02:58', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-11-12 11:03:09', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 2, '2020-11-12 11:03:43', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-12 11:03:48', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Authors at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-11-12 11:04:21', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-12 11:04:39', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-11-12 11:04:45', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit/2', 'Try edit the data Genres at Menu Management', '', 2, '2020-11-12 11:05:00', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 2, '2020-11-12 11:05:22', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-12 11:05:32', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-14 04:42:16', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-14 09:33:33', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Genres at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:34:25', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Publishers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:34:35', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Book Languages at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:36:05', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Add Book at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:36:16', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Department at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:36:26', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Members List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-11-14 09:36:40', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/userslist/edit-save/2', 'Update data Tanha at Members List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>sdfghjkl</td><td>Tanha</td></tr><tr><td>pvg_id</td><td>Teacher</td><td>Student</td></tr><tr><td>password</td><td>$2y$10$NgvEvDbBqbZEhVPaXRCQPuSvMwLWjaDoyF/J6e66cPajEBdli68wS</td><td></td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 1, '2020-11-14 09:40:14', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Members List at Statistic Builder', '', 1, '2020-11-14 10:02:38', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/statistic_builder/delete/1', 'Delete data Members List at Statistic Builder', '', 1, '2020-11-14 10:03:33', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Admin at Users Management', '', 1, '2020-11-14 11:05:16', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-11/haskell_lambda_temnyy_fon.jpg</td></tr><tr><td>password</td><td>$2y$10$l/qLw0vRsUUQO4zUjZRxzuORk5eT.XVudPCpXR7HzbOmlNlAR6Qrm</td><td>$2y$10$6oTzRa5fw0z3n6VvKuR8HOUN3hhRTiDcdXaVBnRC/F8otl16YanfC</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-11-14 11:05:43', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data User at Users Management', '', 1, '2020-11-14 11:08:33', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-14 11:08:41', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'user@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-11-14 11:08:55', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'user@gmail.com logout', '', 3, '2020-11-14 11:09:08', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-14 11:09:12', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Add Book at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-11-14 11:09:28', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-14 11:09:33', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'user@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-11-14 11:09:46', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'user@gmail.com logout', '', 3, '2020-11-14 11:10:28', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-14 11:10:32', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Book List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Add Book</td><td>Book List</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-11-14 11:13:18', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-14 11:43:18', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-14 12:39:06', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-14 12:56:16', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-15 08:25:15', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 3 at Books Circulation', '', 1, '2020-11-15 09:09:43', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Books Circulation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-11-15 09:10:41', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/4', 'Update data Java Language at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-11-15 11:51:19', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data python at Add Book', '', 1, '2020-11-15 12:38:28', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/5', 'Update data python at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_quantity</td><td>10</td><td>15</td></tr><tr><td>book_available</td><td>8</td><td>15</td></tr></tbody></table>', 1, '2020-11-15 12:39:15', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-15 13:39:06', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/2', 'Delete data 5 at Books Circulation', '', 1, '2020-11-15 13:40:42', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-15 14:04:00', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/3', 'Delete data 5 at Books Circulation', '', 1, '2020-11-15 14:07:52', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-15 14:08:14', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/5', 'Update data python at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_quantity</td><td>15</td><td>20</td></tr><tr><td>book_available</td><td>14</td><td>20</td></tr></tbody></table>', 1, '2020-11-15 14:08:35', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/4', 'Update data 5 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-11-16</td></tr><tr><td>note</td><td>df</td><td>dfg</td></tr><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-11-15 14:12:07', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-15 14:13:26', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/5', 'Update data 5 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-11-15 14:14:49', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-15 14:36:09', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-15 14:36:15', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/1', 'Update data 3 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-11-20</td></tr><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-11-15 14:38:46', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-15 14:50:04', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/5', 'Update data python at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_quantity</td><td>15</td><td>20</td></tr><tr><td>book_available</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-11-15 14:50:28', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/5', 'Update data python at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_quantity</td><td>15</td><td>20</td></tr><tr><td>book_available</td><td>14</td><td></td></tr></tbody></table>', 1, '2020-11-15 14:53:52', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-16 00:17:38', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/department/add-save', 'Add New Data BBA at Department', '', 1, '2020-11-16 00:18:03', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/authors/add-save', 'Add New Data Sandra at Authors', '', 1, '2020-11-16 00:18:36', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklanguages/add-save', 'Add New Data English at Book Languages', '', 1, '2020-11-16 00:18:59', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/genres/add-save', 'Add New Data Database at Genres', '', 1, '2020-11-16 00:19:21', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/publishers/add-save', 'Add New Data AR Porokasoni at Publishers', '', 1, '2020-11-16 00:19:56', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/1', 'Delete data 3 at Books Circulation', '', 1, '2020-11-16 00:21:36', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/action-selected', 'Delete data 6,5,4 at Books Circulation', '', 1, '2020-11-16 00:21:49', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/edit-save/4', 'Update data Java Language at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-11-16 00:22:29', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/genres/add-save', 'Add New Data Bussness at Genres', '', 1, '2020-11-16 00:23:29', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Bussness at Add Book', '', 1, '2020-11-16 00:23:51', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/userslist/add-save', 'Add New Data Shipon Mojumder at Members List', '', 1, '2020-11-16 00:24:55', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 5 at Books Circulation', '', 1, '2020-11-16 00:26:43', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/action-selected', 'Delete data 7 at Books Circulation', '', 1, '2020-11-16 00:27:43', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-16 01:01:27', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2020-11-16 11:32:25', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-16 11:32:30', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Java Language Books at Add Book', '', 1, '2020-11-16 12:39:36', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data python at Add Book', '', 1, '2020-11-16 12:40:43', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Bussness at Add Book', '', 1, '2020-11-16 12:41:30', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 8 at Books Circulation', '', 1, '2020-11-16 12:45:18', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 9 at Books Circulation', '', 1, '2020-11-16 12:47:49', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 7 at Books Circulation', '', 1, '2020-11-16 13:00:37', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/8', 'Update data 8 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>issue_date</td><td>2020-11-17</td><td>2020-11-15</td></tr><tr><td>return_date</td><td>2020-11-20</td><td>2020-11-16</td></tr></tbody></table>', 1, '2020-11-16 13:04:32', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-11-16 14:02:12', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2020-11-16 14:02:13', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-16 14:02:26', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-11-17 10:55:39', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@crudbooster.com</td><td>admin@lmsistt.com</td></tr><tr><td>password</td><td>$2y$10$cZuNpL/Nj1S2mPtkYvoki.wyb2jeU1p0U3VS/LC/Y8NRej/vhlIFC</td><td>$2y$10$cRZtFdy75NCUrDQYSvp/PuztdBF5bH5DCl0z/A6oayHQ/SsUh7p1m</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-11-17 10:56:36', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-17 10:56:47', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-17 10:58:40', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-18 08:45:44', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-19 10:57:30', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 7 at Books Circulation', '', 1, '2020-11-19 13:39:37', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'http://127.0.0.1:8000/admin/users/delete/3', 'Delete data User at Users Management', '', 1, '2020-11-19 13:50:46', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-11-19 13:52:10', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-11-20 11:38:04', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 2, '2020-11-20 11:38:59', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-20 11:40:02', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-20 11:41:10', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-11-20 11:41:23', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 2, '2020-11-20 11:41:46', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-20 11:41:58', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-21 23:52:31', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-21 23:53:12', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-21 23:53:49', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-22 09:52:41', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-22 12:49:37', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-23 01:53:04', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-23 01:53:47', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-23 02:51:32', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-23 11:59:34', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/userslist/edit-save/3', 'Update data Shipon Mojumder at Members List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>avatar</td><td>1606077324.jpg</td><td></td></tr><tr><td>password</td><td>$2y$10$.3QFrTofIfbIDqihDQiPeOcfb5MHohjZtRzx7kGpUcFOEwEmGoFdq</td><td>$2y$10$JFePkPQS6Kxx4TmaQ3tkDu3HPJEWOhHTl/0zEhcng5g/K89UEaZa.</td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 1, '2020-11-23 12:21:27', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-23 12:46:51', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-24 14:08:25', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-25 13:40:02', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-26 06:04:56', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-26 08:21:11', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-26 08:21:40', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-11-29 12:54:16', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/8', 'Update data 8 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-11-30</td></tr><tr><td>status</td><td>Issued</td><td>Reserved</td></tr></tbody></table>', 1, '2020-11-29 12:57:25', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-11-29 12:58:45', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-05 00:41:28', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-05 00:41:48', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-05 02:08:09', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-05 02:09:01', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-05 05:02:23', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-05 05:08:06', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.67 Safari/537.36 Edg/87.0.664.52', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-05 12:26:31', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-06 12:54:28', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/add', 'Try add data at Late Fines List', '', 1, '2020-12-06 12:59:31', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-06 13:00:51', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@gmail.com login with IP Address ::1', '', 2, '2020-12-06 13:01:21', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@gmail.com logout', '', 2, '2020-12-06 13:02:05', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-06 13:02:10', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/menu_management/edit-save/10', 'Update data Late Fines List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-12-06 13:02:40', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-06 13:02:46', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-06 13:03:35', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-10 13:13:08', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklists/edit-save/9', 'Update data Bussness at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_available</td><td>19</td><td></td></tr><tr><td>price</td><td>0</td><td>300</td></tr></tbody></table>', 1, '2020-12-10 13:23:34', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklists/edit-save/8', 'Update data python at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_available</td><td>19</td><td></td></tr><tr><td>price</td><td>0</td><td>230</td></tr></tbody></table>', 1, '2020-12-10 13:23:47', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklists/edit-save/7', 'Update data Java Language Books at Add Book', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>book_available</td><td>5</td><td></td></tr><tr><td>price</td><td>0</td><td>220</td></tr></tbody></table>', 1, '2020-12-10 13:24:04', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/9', 'Update data 9 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>return_date</td><td>2020-11-19</td><td>2020-12-10</td></tr></tbody></table>', 1, '2020-12-10 13:36:13', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-12-23</td></tr></tbody></table>', 1, '2020-12-10 14:19:19', NULL),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-12-10 14:23:55', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-12-23</td><td>2020-12-24</td></tr></tbody></table>', 1, '2020-12-10 14:28:14', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-12-24</td><td>2020-12-25</td></tr></tbody></table>', 1, '2020-12-10 15:15:21', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-12-25</td><td>2020-12-23</td></tr></tbody></table>', 1, '2020-12-10 18:12:19', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-12-10 18:17:34', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/9', 'Update data 9 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-12-10</td></tr><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-12-10 18:18:40', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/delete/10', 'Delete data 7 at Books Circulation', '', 1, '2020-12-10 18:20:45', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/delete/8', 'Delete data 8 at Books Circulation', '', 1, '2020-12-10 18:20:50', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-10 23:51:21', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/delete/2', 'Delete data Tanha at Late Fines List', '', 1, '2020-12-11 00:01:37', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/delete/1', 'Delete data Shipon Mojumder at Late Fines List', '', 1, '2020-12-11 00:01:41', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-12-11 00:26:31', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-14 13:22:38', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>return_date</td><td>2020-11-23</td><td>2020-11-22</td></tr><tr><td>re_submit_date</td><td>2020-12-23</td><td>2020-11-24</td></tr></tbody></table>', 1, '2020-12-14 13:59:11', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-24</td><td>2020-11-29</td></tr></tbody></table>', 1, '2020-12-14 14:01:46', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-29</td><td>2020-11-30</td></tr></tbody></table>', 1, '2020-12-14 14:02:13', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-30</td><td>2020-11-28</td></tr></tbody></table>', 1, '2020-12-14 14:03:45', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-28</td><td>2020-11-29</td></tr></tbody></table>', 1, '2020-12-14 14:04:21', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-29</td><td>2020-11-28</td></tr></tbody></table>', 1, '2020-12-14 14:05:50', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-28</td><td>2020-11-29</td></tr></tbody></table>', 1, '2020-12-14 14:05:58', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-15 00:58:04', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-29</td><td>2020-11-25</td></tr></tbody></table>', 1, '2020-12-15 01:44:02', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/delete/3', 'Delete data Shipon Mojumder at Late Fines List', '', 1, '2020-12-15 01:45:43', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-25</td><td>2020-11-24</td></tr></tbody></table>', 1, '2020-12-15 01:45:55', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/delete/4', 'Delete data Shipon Mojumder at Late Fines List', '', 1, '2020-12-15 01:46:56', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-12-15 01:47:08', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/delete/5', 'Delete data Shipon Mojumder at Late Fines List', '', 1, '2020-12-15 01:48:55', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-15 13:07:25', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/11', 'Update data 7 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td>2020-11-24</td><td>2020-11-27</td></tr></tbody></table>', 1, '2020-12-15 13:14:25', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/bookscirculation/edit-save/9', 'Update data 9 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-12-15 13:15:09', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/edit-save/7', 'Update data Tanha at Late Fines List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>Paid</td></tr></tbody></table>', 1, '2020-12-15 13:27:55', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 'http://localhost/6th%20project/LMS_ISTT/public/admin/booklatefines/edit-save/6', 'Update data Shipon Mojumder at Late Fines List', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td></td><td>Deduct</td></tr><tr><td>user_id</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-12-15 15:27:18', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-20 10:26:44', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-20 10:28:12', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-20 10:49:59', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/users/delete-image', 'Delete the image of Super Admin at Users Management', '', 1, '2020-12-20 10:51:42', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2020-12/haskell_lambda_temnyy_fon.jpg</td></tr><tr><td>password</td><td>$2y$10$cRZtFdy75NCUrDQYSvp/PuztdBF5bH5DCl0z/A6oayHQ/SsUh7p1m</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-12-20 10:52:34', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-20 10:52:41', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/login', 'admin@lmsistt.com login with IP Address ::1', '', 1, '2020-12-20 10:52:50', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.66', 'http://localhost/lms-istt/public/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-20 10:53:03', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-25 12:58:22', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-25 13:05:26', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-25 14:38:41', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 09:23:59', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 09:24:17', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 09:24:38', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 8 at Books Circulation', '', 1, '2020-12-26 09:29:11', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 8 at Books Circulation', '', 1, '2020-12-26 09:32:21', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 09:34:20', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 09:50:36', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 09:52:58', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 09:56:49', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/13', 'Update data 8 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-12-17</td></tr><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 1, '2020-12-26 10:03:00', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/booklists/delete/9', 'Delete data Bussness at Add Book', '', 1, '2020-12-26 11:50:51', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/booklists/delete/8', 'Delete data python at Add Book', '', 1, '2020-12-26 11:50:57', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/booklists/delete/7', 'Delete data Java Language Books at Add Book', '', 1, '2020-12-26 11:51:03', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Java Book at Add Book', '', 1, '2020-12-26 12:12:27', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 2, '2020-12-26 12:19:23', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', 2, '2020-12-26 12:20:02', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 12:20:08', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2020-12-26 12:23:57', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 12:24:10', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2020-12-26 12:24:20', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-26 12:24:29', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-26 12:25:27', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 12:25:33', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 12:28:17', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-26 12:28:29', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-26 12:28:42', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 12:28:47', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data User Management at Menu Management', '', 1, '2020-12-26 12:30:10', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data User Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-12-26 12:30:34', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 12:30:40', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-26 12:30:47', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-26 12:31:15', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-26 12:31:20', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data User Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2020-12-26 12:31:48', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-26 12:31:54', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-27 10:37:29', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/booklists/add-save', 'Add New Data Web Book at Add Book', '', 4, '2020-12-27 10:50:34', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/userslist/add-save', 'Add New Data Faisal Ahmed at Members List', '', 4, '2020-12-27 10:56:59', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 10 at Books Circulation', '', 4, '2020-12-27 11:04:10', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/14', 'Update data 10 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>re_submit_date</td><td></td><td>2020-12-10</td></tr><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 4, '2020-12-27 11:06:14', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-27 11:23:09', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2020-12-27 11:23:23', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-28 12:55:25', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 11 at Books Circulation', '', 4, '2020-12-28 12:56:43', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/add-save', 'Add New Data 11 at Books Circulation', '', 4, '2020-12-28 13:06:13', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/edit-save/16', 'Update data 11 at Books Circulation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>Issued</td><td>Returns</td></tr></tbody></table>', 4, '2020-12-28 13:08:31', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/16', 'Delete data 11 at Books Circulation', '', 4, '2020-12-28 13:08:43', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/14', 'Delete data 10 at Books Circulation', '', 4, '2020-12-28 13:08:47', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/bookscirculation/delete/15', 'Delete data 11 at Books Circulation', '', 4, '2020-12-28 13:08:50', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-28 13:42:26', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-28 13:48:12', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Mr Test at Users Management', '', 4, '2020-12-28 13:51:38', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-28 13:51:46', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'mrtest@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-12-28 13:51:55', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'mrtest@gmail.com logout', '', 5, '2020-12-28 13:52:11', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-28 13:52:28', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Book List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-12-28 13:52:52', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Books Circulation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-12-28 13:53:04', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Members List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-12-28 13:53:28', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Late Fines List at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-12-28 13:53:46', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@lmsistt.com logout', '', 1, '2020-12-28 14:06:28', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@lmsistt.com login with IP Address 127.0.0.1', '', 1, '2020-12-28 14:06:35', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', 1, '2020-12-28 14:06:58', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-28 14:07:08', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-28 14:07:24', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/login', 'admin@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-12-28 14:07:30', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', 'http://127.0.0.1:8000/admin/logout', 'admin@gmail.com logout', '', 4, '2020-12-28 14:09:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Genres', 'Route', 'AdminGenresControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 8, '2020-11-03 11:40:47', '2020-11-14 09:34:25'),
(3, 'Authors', 'Route', 'AdminAuthorsControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 6, '2020-11-03 11:49:34', '2020-11-12 11:04:21'),
(4, 'Publishers', 'Route', 'AdminPublishersControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 7, '2020-11-03 11:52:47', '2020-11-14 09:34:35'),
(5, 'Book Languages', 'Route', 'AdminBooklanguagesControllerGetIndex', 'normal', 'fa fa-bookmark-o', 0, 1, 0, 1, 9, '2020-11-03 12:05:24', '2020-11-14 09:36:05'),
(6, 'Book List', 'Route', 'AdminBooklistsControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 2, '2020-11-07 13:20:17', '2020-12-28 13:52:52'),
(7, 'Department', 'Route', 'AdminDepartmentControllerGetIndex', 'normal', 'fa fa-university', 0, 1, 0, 1, 1, '2020-11-11 13:44:16', '2020-11-14 09:36:26'),
(8, 'Members List', 'Route', 'AdminUserslistControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 4, '2020-11-11 14:05:06', '2020-12-28 13:53:28'),
(9, 'Books Circulation', 'Route', 'AdminBookscirculationControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 3, '2020-11-15 08:53:46', '2020-12-28 13:53:04'),
(10, 'Late Fines List', 'Route', 'AdminBooklatefinesControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 5, '2020-11-19 14:23:31', '2020-12-28 13:53:46'),
(11, 'User Management', 'Module', 'users', 'normal', 'fa fa-user-md', 0, 1, 0, 1, 10, '2020-12-26 12:30:10', '2020-12-26 12:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(9, 3, 2),
(10, 3, 1),
(11, 2, 2),
(12, 2, 1),
(13, 4, 2),
(14, 4, 1),
(15, 5, 2),
(16, 5, 1),
(19, 7, 2),
(20, 7, 1),
(38, 11, 2),
(39, 6, 2),
(40, 6, 4),
(41, 6, 1),
(42, 9, 2),
(43, 9, 4),
(44, 9, 1),
(45, 8, 2),
(46, 8, 4),
(47, 8, 1),
(48, 10, 2),
(49, 10, 4),
(50, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-11-03 09:51:55', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-11-03 09:51:55', NULL, NULL),
(12, 'Genres', 'fa fa-list-alt', 'genres', 'genres', 'AdminGenresController', 0, 0, '2020-11-03 10:54:06', NULL, '2020-11-03 11:40:12'),
(13, 'Genres', 'fa fa-list-alt', 'genres', 'genres', 'AdminGenresController', 0, 0, '2020-11-03 11:40:47', NULL, NULL),
(14, 'Authors', 'fa fa-list-alt', 'authors', 'authors', 'AdminAuthorsController', 0, 0, '2020-11-03 11:49:34', NULL, NULL),
(15, 'Publishers', 'fa fa-list-alt', 'publishers', 'publishers', 'AdminPublishersController', 0, 0, '2020-11-03 11:52:46', NULL, NULL),
(16, 'Book Languages', 'fa fa-bookmark-o', 'booklanguages', 'booklanguages', 'AdminBooklanguagesController', 0, 0, '2020-11-03 12:05:24', NULL, NULL),
(17, 'Add Book', 'fa fa-book', 'booklists', 'booklists', 'AdminBooklistsController', 0, 0, '2020-11-07 13:20:17', NULL, NULL),
(18, 'Department', 'fa fa-university', 'department', 'department', 'AdminDepartmentController', 0, 0, '2020-11-11 13:44:16', NULL, NULL),
(19, 'Members List', 'fa fa-users', 'userslist', 'users', 'AdminUserslistController', 0, 0, '2020-11-11 14:05:06', NULL, NULL),
(20, 'Books Circulation', 'fa fa-th-list', 'bookscirculation', 'bookscirculation', 'AdminBookscirculationController', 0, 0, '2020-11-15 08:53:46', NULL, NULL),
(21, 'Late Fines List', 'fa fa-money', 'booklatefines', 'booklatefines', 'AdminBooklatefinesController', 0, 0, '2020-11-19 14:23:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green-light\r\n', '2020-11-03 09:51:55', NULL),
(2, 'Admin', 0, 'skin-blue-light', NULL, NULL),
(4, 'librarian', 0, 'skin-yellow-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-11-03 09:51:55', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-11-03 09:51:55', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-11-03 09:51:55', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-11-03 09:51:55', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-11-03 09:51:55', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-11-03 09:51:55', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-11-03 09:51:55', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-11-03 09:51:55', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-11-03 09:51:55', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-11-03 09:51:55', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-11-03 09:51:55', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(55, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(56, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(57, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(58, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(59, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(60, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(61, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(62, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(63, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(64, 1, 1, 1, 1, 1, 4, 17, NULL, NULL),
(65, 1, 1, 1, 1, 1, 4, 16, NULL, NULL),
(66, 1, 1, 1, 1, 1, 4, 20, NULL, NULL),
(67, 1, 0, 1, 1, 0, 4, 21, NULL, NULL),
(68, 1, 1, 1, 1, 1, 4, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-03 09:51:55', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-11-03 09:51:55', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-11-03 09:51:55', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-11-03 09:51:55', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'ISTT LMS', 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-11-03 09:51:55', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-11/6cbf27e59699b2fcc2ddd058c57ced8a.jpg', 'upload_image', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-11/4bc58307b6a4cf514580d326c3a7a9b8.jpeg', 'upload_image', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-11-03 09:51:55', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(4, 'Admin', 'uploads/1/2020-12/images.png', 'admin@gmail.com', '$2y$10$nCkXHEnA.iAWEahUMRMpT.R6mO.kN7i1bjJNmNMblc/EfXMCHP2em', 2, '2020-12-26 12:23:57', NULL, NULL),
(5, 'Mr Test', 'uploads/4/2020-12/librarian_icon_isolated_librarian_icon_from_vector_28234059.jpg', 'mrtest@gmail.com', '$2y$10$cJim947TkWTt825Vp.rz/.KpNd76EfcaIh2FzbaDCG0J/dvlKdN4.', 4, '2020-12-28 13:51:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dept_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `created_at`, `updated_at`) VALUES
(1, 'CSE', '2020-11-11 13:45:13', NULL),
(2, 'ECE', '2020-11-11 13:45:21', NULL),
(3, 'FDE', '2020-11-11 13:45:32', NULL),
(4, 'BBA', '2020-11-16 00:18:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(2, 'Programming', 'CSE', '2020-11-03 11:41:52', NULL),
(3, 'Database', 'For CSE', '2020-11-16 00:19:21', NULL),
(4, 'Bussness', 'Test-02', '2020-11-16 00:23:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2020_11_03_163921_create_genres_table', 2),
(30, '2020_11_03_174533_create_authors_table', 3),
(31, '2020_11_03_175110_create_publishers_table', 4),
(32, '2020_11_03_175759_create_booklanguages_table', 5),
(33, '2020_11_07_190445_create_booklists_table', 6),
(34, '2020_11_11_193940_create_department_table', 7),
(35, '2020_11_15_144435_create_bookscirculation_table', 8),
(36, '2020_11_19_200447_create_booklatefines_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `details`, `address`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Rokomari Porokasoni', 'Test', 'Dhaka-1210', 'bd', '2020-11-07 13:58:23', '2020-11-08 00:07:06'),
(2, 'AR Porokasoni', 'Test', 'Dhaka-1212', 'BD', '2020-11-16 00:19:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `versity_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pvg_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `versity_id`, `mobile`, `dept_id`, `pvg_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', '', '', '', '', '', 'user@gmail.com', NULL, '$2y$10$rk6W.fYbh2ORTRr8Af7w5OA1xyYosUCRAPLp2H5vhaQJ/0p9PmMK.', NULL, '2020-11-07 15:02:46', '2020-11-07 15:02:46'),
(2, 'Tanha', '', '1234567', '0987643', '1', 'Student', 'abc@gmail.com', 'abc@gmail.com', '$2y$10$NgvEvDbBqbZEhVPaXRCQPuSvMwLWjaDoyF/J6e66cPajEBdli68wS', NULL, '2020-11-11 14:42:41', '2020-11-14 09:40:14'),
(3, 'Shipon Mojumder', '1608139641.jpg', '909087', '01788353637', '4', 'Student', 'shipon@gmail.com', 'shipon@gmail.com', '$2y$10$cRZtFdy75NCUrDQYSvp/PuztdBF5bH5DCl0z/A6oayHQ/SsUh7p1m', NULL, '2020-11-16 00:24:55', '2020-12-16 11:28:38'),
(4, 'Faisal Ahmed', NULL, '696969', '01656789221', '1', 'Student', 'faisal@gmail.com', 'faisal@gmail.com', '$2y$10$Old3ih9Hqa3hqUKnxJKRH.xBYTbYsB3bjn6pDcM1odYq159sY497K', NULL, '2020-12-27 10:56:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booklanguages`
--
ALTER TABLE `booklanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booklatefines`
--
ALTER TABLE `booklatefines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booklists`
--
ALTER TABLE `booklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookscirculation`
--
ALTER TABLE `bookscirculation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booklanguages`
--
ALTER TABLE `booklanguages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booklatefines`
--
ALTER TABLE `booklatefines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booklists`
--
ALTER TABLE `booklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bookscirculation`
--
ALTER TABLE `bookscirculation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
