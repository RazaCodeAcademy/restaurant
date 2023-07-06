-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 05:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khadyo_website_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phn_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `slug`, `address`, `phn_no`, `created_at`, `updated_at`) VALUES
(11, 'Uttara Branch', 'kPV-1627817630-uttara-branch', 'Uttara, Dhaka, Bangladesh', '123123123', '2021-08-01 11:33:50', '2021-08-01 11:33:50'),
(12, 'Dhanmondi Branch', 'VEA-1627817648-dhanmondi-branch', 'Dhanmondi, Dhaka, Bangladesh', '09012321312', '2021-08-01 11:34:08', '2021-08-01 11:34:08'),
(13, 'Dhanmondi', 'SGi-1632042706-dhanmondi', 'Dhanmondi 32, Dhaka 1202', '11111', '2021-09-19 08:41:46', '2021-09-19 08:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `alignment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `rate`, `alignment`, `is_default`, `code`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 1, 'left', 0, 'usd', '2020-11-27 18:08:45', '2021-10-11 07:30:25'),
(4, 'TAKA', '৳', 10, 'left', 1, 'bdt', '2021-08-03 04:47:59', '2021-10-11 07:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phn_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `email`, `phn_no`, `address`, `branch_id`, `created_at`, `updated_at`) VALUES
(7, 'Mr Customer', 'rDz-1627817710-mr-customer', 'democustomer@mail.com', '0912309012', 'Customer address, house, road', 11, '2021-08-01 11:34:45', '2021-08-01 11:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men_checks`
--

CREATE TABLE `delivery_men_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT 'is_checked',
  `value` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men_checks`
--

INSERT INTO `delivery_men_checks` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'is_checked', 0, '2021-12-04 04:36:35', '2021-12-21 07:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `department_tags`
--

CREATE TABLE `department_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_tags`
--

INSERT INTO `department_tags` (`id`, `name`, `slug`, `commission`, `created_at`, `updated_at`) VALUES
(9, 'Dyne In', 'SZ1-1627817806-dyne-in', '0', '2021-08-01 11:36:46', '2021-08-01 11:36:46'),
(10, 'TakeAway', 'hsN-1627817986-takeaway', '0', '2021-08-01 11:36:51', '2021-08-01 11:39:46'),
(11, 'FoodPanda', 'g02-1627817819-foodpanda', '10', '2021-08-01 11:36:59', '2021-08-01 11:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_groups`
--

CREATE TABLE `food_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_groups`
--

INSERT INTO `food_groups` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(19, 'FRUIT JUICES', 'Nn2-1625019310-fruit-juices', '2021-06-30 14:45:10', '2021-06-30 14:45:10'),
(20, 'SEASONAL FRUIT JUICES', 'b23-1625019327-seasonal-fruit-juices', '2021-06-30 14:45:27', '2021-06-30 14:45:27'),
(21, 'FALOODAS', '7eT-1625019341-faloodas', '2021-06-30 14:45:41', '2021-06-30 14:45:41'),
(22, 'MILKSHAKES', 'LXn-1625019352-milkshakes', '2021-06-30 14:45:52', '2021-06-30 14:45:52'),
(23, 'DRY FRUIT MILKSHAKES', 'E1I-1625019370-dry-fruit-milkshakes', '2021-06-30 14:46:10', '2021-06-30 14:46:10'),
(24, 'SEASONAL MILKSHAKES', 'dTX-1625019385-seasonal-milkshakes', '2021-06-30 14:46:25', '2021-06-30 14:46:25'),
(25, 'FRUIT WITH ICE CREAM', 'cWh-1625019412-fruit-with-ice-cream', '2021-06-30 14:46:52', '2021-06-30 14:46:52'),
(26, 'FRUIT CREAM', 'ORF-1625019421-fruit-cream', '2021-06-30 14:47:01', '2021-06-30 14:47:01'),
(27, 'SPECIAL DRY FRUIT CREAM', 'HWn-1625019442-special-dry-fruit-cream', '2021-06-30 14:47:22', '2021-06-30 14:47:22'),
(32, 'ICE CREAMS', 'rc0-1625019494-ice-creams', '2021-06-30 14:48:14', '2021-06-30 14:48:14'),
(34, 'CHAT', 'nw4-1625044798-chat', '2021-06-30 21:49:58', '2021-06-30 21:49:58'),
(35, 'FRIES', '3Xr-1625044805-fries', '2021-06-30 21:50:05', '2021-06-30 21:50:05'),
(36, 'PIZZA', 'Erg-1625044813-pizza', '2021-06-30 21:50:13', '2021-06-30 21:50:13'),
(37, 'SANDWICHES', 'tUY-1625044818-sandwiches', '2021-06-30 21:50:18', '2021-06-30 21:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_property` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_group_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_variation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_special` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`id`, `food_group_id`, `name`, `price`, `image`, `has_property`, `property_group_ids`, `has_variation`, `is_special`, `slug`, `created_at`, `updated_at`) VALUES
(55, '19', 'Orange', '150', '/images/food_item/1625021036-1jpg.jpg', '1', '[6]', '0', '0', 'FpC-1625021036-orange', '2021-06-30 15:13:56', '2021-08-03 04:33:22'),
(56, '19', 'Pineapple', '135', '/images/food_item/1625021055-2jpg.jpg', '1', '[7]', '0', '0', 'sku-1625021055-pineapple', '2021-06-30 15:14:15', '2021-08-03 04:33:30'),
(57, '19', 'Apple', '155', '/images/food_item/1625021073-3jpg.jpg', '0', NULL, '0', '0', 'hzL-1625021073-apple', '2021-06-30 15:14:33', '2021-07-20 18:00:33'),
(58, '19', 'Carrot', '125', '/images/food_item/1625021092-4jpg.jpg', '0', NULL, '0', '0', 'PNe-1625021092-carrot', '2021-06-30 15:14:52', '2021-06-30 15:14:52'),
(59, '19', 'Watermelon', '115', '/images/food_item/1625021115-5jpg.jpg', '0', NULL, '0', '0', '5nG-1625021115-watermelon', '2021-06-30 15:15:15', '2021-06-30 15:15:15'),
(60, '19', 'Sweet Melon', '115', '/images/food_item/1625021139-6jpg.jpg', '0', NULL, '0', '0', '7Mp-1625021139-sweet-melon', '2021-06-30 15:15:39', '2021-06-30 15:15:39'),
(61, '19', 'Grape', '125', '/images/food_item/1625021157-7jpg.jpg', '0', NULL, '0', '0', 'GVs-1625021157-grape', '2021-06-30 15:15:57', '2021-06-30 15:15:57'),
(62, '19', 'Lemon', '85', '/images/food_item/1625021180-8jpg.jpg', '0', NULL, '0', '0', 'v8Y-1625021180-lemon', '2021-06-30 15:16:20', '2021-06-30 15:16:20'),
(63, '19', 'Lemon Mint', '95', '/images/food_item/1625021202-9jpg.jpg', '0', NULL, '0', '0', 'YKz-1625021202-lemon-mint', '2021-06-30 15:16:42', '2021-06-30 15:16:42'),
(64, '19', 'Musambi', '130', '/images/food_item/1625021224-10jpg.jpg', '0', NULL, '0', '0', 'djk-1625021224-musambi', '2021-06-30 15:17:04', '2021-06-30 15:17:04'),
(65, '19', 'Ganga Jamuna', '140', '/images/food_item/1625021250-11jpg.jpg', '0', NULL, '0', '1', 'UNA-1625021250-ganga-jamuna', '2021-06-30 15:17:30', '2021-07-01 00:11:39'),
(66, '19', 'Ganga Jamuna Sarawati', '140', '/images/food_item/1625021274-12jpg.jpg', '0', NULL, '0', '1', 'xbC-1625021274-ganga-jamuna-sarawati', '2021-06-30 15:17:54', '2021-07-01 00:11:48'),
(67, '19', 'Maramari', '135', '/images/food_item/1625021293-13jpg.jpg', '0', NULL, '0', '0', 'ccl-1625021293-maramari', '2021-06-30 15:18:13', '2021-06-30 15:18:13'),
(68, '19', 'Pomegranate', '170', '/images/food_item/1625021374-15jpg.jpg', '0', NULL, '0', '0', 'nHy-1625021374-pomegranate', '2021-06-30 15:19:34', '2021-06-30 15:19:34'),
(69, '19', 'Cocktail', '135', '/images/food_item/1625021398-14jpg.jpg', '0', NULL, '0', '0', 'jiF-1625021398-cocktail', '2021-06-30 15:19:58', '2021-06-30 15:19:58'),
(70, '20', 'Mango Juice', '150', '/images/food_item/1625034053-fresh-mango-juicejpg.jpg', '0', NULL, '0', '0', 'tjE-1625034053-mango-juice', '2021-06-30 18:50:53', '2021-06-30 18:50:53'),
(71, '20', 'Strawberry', '190', '/images/food_item/1625034120-strawberryjpg.jpg', '0', NULL, '0', '0', 'Nvn-1625034120-strawberry', '2021-06-30 18:52:00', '2021-06-30 18:52:00'),
(72, '20', 'Kiwi', '190', '/images/food_item/1625034142-kiwi-juicejpg.jpg', '0', NULL, '0', '0', '2La-1625034142-kiwi', '2021-06-30 18:52:22', '2021-06-30 18:52:22'),
(73, '20', 'Strawberry Shine', '180', '/images/food_item/1625034205-strawberry-milkshake-1-2-500x500jpg.jpg', '0', NULL, '0', '0', '4Qg-1625034205-strawberry-shine', '2021-06-30 18:53:25', '2021-06-30 18:53:25'),
(74, '21', 'Rose Falooda', '175', '/images/food_item/1625044888-rose-faloodajpg.jpg', '0', NULL, '0', '0', 'rG5-1625044888-rose-falooda', '2021-06-30 21:51:28', '2021-06-30 21:51:28'),
(75, '21', 'Kesar Falooda', '185', '/images/food_item/1625044961-kesarjpg.jpg', '0', NULL, '0', '0', 'cNg-1625044961-kesar-falooda', '2021-06-30 21:52:41', '2021-06-30 21:52:41'),
(76, '21', 'Dry Fruit Falooda', '200', '/images/food_item/1625045007-dry-fruitpng.png', '0', NULL, '0', '1', '7BI-1625045007-dry-fruit-falooda', '2021-06-30 21:53:27', '2021-07-01 00:10:47'),
(77, '21', 'Mango Falooda', '180', '/images/food_item/1625045040-mangojpg.jpg', '0', NULL, '0', '0', '19z-1625045040-mango-falooda', '2021-06-30 21:54:00', '2021-06-30 21:54:00'),
(78, '21', 'Fruit Falooda', '180', '/images/food_item/1625045268-fruit-faloodajpg.jpg', '0', NULL, '0', '0', 'Fci-1625045268-fruit-falooda', '2021-06-30 21:57:48', '2021-06-30 21:57:48'),
(79, '21', 'Chocolate Falooda', '180', '/images/food_item/1625045302-chocolate-faloodajpg.jpg', '0', NULL, '0', '0', 'Vft-1625045302-chocolate-falooda', '2021-06-30 21:58:22', '2021-06-30 21:58:22'),
(80, '21', 'Kulfi Falooda', '195', '/images/food_item/1625045327-kulfi-faloodajpg.jpg', '0', NULL, '0', '0', 'kN3-1625045327-kulfi-falooda', '2021-06-30 21:58:47', '2021-06-30 21:58:47'),
(81, '21', 'Butterscotch Falooda', '180', '/images/food_item/1625045356-butterscotch-faloodapng.png', '0', NULL, '0', '0', 'GHi-1625045356-butterscotch-falooda', '2021-06-30 21:59:16', '2021-06-30 21:59:16'),
(82, '21', 'Strawberry Falooda', '180', '/images/food_item/1625045387-strawberry-faloodajpg.jpg', '0', NULL, '0', '0', 'ppa-1625045387-strawberry-falooda', '2021-06-30 21:59:47', '2021-06-30 21:59:47'),
(83, '22', 'Cold Coffee with Ice Cream', '135', '/images/food_item/1625045464-cold-coffee-with-ice-creamjpg.jpg', '0', NULL, '0', '0', 'IVV-1625045464-cold-coffee-with-ice-cream', '2021-06-30 22:01:05', '2021-06-30 22:01:05'),
(84, '22', 'Vanilla with Ice Cream', '130', '/images/food_item/1625045498-watermelon-milkshake-with-icecreamjpg.jpg', '0', NULL, '0', '0', 'oym-1625045498-vanilla-with-ice-cream', '2021-06-30 22:01:38', '2021-06-30 22:01:38'),
(85, '22', 'Strawberry with Ice Cream', '135', '/images/food_item/1625045531-strawberry-milkshake-with-ice-creamjpg.jpg', '0', NULL, '0', '0', 'pJ2-1625045531-strawberry-with-ice-cream', '2021-06-30 22:02:11', '2021-06-30 22:02:11'),
(86, '22', 'Chocolate with Ice Cream', '140', '/images/food_item/1625045562-chocolate-milkshake-recipe2jpg.jpg', '0', NULL, '0', '0', 'Y13-1625045562-chocolate-with-ice-cream', '2021-06-30 22:02:42', '2021-06-30 22:02:42'),
(87, '22', 'Butterscotch with Ice Cream', '145', '/images/food_item/1625045654-buterscotch-with-ice-creampng.png', '0', NULL, '0', '0', '5Hc-1625045588-butterscotch-with-ice-cream', '2021-06-30 22:03:08', '2021-06-30 22:04:14'),
(88, '22', 'Rose Milkshakes', '125', '/images/food_item/1625045690-rose-milk-shakejpg.jpg', '0', NULL, '0', '0', '00W-1625045690-rose-milkshakes', '2021-06-30 22:04:50', '2021-06-30 22:04:50'),
(89, '22', 'Mango Milkshake', '150', '/images/food_item/1625045765-mangojpg.jpg', '0', NULL, '0', '0', 'Eji-1625045765-mango-milkshake', '2021-06-30 22:06:05', '2021-06-30 22:06:05'),
(90, '22', 'Chickoo Milkshake', '130', '/images/food_item/1625045855-chickoo-milkshakejpg.jpg', '0', NULL, '0', '0', 'i2v-1625045855-chickoo-milkshake', '2021-06-30 22:07:35', '2021-06-30 22:07:35'),
(91, '22', 'Banana Milkshake', '125', '/images/food_item/1625045891-banana-milkshake-icecreamjpg.jpg', '0', NULL, '0', '0', 'CzO-1625045891-banana-milkshake', '2021-06-30 22:08:11', '2021-06-30 22:08:11'),
(92, '22', 'Watermelon Milkshake', '125', '/images/food_item/1625045915-watermelon-milkshake-with-icecreamjpg.jpg', '0', NULL, '0', '0', '61w-1625045915-watermelon-milkshake', '2021-06-30 22:08:35', '2021-06-30 22:08:35'),
(93, '22', 'Sweet Melon Milkshake', '125', '/images/food_item/1625045935-sweet-melon-milkshakejpg.jpg', '0', NULL, '0', '0', 'LEV-1625045935-sweet-melon-milkshake', '2021-06-30 22:08:55', '2021-06-30 22:08:55'),
(94, '22', 'Butter Fruit (Avacado) Milkshake', '165', '/images/food_item/1625045956-butter-fruit-milkshakejpg.jpg', '0', NULL, '0', '0', '1gn-1625045956-butter-fruit-avacado-milkshake', '2021-06-30 22:09:16', '2021-06-30 22:09:16'),
(95, '22', 'Oreo Milkshake Chocolate', '150', '/images/food_item/1625045981-oreo-milkshake-chocolatejpg.jpg', '0', NULL, '0', '0', '18Y-1625045981-oreo-milkshake-chocolate', '2021-06-30 22:09:41', '2021-06-30 22:09:41'),
(96, '22', 'Oreo Milkshake Strawberry', '150', '/images/food_item/1625046006-oreo-strawberry-milkshakejpg.jpg', '0', NULL, '0', '0', 'MBd-1625046006-oreo-milkshake-strawberry', '2021-06-30 22:10:06', '2021-06-30 22:10:06'),
(97, '23', 'Kesar Royal Milkshake', '225', '/images/food_item/1625046033-kesar-royal-milk-shakejpg.jpg', '0', NULL, '0', '0', 'n8B-1625046033-kesar-royal-milkshake', '2021-06-30 22:10:33', '2021-06-30 22:10:33'),
(98, '23', 'Kesar Pista Milkshake', '215', '/images/food_item/1625046056-kesar-pista-milkshakejpg.jpg', '0', NULL, '0', '0', 'vEy-1625046056-kesar-pista-milkshake', '2021-06-30 22:10:56', '2021-06-30 22:10:56'),
(99, '23', 'Anjeer Dry Fruit Milkshake', '225', '/images/food_item/1625046091-anjeer-milkshakejpg.jpg', '0', NULL, '0', '0', 'wOZ-1625046091-anjeer-dry-fruit-milkshake', '2021-06-30 22:11:31', '2021-06-30 22:11:31'),
(100, '23', 'Badam Pista Milshake', '200', '/images/food_item/1625046114-badampistamilkshake-1nojpg.jpg', '0', NULL, '0', '0', 'eTn-1625046114-badam-pista-milshake', '2021-06-30 22:11:54', '2021-06-30 22:11:54'),
(101, '23', 'Kaju Anjeer Milkshake', '200', '/images/food_item/1625046264-kaju-anjeer-milkshakejpg.jpg', '0', NULL, '0', '0', '0R5-1625046144-kaju-anjeer-milkshake', '2021-06-30 22:12:24', '2021-06-30 22:14:24'),
(102, '23', 'Anjeer Milkshake', '175', '/images/food_item/1625046167-anjeer-milkshakepng.png', '0', NULL, '0', '0', '4MI-1625046167-anjeer-milkshake', '2021-06-30 22:12:47', '2021-06-30 22:12:47'),
(103, '22', 'Kaju Milkshake', '180', '/images/food_item/1625046440-kaju-milkshakejpg.jpg', '0', NULL, '0', '0', '5gf-1625046222-kaju-milkshake', '2021-06-30 22:13:42', '2021-06-30 22:17:20'),
(104, '32', 'Strawberry', '125', '/images/food_item/1625051111-1jpg.jpg', '0', NULL, '0', '0', 'JGq-1625051111-strawberry', '2021-06-30 23:35:11', '2021-06-30 23:35:11'),
(105, '32', 'Vanilla', '125', '/images/food_item/1625051129-2jpg.jpg', '0', NULL, '0', '0', 'PaW-1625051129-vanilla', '2021-06-30 23:35:29', '2021-06-30 23:35:29'),
(106, '32', 'Kulfi', '125', '/images/food_item/1625051147-3jpg.jpg', '0', NULL, '0', '0', 'df0-1625051147-kulfi', '2021-06-30 23:35:47', '2021-06-30 23:35:47'),
(107, '32', 'Butterscotch', '125', '/images/food_item/1625051180-4jpg.jpg', '0', NULL, '0', '0', 'Y8T-1625051180-butterscotch', '2021-06-30 23:36:20', '2021-06-30 23:36:20'),
(108, '32', 'Chocolate', '125', '/images/food_item/1625051201-5jpg.jpg', '0', NULL, '0', '0', '7Cs-1625051201-chocolate', '2021-06-30 23:36:41', '2021-06-30 23:36:41'),
(109, '32', 'Kesar Pista', '150', '/images/food_item/1625051224-6jpg.jpg', '0', NULL, '0', '0', 'lfQ-1625051224-kesar-pista', '2021-06-30 23:37:04', '2021-06-30 23:37:04'),
(110, '32', 'Mango', '125', '/images/food_item/1625051245-7jpg.jpg', '0', NULL, '0', '0', '4nZ-1625051245-mango', '2021-06-30 23:37:25', '2021-06-30 23:37:25'),
(111, '32', 'Tender Coconut', '150', '/images/food_item/1625051271-8jpg.jpg', '0', NULL, '0', '0', 'Lud-1625051271-tender-coconut', '2021-06-30 23:37:51', '2021-06-30 23:37:51'),
(112, '34', 'vadapav', '90', '/images/food_item/1625051350-vada-pav-500x500jpg.jpg', '0', NULL, '0', '0', '4vZ-1625051350-vadapav', '2021-06-30 23:39:10', '2021-06-30 23:39:10'),
(113, '35', 'French Fries', '125', '/images/food_item/1625051733-1jpg.jpg', '0', NULL, '0', '0', 'dET-1625051733-french-fries', '2021-06-30 23:45:33', '2021-07-01 00:07:44'),
(114, '35', 'Masala Fries', '135', '/images/food_item/1625051754-2jpg.jpg', '0', NULL, '0', '0', 'Q5U-1625051754-masala-fries', '2021-06-30 23:45:54', '2021-07-01 00:08:04'),
(115, '35', 'Pototo Brown', '135', '/images/food_item/1625051775-3jpg.jpg', '0', NULL, '0', '0', '931-1625051775-pototo-brown', '2021-06-30 23:46:15', '2021-07-01 00:08:18'),
(116, '35', 'Hash Brown', '125', '/images/food_item/1625051798-4jpg.jpg', '0', NULL, '0', '0', 'SW1-1625051798-hash-brown', '2021-06-30 23:46:38', '2021-07-01 00:08:33'),
(117, '35', 'Cheese Corn Nuggets', '135', '/images/food_item/1625051819-5jpg.jpg', '0', NULL, '0', '0', 'aVr-1625051819-cheese-corn-nuggets', '2021-06-30 23:46:59', '2021-07-01 00:08:45'),
(118, '36', 'Double Cheese pizza', '195', '/images/food_item/1625052739-1jpg.jpg', '0', NULL, '0', '0', 'iml-1625052739-double-cheese-pizza', '2021-07-01 00:02:19', '2021-07-01 00:02:19'),
(119, '36', 'Veg. Cheese Pizza', '195', '/images/food_item/1625052765-2jpg.jpg', '0', NULL, '0', '0', 'adw-1625052765-veg-cheese-pizza', '2021-07-01 00:02:45', '2021-07-01 00:02:45'),
(120, '36', 'Mozzarella Veg. Cheese Pizza', '215', '/images/food_item/1625052796-3jpg.jpg', '0', NULL, '0', '0', 'qMX-1625052796-mozzarella-veg-cheese-pizza', '2021-07-01 00:03:16', '2021-07-01 00:03:16'),
(121, '36', 'Special Pizza', '225', '/images/food_item/1625052822-4jpg.jpg', '0', NULL, '0', '1', '20G-1625052822-special-pizza', '2021-07-01 00:03:42', '2021-07-01 00:03:42'),
(122, '36', 'Cheese Pizza', '185', '/images/food_item/1625052846-5jpg.jpg', '0', NULL, '0', '0', 'ZjW-1625052846-cheese-pizza', '2021-07-01 00:04:06', '2021-07-01 00:04:06'),
(123, '36', 'Panner Pizza', '205', '/images/food_item/1625052866-6jpg.jpg', '0', NULL, '0', '0', 'EDQ-1625052866-panner-pizza', '2021-07-01 00:04:26', '2021-07-01 00:04:26'),
(124, '36', 'Schezwan Pizza', '205', '/images/food_item/1625052896-7jpg.jpg', '0', NULL, '0', '0', 's5J-1625052896-schezwan-pizza', '2021-07-01 00:04:56', '2021-07-01 00:04:56'),
(125, '36', 'Jain Pizza', '190', '/images/food_item/1625052920-8jpg.jpg', '0', NULL, '0', '0', 'zp7-1625052920-jain-pizza', '2021-07-01 00:05:20', '2021-07-01 00:05:20'),
(126, '36', 'Mushroom Cheese Pizza', '225', '/images/food_item/1625052944-9jpg.jpg', '0', NULL, '0', '0', 'qb2-1625052944-mushroom-cheese-pizza', '2021-07-01 00:05:44', '2021-07-01 00:05:44'),
(127, '36', 'Mushroom Mozzarella Pizza', '225', '/images/food_item/1625052971-10jpg.jpg', '0', NULL, '0', '0', 'mPI-1625052971-mushroom-mozzarella-pizza', '2021-07-01 00:06:11', '2021-07-01 00:06:11'),
(128, '36', 'Bread Cheese Toast', '100', '/images/food_item/1625052996-11jpg.jpg', '0', NULL, '0', '0', 'ysm-1625052996-bread-cheese-toast', '2021-07-01 00:06:36', '2021-07-01 00:06:36'),
(129, '27', 'Keasar Dry Fruit Cream', '225', '/images/food_item/1625053847-1jpg.jpg', '0', NULL, '0', '0', '9sf-1625053847-keasar-dry-fruit-cream', '2021-07-01 00:20:47', '2021-07-01 00:23:20'),
(130, '27', 'Badam Pista Cream', '200', '/images/food_item/1625053873-2jpg.jpg', '0', NULL, '0', '0', 'hJP-1625053873-badam-pista-cream', '2021-07-01 00:21:13', '2021-07-01 00:23:35'),
(131, '27', 'Dry Fruit Cream', '225', '/images/food_item/1625053911-3jpg.jpg', '0', NULL, '0', '0', 'fLN-1625053911-dry-fruit-cream', '2021-07-01 00:21:51', '2021-07-01 00:21:51'),
(132, '27', 'Kasar Badam Pista cream', '225', '/images/food_item/1625053955-4jpg.jpg', '0', NULL, '0', '0', 'lGa-1625053955-kasar-badam-pista-cream', '2021-07-01 00:22:35', '2021-07-01 00:22:35'),
(133, '27', 'Kaju Anjeer Cream', '200', '/images/food_item/1625053981-5jpg.jpg', '0', NULL, '0', '0', 'sXp-1625053981-kaju-anjeer-cream', '2021-07-01 00:23:01', '2021-07-01 00:23:01'),
(134, '24', 'Custard Apple M/s', '190', '/images/food_item/1625063317-1jpg.jpg', '0', NULL, '0', '0', 'l4a-1625063317-custard-apple-ms', '2021-07-01 02:58:37', '2021-07-01 02:58:37'),
(135, '24', 'Lychee M/s', '190', '/images/food_item/1625063345-2jpg.jpg', '0', NULL, '0', '0', 'Vye-1625063345-lychee-ms', '2021-07-01 02:59:05', '2021-07-01 02:59:05'),
(136, '24', 'Fresh Anjeer (figs)', '175', '/images/food_item/1625063380-3jpg.jpg', '0', NULL, '0', '0', 'Gti-1625063380-fresh-anjeer-figs', '2021-07-01 02:59:40', '2021-07-01 02:59:40'),
(137, '24', 'Strawberry', '190', '/images/food_item/1625063403-4jpg.jpg', '0', NULL, '0', '1', 'WWt-1625063403-strawberry', '2021-07-01 03:00:03', '2021-07-01 03:00:03'),
(138, '24', 'Kiwi', '180', '/images/food_item/1625063422-5jpg.jpg', '0', NULL, '0', '0', 'i3b-1625063422-kiwi', '2021-07-01 03:00:22', '2021-07-01 03:00:22'),
(139, '25', 'Mixed Fruit with Ice Cream', '190', '/images/food_item/1625063924-1jpg.jpg', '0', NULL, '0', '0', 'oSw-1625063924-mixed-fruit-with-ice-cream', '2021-07-01 03:08:44', '2021-07-01 03:08:44'),
(140, '25', 'Strawberry with Ice Cream', '200', '/images/food_item/1625063952-2jpg.jpg', '0', NULL, '0', '0', '8Di-1625063952-strawberry-with-ice-cream', '2021-07-01 03:09:12', '2021-07-01 03:09:12'),
(141, '25', 'Lychee with Ice Cream', '200', '/images/food_item/1625063977-3jpg.jpg', '0', NULL, '0', '0', 'LDT-1625063977-lychee-with-ice-cream', '2021-07-01 03:09:37', '2021-07-01 03:09:37'),
(142, '25', 'Mango with Ice Cream', '200', '/images/food_item/1625063997-4jpg.jpg', '0', NULL, '0', '0', 'fDC-1625063997-mango-with-ice-cream', '2021-07-01 03:09:57', '2021-07-01 03:09:57'),
(143, '25', 'Jelly with Ice Cream', '175', '/images/food_item/1625064017-5jpg.jpg', '0', NULL, '0', '0', 'FVv-1625064017-jelly-with-ice-cream', '2021-07-01 03:10:17', '2021-07-01 03:10:17'),
(144, '25', 'Jelly Bowl', '175', '/images/food_item/1625064043-6jpg.jpg', '0', NULL, '0', '0', '864-1625064043-jelly-bowl', '2021-07-01 03:10:43', '2021-07-01 03:10:43'),
(145, '25', 'Fruit Bowl', '175', '/images/food_item/1625064263-7jpg.jpg', '0', NULL, '0', '0', 'vz6-1625064263-fruit-bowl', '2021-07-01 03:14:23', '2021-07-01 03:14:23'),
(146, '26', 'Mango', '195', '/images/food_item/1625111970-1jpg.jpg', '0', NULL, '0', '0', 'rf8-1625111970-mango', '2021-07-01 16:29:30', '2021-07-01 16:29:30'),
(147, '26', 'Strawberry', '195', '/images/food_item/1625112010-2jpg.jpg', '0', NULL, '0', '0', 'hhI-1625112010-strawberry', '2021-07-01 16:30:10', '2021-07-01 16:30:10'),
(148, '26', 'Chickoo', '175', '/images/food_item/1625112030-3jpg.jpg', '0', NULL, '0', '0', 'rLn-1625112030-chickoo', '2021-07-01 16:30:30', '2021-07-01 16:30:30'),
(149, '26', 'Mixed Fruit', '195', '/images/food_item/1625112051-4jpg.jpg', '0', NULL, '0', '0', 'A1m-1625112051-mixed-fruit', '2021-07-01 16:30:51', '2021-07-01 16:30:51'),
(150, '26', 'Custard Apple', '195', '/images/food_item/1625112073-5jpg.jpg', '0', NULL, '0', '0', 'sPf-1625112073-custard-apple', '2021-07-01 16:31:13', '2021-07-01 16:31:13'),
(151, '26', 'Kiwi', '190', '/images/food_item/1625112093-6jpg.jpg', '0', NULL, '0', '0', 'hiR-1625112093-kiwi', '2021-07-01 16:31:33', '2021-07-01 16:31:33'),
(152, '26', 'Lychee', '195', '/images/food_item/1625112112-7jpg.jpg', '0', NULL, '0', '0', 'f5C-1625112112-lychee', '2021-07-01 16:31:52', '2021-07-01 16:31:52'),
(153, '26', 'Lychee', '195', '/images/food_item/1625112135-8jpg.jpg', '0', NULL, '0', '0', 'Lbo-1625112135-lychee', '2021-07-01 16:32:15', '2021-07-01 16:32:15'),
(154, '26', 'Chocolate Seethafal', '195', '/images/food_item/1625112164-9jpg.jpg', '0', NULL, '0', '0', 'tYR-1625112164-chocolate-seethafal', '2021-07-01 16:32:44', '2021-07-01 16:32:44'),
(155, '26', 'Kesar Seethafal', '195', '/images/food_item/1625112198-10jpg.jpg', '0', NULL, '0', '0', 'TgY-1625112198-kesar-seethafal', '2021-07-01 16:33:18', '2021-07-01 16:33:18'),
(156, '37', 'Jain Veg.Cheese Grill', '130', '/images/food_item/1625113708-1jpg.jpg', '0', NULL, '0', '0', 'lK9-1625113708-jain-vegcheese-grill', '2021-07-01 16:58:28', '2021-07-01 16:58:28'),
(157, '37', 'Chutney Grill', '100', '/images/food_item/1625113727-2jpg.jpg', '0', NULL, '0', '0', '1Qs-1625113727-chutney-grill', '2021-07-01 16:58:47', '2021-07-01 16:58:47'),
(158, '37', 'Bread Butter Grill', '100', '/images/food_item/1625113760-3jpg.jpg', '0', NULL, '0', '0', 'kBY-1625113760-bread-butter-grill', '2021-07-01 16:59:20', '2021-07-01 16:59:20'),
(159, '37', 'Bread Butter Jam Grill', '110', '/images/food_item/1625113784-4jpg.jpg', '0', NULL, '0', '0', 'u55-1625113784-bread-butter-jam-grill', '2021-07-01 16:59:44', '2021-07-01 16:59:44'),
(160, '37', 'Chilly Cheese Grill', '125', '/images/food_item/1625113807-5jpg.jpg', '0', NULL, '0', '0', 'Cqo-1625113807-chilly-cheese-grill', '2021-07-01 17:00:07', '2021-07-01 17:00:07'),
(161, '37', 'Nutella Grill', '110', '/images/food_item/1625113828-6jpg.jpg', '0', NULL, '0', '0', 'xZb-1625113828-nutella-grill', '2021-07-01 17:00:28', '2021-07-01 17:00:28'),
(162, '37', 'Bhaji Cheese Grill', '135', '/images/food_item/1625113854-7jpg.jpg', '0', NULL, '0', '0', 'svK-1625113854-bhaji-cheese-grill', '2021-07-01 17:00:54', '2021-07-01 17:00:54'),
(163, '37', 'Paneer Bhaji Grill', '155', '/images/food_item/1625113891-8jpg.jpg', '0', NULL, '0', '0', '9Kv-1625113891-paneer-bhaji-grill', '2021-07-01 17:01:31', '2021-07-01 17:01:31'),
(164, '37', 'Muchroom Mozzarella Grill', '160', '/images/food_item/1625113922-9jpg.jpg', '0', NULL, '0', '0', '48x-1625113922-muchroom-mozzarella-grill', '2021-07-01 17:02:02', '2021-07-01 17:02:02'),
(165, '37', 'Special Grill', '170', '/images/food_item/1625113958-10jpg.jpg', '0', NULL, '0', '0', '3BH-1625113958-special-grill', '2021-07-01 17:02:38', '2021-07-01 17:02:38'),
(166, '37', 'Veg. Cheese Grill', '140', '/images/food_item/1625113982-11jpg.jpg', '0', NULL, '0', '0', 'Lup-1625113982-veg-cheese-grill', '2021-07-01 17:03:02', '2021-07-01 17:03:02'),
(167, '37', 'Mushroom Veg.Cheese Grill', '155', '/images/food_item/1625114016-12jpg.jpg', '0', NULL, '0', '0', 'czz-1625114016-mushroom-vegcheese-grill', '2021-07-01 17:03:36', '2021-07-01 17:03:36'),
(168, '37', 'Schezwan Veg.Cheese Grill', '155', '/images/food_item/1625114060-13jpg.jpg', '0', NULL, '0', '0', 'pfp-1625114060-schezwan-vegcheese-grill', '2021-07-01 17:04:20', '2021-07-01 17:04:20'),
(169, '37', 'Mozzarella Veg.Cheese Grill', '150', '/images/food_item/1625114082-14jpg.jpg', '0', NULL, '0', '0', 'zar-1625114082-mozzarella-vegcheese-grill', '2021-07-01 17:04:42', '2021-07-01 17:04:42'),
(170, '20', 'Lychee', '190', '/images/food_item/1625114278-15jpg.jpg', '0', NULL, '0', '0', 'mdB-1625114278-lychee', '2021-07-01 17:07:58', '2021-07-01 17:07:58'),
(171, '19', 'apple special juice', '45', '/images/food_item/1638595720-applejpg.jpg', '0', NULL, '0', '0', 'HAl-1638595720-apple-special-juice', '2021-12-04 04:58:40', '2021-12-04 04:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `food_purchases`
--

CREATE TABLE `food_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bill` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `credit_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_purchases`
--

INSERT INTO `food_purchases` (`id`, `branch_id`, `supplier_id`, `supplier_name`, `invoice_number`, `purchase_date`, `desc`, `payment_type`, `total_bill`, `paid_amount`, `credit_amount`, `created_at`, `updated_at`) VALUES
(11, 11, 5, 'Mr. Supplier', '1', '2021-01-01', NULL, 'Cash', 100, 100, 0, '2021-08-03 04:57:49', '2021-08-03 04:57:49'),
(12, 11, 5, 'Mr. Supplier', '2', '2021-01-01', NULL, 'Bank', 190000, 190000, 0, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(13, 11, 5, 'Mr. Supplier', '1111', '1970-01-01', NULL, 'cash', 650, 650, 0, '2021-09-22 03:14:16', '2021-09-22 03:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `food_purchase_histories`
--

CREATE TABLE `food_purchase_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `food_purchase_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `rate` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_purchase_histories`
--

INSERT INTO `food_purchase_histories` (`id`, `branch_id`, `food_purchase_id`, `food_id`, `food_name`, `qty`, `rate`, `created_at`, `updated_at`) VALUES
(17, 11, 11, 55, 'Orange', 10, 10, '2021-08-03 04:57:49', '2021-08-03 04:57:49'),
(18, 11, 12, 55, 'Orange', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(19, 11, 12, 56, 'Pineapple', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(20, 11, 12, 57, 'Apple', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(21, 11, 12, 58, 'Carrot', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(22, 11, 12, 59, 'Watermelon', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(23, 11, 12, 60, 'Sweet Melon', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(24, 11, 12, 69, 'Cocktail', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(25, 11, 12, 66, 'Ganga Jamuna Sarawati', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(26, 11, 12, 64, 'Musambi', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(27, 11, 12, 65, 'Ganga Jamuna', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(28, 11, 12, 67, 'Maramari', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(29, 11, 12, 71, 'Strawberry', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(30, 11, 12, 70, 'Mango Juice', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(31, 11, 12, 77, 'Mango Falooda', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(32, 11, 12, 79, 'Chocolate Falooda', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(33, 11, 12, 86, 'Chocolate with Ice Cream', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(34, 11, 12, 83, 'Cold Coffee with Ice Cream', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(35, 11, 12, 84, 'Vanilla with Ice Cream', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(36, 11, 12, 85, 'Strawberry with Ice Cream', 100, 100, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(37, 11, 13, 68, 'Pomegranate', 130, 5, '2021-09-22 03:14:16', '2021-09-22 03:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `food_stock_branches`
--

CREATE TABLE `food_stock_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `food_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `rate` bigint(20) UNSIGNED NOT NULL,
  `alert_qty` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_stock_branches`
--

INSERT INTO `food_stock_branches` (`id`, `branch_id`, `food_id`, `food_name`, `qty`, `rate`, `alert_qty`, `created_at`, `updated_at`) VALUES
(10, 11, 55, 'Orange', 106, 10, NULL, '2021-08-03 04:57:49', '2021-12-04 03:08:48'),
(11, 11, 56, 'Pineapple', 98, 100, NULL, '2021-08-03 04:59:53', '2021-09-19 08:43:02'),
(12, 11, 57, 'Apple', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(13, 11, 58, 'Carrot', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(14, 11, 59, 'Watermelon', 98, 100, NULL, '2021-08-03 04:59:53', '2021-09-21 09:24:44'),
(15, 11, 60, 'Sweet Melon', 98, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 06:28:03'),
(16, 11, 69, 'Cocktail', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(17, 11, 66, 'Ganga Jamuna Sarawati', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(18, 11, 64, 'Musambi', 99, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 06:27:49'),
(19, 11, 65, 'Ganga Jamuna', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(20, 11, 67, 'Maramari', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(21, 11, 71, 'Strawberry', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(22, 11, 70, 'Mango Juice', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(23, 11, 77, 'Mango Falooda', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(24, 11, 79, 'Chocolate Falooda', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(25, 11, 86, 'Chocolate with Ice Cream', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(26, 11, 83, 'Cold Coffee with Ice Cream', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(27, 11, 84, 'Vanilla with Ice Cream', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(28, 11, 85, 'Strawberry with Ice Cream', 100, 100, NULL, '2021-08-03 04:59:53', '2021-08-03 04:59:53'),
(29, 11, 68, 'Pomegranate', 130, 5, NULL, '2021-09-22 03:14:16', '2021-09-22 03:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `food_units`
--

CREATE TABLE `food_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_with_variations`
--

CREATE TABLE `food_with_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_groups`
--

CREATE TABLE `ingredient_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_groups`
--

INSERT INTO `ingredient_groups` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'Chocolates', 'vLb-1627965646-chocolates', '2021-08-03 04:40:46', '2021-08-03 04:40:46'),
(9, 'Ice-cream', 'k3K-1627965650-ice-cream', '2021-08-03 04:40:50', '2021-08-03 04:40:50'),
(10, 'Drinks', 'LyV-1627965721-drinks', '2021-08-03 04:42:01', '2021-08-03 04:42:01'),
(11, 'Milk', 'Et4-1627965724-milk', '2021-08-03 04:42:04', '2021-08-03 04:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_items`
--

CREATE TABLE `ingredient_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_group_id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredient_items`
--

INSERT INTO `ingredient_items` (`id`, `ingredient_group_id`, `group_name`, `name`, `slug`, `unit`, `created_at`, `updated_at`) VALUES
(9, 11, 'Milk', 'Pran Milk', 'RQE-1627965738-pran-milk', 'ltr', '2021-08-03 04:42:18', '2021-08-03 04:42:18'),
(10, 11, 'Milk', 'Nido', 'YYu-1627965749-nido', 'ltr', '2021-08-03 04:42:29', '2021-08-03 04:42:29'),
(11, 11, 'Milk', 'Dano', '5yc-1627965757-dano', 'ltr', '2021-08-03 04:42:37', '2021-08-03 04:42:37'),
(12, 10, 'Drinks', '7up', 'Uqj-1627965763-7up', 'ltr', '2021-08-03 04:42:43', '2021-08-03 04:42:43'),
(13, 10, 'Drinks', 'Sprite', 'tet-1627965772-sprite', 'ltr', '2021-08-03 04:42:52', '2021-08-03 04:42:52'),
(14, 9, 'Ice-cream', 'Iglo', 'WLK-1627965793-iglo', 'pcs', '2021-08-03 04:43:13', '2021-08-03 04:43:13'),
(15, 9, 'Ice-cream', 'Vanila', '9Br-1627965803-vanila', 'box', '2021-08-03 04:43:23', '2021-08-03 04:43:23'),
(16, 9, 'Ice-cream', 'Chocolate', 'QIf-1627965813-chocolate', 'box', '2021-08-03 04:43:33', '2021-08-03 04:43:33'),
(17, 8, 'Chocolates', 'Kitkat', 'nE6-1627965825-kitkat', 'pcs', '2021-08-03 04:43:45', '2021-08-03 04:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_purchases`
--

CREATE TABLE `ingredient_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bill` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `credit_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_purchase_histories`
--

CREATE TABLE `ingredient_purchase_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_purchase_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `rate` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_stock_branches`
--

CREATE TABLE `ingredient_stock_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `rate` bigint(20) UNSIGNED NOT NULL,
  `alert_qty` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `code`, `name`, `is_default`, `image`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 1, '/images/flags/default.png', '2020-11-27 18:10:33', '2020-11-27 18:12:04'),
(5, 'bn', 'Bengali', 0, '/images/flags/default.png', '2021-08-03 04:48:19', '2021-08-03 04:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_10_18_083847_create_waiters_table', 1),
(10, '2020_10_18_083856_create_tables_table', 1),
(11, '2020_10_18_083909_create_settings_table', 1),
(12, '2020_10_18_083918_create_langs_table', 1),
(13, '2020_10_18_084149_create_permission_groups_table', 1),
(14, '2020_10_18_084159_create_permissions_table', 1),
(15, '2020_10_18_084223_create_currencies_table', 1),
(16, '2020_10_18_084426_create_property_groups_table', 1),
(17, '2020_10_18_084437_create_property_items_table', 1),
(19, '2020_10_18_084521_create_branches_table', 1),
(21, '2020_10_19_035301_create_temporaries_table', 1),
(22, '2020_11_05_033725_create_payment_types_table', 1),
(23, '2020_11_05_054227_create_food_groups_table', 1),
(24, '2020_11_05_064601_create_customers_table', 1),
(25, '2020_11_07_070746_create_food_units_table', 1),
(26, '2020_11_07_082919_create_variations_table', 1),
(27, '2020_11_10_092156_create_food_with_variations_table', 1),
(28, '2020_11_11_052338_create_food_items_table', 1),
(31, '2020_10_18_084645_create_department_tags_table', 2),
(32, '2020_10_18_084454_create_work_periods_table', 3),
(34, '2020_11_29_074001_create_order_items_table', 4),
(42, '2021_06_03_043015_create_suppliers_table', 6),
(43, '2021_06_06_034608_create_ingredient_groups_table', 7),
(45, '2021_06_06_051144_create_ingredient_items_table', 8),
(46, '2020_11_29_032921_create_order_groups_table', 9),
(53, '2021_06_08_094209_create_ingredient_purchases_table', 11),
(54, '2021_06_08_094010_create_ingredient_stock_branches_table', 12),
(55, '2021_06_10_062324_create_ingredient_purchase_histories_table', 12),
(56, '2021_06_08_095024_create_opening_closing_stocks_table', 13),
(57, '2021_06_08_100812_create_opening_closing_stock_food_table', 14),
(58, '2021_06_13_103731_create_food_purchases_table', 14),
(59, '2021_06_13_103844_create_food_stock_branches_table', 14),
(60, '2021_06_13_103957_create_food_purchase_histories_table', 14),
(63, '2021_04_10_051915_create_online_order_groups_table', 15),
(64, '2021_04_10_052025_create_online_order_items_table', 15),
(71, '2021_10_10_123222_create_delivery_men_checks_table', 16),
(72, '2021_12_14_125939_create_show_manage_stocks_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0001a8ea6aca99456d8a5b228b95a196a48d61f17c5d7e172f2b25eee442e25710f70bc27ea9cb93', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 06:41:23', '2021-11-24 06:41:23', '2022-11-24 06:41:23'),
('00096a0ec65f80b57d1467e6627d8c5e7c22b7179dc63e371b594e2c7849960de02aef46accd6cd0', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-22 22:35:55', '2021-05-22 22:35:55', '2022-05-23 04:35:55'),
('000b52daf7dff622bfd779537de5abac2e5bcadac30c3fdc257b365ffc0129e14a2cfda374575d9b', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-30 08:54:49', '2021-10-30 08:54:49', '2022-10-30 08:54:49'),
('0010939364f2ceb77f77d96568b268b753be1dbc92bd4c3d1c8ed1ec4f9c1974db7f87649fea1a00', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-30 09:36:39', '2021-08-30 09:36:39', '2022-08-30 09:36:39'),
('0014de0587bd3c1f10f5e5fa7d33032b6c44f3e27d615fd072c58cc18d403c95db4db80aec4efee2', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-28 09:31:15', '2021-11-28 09:31:15', '2022-11-28 09:31:15'),
('00342f682cfe8211beed1f8ee8206a382b90b0e82b192f824ed77cf54042bafa3f0fbacda2428022', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-19 23:31:58', '2021-10-19 23:31:58', '2022-10-19 23:31:58'),
('006718a72597a53c7506aa22b4412413083cb0b39f31a7a110679605bf00cf3d8f5ab7637f28c08d', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 19:19:08', '2021-08-06 19:19:08', '2022-08-06 19:19:08'),
('0073aee9e10f3bcf997fa3724349221ab1e2aa356efa30c8cc2f31688f26b35375af32593b213835', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-23 20:24:28', '2021-10-23 20:24:28', '2022-10-23 20:24:28'),
('00d55298620dac60a1cabe3bb9109aa6b5421d2844e1c4b2255c0eeba35cce2d3c884b8a57bc6e6b', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-17 22:42:44', '2021-10-17 22:42:44', '2022-10-17 22:42:44'),
('00e018763790693db06bda92dd150a8f4c20277fd6486738350ef95528f539f6976f6c9e5919f768', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-09 03:46:06', '2021-08-09 03:46:06', '2022-08-09 03:46:06'),
('00eeb70d8a10ac22d3bf9e0e84cbd3a5605b678c30464cac2150e9f5f2784a391ba6a0a113adc1c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 22:14:49', '2021-11-29 22:14:49', '2022-11-29 22:14:49'),
('0109b753d80127aefb9bc14f46634b46001ffb1ae3c00c6dd8143f677b29a3d8242f1769611a348c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-03 07:40:41', '2021-09-03 07:40:41', '2022-09-03 07:40:41'),
('010c6255bfb0d823109ad10136eb67f5620a9ced98e834b17e8065b50154d17dd6af3a986fafd7a8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-18 11:57:41', '2021-09-18 11:57:41', '2022-09-18 11:57:41'),
('012d3afd9aa66aa8ab4a40450b8570c671de656cd6dbc6673127b9bb6b3f4e3bfc269481404b74f7', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-13 14:15:36', '2021-08-13 14:15:36', '2022-08-13 14:15:36'),
('015087f7c7a3b3bda5c648bb6bfab9a01f6aa439a116495a3af6c7f0b7a57144dac9bdcad40e2da3', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 20:54:42', '2021-09-09 20:54:42', '2022-09-09 20:54:42'),
('0162d0f06d23c2cd4c57914821edeb213673356cbaf41957c03e48e03a13e8d08409a7bcc4e6b29f', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-03 07:43:49', '2021-09-03 07:43:49', '2022-09-03 07:43:49'),
('01c4f5343f0ae49f4109ba9e15360491856263b59faed7c8c2678444a825a99dfed2fbcf4f8b131e', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 21:00:01', '2021-10-22 21:00:01', '2022-10-22 21:00:01'),
('01d8e67db0c24e49f5a2b1f2afa5a07f52e23689068d376821dbb0d4a39a3b38ff542d87510f4e7d', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-18 03:42:17', '2021-09-18 03:42:17', '2022-09-18 03:42:17'),
('01ec9e077423b9fd606269d597d940f7c795e9b416d3fb1cdf7ea15bb517c34680357e0a4fc38748', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 15:40:51', '2021-09-16 15:40:51', '2022-09-16 15:40:51'),
('01ee75113d3901ce393bb110c7c51bb9f90e1c17024fa2ecf02dc4656d0efffe41a4aec5c5f1f00b', 20, 1, 'Personal Access Token', '[]', 0, '2021-12-01 20:42:59', '2021-12-01 20:42:59', '2022-12-01 20:42:59'),
('0250a6927ed44058ea423c6b24c7483656b5058277af4eaf449cd12733a886e6096ab4be093ad00d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-08 16:33:42', '2021-08-08 16:33:42', '2022-08-08 16:33:42'),
('0257e18c5f24af5612a9256a2faea3e98f85d2a51384f1791855c39a4e560362c1e2ca8fa2e0eece', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-23 09:52:22', '2021-08-23 09:52:22', '2022-08-23 09:52:22'),
('025cd6206dd45c32c8913787e202759351de707acfb2536b977f526f626006e5d688ca76655d12f6', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-22 12:58:03', '2021-08-22 12:58:03', '2022-08-22 12:58:03'),
('029a6c95c1478e4267ef6a96be1e47cc9b163605edb86f5100477f1f98d91311ec4d38c272566ae5', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-15 10:36:34', '2021-08-15 10:36:34', '2022-08-15 10:36:34'),
('02aa21795985771c11c9640b703f2bbe7cb96dd77a56c92013f49be41605e09790ebe67e55c961c2', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-24 12:09:26', '2021-08-24 12:09:26', '2022-08-24 12:09:26'),
('02b2e5df5a148f7b4b005c0a2e4f00561970d52f47bf352e038d1e64d818a1eefc2aa8b3e1bbcd3d', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-31 18:08:36', '2021-10-31 18:08:36', '2022-10-31 18:08:36'),
('02efc36648f1aef9191a4f33fe724c872fd8938bc79c39ef3454abaa72f5898bd4fc388004c735e0', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-20 10:34:21', '2021-08-20 10:34:21', '2022-08-20 10:34:21'),
('030bf5b51bc0497f20a6eac5d479016d0b3fffe1a141f87120c6909a3dc7f1b55286bc956b6e19c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-01 11:21:13', '2021-11-01 11:21:13', '2022-11-01 11:21:13'),
('0366077a6cfbb86ea137ef262064cb427adbe4a9661a18523e5bd28ab77c85cafe009200a0c4f090', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 12:15:51', '2021-11-26 12:15:51', '2022-11-26 12:15:51'),
('03705039de498815a7c65a17d92b7c2a2332120356ce1245eb2ee14f96a9102456ea0b27c05aa9d8', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-24 12:56:39', '2021-10-24 12:56:39', '2022-10-24 12:56:39'),
('037a5e4e6807147954a1a30777971a8d46d0e47a65925b44098b4bd47f13de2374bf8ecb98620b2c', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 18:49:33', '2021-08-30 18:49:33', '2022-08-30 18:49:33'),
('0388e135468901d23e5664b57ffd00680e29ba0efcf95f9b1ac472b8908589d27d09de69102e1520', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-21 16:38:07', '2021-08-21 16:38:07', '2022-08-21 16:38:07'),
('03ec9a0c7ee9e97497114391d8b9e0b85dcc3c38ca9937bbff3b89ce187bbbf2daa339ed738932c4', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-22 04:39:54', '2021-11-22 04:39:54', '2022-11-22 04:39:54'),
('03f0856e9adbfc9756e5dc02f893742cebb95fc78876a10886fb0dbbd229ccab6e3836a30a03afd8', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:54:28', '2021-10-29 18:54:28', '2022-10-29 18:54:28'),
('040e73ffe84a62b271b4093af7b8976e46b2ccf887f6c6dd36e9d81c65814010679c9a83a5333381', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-11 05:07:50', '2021-10-11 05:07:50', '2022-10-11 11:07:50'),
('04484448fd2fe33489c5cabd4da81f16715adecb6a83fcce6106450bbed5ad858395389d2c432a2d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 12:32:06', '2021-08-18 12:32:06', '2022-08-18 12:32:06'),
('04601eca79cc841dd628fdbaa739a1e5e5ff5546fb17097cf73c2ce1960555aae0e33e396ba90765', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-19 11:52:21', '2021-08-19 11:52:21', '2022-08-19 11:52:21'),
('04c7fe4bcb2a1c65c2124c966d66fa8f614d0d97f78d024655b722a5620a57dfe1f88ba056681dc4', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 10:15:09', '2021-10-14 10:15:09', '2022-10-14 10:15:09'),
('04f78da734b01de99db3a3ed9f72d8572ea6d2b47fedf90583017a1bf4f686b628f8ca19af6d89fa', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-17 04:14:37', '2021-09-17 04:14:37', '2022-09-17 04:14:37'),
('05080a6610e78f8e04f3ea1bc587e54385f695ddac687435e11fb3758e51c03e9b22b52daaa3d81c', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-07 16:33:54', '2021-11-07 16:33:54', '2022-11-07 16:33:54'),
('0577a6da0700ddaf9e694262999560a05754ed722b578ff893cce903890a14fc29f7d743ebb348fd', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-24 23:13:22', '2021-11-24 23:13:22', '2022-11-24 23:13:22'),
('05b09a91937608f04ee0cef99316451165e5075681dbd56b86441aa768a237a5ab68955f3edffbde', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 20:41:31', '2021-09-15 20:41:31', '2022-09-15 20:41:31'),
('05c8022a16f72e5dbb9ce2c5654ffe3336de6916c2ac2040dddfdadecb42afa7bd040be70f72f313', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-23 04:09:06', '2021-10-23 04:09:06', '2022-10-23 04:09:06'),
('05cd10f660942bc3e4ccdb0c1862ce441efff9b66718a262531c76a524d74176a73652ab647706db', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 08:12:00', '2021-10-14 08:12:00', '2022-10-14 08:12:00'),
('05d2a34b072f0816d88428cf5654be8d7ba6c5546593b210b644844af091f3b8b01fea2258329613', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-27 19:36:06', '2021-08-27 19:36:06', '2022-08-27 19:36:06'),
('05df8311cbf2739f0a93ed14ce2f436ce813b2fae05e0277c88f586be64aae98d3ff02a0a54aaff5', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-11 20:05:11', '2021-09-11 20:05:11', '2022-09-11 20:05:11'),
('05e220d4eabee0f9f527fb9fece36e40a583ccd96872e276b7947b46eb0e89a6823942c97ec942c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 07:29:49', '2021-10-21 07:29:49', '2022-10-21 07:29:49'),
('060849be68d2918b1c2bc996b5b443c5f5cda40c891c52d311db76e1de5320a609d1f0afbc6ae4e1', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-31 20:44:06', '2021-10-31 20:44:06', '2022-10-31 20:44:06'),
('0622472a1399157e8000ec431cfef7e37689eff954ff0ec0a28ff4bb0a9b6ece5ced324fb63cf14a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 06:04:43', '2021-08-06 06:04:43', '2022-08-06 06:04:43'),
('068f1fb5c5f43e4747d65801f87bb4c846bcaa11b4b54b48b2de5b75f66701ad410acf1bdd0a85b3', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-06 19:17:45', '2021-08-06 19:17:45', '2022-08-06 19:17:45'),
('06bbc338b76ff1341016004f70887c20d9fb07227f2a2faec513ba23ab7650506c7fda1d168df0fa', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-04 12:11:53', '2021-09-04 12:11:53', '2022-09-04 12:11:53'),
('06ff0c4d368bf41d55de8293c07ca179a3fdb675c8b2d427c09eb39aa5222cb1329e5a4f27677371', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-27 06:26:43', '2021-10-27 06:26:43', '2022-10-27 06:26:43'),
('0725e1af1423ec4b4360de5a1ba325ad0483dc7e2334ea880b316afcb84cd7adca5dada8e32d16f2', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-18 12:36:55', '2021-08-18 12:36:55', '2022-08-18 12:36:55'),
('07f9e4cb6a0ac845dfd64d89d3d0ba162af05ed5117c17b97e27d62c26cae11cee16ca31e0de9ae0', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-13 12:51:30', '2021-09-13 12:51:30', '2022-09-13 12:51:30'),
('082f94eff409f74eb632ac62c7777d6f742550c8aea7df063c8228547ba07d4a7c34f1d0d405a5de', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-12 05:35:48', '2021-10-12 05:35:48', '2022-10-12 11:35:48'),
('08db9903969e447ff12b71f9be8c9c1f7740aff84db05d2a6e6e2c7ea737452687b1e2feca1346a5', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 17:40:59', '2021-09-17 17:40:59', '2022-09-17 17:40:59'),
('08fd7a22050aed8fa82a24dfe2328f37e2a1aaeba6a76ff0a25001e60472844ddd1b3a3a11b50a7e', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-23 13:45:41', '2021-08-23 13:45:41', '2022-08-23 13:45:41'),
('09746b0627dece1e7f261831ad2423b61a10d7ce6eb30bfccd26e63c86f7ef3106e38f6e3f12c498', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 04:43:23', '2021-10-19 04:43:23', '2022-10-19 04:43:23'),
('097978b91fe4c8b600b04e3f0eaeebb3dbac55e96db2371fb2831dab59524abb77b834f669e733bc', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 14:06:37', '2021-08-31 14:06:37', '2022-08-31 14:06:37'),
('09b3caa2f1f5ab1c210e3ce93c0c4eb674f42179cad3fc05b48a4d687f097f844f58956d1abb6be6', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-12 08:40:15', '2021-09-12 08:40:15', '2022-09-12 08:40:15'),
('09be088dcf33e9a3930aac0712b9fa624a61d480b363c71c597cfc17b5732000b6fc6877ef984f68', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 18:42:26', '2021-11-05 18:42:26', '2022-11-05 18:42:26'),
('09c12dd834ac8dbaeb8890cd16750de425621e83f996c06d7a69a5791efef25c735b1e7c683e7dba', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 21:10:51', '2021-09-01 21:10:51', '2022-09-01 21:10:51'),
('09cba6311842483fd5b71d041f9006700a74fe0d63238c54f3ae5a6aa0f557ab35e46b1da29aecad', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-13 16:27:35', '2021-10-13 16:27:35', '2022-10-13 16:27:35'),
('0a37329146dafb9740517f01a1200862536894e1342165cb48fd93172f488e28c1e3431f18f10592', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:36:35', '2021-08-22 14:36:35', '2022-08-22 14:36:35'),
('0a52b26d02fbf1e05135233dfe5861dde6a4ea69b835af3cdfefccda6f975cdbb33a2183bfc2bd6e', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-10 13:44:44', '2021-08-10 13:44:44', '2022-08-10 13:44:44'),
('0ab0ba3b6bc92e2c8ef74bb261c0c6d5e723602b68af8d3fa688bd7131d0c814461754c709014c77', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-19 08:40:35', '2021-09-19 08:40:35', '2022-09-19 14:40:35'),
('0b1f9acf6cafe7ff93621036312a69834b76ea07843aba04688b653827132df00a3e6b180860818e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 16:09:04', '2021-09-09 16:09:04', '2022-09-09 16:09:04'),
('0b24806422a0c2a30fcb2b8a35288a9fe90e7026db931bc84dd225326bb4fc8a2fc60670b1af31bf', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 07:50:57', '2021-10-14 07:50:57', '2022-10-14 07:50:57'),
('0b387268900c6df1ceb912578d9dbf8f898c4a4c902d9e4108815f246ff49e8fd14eb8a68067f967', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 17:14:32', '2021-08-06 17:14:32', '2022-08-06 17:14:32'),
('0b4edc0a5686c104b15c1dfcb2b0b25f8c56db0b22131328d2aeedad2dc9ced1e977da604530c75d', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-16 16:43:37', '2021-08-16 16:43:37', '2022-08-16 16:43:37'),
('0bb2dbefdea16c78a130a6855bb4e01d1a9178229c2665b034ec5ed03170754dbda594eaa01974d9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 12:13:45', '2021-11-15 12:13:45', '2022-11-15 12:13:45'),
('0bbb8a7a4fdb6051b1e4da3c97c9d32797f0a165369c8c017e4f7758214fe70aefdf53cffc8ff8a7', 20, 1, 'Personal Access Token', '[]', 0, '2021-12-01 20:50:52', '2021-12-01 20:50:52', '2022-12-01 20:50:52'),
('0c05a09cb762e6fea63bb7a23514aee9e1c7ee2019bf99940422f48fff79e4087505581366b6db84', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 20:40:41', '2021-11-27 20:40:41', '2022-11-27 20:40:41'),
('0c11b6c68f91a926252cb94e5017ef52f724139afa3ba322c9a7682290aacd5a9b8798a8b057c6ab', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 10:49:39', '2021-11-30 10:49:39', '2022-11-30 10:49:39'),
('0c584a1b786be0c6a159c6c6ef9d6b66fd9e73864514aee72c7e01780f1d8cff1e2bb09d0c3b7d54', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:35:45', '2021-10-25 12:35:45', '2022-10-25 12:35:45'),
('0c8c06fafb2992dc6bf4f6d69a0f1fb99a420ddedae71e1eb51e10be0c102e9a1f4f2863cbf02d52', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-13 06:27:35', '2021-08-13 06:27:35', '2022-08-13 06:27:35'),
('0cd2cb4caa63d427de1bdf20db35cb4fa85c4265da9951708e0fa014838d94a924369e10868fd78d', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-18 12:03:06', '2021-08-18 12:03:06', '2022-08-18 12:03:06'),
('0cf2327090095f8a268c192a2885478b1e5e87c99fd23b70adcf453d21583c6ca67dd2c6d1bbe8f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 16:01:11', '2021-08-20 16:01:11', '2022-08-20 16:01:11'),
('0cf8fa3d1a8936ee29164075fad6972f64c2d48c746a5ba38282cb24d1d3760595d9ed80c8acbba7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-22 11:39:53', '2021-10-22 11:39:53', '2022-10-22 11:39:53'),
('0d5efd0269fb6a3004a64a864826d28519a217d16db11a6d7bdd71b7362aaf650d05a4c2ea99c897', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 17:16:18', '2021-09-13 17:16:18', '2022-09-13 17:16:18'),
('0d72ae6ade031edb7ce2dc72129a26a03682f429a5b42b042728a10026e970f66467547eff7c8464', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 09:14:04', '2021-08-13 09:14:04', '2022-08-13 09:14:04'),
('0d7e39df8cf58cd1d6ef60e89dd49428e367f2d5a26169ad5e6043479d3b5f2775682093c41dd283', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-19 07:44:10', '2021-09-19 07:44:10', '2022-09-19 13:44:10'),
('0dd49c6c549b504f4af56fce09f4671238acbdbf6dcc006354b79db23c174d1eab63333f96cd5f25', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 07:08:19', '2021-08-06 07:08:19', '2022-08-06 07:08:19'),
('0e0804c5fdb43246fe371631ac3916e1357d819890a0f199475e4ab3c9bbe676b0f4f076113d929a', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-11 19:46:24', '2021-11-11 19:46:24', '2022-11-11 19:46:24'),
('0e6008581240e46feb507e16baea4e8d90f0113ca4ff11358eb64130b20562c5a7b522ef2fce4bed', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-29 04:11:10', '2021-10-29 04:11:10', '2022-10-29 04:11:10'),
('0e6d27441d2bfd213459cfcc1cd52e626284c4a2d47960de7e6d7523f0001df67865d0debba09bfa', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-10 04:39:26', '2021-09-10 04:39:26', '2022-09-10 04:39:26'),
('0eb46d8574152b89355af539aa37172cb93c4ba6c3d45fe10adf52b1ebf2fd2b53c996d8df04739b', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-18 19:45:04', '2021-08-18 19:45:04', '2022-08-18 19:45:04'),
('0edaadf5ea352851ee7444b1847d884423d3aa9048e1890ffe59e6847dbcb046e093e9ed35633d39', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-24 05:44:19', '2021-08-24 05:44:19', '2022-08-24 05:44:19'),
('0ee6d51ed5f001e8b7cb2581a538050275a4fae4734e9ad0809172a44d12636e2dd6017f35e22ff7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-09 07:58:49', '2021-08-09 07:58:49', '2022-08-09 07:58:49'),
('0f1c7518faaec94e651e3496ea06e693de35bdd23062079a52d64779da1b3e989d916421d719acdb', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 18:31:10', '2021-09-15 18:31:10', '2022-09-15 18:31:10'),
('0f45706f77e774e0fbbde576999947817528c6eb9175da8abaf7b270a2d1b5d558164941a2253e67', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-29 03:49:19', '2021-11-29 03:49:19', '2022-11-29 03:49:19'),
('0f48302b5d9452d6cedf2b684a98ec75bf6f4516b204558e12e5a5ccd8e3fb3b18c9c92d3a3a858c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 03:29:53', '2021-10-22 03:29:53', '2022-10-22 03:29:53'),
('0f670e06afdb3317f1b4a147bc6ada2bdd7c5a0f8e08d726d72997df3a4384178eb0e0a61385fb95', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 03:25:51', '2021-09-18 03:25:51', '2022-09-18 03:25:51'),
('0fa5d31b6d541c241d54a7b888fd640f8474d6aafbd9092054abdfedb51a57cdfa8ce22768736a7d', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 07:07:43', '2021-08-06 07:07:43', '2022-08-06 07:07:43'),
('0fdc4fbd2a7b7562b5d556bc794e0c349e05125d4fc6c89ce97583487b52604711e8572aa8b11add', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 23:22:17', '2021-11-25 23:22:17', '2022-11-25 23:22:17'),
('1018712cfce564616acaaa712147cd7d21e4a371bbdd2210f78c36e319df3d522df47e9bd79c483a', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 06:55:17', '2021-08-06 06:55:17', '2022-08-06 06:55:17'),
('1021cbb160eac944e6a3f157cc12d8dfc363b8c309b2e0557c8cf8e625208f1943211d2d5c0449fe', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 09:35:15', '2021-10-14 09:35:15', '2022-10-14 09:35:15'),
('1033409a534317116108ae85d72e3c441c1305b910f296c43ea70116a947c48a09b9cbb5b45379dd', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-26 12:38:13', '2021-10-26 12:38:13', '2022-10-26 12:38:13'),
('107a2b0272d1c97f1448238191154b0d3f132960a25489d532c61667182bd357dfe186e1f645c110', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-08 18:40:44', '2021-09-08 18:40:44', '2022-09-08 18:40:44'),
('10c7d6cc4b5753faf57601175036d3974146998fc1a88a96018b667a17c6aee23adeaffa52df1287', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-16 10:55:51', '2021-10-16 10:55:51', '2022-10-16 10:55:51'),
('11184517d3136e5bc0eb658ba18be18a03dfcd64f4595a49168dd9c1367d1e6f73ffb8871e7eb423', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-02 23:04:30', '2021-11-02 23:04:30', '2022-11-02 23:04:30'),
('113f1e07b82b8dbda4f3d1880110acdd71638bfb21cc0ecccca141cee6987df2b9d46ca5280df8a8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 05:20:14', '2021-08-24 05:20:14', '2022-08-24 05:20:14'),
('114177cdafeba650589f34b35e43c1e1bcf6f29fd1a5c377290f837e94e5de273f0fe8187225f295', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 19:04:08', '2021-09-13 19:04:08', '2022-09-13 19:04:08'),
('1181621fb1045d21c47e10bda0c226f8317bd9c33139ebd7c6bf231329f7e9e36350d7a41fa3ac4b', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-05 21:35:25', '2021-08-05 21:35:25', '2022-08-05 21:35:25'),
('11b7c8941cfad0b31cc99a87ba861f0df2d95393efd55be2d175ad32e5c8c34a17823e24c07036c6', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-30 08:42:07', '2021-08-30 08:42:07', '2022-08-30 08:42:07'),
('11cafd201a890deeb0268e654401869898b50a96fa35685bd4e510b2330dedd079261541c158309a', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-02 13:11:01', '2021-11-02 13:11:01', '2022-11-02 13:11:01'),
('11dfca30ace894701f0b9d0e24b69f5f0391c91a77b23ed21885314341adc24c74ab88e40645d0f4', 20, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:45:37', '2021-12-21 07:45:37', '2022-12-21 13:45:37'),
('1208b1df0be1f09dc631d74d8c3c375c18be36c979c8f164a9b92fb925610c13b8afab08b854da1f', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-02 16:35:09', '2021-09-02 16:35:09', '2022-09-02 16:35:09'),
('128a51a14c12681ee7e83a8960cf8d284c81c5d22bd66d7721d8213e0a0d28154135464dfeba1df8', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-04 02:57:46', '2021-11-04 02:57:46', '2022-11-04 02:57:46'),
('128aba26668d2b46801352688d66da1680ab95feb5853b1f5cbbf6dea366adb1c210f3027ab9f2d9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 08:08:26', '2021-11-24 08:08:26', '2022-11-24 08:08:26'),
('12967dbc026b67358aa2e75a6981a2569494f5d87a71712faaab05872ee32f85c005736df653adab', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-31 05:52:11', '2021-10-31 05:52:11', '2022-10-31 05:52:11'),
('12ab9f8559ac0303a4d5d38bf77114385b8bf0d7facb48f64eb1c9b580316e91c9ae2d0b367cf3e4', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-20 16:02:07', '2021-10-20 16:02:07', '2022-10-20 16:02:07'),
('12be737f5c50074b4e9c2f757311dd4e84119c21436d0c233bb01a30301cdae3f009ff96087bfcb3', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:12:12', '2021-10-13 18:12:12', '2022-10-13 18:12:12'),
('12c01112ac923f8cfed67ddf6ba5912f412cbd822b97be7b157930035c5d204daa83135f6decaab5', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:05:55', '2021-11-03 16:05:55', '2022-11-03 16:05:55'),
('12c1f7b26a49d0e411ff6ba0bf562a8e645098dbb18ea73fa6bbfadd7629db7c5b5dfd137b5e862b', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:09:21', '2021-11-29 12:09:21', '2022-11-29 12:09:21'),
('1303ee4d0e7d2bbbb102f64b8d9b67217cbc6cb3ee3a572cdcc153f2a6bcf2962462cc843147069e', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-24 14:15:02', '2021-10-24 14:15:02', '2022-10-24 14:15:02'),
('131d1223183b7ef0dff3f0967705024dab3653b848829413c07e2c19082b4d3aadea5f196d484789', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-07 22:56:09', '2021-09-07 22:56:09', '2022-09-07 22:56:09'),
('1336f15bdd69689b9b690916a70c622f9fc6b4e1dd1bb59fc2c5e4ef21de273080e826b6d023ba5f', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 07:26:12', '2021-10-25 07:26:12', '2022-10-25 07:26:12'),
('133de13e9ca102b7234a042c9ceb857bbf1206229bfd31439437bee66924509e996ef1bdeffcba24', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-08 09:19:38', '2021-09-08 09:19:38', '2022-09-08 09:19:38'),
('135a761257c53fd7f39d809fcb961657242e2bef4a0dbc10c336ce820de3a7ceb97e053321c5a7bd', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-29 04:09:46', '2021-10-29 04:09:46', '2022-10-29 04:09:46'),
('13abb6660fb8de6f27bbcb8fa5e45c40b0a83e0f624b33ac51c2679dd2f9181dd77d589f4658f7c6', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-06 15:31:23', '2021-09-06 15:31:23', '2022-09-06 15:31:23'),
('13ca3ae2a742ecac4e8c2ff200c9a3090a688773e7d2fbf9b2e2833e7a76a5b93d04cb3353fe403c', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-16 16:44:02', '2021-08-16 16:44:02', '2022-08-16 16:44:02'),
('13f5ce1b5625e2aec975cb52b44e92f4efcf45c475e9842d8dc41978db1824ffd70baa71e66879b0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 03:00:29', '2021-08-23 03:00:29', '2022-08-23 03:00:29'),
('140b21fbc687c5cd571d06b41194ec78c8ead609508915bc2451aafeabfaf2095b1b6169f2134ef0', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-14 16:09:32', '2021-11-14 16:09:32', '2022-11-14 16:09:32'),
('14322009dc3246ff9c178e1b51fe472db70345a677b24c95521a2396df738116ffa2a568a62465e1', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-14 22:20:24', '2021-08-14 22:20:24', '2022-08-14 22:20:24'),
('1438a45869c227f4f501b3a3d9614dd18e4a428678eb18f1144457dc20d402a87f30be0430278a64', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-08 16:04:08', '2021-09-08 16:04:08', '2022-09-08 16:04:08'),
('143d4c3d78e964591f339e2664a3ce44e8b95369dee0f21e9ee752be2f2c97d7cf4ed5541bfc8e45', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 11:39:18', '2021-10-22 11:39:18', '2022-10-22 11:39:18'),
('143f253cda4206219e87aecc844fd6281c019194140f40935cbb6c2ac5f9bf669e028cce0d4d9f70', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-21 01:36:46', '2021-10-21 01:36:46', '2022-10-21 01:36:46'),
('1457a4579bcd33d22ca24291ebd159697298dfbbea44573c0ca8208f54bd3d5a25f4702355e31b9d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 13:15:50', '2021-08-26 13:15:50', '2022-08-26 13:15:50'),
('14839c8238460f0f797bc6af719fc7ef43e93c6511a621a0248067006ebe8bfa9a6e8e98f2634bdc', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 09:48:51', '2021-12-01 09:48:51', '2022-12-01 09:48:51'),
('14904cf7f2a3ef3fbdf1bb85cb55b6ce16fb1247e83f516ef1e26a645a6a089965611c89d9f19e0d', 21, 1, 'Personal Access Token', '[]', 1, '2021-12-01 20:45:19', '2021-12-01 20:45:19', '2022-12-01 20:45:19'),
('14a64c8443aecd075a165f2e53c1a429a68f36f3fc69a84b54b5d1fdc655b6a3da0a10d280330540', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 05:46:16', '2021-12-02 05:46:16', '2022-12-02 05:46:16'),
('14c86352a949b7a27fa810cd2bd99af9091cf23cebec0c92f343c8e19f631e5bb9f39f5a8e505f56', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 19:54:13', '2021-11-29 19:54:13', '2022-11-29 19:54:13'),
('1576bfca9c33a77ef426551c315a814dd8b3af0d10524f9264bf7d6c24df66bcd7629c575a794b0a', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-12 05:09:48', '2021-09-12 05:09:48', '2022-09-12 05:09:48'),
('159bd9ff4241714282523f05ef7686b98c6da3fe155765278bdd5e4abf41de6be2ee6147f23e2321', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 20:42:06', '2021-08-24 20:42:06', '2022-08-24 20:42:06'),
('15b2742a11e314a4eff618178a6434925f788d8edf80938fed50213057eef6f52274c17b846d326b', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 18:52:46', '2021-09-03 18:52:46', '2022-09-03 18:52:46'),
('15b54a31f64ae14a094dc4caffa91d17a057369f89770e6123aa97728ab385931f9e1f6245f2c20f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-09 11:59:34', '2021-08-09 11:59:34', '2022-08-09 11:59:34'),
('15ffe68b7cd354ac5901f698bb2c583dcec5bfb263fa5ccc2a83d3f9081c320c57c0c86a2359ee80', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 23:11:34', '2021-11-02 23:11:34', '2022-11-02 23:11:34'),
('165916e46a1d4e3a02de88abdb0a1da09650c81671a2f2810a6e8301df864371a39f18039e713663', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 10:15:46', '2021-10-13 10:15:46', '2022-10-13 10:15:46'),
('165a35cc7549384e252faa7f2ea1924441a9943153c35f5453c5c6ceeb8cfb7724ad68a8c553eaa9', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-19 14:54:36', '2021-10-19 14:54:36', '2022-10-19 14:54:36'),
('165e4e74be1cdd84f87cff7677103c4db0dac3624432c8ab162541549aeb026db6b17e5ed5dfa852', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-26 11:01:19', '2021-10-26 11:01:19', '2022-10-26 11:01:19'),
('1664588090a70ee7d18b5b595f54a173b09e8af590eb3f7a26a62af781fa737aa1e3725aa9d62a71', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-04 06:00:29', '2021-09-04 06:00:29', '2022-09-04 06:00:29'),
('167e0dc0969cb651baa35fe657c50cf22caa9c3b1a64f4764a2c241a1297b6bee1071bf328344c26', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-20 22:13:18', '2021-08-20 22:13:18', '2022-08-20 22:13:18'),
('1682b5717df96932c83d173cb24b007a5dd67e6fb1b3400903fd56697af606982f1e462084f9f9e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 11:06:21', '2021-11-11 11:06:21', '2022-11-11 11:06:21'),
('16c4802be35852ed0e22d56219262120acbe6cf7398b69354fb052c24f5017de58412b19d68770df', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-18 23:42:26', '2021-08-18 23:42:26', '2022-08-18 23:42:26'),
('1729c5281e6749bc4e0262149c15b6bb0d634169a008e6026149f775e21391190628fbb9aad5d698', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 00:38:45', '2021-08-13 00:38:45', '2022-08-13 00:38:45'),
('1747b73c5c807418c2b73da2e283bbd9e6aaca53801c55775e639038dea9028cb1a829d17e191acb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 09:35:50', '2021-11-11 09:35:50', '2022-11-11 09:35:50'),
('17b91e47f4313802ee0a75abe6ac8e42636452a828dcdf700b0ca3ccc79e063c2a60fd5e99469169', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 05:02:37', '2021-09-01 05:02:37', '2022-09-01 05:02:37'),
('17cb5a7ce5e3fed94dc7193f837209074fed1afd37329987f991be9644e92e7d1b5c69a2176ce3d2', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-29 06:42:02', '2021-11-29 06:42:02', '2022-11-29 06:42:02'),
('17f92102a407c82a0748fc2c7fad162721e3e216e9a0038713e7188187bb8467692b5f7ebf006daa', 21, 1, 'Personal Access Token', '[]', 1, '2021-12-01 14:57:03', '2021-12-01 14:57:03', '2022-12-01 14:57:03'),
('181c93b96b95e912b09058d68ba219f6b171fa18747ac43c00de268fb7a55f63228455f6459104d5', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 19:48:54', '2021-10-14 19:48:54', '2022-10-14 19:48:54'),
('1852b05699abb4bceff4d6a4dd12a1a8e0f3ea140481decb88932522c804a20ce4a4bed24ee04321', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-21 01:52:29', '2021-11-21 01:52:29', '2022-11-21 01:52:29'),
('1859cc662a6d4370404a5fed93b6e7e68a6f4de8c63c8b2edb5803d264f9745efff2b9c6ee6d69bd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-21 15:07:16', '2021-11-21 15:07:16', '2022-11-21 15:07:16'),
('18660694c69978444dcd7e1edb2b7ff35949cce2a587eba49a69fc7e1850cfec6fa066ebf53012a6', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-01 09:01:13', '2021-09-01 09:01:13', '2022-09-01 09:01:13'),
('18ca8deb9c8dfdca1baa2f4c66de4925423651eaca39162554cd4e491a802e206fc1b3c3505ed6a7', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-31 18:46:56', '2021-10-31 18:46:56', '2022-10-31 18:46:56'),
('19019822d06088d750474fd4510d1ad1cfa8a266dea82f9b891b96200ff502733f260719f31a5986', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-08 09:21:53', '2021-09-08 09:21:53', '2022-09-08 09:21:53'),
('19102ac544d03ac338bee0786afc2740fb209dbc657c03bb72d11ac49b27938040163b5e3aa932e3', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 06:48:13', '2021-10-19 06:48:13', '2022-10-19 06:48:13'),
('191ccfef2ae7c63946b5166e35c7d448e2deba163f77ac4d534778cd801788348cedf6fa1d644882', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-23 17:34:08', '2021-10-23 17:34:08', '2022-10-23 17:34:08'),
('191df28e5c1b790237e78cadfca73d916f139e15674148bf4c441ea0797434e60db250f236788d1b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 07:52:39', '2021-08-14 07:52:39', '2022-08-14 07:52:39'),
('192a40455a2c762a9a4169f51daa40e0ca61f0d28c45069be9a645e8b6d17c00cb5f2dcffee1d40c', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-14 04:59:40', '2021-08-14 04:59:40', '2022-08-14 04:59:40'),
('19479d7aaec565a54a8ef96e222c1ccb7a264445bee6379bd190dcc1d19e54af3b0a1ecc8ab02bd0', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-26 12:14:26', '2021-11-26 12:14:26', '2022-11-26 12:14:26'),
('195d41937e1e68d8505c7f0d1e46f1079f3724da9d4e60fc1590f1a42bac63ffce5eed6251758152', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-08 20:01:21', '2021-11-08 20:01:21', '2022-11-08 20:01:21'),
('197f853c85222158d7340515519aae16ece083a98a6f487623962c537cbd6cc931435ea6f85f0df0', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-18 09:12:12', '2021-10-18 09:12:12', '2022-10-18 09:12:12'),
('199fd7985a1a68054338630bea2d256393acbc5c92952760bfbced2407bde98b931769f16a920713', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 15:38:51', '2021-11-26 15:38:51', '2022-11-26 15:38:51'),
('19a82d2d9182ff28bb6aca44bf0136df7b0ff0f67f4a96bd8576532cc674f5ca137360fc7fcc7fbb', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-16 15:15:32', '2021-08-16 15:15:32', '2022-08-16 15:15:32'),
('1a3d19792ad79084b4f7a6cce36f023d05a0fdf00ab95aee400540f6781a060909527882db2f143e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:27:00', '2021-08-03 06:27:00', '2022-08-03 12:27:00'),
('1a4a2f26379d8e62763ea14bb6448d1c78dc5cf65ef131ba4696db4426a49ccb65c84366eb3c36d7', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:54:13', '2021-11-29 11:54:13', '2022-11-29 11:54:13'),
('1a669325bf8db421b6de1bcbaaf79b91899cbd37bd0c395927aa2b5c3f85e996736f4da9c0232747', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 09:13:43', '2021-08-17 09:13:43', '2022-08-17 09:13:43'),
('1a88aacf761c81e4c7d16adb6da91b03de73b451c96a769ef7731bd3fefe4e63fbb00ea7847dfa41', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 14:47:22', '2021-11-23 14:47:22', '2022-11-23 14:47:22'),
('1b156f4a49490e03aac226fdb4a2df658453a6397b3f0a1c605fba7df08015455aad3a1a41c190b1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 11:54:33', '2021-11-15 11:54:33', '2022-11-15 11:54:33'),
('1b331bd39bd38c92dc6677a3cba7fcd7a8eb1eca8e7ed0676afb7002f7ef6e29f5bcc5209ebc174e', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-25 05:34:34', '2021-11-25 05:34:34', '2022-11-25 05:34:34'),
('1b3e1c7f485c093a1e97c57b0df5ff25a2c7d78b17f6a32b037ae0380ddd95b7bb20825318238f8f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 07:07:46', '2021-08-15 07:07:46', '2022-08-15 07:07:46'),
('1b81ca2d306c44833e714f1987c2129cdd26d5b8506900b944f488dc211a5107732a34f17cfc4889', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-11 09:33:04', '2021-11-11 09:33:04', '2022-11-11 09:33:04'),
('1bc7a08b6d537840ffa117d624bca56c5bfaa93caf9fbe6d203290bee5c2c5faa1877206172b592d', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-16 08:52:06', '2021-11-16 08:52:06', '2022-11-16 08:52:06'),
('1bce62ec47521979c1af3860dcb61e370645b03cbb703ff02da19cc067e0f061993db93821a39cd2', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:28:24', '2021-08-10 07:28:24', '2022-08-10 07:28:24'),
('1bcfe62cbc59831a1f317fd7f482dc4a6632a6103215ae55fe8dd05a31ca7236642bf4922ab0f813', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-14 07:40:02', '2021-09-14 07:40:02', '2022-09-14 07:40:02'),
('1bebc58ad94ad7769c3e1359ffac538dae2fb067c1193aafbddb3052a8a964f153ccc075ee8f2a96', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 11:45:07', '2021-10-20 11:45:07', '2022-10-20 11:45:07'),
('1c5e5d894e10d3c42e9ac617546f548bf8066fc745f26c4c6b34f3566c293d20e4dcbc761d479e2f', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-06 17:14:51', '2021-09-06 17:14:51', '2022-09-06 17:14:51'),
('1c726e815675f4e24a5621f76b10e62154d297ce1ed2e9d5a303675a2ce62d64236ed0367fe75c31', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:08:17', '2021-08-10 07:08:17', '2022-08-10 07:08:17'),
('1c762d488a993cd946c4e45a1dc527afc84919606024444ec0a140a2f0fd8c1f4511f4f348264f91', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-23 20:28:20', '2021-10-23 20:28:20', '2022-10-23 20:28:20'),
('1c8dfb8dc49546d837d8461be5b1310baf8d84dc5f09381d46a1df1912045c45677ed7562aa6703b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 10:20:16', '2021-11-27 10:20:16', '2022-11-27 10:20:16'),
('1cb7ab2e8fc5defcc0897588d4e0328bb7d1722816abda32f55edd281fc12a53751dfb6d29529d71', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-16 14:43:58', '2021-08-16 14:43:58', '2022-08-16 14:43:58'),
('1ce8d638df69652a681f57cf6214623411a819f1b737d21db8ddf8e304b44d1a9607c595fc6f09a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 07:31:34', '2021-08-12 07:31:34', '2022-08-12 07:31:34'),
('1d0f816e225093b7f799a1171234d158ad7a9ac6496ff1533179234d9e457243bbc5cb373cae2db5', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-11 06:42:59', '2021-11-11 06:42:59', '2022-11-11 06:42:59'),
('1d97aab22d4496fffa48810d3d8046b7b4f407bc96df7774713b95e2d3438c2c0fe5d264f8f4db75', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-01 10:49:08', '2021-09-01 10:49:08', '2022-09-01 10:49:08'),
('1dc6cec58027f1f4d7c6b61d25e50a7fcb18b5a1e278ed678d86cdd47a20130a6f837302658c4bad', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-18 08:44:32', '2021-08-18 08:44:32', '2022-08-18 08:44:32'),
('1dcdf2874a9e4a92158e78e4439b907530b5b0913af90e542cad3c39bd05fb10c485f59172f2d520', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-08 12:36:14', '2021-08-08 12:36:14', '2022-08-08 12:36:14'),
('1de20e358acc8584091d269d9dd681cd516059387e649fd6a5f1156e1b2fb514f0953a93e0bac1e2', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 04:21:15', '2021-12-04 04:21:15', '2022-12-04 10:21:15'),
('1e298339b9cbe1a75d4f42482e681bfc3da788d19dcce497b4ec37f972a464d63ce00f415eeb554c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 16:00:30', '2021-11-25 16:00:30', '2022-11-25 16:00:30'),
('1e9f036ebdad4cbc1fb871ff3fcf4cf836a8e3e178e05f77a2f0ea6df3aad938e9ddde5c45dcc314', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-15 09:37:29', '2021-11-15 09:37:29', '2022-11-15 09:37:29'),
('1ef8377aaf909a6e5dc60aa49e91bffb1a9075f4a0e432ba3299ef563abd0671275cbc32b9db876c', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 12:08:26', '2021-09-17 12:08:26', '2022-09-17 12:08:26'),
('1f08c75bf2a49039b220aea7b9b20b306562d423b443339b248bc2285c1ef3adbb0d32c0f6ad3575', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-07 13:34:41', '2021-11-07 13:34:41', '2022-11-07 13:34:41'),
('1f2bad40c4c5ee4bfed82ce95a4199f1e91c4d8af87cedbc8dce037ba715f6770c6b639ac6e42643', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-16 15:46:39', '2021-11-16 15:46:39', '2022-11-16 15:46:39'),
('1f317d5bf2c3ed438b66f5a849e5e02c77850ccc058c6a41618b76fb4ed477857df42f913291ee12', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-18 09:28:25', '2021-09-18 09:28:25', '2022-09-18 09:28:25'),
('1f3da606014b599656ed9764dc67c85163b491c7ff241f0551ead46c4c3c73c99d1300904619cbfb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 17:42:47', '2021-08-16 17:42:47', '2022-08-16 17:42:47'),
('1f5efc9898c8889d80a07cde8458a7f5b324a1efd423986ee3f28c2807889272839ebfc7409bc339', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-14 04:51:54', '2021-08-14 04:51:54', '2022-08-14 04:51:54'),
('1f7a138bb30fb13d05390ce3bf78948da5b7cfdc2081ca44d398d34569e2e32ba229d59bb96d0c49', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-26 22:48:34', '2021-11-26 22:48:34', '2022-11-26 22:48:34'),
('1f994979e0b5fcd00966883e84f9481a0c6d7cb383e0c7b86bb9c947dd2cc3f18bd688d319d54cee', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-24 04:19:22', '2021-10-24 04:19:22', '2022-10-24 04:19:22'),
('1fb5ee1509e7a15329cb718421ed3e17b0a6ceaf8ce66dd89a27dc4a1e71b5723bcccc3c02b267d6', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-16 17:12:54', '2021-10-16 17:12:54', '2022-10-16 17:12:54'),
('1fbf73a532c5b8e94b98122f0ac061352b11fc3067d27146cbcd88df897c4f3f12aecb0bb4111c2b', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-04 06:11:16', '2021-09-04 06:11:16', '2022-09-04 06:11:16'),
('1fe3d34abaf4d3b96f5a11129674e1b9bd859675a4b9e9f3df1f3657027d66e850ee30a39bd0f37d', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-19 10:45:46', '2021-09-19 10:45:46', '2022-09-19 16:45:46'),
('1fee1314837fcb009b4579f4e5eb7855f74bc0c6759396ba390e7ea07b18a0cc86e5d0693b4e0592', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-16 13:13:22', '2021-10-16 13:13:22', '2022-10-16 13:13:22'),
('1ff1c9545c8343f3cd75fdfedf9225f01545c6c854f3f3cfd694484cf14aa495baef3c6a47faaee8', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 11:40:21', '2021-09-01 11:40:21', '2022-09-01 11:40:21'),
('1ffd465820848045239ddf37fe46df89afe659d4d184e11599a14a52a47283a485a454743748a5af', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-16 17:09:18', '2021-08-16 17:09:18', '2022-08-16 17:09:18'),
('200011ec30d081cff237dc33d2547b4f3d9761ed9a1965484673bf521612d7ee0feeef87b3e5fa1a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 11:51:38', '2021-11-22 11:51:38', '2022-11-22 11:51:38'),
('20986d07340da73457071b8176ff42ef4a5990b19c7e4ea8a1a813689f53f351c261239f228bfe17', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-01 21:13:23', '2021-12-01 21:13:23', '2022-12-01 21:13:23'),
('20de92da62a751c27181b47db37838b96b7f3664ae234d613abc40cfc581e1a1f9eceecb8ddc63b2', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-26 01:54:09', '2021-10-26 01:54:09', '2022-10-26 01:54:08'),
('20f1e294d01e36a35de8cdb07e5a0daae6e94dda9aebe5d166c6fc87533cdea8e72985eea92d695d', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 11:59:37', '2021-11-30 11:59:37', '2022-11-30 11:59:37'),
('20fb46fef669b087508d430b7c9984d91940d0ca7a6237d113f57f9380649e152fd04824328941b8', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-23 05:22:12', '2021-11-23 05:22:12', '2022-11-23 05:22:12'),
('2118fdacf109ca521f4cdb2b1a8299501a0319a70b2bdba7f1a12ef2fd5bb01bc628a72760dce704', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-11 18:23:46', '2021-11-11 18:23:46', '2022-11-11 18:23:46'),
('21193083f6259690a2b232ba125fff05dffb0c3500c4c4e4e41a43bdc5512dfe34b6a38463f51b2c', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-18 14:41:35', '2021-11-18 14:41:35', '2022-11-18 14:41:35'),
('211ccc394388aea60a1a48e2a7c733de1ec9c6d2250a5bcbac362b0e79ae6ac26ce6ccc3cc2bc061', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-23 17:56:50', '2021-10-23 17:56:50', '2022-10-23 17:56:50'),
('216febbca904001b3948f607d2198b36f4883c35e397db591735d7534e37ad0729d56020a4719938', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 08:57:34', '2021-08-11 08:57:34', '2022-08-11 08:57:34'),
('2180e75f9460e4c47a7cbe07e58a9ee6a56649f8ff21279a6944ee5ebdc47e24285d3ded22d9fd08', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-07 13:35:50', '2021-11-07 13:35:50', '2022-11-07 13:35:50'),
('21a70fb8dbee57eb21ab81cde27b5d7a4c47217210115cf6b30b16f58923c047729495a4760affaa', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-07 18:33:27', '2021-11-07 18:33:27', '2022-11-07 18:33:27'),
('21c34aefcece2dff410e330b50158a5928d8e32b9a28b1ea22b3f5b55628203fb00508b06a2a7cf1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 13:06:25', '2021-09-02 13:06:25', '2022-09-02 13:06:25'),
('21f30ada3dba0f6fa0eaf202d5115acc5e8c2da8e5485fdee764ac66fd0b1fdd6a0709d91c93a5a8', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-25 00:21:39', '2021-10-25 00:21:39', '2022-10-25 00:21:39'),
('21f3b658ddd00b795cb34dee0b633b3ccf3f9b9f744ddd8f61aab4a3ef707c17b45754fb48af671e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 14:10:18', '2021-08-20 14:10:18', '2022-08-20 14:10:18'),
('224e79223ea8ed7da6f832c09c73ccc04f5954310d3ddbb4b1f5806e660a08b75d25cfc464c08016', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-14 20:53:44', '2021-09-14 20:53:44', '2022-09-14 20:53:44'),
('22546daa5d8e83f1c0a04b1359fbbb76c6ed64d5f657736d20cc9094b18b6232f21f8df33648f0dd', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-19 14:14:04', '2021-10-19 14:14:04', '2022-10-19 14:14:04'),
('22c2b6bd47b7c889fa84c1296465ee218d78a9cab07bb2ad683846726396d11d964ceba4490de83b', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-24 07:15:14', '2021-10-24 07:15:14', '2022-10-24 07:15:14'),
('22cbc356cfb33cf3e7cd52fccc44b192ec0e0b7c1a1b56941b7f7f7825b84fad6d075a80d367e9e9', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-22 13:12:30', '2021-08-22 13:12:30', '2022-08-22 13:12:30'),
('22cd1b82b643e0db68650eeb8e42cf79133434dd048bb852b2c0b6d5aad120e5be884e7ce3b2ea6d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 06:28:29', '2021-08-14 06:28:29', '2022-08-14 06:28:29'),
('22efef19ee1df634819b7746d93cbeecd18ad4da0f22fc05a7f501d6ab1a72cf5d25c258b75505d6', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-30 21:31:12', '2021-10-30 21:31:12', '2022-10-30 21:31:12'),
('23152237db1a624f0b67a6aff1b18d6322d569b7935b64799795c1c59e67a6dcfbca38b7e6ef275f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 19:46:45', '2021-11-16 19:46:45', '2022-11-16 19:46:45'),
('2346c3eded7454903aa9687573fe1da9706b27824dd274d34f81c1b59294eeda708e60c6e13f9854', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-14 11:41:54', '2021-11-14 11:41:54', '2022-11-14 11:41:54'),
('2349df76038b9fb6d8a917408bcc9bb53e2ee1e96b32e336726b209715dd4c583bbb800734e8d087', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 22:33:19', '2021-08-23 22:33:19', '2022-08-23 22:33:19'),
('235d5b22c26ab68c6f4097f7d96e5292ed42558f4d5fefe2890655f03a1d76c349afa4102e777734', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-21 08:50:53', '2021-09-21 08:50:53', '2022-09-21 14:50:53'),
('235f59faae659839e7d4dd25a1d64fe7bfdb1d75901e2866cc231cfc50f6c36e8860f9830cf366d2', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 00:03:47', '2021-10-20 00:03:47', '2022-10-20 00:03:47'),
('23b2e480be7654d6e2a0ce9b8d53a897a923421398e97b6fd8a8c42ad8082b46d06f21b1f3f90cfa', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 19:09:04', '2021-08-23 19:09:04', '2022-08-23 19:09:04'),
('23de79c70589f5102b34389e975fbfb833b87e9b11f6eb9abc1ab8b664ab7968b8b4d77082e729d7', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:01:54', '2021-11-29 02:01:54', '2022-11-29 02:01:54'),
('23e434b714714b5b40deab6cfc18fe308352fd002d28132aa08cc846e7fff6b7cb61cb9488a29cc7', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-26 19:09:33', '2021-10-26 19:09:33', '2022-10-26 19:09:33'),
('2406d02a968df3b9f5c027f23456a6168610896d7001293e482bf7b1df991a17d820118d403c0c39', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 21:54:09', '2021-11-11 21:54:09', '2022-11-11 21:54:09'),
('244cc6b3423d693e00826e99d725ee269361f131915e11d0de8a2c6960341625ba2dd6deb3c799dc', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-13 13:18:45', '2021-09-13 13:18:45', '2022-09-13 13:18:45'),
('24b644a75081667f37311a884512fd9975c8ba036b90cd757c44b72bde20132e2e90dd7e39300795', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-31 21:32:46', '2021-10-31 21:32:46', '2022-10-31 21:32:46'),
('24b7ea01b3540d416d1d17618293d4573d1f3c10d33cdb6977ab9be8d0c848338746b2fca8d7cbda', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 15:10:12', '2021-08-15 15:10:12', '2022-08-15 15:10:12'),
('24d2d2eca9ae5cd229592aa785d189b42c60b6cbb657ffa708549aa827372e41671f473b8d17c7ad', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 17:44:50', '2021-11-05 17:44:50', '2022-11-05 17:44:50'),
('24d434636f9a9d34ad49e04439c91707bbfdec9c3f46c9ed13219baaba8e0bc13d8c3214a0631bcf', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-29 03:10:38', '2021-10-29 03:10:38', '2022-10-29 03:10:38'),
('24eb966638f0cb7b547dfdbfed582c843c723c33a8a0260bd34f458eef89a1d1613f056827ac15a5', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 03:37:42', '2021-09-18 03:37:42', '2022-09-18 03:37:42'),
('24f47d063c94f096b66ab07e200d7baf18cff6e281afb4edbe455af515f44a1d313734a2945ae40c', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-28 16:07:12', '2021-11-28 16:07:12', '2022-11-28 16:07:12'),
('253875d5b49878c6948c4b14cf044107b406fa1ebca5d50fe50871f42078860c6cdaf88ba9efc279', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-10 04:17:49', '2021-10-10 04:17:49', '2022-10-10 10:17:49'),
('253f5ab12c1c4a327159c53a68e1daa38e3615a646af8b5c0cb9150d21e844d931f2619e165e55f6', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-24 12:52:20', '2021-10-24 12:52:20', '2022-10-24 12:52:20'),
('2564d25be6b578564e456156e955dd078dd4eed9bb002a8ef0e43b5630299904f8c8941bf18d1848', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-02 11:40:58', '2021-09-02 11:40:58', '2022-09-02 11:40:58'),
('25dec793b714e394e89d1663b0a6ccf852191650082a80fa8b5a87875de58187e76055829fbab5f0', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-14 03:53:43', '2021-10-14 03:53:43', '2022-10-14 03:53:43'),
('25e6fd1fd9c61c930fcb5845a3b8ae4b62e89ff3d669b6fc529f7ce1de2e6cfffa928a2c5c862a07', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-20 16:00:43', '2021-08-20 16:00:43', '2022-08-20 16:00:43'),
('263ddf561b0befea828ab6610fbeac3da9b9062c302f59e99b4ebb07591b54a93ec517dacd8ec8c8', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-18 11:13:02', '2021-10-18 11:13:02', '2022-10-18 11:13:02'),
('265aa7dcb28193cfdf7aee7d5024d235487d965e5277285be8e584fe5f7641f4405261080227557e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-04 04:55:57', '2021-12-04 04:55:57', '2022-12-04 10:55:57'),
('266268dbf80be0d80b646500b092960f315670ad46d8e568b3da91bd8f266aa4757f51633c07b9f0', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-23 13:54:59', '2021-08-23 13:54:59', '2022-08-23 13:54:59'),
('271b1415a5053c4afc7a731cd14893a82bb83bd362e2705d97271dfbb1ea1e4ca29420bcb2ecb3ad', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-13 03:37:37', '2021-11-13 03:37:37', '2022-11-13 03:37:37'),
('271d15541ef59e84136c8c2d4fc4bbeb3976198e6bdd7a2472af58d8368121679001d75f5d1d7bfa', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 12:10:07', '2021-08-24 12:10:07', '2022-08-24 12:10:07'),
('273e0ec84f26d11e8101d0516185eafe6f2084a4a5ec0e286549777ada097653c591c9498e93b83c', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-12 18:11:53', '2021-09-12 18:11:53', '2022-09-12 18:11:53'),
('275c4804b83e09f497978667ae71013216ef1d7160b575b00de529789c0fe162e5d5416850c1fdf3', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 08:15:56', '2021-10-25 08:15:56', '2022-10-25 08:15:56'),
('27c313ef658682e95a51cefe310a404ed12ecf62092b955bb7d8e4392d92552418450c26ef4628f6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 08:19:27', '2021-11-11 08:19:27', '2022-11-11 08:19:27'),
('27cf4bae88aa2b87ca1bdd871fd20cf2611942f6d4567e7e39105ad05166ed4aa44dcafe17d82dec', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-08 05:33:32', '2021-08-08 05:33:32', '2022-08-08 05:33:32'),
('28159d5d4e7226f6646b46e2d27ae662fd78116732567afc30e8a9d029d1219712c56b55f5bf78d5', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-29 03:09:40', '2021-10-29 03:09:40', '2022-10-29 03:09:40'),
('2865340daba40a43b3ea6eafd2d627a4a8fc87bc807502d3dcaf11e02a555db8747354b7d800cd2c', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:37:41', '2021-11-30 01:37:41', '2022-11-30 01:37:41'),
('28693c52c575549a6becca53c552007e41b7a6af92d8bc602487c180b589dcd6bbe8b547a004a90a', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:37:32', '2021-08-22 14:37:32', '2022-08-22 14:37:32');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('287e657ffec84082d6095b37c55f72a4f4dca312477615ff6ae933229276a452cbd463820cdfe8a8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 21:40:45', '2021-09-13 21:40:45', '2022-09-13 21:40:45'),
('2883d959757453768a8e85c7f162a8c27d44ed1553b8f33a3b37c1aad30842d9ee7b0783c1ed991e', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-16 13:16:23', '2021-09-16 13:16:23', '2022-09-16 13:16:23'),
('28a584797683a89168ca8fb23022cbaa1631f3e098b5128efbd8349896f99c76fa1604860b64ec45', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-26 04:19:32', '2021-10-26 04:19:32', '2022-10-26 04:19:32'),
('28dfc35a3afa6d8055d9c4a0690765e7c368d4b7d3065f1278ebb6ace2953d15e1af1d0a474d9eab', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-03 16:12:58', '2021-11-03 16:12:58', '2022-11-03 16:12:58'),
('28efa80483132129cf3940482680bd5a603dc58f1bf9abbfa11b9179c560aa15b5f04ee77bffc5ce', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-23 10:16:25', '2021-08-23 10:16:25', '2022-08-23 10:16:25'),
('28f5c1795635f14fc79bf4583ec94de4bccf6653e254be4cf58c0c720f76f5998a81a1b2cccae030', 20, 1, 'Personal Access Token', '[]', 0, '2021-09-09 12:35:34', '2021-09-09 12:35:34', '2022-09-09 12:35:34'),
('290505bb2825895a77fc16aa60ec0afe08b4b85e00723c036851d2120dc993262fa685e811ce3054', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 18:58:28', '2021-09-02 18:58:28', '2022-09-02 18:58:28'),
('290cf8fb46e036ecd74b7bc8c699b568157870ec854ffbd90fafc135b21449f69e4bd9ed4e58589b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 11:48:46', '2021-08-14 11:48:46', '2022-08-14 11:48:46'),
('292051b066062eec10332016ab435509232ac278207174b7355397dac27a8ddceeb8c16afcb4df4a', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-08 19:11:28', '2021-08-08 19:11:28', '2022-08-08 19:11:28'),
('29216a7e447b749c6a4baa0dcf2a0824db008546c67df58d6d3d02931d1da943650d199a22b6db53', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 12:50:40', '2021-08-06 12:50:40', '2022-08-06 12:50:40'),
('29222c74c20436b3c18a8fba5bcad2c5d052374401abf4bdeb0e5970e20134f91b1e74ef8fe6d6ea', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-19 00:59:13', '2021-11-19 00:59:13', '2022-11-19 00:59:13'),
('29308cb93b80539da383c143ce34bb4cb34f0b71d51552fde75225a8b2dff1ead29077a042a5b0a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 19:54:08', '2021-09-01 19:54:08', '2022-09-01 19:54:08'),
('2937fc74b31c1d0739a68a8768b5ad10f562198b22d140987dcb68500d90d159dd1bf2b9711dce87', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-07 07:09:36', '2021-08-07 07:09:36', '2022-08-07 07:09:36'),
('295dcb508aaf54f277f60092f13975242de3b20be435f8c5c5ed136f9bc50665118ce76f39d0af3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 15:42:41', '2021-08-30 15:42:41', '2022-08-30 15:42:41'),
('29ef5d85e221b365c3564484366b35ba4ffc68c6d59963edb080cfda50114ecb32d9dfb1fd610a70', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-30 22:50:59', '2021-10-30 22:50:59', '2022-10-30 22:50:59'),
('29f253cd5388447e6718c59c784bd0d91233a31ec9d0960a44469ff3da87bdb38f3fa1ba6ce310bb', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 15:25:36', '2021-10-20 15:25:36', '2022-10-20 15:25:36'),
('2a1f267f43b4020cf39e5045efff13b96bf389405d0344675abe60d96cfb0b7862053cca23218561', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 05:26:24', '2021-09-03 05:26:24', '2022-09-03 05:26:24'),
('2a410d79704424a6107fe692cbbdac22c4e8f07d5199efef57f358dd21716feb84a78bf358a6c3fe', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-20 20:37:06', '2021-11-20 20:37:06', '2022-11-20 20:37:06'),
('2a427ba34434f4bdbb370332be008958d5dbc8c95c52d10e4dd1108da8b77f3a3049ee07b1778b35', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:52:34', '2021-10-29 18:52:34', '2022-10-29 18:52:34'),
('2a4710a9b9b9cab44858114fb5dd6d92918b1e113b91a2e65840ce732de6dd5f86bfe922bf5f374e', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-08 04:13:15', '2021-11-08 04:13:15', '2022-11-08 04:13:15'),
('2a64f2a46fc439f61d17bbbfc849f3a27e9d388654e6e7fe7e48f648ab0a46faeaa1c5e9e5cc7d5a', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:08:15', '2021-11-03 16:08:15', '2022-11-03 16:08:15'),
('2a9676fcaf77614035e897223c0438319b30caa03035ce65c71e8d8ba0ae6b298bc22470c7aa7453', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-08 12:42:02', '2021-08-08 12:42:02', '2022-08-08 12:42:02'),
('2a9e035bec0179938462481f70476f7f919541a5624fde53ec13486555e3100459991627d6e2ade0', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 13:15:06', '2021-10-28 13:15:06', '2022-10-28 13:15:06'),
('2b0a3f5aaa84a54510cdc12d07a43cfb5b82cfd78fef44f630437ba1dbd13350a668235a3a85c834', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-15 12:46:05', '2021-08-15 12:46:05', '2022-08-15 12:46:05'),
('2b133b5d6e975eb938203cdf2c1e62150378755cf9f3ff37e8cb6900cce07f20e906ff883247ae0b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 02:03:00', '2021-08-18 02:03:00', '2022-08-18 02:03:00'),
('2b880f40ed62c6e1e25563e1bdb1ea2f9e19f306ec4cd7d3aa277140f8cee7720ea73776c049396f', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 09:36:05', '2021-08-30 09:36:05', '2022-08-30 09:36:05'),
('2b9a68511c2f163d7314c03f9bcd2b1ad35f1c82191ef04eff9af35443db797f286587fbd643db9a', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-28 12:28:22', '2021-10-28 12:28:22', '2022-10-28 12:28:22'),
('2bda3a69b0a43800e75940074ef616a10b66010c98fcf8b040c0da34d12242f9d13646e25b971be8', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-31 14:06:05', '2021-08-31 14:06:05', '2022-08-31 14:06:05'),
('2becaaea8ca6455bbf94e6223f918beae0b173e8732da81ca69b8d859f3b7022086dac2cb9f93730', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-23 16:21:59', '2021-10-23 16:21:59', '2022-10-23 16:21:59'),
('2c1816ace2aa24815dca5c1277234749aa3b3b8c33d22c891ebeaafcaf969b965143cef2095ef15a', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:55:05', '2021-10-29 18:55:05', '2022-10-29 18:55:05'),
('2c4d4bfcdeffc774b46e5e3363ef3f68a3b678d0610cecbe08707bd1e66f29a7054ed34b8b25779a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-25 08:42:35', '2021-08-25 08:42:35', '2022-08-25 08:42:35'),
('2c5e335d7f7b9475d62ddc5252ee4617ab56849e3de7a3c00d3dd5997c9e4c333dfd5a7a416f31fa', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 10:31:07', '2021-08-31 10:31:07', '2022-08-31 10:31:07'),
('2c6ae293ae144e66b016f58466c40cd08e00a41805ee238fbe70ba40981b97ebde45e1d7db4a5ec3', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 19:53:14', '2021-11-24 19:53:14', '2022-11-24 19:53:14'),
('2cb8bf08c9f62fa58f08b68d8c117ae096309fd1feaef1240f94c8fa67fbbdf054c19045025f1319', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:55:02', '2021-10-29 18:55:02', '2022-10-29 18:55:02'),
('2cbdd3cee07708ea6ee3ac592d200a02777051cf3357554dbb5e5aeb113d5e5c4124143c67ec4ae8', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 19:56:46', '2021-10-14 19:56:46', '2022-10-14 19:56:46'),
('2cc6c42be56ba3eb110617f36f717f716b0b701ee4e597c2ea382cad35fc000057720349d8a07642', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-21 21:46:33', '2021-10-21 21:46:33', '2022-10-21 21:46:33'),
('2cc90a1af54b2cc710128ce210dc5b3784aed2bf1143ee69ae870da955adb92c235ea15d7c7fd691', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-13 03:37:25', '2021-10-13 03:37:25', '2022-10-13 03:37:25'),
('2cda38ee697d5f741af5847dd19f244e2ea48d9594c41664161702f7750d0f6684f44ffc6454de81', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-09 14:41:35', '2021-09-09 14:41:35', '2022-09-09 14:41:35'),
('2cf2de8fed8b9a3e116b092001ebe0dc756b10118ff7c90084fe583cff220d71f4f103574f105945', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-11 18:19:19', '2021-08-11 18:19:19', '2022-08-11 18:19:19'),
('2d59b6de2e62684072f71bd1a93853e54e2fcc81067df7ae4251e692bbaea208ccf17f60826ab443', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-18 12:39:00', '2021-08-18 12:39:00', '2022-08-18 12:39:00'),
('2db364b90e8156f7acbc21644aad8477405f04f114664493a43e0302ff9cc06f5448b065c37918bc', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-15 17:45:50', '2021-11-15 17:45:50', '2022-11-15 17:45:50'),
('2de6b43a1b3e6edad02b6ee4d722fd9b0e7555b1b558a7a3536df87f245610e230c8a5fd1e302413', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-23 12:36:13', '2021-08-23 12:36:13', '2022-08-23 12:36:13'),
('2de915a31c54f6f76208e1ccf316dcede883f977121f00eac6da47c979a1d30b8cdbd8aa4569b2f8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:36:24', '2021-11-25 12:36:24', '2022-11-25 12:36:24'),
('2dea3586deeca6954fb39a01532c58f9415eef36d675efba9be9475ca43646b890d40f4f185f6160', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 09:33:52', '2021-09-14 09:33:52', '2022-09-14 09:33:52'),
('2e06750b90433b802f66bb4e13793fac81cd47138e362e5c242ed05785a0fd7815b6b974ff05db35', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-03 19:28:39', '2021-11-03 19:28:39', '2022-11-03 19:28:39'),
('2e4cb42b4165e8450870713f4c4fa1dd9ecb72c882567dbb4198afc0af8fce7c9988b891bf6a4cae', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-23 11:03:06', '2021-11-23 11:03:06', '2022-11-23 11:03:06'),
('2e59fdc21a42b5f9568d58a47150235e4ff21807fa308d571ef7ca81176e2f26aedc002aaf57ff38', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 20:47:33', '2021-11-17 20:47:33', '2022-11-17 20:47:33'),
('2e86f7383a3f96e29943e3ce0642da83b3360a179a7c88872982ededcbb42037685b8bcb189bac76', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-29 14:10:55', '2021-11-29 14:10:55', '2022-11-29 14:10:55'),
('2ea1b92bd0ba31204b391ff9906bd19fd92e76b8fa2fe57f5a106d05da1cad95caa67d9e3a983d56', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:00:03', '2021-11-29 02:00:03', '2022-11-29 02:00:03'),
('2eb4178552efc9a34a0306fa9403be7d2702bd90b9270bc560454ffa5ed870d3582a781984eb818d', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-31 05:52:29', '2021-10-31 05:52:29', '2022-10-31 05:52:29'),
('2eb969db454044d64b899e24766a40b39fb0852ccabb6232367cc42a0c4414bf2a4b5b6148479af4', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 22:24:37', '2021-10-22 22:24:37', '2022-10-22 22:24:37'),
('2f13e19784f895a55c9d10baa350858173488ba6b859411306d159f3e85de06363442ec8912e6311', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-14 18:35:21', '2021-09-14 18:35:21', '2022-09-14 18:35:21'),
('2f429c275a34b2419710d3cfa2b00678ff9dc570f3ab839a14b05aec221bab6ec45fc06f06d60895', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 21:10:05', '2021-09-13 21:10:05', '2022-09-13 21:10:05'),
('2f69c09da00a82878d0cea6e31512f07208bc82b0859184e54d5aa8bdada67b090ffaf71a37ad903', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 12:30:00', '2021-09-17 12:30:00', '2022-09-17 12:30:00'),
('2f9a6a1d03b185ecaec77a439de5d0792c7bb5b04823ac17732ce8f725b1ea1cedbca64c04e7aa6a', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-13 00:37:43', '2021-08-13 00:37:43', '2022-08-13 00:37:43'),
('2fb191c9cf4e0f3353f648485fe1d832db2d17b2e1c23988efc0d3bb54c22651907cfa7675a8041b', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:52:07', '2021-08-25 04:52:07', '2022-08-25 04:52:07'),
('2fd1d3133a8da7185e85b57165248284f77250ad2a1d7c2ebea15edc7a3223f5b1ec5f4011bb8b9a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-09 17:17:19', '2021-08-09 17:17:19', '2022-08-09 17:17:19'),
('2fd8caf7d40f11b20271dd1b1cccd1a895b76918d9418a662ec0bd8b1db6f1bb02fda5d7fbe43793', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-23 16:09:29', '2021-10-23 16:09:29', '2022-10-23 16:09:29'),
('3008c2a01daa90d919164e31e2b473bbc7190ee6f09c9975dd0672220b6e5626803a321d50e90f80', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-03 12:35:59', '2021-11-03 12:35:59', '2022-11-03 12:35:59'),
('302ab4b871f3f30c1bb420a2f1baa345d977db6137e0d5aa3b6bb4d3c0e18433408ecbf88bbc3dbc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 07:30:14', '2021-11-30 07:30:14', '2022-11-30 07:30:14'),
('3063990c185f1a3cdfc66adbd219d9839060ad5ca2ca6d79146abf229dbef957b5d99c03ebbd6f7e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-30 15:41:28', '2021-08-30 15:41:28', '2022-08-30 15:41:28'),
('30b54b18b2dd317bb24db7f2a58d9fdbb9ab3c6bb663e46ee8da6f5041acc841cc775209c5719f3f', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 05:56:18', '2021-09-15 05:56:18', '2022-09-15 05:56:18'),
('30deb19765c1612ccc988b51d67481ed258ddf8dcdca313e83cb780795a21d584a612f128bd5ec8b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 13:42:46', '2021-08-10 13:42:46', '2022-08-10 13:42:46'),
('311850631a64be0c9ea31f10025f92f6cbdccff0ba8a43b843d02c280785459b89788cec7d281c8d', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-28 12:31:52', '2021-10-28 12:31:52', '2022-10-28 12:31:52'),
('314f8ed6eb1a65f9305a17252e9b081896fb943bbd29f8d2142e683b069754a404a495b73c0e5df8', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-27 06:45:07', '2021-08-27 06:45:07', '2022-08-27 06:45:07'),
('31615847c8dec5a90428b8692ab8346719fe5e07261d2a74b76602458b81e6491e224d8794eed510', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 03:19:34', '2021-12-01 03:19:34', '2022-12-01 03:19:34'),
('3161eb91cf70bbcbd1fdd89f9bc08166dae21dd26ceda00d00be2036ffb6be5930e46c1d266a9c75', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-21 16:32:37', '2021-08-21 16:32:37', '2022-08-21 16:32:37'),
('318fceaa37ce8e360117b5b1483e7e4546fc7278b54b67c87d6b215381a17bf275dc6053838d3c9f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 07:51:23', '2021-09-02 07:51:23', '2022-09-02 07:51:23'),
('318fd4edd854c9ca8099063ac8f750d4187fa74cbb3ee2ac5490015de518ca29c7248fe27b1baa04', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-19 18:17:32', '2021-11-19 18:17:32', '2022-11-19 18:17:32'),
('3190228ebe37012ab1f9b25663080e6577305c8d0f3811f3e81c3518d8f1c7184216d531e5d49811', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:34:05', '2021-10-24 05:34:05', '2022-10-24 05:34:05'),
('31a75a1ad653d79d34689bce8b6aa2b69a461b7b89aa093500b31c2be5c5217ef3b5802d5ced17e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 13:47:04', '2021-08-27 13:47:04', '2022-08-27 13:47:04'),
('31b5b66e25ce4352c26404bd87020335499808f045d05a0faf9357d13b3e353d7ca1215ff45f5bb3', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-11 18:15:21', '2021-08-11 18:15:21', '2022-08-11 18:15:21'),
('31b842846dea1a1b4f9e6d8e177bcda7e007cc34609f9ddf29ccfcbb51d0360b9b86e3e829e285c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 06:23:07', '2021-11-27 06:23:07', '2022-11-27 06:23:07'),
('31ef703abf9acc3a1d9aaa0fd1ab630993a7e15899ed1fbc74e9fb8fe06f39c88504be0d230cda8f', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-18 07:22:16', '2021-09-18 07:22:16', '2022-09-18 07:22:16'),
('322876b9dda80aa181fe1e7f96d900d29bb4c1d01c6741610071a7d142cac158573c85a4d2919d39', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-22 07:17:04', '2021-11-22 07:17:04', '2022-11-22 07:17:04'),
('32598a77da31b75f45fd49a4240e035f6b87eeb0589f5b8c1f2f590b2d92630ff583c76bfd526428', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-12 01:34:12', '2021-05-12 01:34:12', '2022-05-12 07:34:12'),
('325f6d4859a5be9aaac13bdd9e3ad0f3f200ed358a833a938f958a39e59f58e3ba49ea4106ed12cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-12 09:19:47', '2021-09-12 09:19:47', '2022-09-12 09:19:47'),
('3267ad6fd06a473c75db3f583e2f5dcf14b58a1b3a04d8874663c6c77575f44fe6645b87cfc6c126', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 06:59:40', '2021-11-17 06:59:40', '2022-11-17 06:59:40'),
('328210ef5e45c7da448777bca217703868ebb7ad1bd6cc319d5465e3c459cf07aa5ea498dd3a89ad', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-31 07:22:07', '2021-08-31 07:22:07', '2022-08-31 07:22:07'),
('32914fdf7c56de6d0df633da0cbed1755dc1be06da05028c17a5517fc4f5f226b55236f3d07713d6', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-17 21:34:54', '2021-08-17 21:34:54', '2022-08-17 21:34:54'),
('32926abec56789879669cca5acc74146bdf03451ac1898e84cf9de962f21a2071c18cab7b0309465', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-09 11:23:52', '2021-08-09 11:23:52', '2022-08-09 11:23:52'),
('32e74783e1322fba288a8ea8516d85fd76f85a8be454429855ef7b7a1f7b1e85efca4b6f921c2093', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 02:42:52', '2021-11-12 02:42:52', '2022-11-12 02:42:52'),
('330e3d9f6822c48764f13884badb670964cd6af0bf76924e6ee2d2d9570cc89726f0530454c6a967', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 12:31:20', '2021-09-09 12:31:20', '2022-09-09 12:31:20'),
('333db66c469584524d509a237aa0df68b8a00a1ff061efb00719c15d7eb911d6369a9538262a89f0', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 11:02:24', '2021-09-01 11:02:24', '2022-09-01 11:02:24'),
('33845b0e8516070eb9cc55243336eb9c5308d3a717a5748120028e2bdc81836542a5be78612d65eb', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-13 15:50:44', '2021-09-13 15:50:44', '2022-09-13 15:50:44'),
('339b76812138003b2f87f7a1ff31563c472f8d7f9428cc02d020f8d524335d9dac387d4f8b0b6eb6', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 04:17:00', '2021-08-10 04:17:00', '2022-08-10 04:17:00'),
('33efbe175ca0889ffb3dc49d2c208f7c404c908fb438dc05592b351aae54678a3c8b8be54b9216c5', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 15:52:49', '2021-09-02 15:52:49', '2022-09-02 15:52:49'),
('33f68303fbf54395febdab565c043122b58842c1d2cd41df688dc249bebf1b6664a22c930b0e9106', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-08 09:22:28', '2021-09-08 09:22:28', '2022-09-08 09:22:28'),
('340f6f9f27a1b57ce07a4bc1963ad22d1ac3f5b583eb017cb6b01602393721057fd34577e7a6ecf5', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-31 15:55:21', '2021-08-31 15:55:21', '2022-08-31 15:55:21'),
('340f74c96a5758f924cd574c647ae48ed20fdd7ebb49987488dd6dfca46b5efd504dee1ee1a3ffd7', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-18 17:59:14', '2021-08-18 17:59:14', '2022-08-18 17:59:14'),
('344ed3715072cd54cf94e04caaf00aed3d7edcb46ac6560d5d7660dd8cd392d6b7685f58ca46f02c', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 14:19:14', '2021-09-01 14:19:14', '2022-09-01 14:19:14'),
('347d85219f0df8a7663c3bde1059c5691c1c22c95fe10897ed77b71100edfe5e1ba183ed9e2557fd', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-13 13:19:29', '2021-09-13 13:19:29', '2022-09-13 13:19:29'),
('34bd17b07adfe209aae075efdec9c38a534a990378ebc7926aef60106a13754a99bbd97acdbf75ca', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-15 17:58:16', '2021-10-15 17:58:16', '2022-10-15 17:58:16'),
('34cf9cc823919815621c8cb9ca3bfcd2c69834af1b548a5f8828e6b54fd267c38f21b6ec03c6af64', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 06:00:06', '2021-11-30 06:00:06', '2022-11-30 06:00:06'),
('34cfdf9f075c44d72256bbe167b6f72c6ca0663460bfb8dbccdde87b1c68614919e7e44077659e22', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:40:33', '2021-10-22 08:40:33', '2022-10-22 08:40:33'),
('34e65f481fe58a8b79ac2bab2d089e3431c4c46c0eb02cd836be0712120dccedba2837c77a2a4ef4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-18 07:46:26', '2021-08-18 07:46:26', '2022-08-18 07:46:26'),
('34f211e4c9ede15ec9d9da0e58def4475e3285d6b2ead7da4186b3044657122bf17df0ae1acd536d', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-09 14:06:27', '2021-09-09 14:06:27', '2022-09-09 14:06:27'),
('351482efd2346ecfced35170ea590c3186e2b17cea815cd49094f105953b7d626f8c4f20fc2012db', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-02 03:14:12', '2021-09-02 03:14:12', '2022-09-02 03:14:12'),
('351bef6b738725f5bfe16ab412a8343debee8febb0e55c67c7b585cb71039614de2968e53040c5a8', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-23 20:40:57', '2021-08-23 20:40:57', '2022-08-23 20:40:57'),
('352feed2972fd2494c34a884bdaf8db4a1e4740c06faa2a6bb6ba7498ac9a70f130f4a8d5ef72715', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-26 22:12:48', '2021-10-26 22:12:48', '2022-10-26 22:12:48'),
('354a829557aa17003d700d6c060f0ab7119c08874b53ff8b1939d2075e59b96ebdaa210e76452194', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 03:59:12', '2021-11-24 03:59:12', '2022-11-24 03:59:12'),
('355c4070e5f887b2c058772d3c90ac7dac3bb96421f69a54f5ba7b36762384064a8f7f77998e3aa6', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 14:22:27', '2021-08-13 14:22:27', '2022-08-13 14:22:27'),
('3574c35205f6db3999ed5a861f6659b316a21baab4d487642498f237fa26c9cae658bb29d3090801', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-11 14:09:12', '2021-09-11 14:09:12', '2022-09-11 14:09:12'),
('357d4133754cc67d98fc359b30ac328c17a9e68d80bfc4ffd9ab5ea45df425a8cc4a02a5e98cf601', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 12:29:11', '2021-08-13 12:29:11', '2022-08-13 12:29:11'),
('35866cdb42b94c5da9f268ef066f0edaab122d779b45671c4a1127b2d9d12da92026a8bd02de2769', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-17 09:11:25', '2021-09-17 09:11:25', '2022-09-17 09:11:25'),
('35935641ba3f1016bc2d5d38951ed7c5a5d80904832322dbc2c1d1836751f66e55c37bcc298f5b52', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:15:41', '2021-08-03 06:15:41', '2022-08-03 12:15:41'),
('35a80035960c6f4c42c9a621c794e88d7cd317441eea88ffb591dfd0edba7081193b13b4dd8fbbdc', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:28:34', '2021-10-13 16:28:34', '2022-10-13 16:28:34'),
('35f4ae720780367a187d5aa3fbc30fcbbf83ffa0daef6cc3ab66310c522c63432fc352449538fb9a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 17:46:17', '2021-08-06 17:46:17', '2022-08-06 17:46:17'),
('35fc0a067e80adf7fe9a39d4ce10d12167292fc9f59c82ff53f3aed3aa1afb594af103e8b76fed3c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 18:39:00', '2021-08-31 18:39:00', '2022-08-31 18:39:00'),
('35fca65fcdbedc411c2058cb6ac9c00ccd5d886b861cdda5d1cacb3de1d3386b135b1cd4c3d01f52', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 18:47:39', '2021-09-11 18:47:39', '2022-09-11 18:47:39'),
('360e3c3b4706ed20ae5ea164d2047392eb1a02f1bdb1014cba311c420feea04f3695cb184bd3d905', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 18:34:48', '2021-11-07 18:34:48', '2022-11-07 18:34:48'),
('3619348ea8f240d059e8576fe35382cab2d1b6e9a455c98e84e85740eb0ce50df30053e3a0642827', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 18:29:12', '2021-09-15 18:29:12', '2022-09-15 18:29:12'),
('36a4dc86656734e287a9aa29ba809ef4c20639961bd0e4ae2d25553f0ca08e7e4fef0449a927215e', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 09:00:04', '2021-10-20 09:00:04', '2022-10-20 09:00:04'),
('36c7b6e8c8420bb4cda73521146632869fe833fb5ce7934005d6f95d0c52fa1633ec82ecfbcf3bb9', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-13 00:48:58', '2021-08-13 00:48:58', '2022-08-13 00:48:58'),
('36cf13d566ec5ebfd343960c2abf4d595d4f4fd8e9429eed2bb756d594243da18ba2c71a8856c7f5', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-29 22:49:02', '2021-10-29 22:49:02', '2022-10-29 22:49:02'),
('36dc1f14bfa0fdf1bb3ed7fee6b6f578cd296c44c43a71c137f5888b5bee90fef79396511db5296e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 15:18:49', '2021-08-16 15:18:49', '2022-08-16 15:18:49'),
('36e8468fb961800c5d351c81db9da7c4779d5636fdd67d2a8829dd40a9ca7841325797b730b7d6db', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 10:25:48', '2021-08-16 10:25:48', '2022-08-16 10:25:48'),
('370c9c51e471a56b6b69288abb1518c3e8848204747b31132e00f65bd02e96720510b12575a8ea73', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-08 04:16:06', '2021-11-08 04:16:06', '2022-11-08 04:16:06'),
('374587b77913b6e0bb27adc2837785e903f8d20968c6af57b877e3bbb9ff3124ef3d688cb95939b9', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-22 05:33:28', '2021-11-22 05:33:28', '2022-11-22 05:33:28'),
('37afcb8cbbbb3e4fa7897eb85592f3ad92e3acd935522bb621c52b83bd2a1841b989f8cc754f4c47', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-24 11:20:46', '2021-11-24 11:20:46', '2022-11-24 11:20:46'),
('37becbe5c424ac6a49f9b30d234ee1f735fff9ce0c441d4cbc21b85ba09c8b72b01e2b8e7fca506f', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-23 23:29:24', '2021-08-23 23:29:24', '2022-08-23 23:29:24'),
('37d772f3df5d48c3f4b6b7729c99a1024a789ae340db2bb0c64ba531a89db1bef1d3a9ef1184ee3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 08:36:51', '2021-10-14 08:36:51', '2022-10-14 08:36:51'),
('37e67bb20b091fd03ac0be1f255b5710a7f72469f35b8922f3d1822bef0eae99ea043babd2cb4e8e', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 20:54:03', '2021-09-11 20:54:03', '2022-09-11 20:54:03'),
('3813f3c81ab3e61457cb062d13fecf6b1ed077f914bb673325ad1d5b853e95089446995a6ad0c0e7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:36:55', '2021-10-25 12:36:55', '2022-10-25 12:36:55'),
('3834355bc01a4eee8f7e769e8fa9b2281fb44b8c22a1575952d3f517c8cafd66cc99bac426ccca78', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-25 00:00:11', '2021-05-25 00:00:11', '2022-05-25 06:00:11'),
('384c87218b459c063a1a1dba4d5fbcf26a7d3c0b928c86bf683a71f4e8624332d4d0e6534b4b6162', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-21 10:44:46', '2021-09-21 10:44:46', '2022-09-21 16:44:46'),
('38a34a8815260fe93345c1f3ef7446b5b84807e8817122d98d7747d2b6d0273833a2d906da88d5da', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 03:50:20', '2021-12-04 03:50:20', '2022-12-04 09:50:20'),
('38cf78b5ca3d6813ee08e005d1e641f9ad37321a090706939437d881a98e4d3d2ef666910be7573c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 07:09:51', '2021-11-24 07:09:51', '2022-11-24 07:09:51'),
('38e1d589cdd3cbe0e48c17bfa6ea82eeccbf1bf1aea2f247fbe9b5bdce376c7df4a84f7556d71ef7', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-07 18:38:11', '2021-09-07 18:38:11', '2022-09-07 18:38:11'),
('3901b65fe42045402ee6fe154db3d2043187670735cfae38f53ac5527d66b64b46bf14cdf907f690', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 13:56:31', '2021-09-04 13:56:31', '2022-09-04 13:56:31'),
('390cbf2871f5a0d14bea42d0ca8751665ed6c85584485fbf87fa443f1c3f53fb38166fb929f237f9', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-01 09:47:59', '2021-12-01 09:47:59', '2022-12-01 09:47:59'),
('390f21580b6da8744d60008b1d410513ebbe2240e2822e1e825cf948f09ea6b43f344afb8296a575', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 08:52:10', '2021-08-10 08:52:10', '2022-08-10 08:52:10'),
('3914bb7c3f6085f8f19fad62ca71cff152d4d3bd5d966eac31c44df6985b0b117b7868b537932150', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-16 08:39:40', '2021-10-16 08:39:40', '2022-10-16 08:39:40'),
('39471c85c57b67921ab1b2964d71e4044569bfa91b1b9bad8d8e50c37f48665321a643a856ee2c0e', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-07 18:11:25', '2021-09-07 18:11:25', '2022-09-07 18:11:25'),
('398bde23fa6cbd13407bf15f9bc266ffdfda6a53fecc75e5d0a7134553d5cbc764af40ecb2df71d6', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 15:21:54', '2021-09-14 15:21:54', '2022-09-14 15:21:54'),
('39c1be385d713d7a3c038cf704e3d958151e375385fe4763ef088a81cbdf222794a8a6223b23dc31', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-10 10:32:15', '2021-11-10 10:32:15', '2022-11-10 10:32:15'),
('39d46c2b1286201ec6c1b4bf01d97c79a8394fcb30a25cca57780fb781638cd169609c6d6f1a6f77', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-08 09:17:17', '2021-09-08 09:17:17', '2022-09-08 09:17:17'),
('39f0d73c1c124da2e4219bd143eece12992aa7684d98cef62116e228be71ec6c2080ef218a362856', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-02 19:46:45', '2021-09-02 19:46:45', '2022-09-02 19:46:45'),
('39f4a91559fa5744b8621bd43ad157994e586a661199edb9be69959dd36c5ab9547d7f60e7ede660', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-27 12:27:25', '2021-11-27 12:27:25', '2022-11-27 12:27:25'),
('3a0575cb2327c8a51c10431e1bcbf15323f6636c81a3855a0b15110f0c0298b1b193d332db9aa4e5', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 22:57:12', '2021-09-07 22:57:12', '2022-09-07 22:57:12'),
('3a0ba652fa0d69ef9d9c6906ff3ed3cc1f753ef0e70329a231b37ca4373a462a84bde0826bca4ade', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-24 07:52:46', '2021-11-24 07:52:46', '2022-11-24 07:52:46'),
('3a299c27457517a32586f053ee18ff0cad51b4e37c9f675732bf17a81ce6006991bdfd0318ff7e50', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-18 03:39:47', '2021-09-18 03:39:47', '2022-09-18 03:39:47'),
('3a63d795da50a97321fcdd5a19db98a5af796b2d4c6ab34acc387e9c05f6395ed25c26864a2776a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 06:52:55', '2021-11-18 06:52:55', '2022-11-18 06:52:55'),
('3a74c81be3b7f0a6a76fecab73c7eb5a67665dbf2c8a189f078a4bb521190a4a0db63f5bf4118e8d', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-13 17:07:50', '2021-09-13 17:07:50', '2022-09-13 17:07:50'),
('3a9b29f8f037c42c665fa045ed048d33b2e9c555fe47b7e4950731f65cc349b676d956ac5d858a0f', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-11 05:04:19', '2021-10-11 05:04:19', '2022-10-11 11:04:19'),
('3ab1427f6afd9daab95586553323084b31c9e3fbb27389f07cb887a3d987565baf4ede79a5bd959d', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-29 03:51:05', '2021-11-29 03:51:05', '2022-11-29 03:51:05'),
('3ad24a1795be76b1f6f6515b11253a2751da2b2d0647ca55c8e73adc52a867ab882d53decdfaae39', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-13 05:31:09', '2021-09-13 05:31:09', '2022-09-13 05:31:09'),
('3adb12db1c8f26795768311289989c2cd15894ba5df921339dab724705a3ec161e0fb14a276ab742', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-08 18:39:30', '2021-09-08 18:39:30', '2022-09-08 18:39:30'),
('3ade0790aae35fe5eb00eb226f3c4dd50d877bfa4228b4c81608a17c09d4b28410a916fe6bad03bc', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 04:08:17', '2021-10-25 04:08:17', '2022-10-25 04:08:17'),
('3b0f4a24ec209c619f8818a1532feaba429ddfaeb3e5fec55ae84e8cb425a2e4704dfd105448fa87', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 04:08:34', '2021-10-25 04:08:34', '2022-10-25 04:08:34'),
('3b18b3feaf16b09830de2955cdf1bcff87115bbb478ac9778bcb4a770ddfdda66442497784df09eb', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:48:39', '2021-08-25 04:48:39', '2022-08-25 04:48:39'),
('3b2440edb1d31492b43edcbc91336a9098f8e41afba1d1392a5785d083948f13fd1ed0f4b4ac6b29', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-12 07:39:08', '2021-08-12 07:39:08', '2022-08-12 07:39:08'),
('3b40bb580dcb9bd0390757146d10603e0dfaf5da50360c39c9f4a461ae72d3b87714cb47cad51dd1', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:48:25', '2021-08-25 04:48:25', '2022-08-25 04:48:25'),
('3bc78dc597e9055d7fed8d2caa04d87bb939c68695c31d51d01184d558c5fcc6acdd0d7cef8d310f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 20:47:56', '2021-09-15 20:47:56', '2022-09-15 20:47:56'),
('3c31c7b89d9b1947b675b5d8365f38a14693171253b9e82ecb825ad5067ef2015015ea380c75e0d3', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 09:39:01', '2021-10-21 09:39:01', '2022-10-21 09:39:01'),
('3c3ac5c53f6ffa6460aeae93d3c2937ffed3a78a4781e129a3eb04826b5289a6425ff0f7a56be8cf', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-15 13:48:28', '2021-09-15 13:48:28', '2022-09-15 13:48:28'),
('3c4edc196049fe46d5ec94b893a6892030f16b1868a7dd698fd22325cd0915eec56f009b0028c6ef', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 14:18:19', '2021-09-01 14:18:19', '2022-09-01 14:18:19'),
('3c593329f227c142aa67dae1a269ce243e0a7fb0b5d15226edfbbb5f71c4b677cf1d929972e4bcc6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-20 20:40:29', '2021-11-20 20:40:29', '2022-11-20 20:40:29'),
('3d12496e514a13c5a5e0c63902f9735b27dceb26379660c79bd66a4a47b54bf1888bc6d901de8c5a', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 19:58:53', '2021-09-11 19:58:53', '2022-09-11 19:58:53'),
('3d19f1390430d7479248e619d50ea029b31aaf694cb4973a8955d84e87e0e92f0448ea086ff41425', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-09 13:34:29', '2021-08-09 13:34:29', '2022-08-09 13:34:29'),
('3d8337eaaa227beabfa1bd56fad9e5f05cbe913cadfa58719f486e6f1bf97b60dd51fec46294d7a7', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-09 11:44:44', '2021-09-09 11:44:44', '2022-09-09 11:44:44'),
('3d8e73a8655cc43e658f84f6414e96d2da7183dc27b62ea9049123d4bf9e3da505d66cddb690be2a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 08:01:09', '2021-11-25 08:01:09', '2022-11-25 08:01:09'),
('3d97c478482aec0e90354eee512b67f51230be8312f337b3efd13dc85bcc435d266c7cae14b1336b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 20:32:08', '2021-11-10 20:32:08', '2022-11-10 20:32:08'),
('3d9ee6a32df0bd89ac0fa70b0735b290758bec1a3806a243c27ae7acb43c5a7f8d01e6314ba978b0', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 21:14:57', '2021-08-17 21:14:57', '2022-08-17 21:14:57'),
('3da60a998c4cf851f40fe69ed69e481c8f7192017b2f0d0d511af98a49c67006adede7fe8bbeebeb', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-12 04:04:55', '2021-09-12 04:04:55', '2022-09-12 04:04:55'),
('3db3b83b9d20a5e9291d1daaab584adccc86b846088328ce87b0c8411886a22ba3b71401e70d68c6', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 07:34:16', '2021-09-18 07:34:16', '2022-09-18 07:34:16'),
('3dd70577a53d364cd2f1bc6fc8089969406cd62805191e3567386c0daafdf544bf5740c8e68fa74a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 06:51:10', '2021-11-24 06:51:10', '2022-11-24 06:51:10'),
('3de70b828e990c41d0235a2558d011089c69cdff579fc9f88239dedd529fd20e8dc06fbbae926c2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 18:59:37', '2021-09-15 18:59:37', '2022-09-15 18:59:37'),
('3dedbaa373a26c49c7dee17358cefe346b9c0bef6996e67fa9da8f3acfc8f164b754a4d26954f2eb', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-20 23:10:03', '2021-11-20 23:10:03', '2022-11-20 23:10:03'),
('3dee6ca587fc5fe45166516ec179a335ca97e7f1dee54e3105d4b799a9a90a467cb193c3ab1d59a3', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 05:30:50', '2021-09-04 05:30:50', '2022-09-04 05:30:50'),
('3e122c2d30a9434f53f85e64e259116d747af0c5d29e61168e9f6d56b957642ad7c0f3339a600a8a', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-28 13:57:22', '2021-11-28 13:57:22', '2022-11-28 13:57:22'),
('3e138c35f805175a9b6baf9aea2b4e53b872e009bedb0faf1a36ba8f2665f0c57e1f6a09fa3351d9', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-16 16:44:46', '2021-08-16 16:44:46', '2022-08-16 16:44:46'),
('3e376a7fcc0502b76cfdc35d51e7510c1b55c04118fa968c9278a9d987ded518a03df92cbebcb3ab', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 10:04:37', '2021-10-13 10:04:37', '2022-10-13 10:04:37'),
('3e4d0cf8f77c53f8f0655e81bc19dd6a1b2e1ac4938654989857b17d7a73778a532ec8480949468a', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-02 17:09:00', '2021-11-02 17:09:00', '2022-11-02 17:09:00'),
('3e50b60c9ca90be64470e381e4f2accc65e51fbbec861509dbd43ccc4ff04650b75d53373f6aad50', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-11 20:54:36', '2021-09-11 20:54:36', '2022-09-11 20:54:36'),
('3eb70828566ae1d24e72c469589b77fb24f64520ea23f413c951c3e0a00d5dfcb096c42f9de8ee7c', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-17 02:10:37', '2021-08-17 02:10:37', '2022-08-17 02:10:37'),
('3f30e35ad011dd0af043b105e0f8a6008a71e98c5509be2379d5a03a657116f82457cba9543bcfa9', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:01:08', '2021-11-29 02:01:08', '2022-11-29 02:01:08'),
('3f5428123a152f7ecc82961dda9041fdfc0324a2b515b9ad9d98b710084da4fbf3e6d467ca5532cd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 10:35:35', '2021-08-23 10:35:35', '2022-08-23 10:35:35'),
('3f90cfdd79b64259c260b1ff3f565f5f38605b68de49e6123d02df181e904bf20ec924051bc8319d', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-28 01:39:38', '2021-11-28 01:39:38', '2022-11-28 01:39:38'),
('3fa0caf0cdd9fedec33e2d121b68fa8850f25e3376f33d392846c679beddce0c4f65fdf989dd370d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-23 10:16:10', '2021-08-23 10:16:10', '2022-08-23 10:16:10'),
('3fd4f6f6a84bac125410ed693dcabff9d84ce8a9129547d25bce23950d700ab08e5044b6c2643034', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-14 19:35:19', '2021-11-14 19:35:19', '2022-11-14 19:35:19'),
('3ff2ad9f6160042e9c908d386eccf493d16478b2500d369619e7b460c52768c792d82f52444d7bef', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-17 12:06:14', '2021-09-17 12:06:14', '2022-09-17 12:06:14'),
('4001aa1f5bb9a056b0fc079b18b320d9290f53b9a5eedd7be2d8da33917ac0b842c7733a1a44003d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 13:07:36', '2021-10-12 13:07:36', '2022-10-12 13:07:36'),
('400ad74e996e335acae20dd4c85ad0071c27b1c956675de7b68c14033f1b0b01f227180ce5de9b37', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-04 14:35:17', '2021-11-04 14:35:17', '2022-11-04 14:35:17'),
('401a8183ba8843c1ccfd7b216d04e3fe7369c9c419caad664dd6b166304535c90c3fd630c3ff2354', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 09:52:37', '2021-08-23 09:52:37', '2022-08-23 09:52:37'),
('4036b319e7056b812fbdcecc97e07f1493934c8a2a71d632059c694f93c90d1c2ae869a3ed077d67', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-15 09:38:15', '2021-11-15 09:38:15', '2022-11-15 09:38:15'),
('403bf4c0d4eb7c34f21fae90a3b3cb40bb66e223d3bbc5c805b53c8957637ee3d09a194b6f534da1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-08 15:15:52', '2021-08-08 15:15:52', '2022-08-08 15:15:52'),
('404e6209d1b316cf0631d3bc050bfcb077932b95f06c9e1781e784f39928e10c8e21a4559298dea4', 22, 1, 'Personal Access Token', '[]', 0, '2021-12-01 01:28:43', '2021-12-01 01:28:43', '2022-12-01 01:28:43'),
('4087d097471a03f301cecc416daa757fdb019c2056b7d7dd3f9cf195300f58f494b9ec1f09a63c30', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 10:20:34', '2021-08-31 10:20:34', '2022-08-31 10:20:34'),
('40932d17a9cd20f55fadec5e96a456352b3b42f767845f24383d81b80cb6a117c7abac9e45da36cd', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:08:03', '2021-08-10 07:08:03', '2022-08-10 07:08:03'),
('40ddc7ef763cb9f4807a43fead975d330d17539caea51168e25d1896b8e00feb8b2e84109ff3ce4d', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 06:47:47', '2021-11-25 06:47:47', '2022-11-25 06:47:47'),
('40f0e0b079b9ef1e328482e2b1210fb017829fe59c7d35b63ad986b7788ae2c1506fe0e250ccebbe', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 04:08:09', '2021-10-25 04:08:09', '2022-10-25 04:08:09'),
('410f953ceb39420f0b95b83834ad41d09caff68c8cc08f5fa3a2f03e6ca8317bf21dd24bfcf02da4', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-11 09:31:25', '2021-11-11 09:31:25', '2022-11-11 09:31:25'),
('411dd7b3bdad7adf74c24033882b2725184c22029642718e0ac6b7e3271a2d7b2a4b08bfc07f5116', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:06:30', '2021-11-03 21:06:30', '2022-11-03 21:06:30'),
('412cc7a4ad71bf1a2d4d1f1f547366a3c1303ad6a91540a7ca8c10c2ecb98989cfc79251715c62f1', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-18 19:19:03', '2021-10-18 19:19:03', '2022-10-18 19:19:03'),
('412fe15f2267d5e88502a25e5bd7cbfed4138e569bfbf01fe7673a6a5feafb4fcadcdeea763e9d8b', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-14 20:05:30', '2021-09-14 20:05:30', '2022-09-14 20:05:30'),
('4143af38c4c73cff6a96d9b433918b095938ac8acf0cee38287aea7cee6f39ef1aeb2310e09cb95d', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-14 08:17:44', '2021-10-14 08:17:44', '2022-10-14 08:17:44'),
('415a5568728c71e98ad5b7c96b29c26c46909f6b244aa3e0a0c9ec3c9108709b10a68b0602cd3f65', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-10 13:37:05', '2021-11-10 13:37:05', '2022-11-10 13:37:05'),
('4160ecf174d6ac2a9ccfbafbeb6ce20a06640a33fe6f439649fbeda49f3593ceed531297657c8659', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:24:28', '2021-08-10 16:24:28', '2022-08-10 16:24:28'),
('41637b9cb6295a04b79d5f31c85c2d9030045a1cb6482628c465e5892f48bf06814af7ae12b7e1ee', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 16:10:55', '2021-09-09 16:10:55', '2022-09-09 16:10:55'),
('4178577903f142cd73b608b9df3d09e4300cccfbbf0faa412af03f4c0aea82e8ced09cad6220df7b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 05:42:03', '2021-11-25 05:42:03', '2022-11-25 05:42:03'),
('418bfd0e089fa8d70c33368325e9968a855269bf674fa007641affa8a2da64deba63f9e976b412d4', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:09:03', '2021-10-22 08:09:03', '2022-10-22 08:09:03'),
('41be3c4d388f28bba59b5f36ac37531b9f760a01febf00ec36bcb725939ecf952a05b5c63ad73764', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 19:06:12', '2021-09-13 19:06:12', '2022-09-13 19:06:12'),
('41c8150a799c97c6cac1d84192cf9408bd0566a800479fe5c022572eab175143455e000bfd01ea97', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-23 20:37:01', '2021-08-23 20:37:01', '2022-08-23 20:37:01'),
('41c9188dae027f4d577508b3e86de6b5208bcc9cc88584d1fffd33c877052dd934503e3f4350c0e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 13:14:16', '2021-09-05 13:14:16', '2022-09-05 13:14:16'),
('41dc68bbdcbe455bc89841fdba3f42ba66da8e8aed450df7ed730ab61ac484b3ed01615a42a10870', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 07:53:57', '2021-10-25 07:53:57', '2022-10-25 07:53:57'),
('41fda264f9be2b2844da0eaeb77e026451c32ec7e1ad7ffade141485f82068cf5143740a619f7497', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-07 13:33:42', '2021-11-07 13:33:42', '2022-11-07 13:33:42'),
('420efd5637dec1cc61bac42137dc099333cfa0b35c0ba38ee0d993b6bea1003a5c82893afead7359', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-06 15:23:06', '2021-09-06 15:23:06', '2022-09-06 15:23:06'),
('4273ba448a5e2403203c610142ce6ff2db5ef0e09a87ee92b05e23cc7efb324c12ac1f48f87c8bc7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-16 21:57:24', '2021-10-16 21:57:24', '2022-10-16 21:57:24'),
('4282052f7dd850af47043d7f95a48c00fc4fe0a424001cdbd12d1331d2cf5380694f4594fe9133ba', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-24 00:30:15', '2021-06-24 00:30:15', '2022-06-24 06:30:15'),
('42a936637759547ac5da7a8bc25c5177567de71704fd19ec63047a493d214f94a7bc655dd6cfe078', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 09:20:14', '2021-10-17 09:20:14', '2022-10-17 09:20:14'),
('42aba06538b7c1f0a29258a4bf5321a0f69b63c781906423f62cd85fed18d227f7dcc7645d4cf9a6', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-09 16:09:28', '2021-09-09 16:09:28', '2022-09-09 16:09:28'),
('4346c91f3ddc00340fd6b920fe9f903c2c6b3cdc561dbf05724d881887ac5d873aeff565eb564ef9', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-16 15:17:26', '2021-08-16 15:17:26', '2022-08-16 15:17:26'),
('4382d7d671dede8e60ca5d261473af29627be17d27942d9bd8c5c2efadf00f1738da3fbd1007b260', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-06 10:23:35', '2021-11-06 10:23:35', '2022-11-06 10:23:35'),
('43852c492835699dce840188c8ba5e6167a56ce4c827005901a88e025ef3166027f5f80fab23f8c9', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:24:57', '2021-08-10 16:24:57', '2022-08-10 16:24:57'),
('438cc96aa4fd33dee3eba193f6233c9258b5882082f04efa2cac29f255ffbe911d899868c3990d56', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 01:49:23', '2021-11-13 01:49:23', '2022-11-13 01:49:23'),
('43a027668c28bd61c742a71e2ac64ea39918f279ea5e73517feb0f9ba077aa791d5878b222834276', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-08 15:36:46', '2021-09-08 15:36:46', '2022-09-08 15:36:46'),
('43b8dd81cffa9f5832864900c5ce234b6dd03de646290077cf38666e115d1c341edc350158a7457c', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-05 14:48:26', '2021-09-05 14:48:26', '2022-09-05 14:48:26'),
('43c43b456c0c26cf377ab1d6e33da36a9fbd35fe972cae269ce7fd6df1f57412cba25fefe94c2cce', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-29 19:59:54', '2021-11-29 19:59:54', '2022-11-29 19:59:54'),
('43c871e20509c9d5ad83bd4d8af8a283cc8e7ddd249ecb3c15a827f6936fb8ae8340ca9e3ba36e11', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 04:11:20', '2021-11-30 04:11:20', '2022-11-30 04:11:20'),
('43da1be2ebb89d48a00fabe140534a4433609c18a424c3d618d0c6e484f65782fda2c2a3907b6058', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-19 04:25:15', '2021-11-19 04:25:15', '2022-11-19 04:25:15'),
('43ecb9623e0073d67d27076ff4b3378d82af800122cfd26e4e9b870ab841117fa7174f43552c7af5', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-22 14:41:09', '2021-11-22 14:41:09', '2022-11-22 14:41:09'),
('4445badc73db6f82a3e01a0074e871ecf2d8ed97fe7430e73cf43c4cc8b882883b13285849f21e4b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 20:06:22', '2021-08-24 20:06:22', '2022-08-24 20:06:22'),
('44867b9f71c5ce721e6b24669f6edb6d485dbde2de023d00205f1592f86f6cab992f9da0e3aa870f', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-06 20:06:22', '2021-08-06 20:06:22', '2022-08-06 20:06:22'),
('449833209377538a40c0815f64b585809ba224241bf49e237d515992778eb955d2c183c0a84df178', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-10 16:24:44', '2021-08-10 16:24:44', '2022-08-10 16:24:44'),
('449e503b2e82e3b69ed855ed0336d13462561cbfea40085f1c134d019c63dafaebb889b9ef0744e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 17:09:55', '2021-08-16 17:09:55', '2022-08-16 17:09:55'),
('452ac0b3588d9380fd36045eb4a1e6960ed4bbb1bfa3b87429e5e34d23335f812830c6991c444964', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-31 17:01:08', '2021-10-31 17:01:08', '2022-10-31 17:01:08'),
('456985933f7dbead4713c59b1095c20c22b4ae7afc256a2af04d9d3ac12f9173de504ad737b4ff13', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 05:52:34', '2021-09-15 05:52:34', '2022-09-15 05:52:34'),
('4583edb136a423b723dddbe14799b472edbaf4f69c2a2cb9ccc3480178642a54a469098f0f265e6f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-06 15:31:32', '2021-09-06 15:31:32', '2022-09-06 15:31:32'),
('459b182ff90e9d060b91befc0422926b81378d4bd483f773bc28fe9ef3eea90c8fc6484e3615309e', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-12 09:44:26', '2021-10-12 09:44:26', '2022-10-12 09:44:26'),
('45c3b4a49a172ac909965757206411c04cc275f2f1600941d13cac9fdcb122fa1d593ed6166cd319', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-28 13:13:55', '2021-11-28 13:13:55', '2022-11-28 13:13:55'),
('46055d22452caf1c3fbaaa746848d1b8a6464a1f3d0a96db37c904bb989b631777b92de00e8a76a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-01 12:10:04', '2021-11-01 12:10:04', '2022-11-01 12:10:04'),
('46158630cb2c8c1e9602ad565abbb962526c2755ba907377458d0d60ea08f476f4f86c540a446810', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 06:59:34', '2021-11-29 06:59:34', '2022-11-29 06:59:34'),
('4668b997f5f6a4a8cc19b63a306911010a3e21bf53dbe97a8a5e13d3f6c87e02af90de20724d9b34', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 12:21:54', '2021-08-06 12:21:54', '2022-08-06 12:21:54'),
('467c4b02295cf5578c195234232397f7c6ba9a89c48e7dd65ae0966bdd520d6f2fcbb30365c77086', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 11:53:39', '2021-08-18 11:53:39', '2022-08-18 11:53:39'),
('467c91fa61374848b0a1e694ead1ff1de9e8620c23df1b7730be7f941b4b94f40e62412fcd811188', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-12 05:31:54', '2021-10-12 05:31:54', '2022-10-12 11:31:54'),
('467e4587888ea13ffa45bc58991cc0e80852eb0ea7a73340a33fbed9261b469280246cedd7fe3d20', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 12:30:29', '2021-10-18 12:30:29', '2022-10-18 12:30:29'),
('469f991af9f12b74a8e127397b27c1ed1bd859eb231b8be07cf8091baea238ae3102b1350b14db88', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 06:51:44', '2021-11-24 06:51:44', '2022-11-24 06:51:44'),
('46d1012ea16a5e30fa7c60314c160b7e1265556179ab389321721f5ad78c9cc1f898710725fee240', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 03:26:03', '2021-11-14 03:26:03', '2022-11-14 03:26:03'),
('46d7dab88b1125216ba12c00ca2cd844bee27ac2680af94f4b2270dd032c2b08441a7f2b377195a0', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-27 07:03:03', '2021-08-27 07:03:03', '2022-08-27 07:03:03'),
('4703c53638bab243a54633727b9e1f1288f8e77d3a94ca44fbff864970d852116658e898ee8f8325', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-18 15:17:57', '2021-08-18 15:17:57', '2022-08-18 15:17:57'),
('472508b53152956e948b94267d65b5ab016af96b41c8161d3adc5923cf171f32a3cbfaf06af9d674', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-23 08:20:59', '2021-11-23 08:20:59', '2022-11-23 08:20:59'),
('4747a6d14a2a7e73a11b77c0d598b4f4d30b5c5135d4b70e30955db5c8d14d48e0975b2e54e761c4', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-28 07:09:30', '2021-10-28 07:09:30', '2022-10-28 07:09:30'),
('475588d68306b46924480a914387436e0255af0d166a109203c305e92e2c575c3a4f7f7dbc9bd8a1', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-21 04:19:32', '2021-10-21 04:19:32', '2022-10-21 04:19:32'),
('478acf24c9a0e0fd4800e6c581e04640d06c10ebe9906952aefa4fbb2f39a64f01a6092d7c354a43', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:11:07', '2021-08-10 07:11:07', '2022-08-10 07:11:07'),
('4795d7f0d41453bad74f095f0f12f9e89bac6860f9cb7b408eb0987fc9faba822ca4617737212271', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-13 15:09:54', '2021-08-13 15:09:54', '2022-08-13 15:09:54'),
('47cb144dd8e2ed1d798a8152f02dc42b587fa4e5b1d2b6d8886f87a346c938c14c4650a4368d2c1e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 09:06:59', '2021-08-13 09:06:59', '2022-08-13 09:06:59'),
('47e2ae2d85de620dfc14a92b7e747e96f2e7bbdf94fe361fb29891cb248b888eee453bea705647ea', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-23 16:42:59', '2021-11-23 16:42:59', '2022-11-23 16:42:59'),
('47e33ad50605c8df7a15289188775a813159367ea9ce2e71961d853424d74c00d307b564b5aba29d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-05 11:57:08', '2021-08-05 11:57:08', '2022-08-05 11:57:08'),
('47e3fb44d3b06a357d533dfb0a8223bc0ea3ba1fd99b9f161f3ccad6566c47f27e1eb5260920bd85', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-31 16:58:44', '2021-10-31 16:58:44', '2022-10-31 16:58:44'),
('47f66f141cb1b3645b6646fad5a015835cb4522f5e579745038baf68c899cecef9d69bd919fa092f', 21, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:44:32', '2021-12-21 07:44:32', '2022-12-21 13:44:32'),
('480329a3f18b248d26010d182cb7796c0a80aeb97c71ebf31a1bb541a7769b45cec0c16ba5152942', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 00:22:30', '2021-10-14 00:22:30', '2022-10-14 00:22:30'),
('4822dcfaace548143bb51f1d33a05e4cfd741a900ee2b0745c9fc8783a885f944ec58d4ece3290e9', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:04:29', '2021-08-10 16:04:29', '2022-08-10 16:04:29'),
('4823d75672ac07dac6b0a83c19c36302019809124e2692efb752463aaa942252ccc57dc0985d5f70', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-13 14:24:25', '2021-08-13 14:24:25', '2022-08-13 14:24:25'),
('4863bbcbd1bc09c3a683629ac6f626a548a494a4cf440fe72c246c4a38694aa12aeffec6dd22c84a', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-18 17:59:33', '2021-08-18 17:59:33', '2022-08-18 17:59:33'),
('4873a174b8cf701824b29dd78426f15ae4ef6a3c0bd765220a081537dc862327e99d6fecfcce2bd0', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-11 07:27:53', '2021-11-11 07:27:53', '2022-11-11 07:27:53'),
('48760ee9e82368ba91601008fa7686736d3c50313bea8cb600eaf587c5c73c14373f21a22079be9b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-20 16:00:20', '2021-08-20 16:00:20', '2022-08-20 16:00:20');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('489344c8b01f89e40304bcc0aaf5914f6820bdb669eea2a71538bdf4c5bdfe8fd4d5e10789fea3d1', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-05 03:28:16', '2021-09-05 03:28:16', '2022-09-05 03:28:16'),
('48a9252ba1e165f30ec74ce912cf3795ed488497116917032c4ba1f11f95f39c0e709ca7496439fa', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-05 04:06:30', '2021-09-05 04:06:30', '2022-09-05 04:06:30'),
('48c77166f9280db4eec0334df12f0d6a0a37690acb7564e954598da7c716baeb1bc81cd5dd770763', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-17 00:01:58', '2021-09-17 00:01:58', '2022-09-17 00:01:58'),
('48de4ff4ace3a21ed57546a2e6faad83ad0c07c30f42d1e31d9bf6f12d4a935cc8a7281b71029a09', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-08 06:51:48', '2021-11-08 06:51:48', '2022-11-08 06:51:48'),
('48eaded719bd1a6cf2fc4d9cf398f840617d664f2133ffec61f6abf3891a10f5873df95cfd4ec9dc', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-10 04:17:32', '2021-08-10 04:17:32', '2022-08-10 04:17:32'),
('48fbd0ea61d90e396b43102a0cfbeb83b522e71dc3526fba691f97073652d5fd7cd5957fbc53239a', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-01 05:46:29', '2021-09-01 05:46:29', '2022-09-01 05:46:29'),
('4922f7c6154adfc230c7dd4ea7eb0dc4207b9198904e56e3c3e511367552598a730079f58df027a9', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-21 15:29:20', '2021-10-21 15:29:20', '2022-10-21 15:29:20'),
('496bc1f512116ce8e2c09d5950ba877b5d835be73e22fa585b3f015600d5d6d1b813c2116d3c984a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 13:02:08', '2021-09-01 13:02:08', '2022-09-01 13:02:08'),
('4972bcf37d0171b7ee215535111b9e112c3f9f74d8b10566bcd680b9ebb89afc229adbcde37efd87', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 12:41:55', '2021-09-13 12:41:55', '2022-09-13 12:41:55'),
('497ab83214a208c1104bf773bb57e7846f920692507cd1ad9dca6ff8e84f5b52edf04cf41349d7ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 20:24:03', '2021-08-14 20:24:03', '2022-08-14 20:24:03'),
('497e65aadee0d5d1fcc2caf7b8d2d162a2a6b6f87cd058b528ff5e3e719ec3b4199fee3fcda9e1ba', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-12 11:34:49', '2021-08-12 11:34:49', '2022-08-12 11:34:49'),
('49970c242e1b435d3ef9fab3f9e614fea410aedba33e83e082a12ec65bbfd34f350901b777fdda6a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-01 03:14:33', '2021-08-01 03:14:33', '2022-08-01 09:14:33'),
('499ba58591fcc78c6f8b0fffbe32a4a497206035a610c8ce67d7c9a308ced3c067a4797e5d86ab3f', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-03 05:24:02', '2021-09-03 05:24:02', '2022-09-03 05:24:02'),
('49e64e7a04612b936b38e607e2d4f20c58f008f8e7046d7a580fc682a9500963db3d12bb8484fc1f', 22, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:47:24', '2021-12-21 07:47:24', '2022-12-21 13:47:24'),
('49fe77b0404c3f05d37c0f01e234d93d104f02a7ae30ffe2f1e3b2ac83cb1e18e2a50ca66b149f9f', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 19:21:59', '2021-10-25 19:21:59', '2022-10-25 19:21:59'),
('4a443c7dd571d3a3d75b9b891c8334234c154ab0765791d74089bda849294dc4bb86e7a805d1e85a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 13:14:55', '2021-11-28 13:14:55', '2022-11-28 13:14:55'),
('4a9fcd4e5ad3d9cc36ed143aa95c765d1474209b46c8f58a8c6affe57c95bfe18c85897e2d042791', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-06 06:00:51', '2021-11-06 06:00:51', '2022-11-06 06:00:51'),
('4ae14e79d5c972c3df082435204a667b41d47e078ae96b832529e45ba908b7c3f3badf3dd4fdf663', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 04:47:58', '2021-11-12 04:47:58', '2022-11-12 04:47:58'),
('4ae3ee7ba10645a3045c179d8c3b86efcbba2db492f6cd30c4c865075c560717dc6b22a94b0e35fc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-02 07:35:34', '2021-11-02 07:35:34', '2022-11-02 07:35:34'),
('4af7db70caa0793cc2eea15bf7747b26012141b25464bbebd745ce740fa6b64ec3adef5316693dd4', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-24 08:04:26', '2021-11-24 08:04:26', '2022-11-24 08:04:26'),
('4b1dc9c6badccdae91b18082c68cc6c8bc2826e6a66a3fcc515a98f6797cfc661e90c070cf172289', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-13 20:13:18', '2021-11-13 20:13:18', '2022-11-13 20:13:18'),
('4b5ea392f2516a27d671e74e1f81cf4b47abb6be34f7aec8c3f4fcc2d896c3a4c28952e1ebf2bbd9', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 07:55:22', '2021-08-24 07:55:22', '2022-08-24 07:55:22'),
('4b71e0f216d1f302e90f0a45ea1710c5dc665a80224a71548cbbe0254dcffee36ae4b096ce90362d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:36:17', '2021-11-25 12:36:17', '2022-11-25 12:36:17'),
('4b836993e2c29416f75e9c3c6b557d1a63909e2f784a168e9d02f2d8b0c9957c6fcefa6d31dab8bc', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-16 17:15:06', '2021-10-16 17:15:06', '2022-10-16 17:15:06'),
('4b96a68e217686371e3c46fff51507d148e529689e70f13e61dc833d945549625c77a04f463aefc4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:48:14', '2021-11-29 20:48:14', '2022-11-29 20:48:14'),
('4ba3007a650ae46ade31061c17f4adcbba11f6883a541339f59f24b08da36d554b378e55841ba7ce', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-13 17:14:07', '2021-09-13 17:14:07', '2022-09-13 17:14:07'),
('4ba4922b7ca3ccdaa4b6c01ee77cb8545406f2abbb07628cf0a6cb197920b4aeb2825b7fbdc9370c', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-19 13:14:59', '2021-08-19 13:14:59', '2022-08-19 13:14:59'),
('4bba809d8357b716444b8f74d1f71d427eeb83d32da8c6fceb453782accece095665e7913788b589', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 14:46:08', '2021-11-28 14:46:08', '2022-11-28 14:46:08'),
('4bc03f0323d7ad26a1b317525a1acd7228f74eac4d9406692505f0ac9fb8de84adfb8c28926e160e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 10:59:51', '2021-11-14 10:59:51', '2022-11-14 10:59:51'),
('4bfd0a3dff627de3c5a83ceb38980776b45b6f05c80783f3617ee0a5970a538842a752950d740cf9', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-20 00:52:11', '2021-08-20 00:52:11', '2022-08-20 00:52:11'),
('4c120421e8f7774ea4c93d6910d326810fef2a7e49765a7784efc5ad13835aedd9a96b935e709af8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 14:15:45', '2021-08-14 14:15:45', '2022-08-14 14:15:45'),
('4c2b5c8e5aa7b621512734f94a7096336623c2e11645f9a36704d9567bc22ea2374bddd2d5384e4b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-25 05:31:19', '2021-08-25 05:31:19', '2022-08-25 05:31:19'),
('4cbc14b00abe4498d618036263dae9b53ef86c4ecee72cc32d23df64460ef440aff1c9e61d3d0c8c', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-11 09:13:27', '2021-11-11 09:13:27', '2022-11-11 09:13:27'),
('4cda69d472690dbb638f35f08e5679dfc39455f8904d0f50ac88eeb247912f9e4443e4f21c7803b9', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-14 03:19:02', '2021-11-14 03:19:02', '2022-11-14 03:19:02'),
('4d6333f446c1f24d89c27eab70fb7c18f526572113a37b914fc4524b27c855502855b43705cb32ef', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 06:33:58', '2021-12-01 06:33:58', '2022-12-01 06:33:58'),
('4d71c8eaa8cf4a2ab6067e04d93437405be637301909517d76cb97bc6473f90707adc3fd70c7667d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 16:30:49', '2021-08-27 16:30:49', '2022-08-27 16:30:49'),
('4dc8be71eaae489df85832678be1688a1b5a6f3a921ad89f007efbf6034e66be82adc3605f241046', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 19:12:22', '2021-09-01 19:12:22', '2022-09-01 19:12:22'),
('4dc957f83cec121b890995ae2428efd6b203a5da5073b245e486ad04ea6f519902b7c6374d34728b', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-26 12:16:45', '2021-11-26 12:16:45', '2022-11-26 12:16:45'),
('4dce63f7ad18718d267d66ce83c914be91cd92bd55e201f9b658ed733c6ef249a847c864a3f0b011', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 16:40:44', '2021-09-02 16:40:44', '2022-09-02 16:40:44'),
('4e1096b4b168b41f22d245dc019f6a150f242c63a291494597eeb688892034831b7b8f819759effe', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-22 23:21:46', '2021-08-22 23:21:46', '2022-08-22 23:21:46'),
('4e30c63dba91be6fc35628223fc6a1b3ae7fb304ff313509fe2832012f6bb53bd7a45415427ba320', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 09:36:04', '2021-10-20 09:36:04', '2022-10-20 09:36:04'),
('4e349de3b054c14b3465319cf5ea28f6ebe32985821f40b8263107a18bb0594eb92a08d6fb8c980d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 01:13:46', '2021-11-28 01:13:46', '2022-11-28 01:13:46'),
('4e5a81081a05011fa6caf22fac712709c45dcc6088feed501b6f37d5be483b68bf26295e401e0ed7', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 02:46:25', '2021-09-15 02:46:25', '2022-09-15 02:46:25'),
('4e6ee7b872edd3ac12d9ac18c4890fdbb09c91877851c7c4a52f7e5e21677aec064550bc8bee7a0f', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-15 02:26:59', '2021-10-15 02:26:59', '2022-10-15 02:26:59'),
('4e8318f94038df22caa4e771bf3815fdc0b1ebdc32c37de08a186c1bbfb80c46b12e04f611556ea2', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:33:45', '2021-11-30 01:33:45', '2022-11-30 01:33:45'),
('4eed29efe30c4460d0800098cae536f7c2040d7422bae95e857db32cb818b9ec451273fe8ac0f985', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 08:30:07', '2021-09-09 08:30:07', '2022-09-09 08:30:07'),
('4eed84275ffef71d980f9380c6ca8103695a30485eeb6e49ab7699b2e9b77491bafea0236558ebe1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-19 18:15:14', '2021-11-19 18:15:14', '2022-11-19 18:15:14'),
('4efc934f55dda8a8dce81aaa9912a7b8126de55040ba32823f663a2768be2dcb37058df6aa23329e', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-12 21:37:07', '2021-11-12 21:37:07', '2022-11-12 21:37:07'),
('4f1d9737f20f93e31620b3bfdff6ca867affb2228a75cf263c0a3dd36f4f043f93d32bb6825cc4a9', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 10:20:35', '2021-08-23 10:20:35', '2022-08-23 10:20:35'),
('4f2eaae62fdaab32e70cb9188fd12ca4b12ca7275c32c66d86a589b061f97fddc97296844b4ccae3', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-07 06:03:44', '2021-08-07 06:03:44', '2022-08-07 06:03:44'),
('4f3d663c4007a38c7cfae4a0981feae457b1759949411647a77dfb71db96cca7859234870a90af09', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 04:43:55', '2021-11-16 04:43:55', '2022-11-16 04:43:55'),
('4f61ea240e2eee8edd79e365b0416a171b5e670654d6458deab6f8a86b0a3a4a1065d164129f0f4c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 17:08:26', '2021-09-13 17:08:26', '2022-09-13 17:08:26'),
('4f9ea4af2e22ddb31227a60ff77e6fb2423aea57c33a86f06f25fcb87057e3f773db7080311cd54c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 06:08:40', '2021-10-19 06:08:40', '2022-10-19 06:08:40'),
('4fbd78cff483421f67b55a9191dad05b4af3485088230d7be56e8337965f3525a3f6b40927c066f7', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-11 15:35:15', '2021-09-11 15:35:15', '2022-09-11 15:35:15'),
('4ff85852ceb10465c67bc6fb6218a3a34ce1d516bf586b05d4948c95dd4a72b3f79ae2766cd1bf00', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 20:28:46', '2021-09-03 20:28:46', '2022-09-03 20:28:46'),
('4ff91100c22c5d90c956b749787cbd1b28c8d23bb66faf28e12c7b23a62bdc08d15bc03486e83bcf', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-30 23:08:07', '2021-10-30 23:08:07', '2022-10-30 23:08:07'),
('5013ddf668f46a9ae04f8b579106adf6f51f27b3da5832bbf6886aaf0fee1edec21b026307796eba', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-04 20:35:04', '2021-11-04 20:35:04', '2022-11-04 20:35:04'),
('5022d2cbe2e6ea8193e6f4d0bd8395851208bfd5374583983b064fe87b07298fbde2039e150a4d5d', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-03 12:39:10', '2021-11-03 12:39:10', '2022-11-03 12:39:10'),
('50849d7ec3ac51ed6ff5cb7c9d29f0e2660e341697d01fd896021682e4edeb2fc3686b551c5a0e10', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-07 15:05:06', '2021-08-07 15:05:06', '2022-08-07 15:05:06'),
('50a2497821d9f1dc7eae56b9701b9160d2d7efc6eb24b0cf45b05f846d1862c4404586af2405839f', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-23 17:34:23', '2021-10-23 17:34:23', '2022-10-23 17:34:23'),
('50aa130949876ad02c19cb233b4dae365e58bf8a158f683df4d28bab6f1a207227a65143420b44f5', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-27 06:26:01', '2021-10-27 06:26:01', '2022-10-27 06:26:01'),
('50b7cab5a087b2c9e367cf3d7d8cdc545b91174868e1298b14cc7eb881a12097477e6b381599e393', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 09:24:21', '2021-10-17 09:24:21', '2022-10-17 09:24:21'),
('50bac0bccb933223dc00a546b2739f68144230d52b07fcd3ad3bca8e1ce5ebbde44dab9a689d57e7', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:35:35', '2021-10-24 05:35:35', '2022-10-24 05:35:35'),
('50bdfce98e24e9996f9c68dfa6e5320f6105b9780bbf4bf469432d7f3dca46a8baf592cbd7334ebe', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-30 07:33:31', '2021-06-30 07:33:31', '2022-06-30 13:33:31'),
('50ef0bc3003ce31b60f6e21671cc09d17bd6f782ac5d0da86e1d797a8c031c1824e1ccf9a40cdea9', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 05:36:50', '2021-08-26 05:36:50', '2022-08-26 05:36:50'),
('513ade622071d118ee10da1959a7d14b1cae3f37bacbf87a304696055988e1271741ce85a596f63b', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 14:58:34', '2021-09-15 14:58:34', '2022-09-15 14:58:34'),
('51571a904137890015fab7fad6e5dbd400f0e7a0c913aea2e83f9521c1debcd1f27e06d0a2c6f429', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 20:08:21', '2021-09-02 20:08:21', '2022-09-02 20:08:21'),
('518a23d56bbbb499e61cbc7a126ba03f79ebe8dab5725c8dd64940b3119815ea64372ccb2752acc9', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-05 13:00:26', '2021-09-05 13:00:26', '2022-09-05 13:00:26'),
('51cba17f174901d2ce5ce617130e22968b53a289c5b159b72ab6cb441b29cfc5aa52d11994379765', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 07:58:39', '2021-09-09 07:58:39', '2022-09-09 07:58:39'),
('51d8a56c5515d97f667fc4d0f33440ef50a16be76d90ed8e466adcbbaa1ee9161893f21cbd110c95', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 17:10:55', '2021-08-13 17:10:55', '2022-08-13 17:10:55'),
('523c832f0cb675ff42606bb4744e3823d2766e645ac596f1da432200f512e487cc06432e9ad95e7f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-03 07:46:40', '2021-11-03 07:46:40', '2022-11-03 07:46:40'),
('526df1f98bacc95a414d89e42331f00e1f2dabeb2f41fc1d71de3e901c765c37476e55ee44969754', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-09 07:58:49', '2021-08-09 07:58:49', '2022-08-09 07:58:49'),
('52732229da503d7fba3869bfabe63f9911c4f9c071642639d38a2d13b17a1bf7bf86d2dedf0ac1ab', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 14:33:35', '2021-08-11 14:33:35', '2022-08-11 14:33:35'),
('528a86182cc6edda5d8bd6c926630bb3c2a142951fdcbccfec7f6337e01435f707fff939e268eb04', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:57:21', '2021-06-07 23:57:21', '2022-06-08 05:57:21'),
('52bf983243b578c0d7862819dcdc599b397e35a0bc8abf7df6da9ec494f7c8c8f44cf5aa368fac6e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 18:54:45', '2021-11-30 18:54:45', '2022-11-30 18:54:45'),
('52f588dd679ac19bb8969b950bb42aa7be15e1500d9bdeca3f36ed995c90406e9ebda45dde59e6c4', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-16 00:22:20', '2021-10-16 00:22:20', '2022-10-16 00:22:20'),
('531c79e7cd0556dd1d9934564a39a3d996c7612621d6dbbe6c45a9c6784b059d615eb5b7fd9648f2', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-10 21:24:55', '2021-09-10 21:24:55', '2022-09-10 21:24:55'),
('538d3049516f84b44aa81255f9d9aa914a589d51ba549ebd7eadafa1c898371380f8d4dd869225ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-17 00:58:24', '2021-08-17 00:58:24', '2022-08-17 00:58:24'),
('539795d4d0944e8e21b697db927e21febfe70793237d1ea26f1cffc84cdb99249cf521f61a3f2c7f', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-14 00:27:00', '2021-10-14 00:27:00', '2022-10-14 00:27:00'),
('53a43cbf45c6652e99304ee2a26dea77b592a65816a32c6fda924a63fcca8fb0bd2e8ee95ca7f0e1', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 18:47:55', '2021-09-01 18:47:55', '2022-09-01 18:47:55'),
('53dad88918d059c6efe785d6affe9340966a758efd335fa122c295769bf9f082fee050e70b4c31c9', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 14:09:22', '2021-09-04 14:09:22', '2022-09-04 14:09:22'),
('53e45625ddd8f97dff768123a679d16d6f4cd2f96979a72730942a94b09f919bf9d80def5160915d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-22 14:44:02', '2021-08-22 14:44:02', '2022-08-22 14:44:02'),
('5441ff60c163d6ce96c6df0c3d400c1f8440a43cd008220f090f9e799dc88c356e44f801b092ed1f', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-03 05:35:07', '2021-08-03 05:35:07', '2022-08-03 05:35:07'),
('54578be7fb1d64e1ad5fe9ad6286a75adeb0ff59a564aa4029ff87ed0c0ff03af727627e67a5feb5', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-12 13:06:26', '2021-10-12 13:06:26', '2022-10-12 13:06:26'),
('546cbf6c9d484447e3cb9bcad9b8cd389a737473f1f0e7224ab725d1c58a993b1e31aa2247e57566', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-26 08:55:15', '2021-08-26 08:55:15', '2022-08-26 08:55:15'),
('54ae8369d297ba4090ef763800ab9786d4247d4fa64b8b96c68d9972a33cd0727a818d316e61ce5d', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-10 15:10:03', '2021-11-10 15:10:03', '2022-11-10 15:10:03'),
('54d62f67dd226ea4c1d1302ae1955393f04d3aac8d14a83ffae8057f5f77a1c46479e5475ad8f4ad', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-26 12:14:52', '2021-11-26 12:14:52', '2022-11-26 12:14:52'),
('556bf4418e76a0f8850e975ae3c44cb0f987546d45dac484ef14d8b93aa6ff1fbfb28749037e341c', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:26:46', '2021-08-03 06:26:46', '2022-08-03 12:26:46'),
('55772214ea8e0b2da3119d808e845668b837ca9e4cfe85a1d942e551dd295511e85fe24864ac4bc7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-23 02:00:22', '2021-10-23 02:00:22', '2022-10-23 02:00:22'),
('559101f224e27b0e39c1bdc59f96abd62cf23f73dec39d6c1ea81fef611d4b2064e101ec7e8454d0', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-27 06:18:44', '2021-10-27 06:18:44', '2022-10-27 06:18:44'),
('55cbfb0356260b8ccf3da1df88c4ac6e8efd3a56872aedb43216f082a1bc4419481bfd93dc2bc3a9', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-21 10:37:25', '2021-08-21 10:37:25', '2022-08-21 10:37:25'),
('55d95c5d49708683719d2c70b316617c00973649350280b01d39909d08f9a9f357181e06ceac685e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 17:16:46', '2021-08-06 17:16:46', '2022-08-06 17:16:46'),
('55e8f90dcd781ded22738406391ba11c0a341d925aaafe096d089b3a0dd10f02955c41164bb727d8', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:08:34', '2021-10-13 16:08:34', '2022-10-13 16:08:34'),
('567b70702695367bf8d894610e65c9db28e11db3e65ac7f61b152276ae60fae5b2f5584d7d3273a1', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 16:56:24', '2021-09-13 16:56:24', '2022-09-13 16:56:24'),
('567e48fb10c798477480ada4d01aef2988eb98fe65a0bf0e7cab99049b799c82ed8836fd4f1886c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 10:44:07', '2021-10-19 10:44:07', '2022-10-19 10:44:07'),
('567fbf52ecd3a7b7ad4afeb1cb28ee32055ebd38b73fbc5acf85ac8938cdd3d87c216f9a94c9449b', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-16 16:34:10', '2021-08-16 16:34:10', '2022-08-16 16:34:10'),
('5695e817624e8fd77eb10c304ad6de52aac95e41b053c1ded856fb5bc46658da375a72249f9e3edc', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-13 00:35:41', '2021-08-13 00:35:41', '2022-08-13 00:35:41'),
('56c6c17889a5d2f7a6bf338d1f8bf5cb9d470e5b206cf810bedf71ff5605c54834680e6bd67ef5fe', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-18 15:04:28', '2021-10-18 15:04:28', '2022-10-18 15:04:28'),
('56cb10ee4b069477cd9a8b0b544cdc11c562cfa325396870fec59826b17a381bd6e8a0cbf4575b61', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-02 07:59:27', '2021-11-02 07:59:27', '2022-11-02 07:59:27'),
('56d097330929814d4b23216d3fd567471aa5bc7d19aafd4bec59035f7541534f22ad136408f593ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 16:25:36', '2021-08-10 16:25:36', '2022-08-10 16:25:36'),
('56ff3eb4b3558881d62515e4e7646a009b19205770b3fff4d080c8a0dfe54d4711b0a783ebba84cf', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 11:22:57', '2021-10-18 11:22:57', '2022-10-18 11:22:57'),
('57259befaf9f9bce919ae1b5dc697b8c73770bdf2ea792522a6f77c14cc09459686a0c60b3f480d0', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-17 20:57:15', '2021-10-17 20:57:15', '2022-10-17 20:57:15'),
('576d5244ee11dd105cd56ca4fd0ab96ab1580ac503274f062680300f773a95f08d44e2a767aeb8a7', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-13 15:13:19', '2021-08-13 15:13:19', '2022-08-13 15:13:19'),
('57c51797e179a32af8e69a3a614cc1b335d303b0a45253ea359de52eb33b8a4738c165d738bd994e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:05:28', '2021-11-29 02:05:28', '2022-11-29 02:05:28'),
('57d9601a693c70b0289bb2b563102d5de1b6affda5caf4bab4ea768442dd9d1e3d33a98f0a0cad9d', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-18 15:09:57', '2021-10-18 15:09:57', '2022-10-18 15:09:57'),
('585f6a0e093791af32ae28449f980f5ceea3f34e85b4c23e1328c3a43ed4334b1f7286f504452b66', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-17 22:10:44', '2021-08-17 22:10:44', '2022-08-17 22:10:44'),
('586eb69fd7ac38e7b2bb1f493997afa5ce200e06c04b0e43e6b599e01a31b2e15773d3a39d6c2e64', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 15:48:52', '2021-11-18 15:48:52', '2022-11-18 15:48:52'),
('587127820be853ff14e3af72eb85f40a68b986363dfebb477b79b6e39f9be18d2b0490ca71e4ba92', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-25 23:37:57', '2021-08-25 23:37:57', '2022-08-25 23:37:57'),
('5893e7030d2a4bb429b6769e04d3fa9ea9085f84377a7b890a5d1df19768c2a55a9fc587c8519a37', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-30 05:01:49', '2021-11-30 05:01:49', '2022-11-30 05:01:49'),
('58a8113c8123036e93433ef2ec85decd24f0e8c1d8678913addb302621564971f36b893f2aa1a203', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 11:41:44', '2021-09-02 11:41:44', '2022-09-02 11:41:44'),
('58abcfa6b59f52faf6930d0ad6ea9779083f2881dfa110b003cd195c306a63ec8399969fad3bec14', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-21 01:54:09', '2021-11-21 01:54:09', '2022-11-21 01:54:09'),
('58af7a15925dbe8771aebce1bce8e166f6b0ecfba4b6965754108ec3cddaa2db89e877c8d7b03ee6', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-16 00:50:14', '2021-08-16 00:50:14', '2022-08-16 00:50:14'),
('58b5536963f5dc08f52028484221e64cfb3ed30e1f63e2a2b7b7520e50804eb95f7627c0562bd933', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 18:20:23', '2021-08-11 18:20:23', '2022-08-11 18:20:23'),
('58e4a20e486e95f2cf2c7c4bfb20044a8dcff5120ea89d0e67823fb078fbce1de4d3c76d37e5ce94', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 19:55:17', '2021-11-29 19:55:17', '2022-11-29 19:55:17'),
('5951398b751d467cf5e4cce508609b70742cd0c55ea9b051e19fe73ddc779fbb339776eddd5bdf8e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 14:12:31', '2021-09-11 14:12:31', '2022-09-11 14:12:31'),
('5970ffa3903387498407e3222abe137bc8cab9b61553a1b12fe2747a95abb51faaeb59812d17d2be', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 00:24:13', '2021-08-24 00:24:13', '2022-08-24 00:24:13'),
('5980b40c7a2a2371ce1616f7c931153f42628cc39e8c460a55bcb3d4ed4984749d6c1ee7a4f3b8a6', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-03 09:39:23', '2021-10-03 09:39:23', '2022-10-03 15:39:23'),
('59a1297627d0294ca4cdcf90b40a28f49291d035213b5d72b090a93edb6df25bbda4ccb64b11d765', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 18:13:50', '2021-09-01 18:13:50', '2022-09-01 18:13:50'),
('59a708127cb61d7f0c42f137e2ac09367f03a3692370323122950c71bfc94697d58a4c84fbf859f9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 09:24:32', '2021-11-14 09:24:32', '2022-11-14 09:24:32'),
('59c6b7537aba10e744812a8148958e00ae8617e7e9083a351b718107719358ad61e1bb616270c79f', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 12:21:41', '2021-10-19 12:21:41', '2022-10-19 12:21:41'),
('59e852a2580c3ea20042b288253a7a4454d9cae32d6f7b72602646a70b3e245a005490eedff869b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 12:07:35', '2021-11-23 12:07:35', '2022-11-23 12:07:35'),
('59efea07de42e9ed4b9e22714429d125604c04e3e0c60f832ea2408be4485758b3854d1f6ff5018b', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 19:36:28', '2021-10-20 19:36:28', '2022-10-20 19:36:28'),
('5a20b8a031def28d43d97428f1db6f90d4873c62b75e48211b0cc52779f63ac031ddce7f136dff9e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 04:49:51', '2021-08-23 04:49:51', '2022-08-23 04:49:51'),
('5a28a46c825f7b023e55087783982e2079335374ce41bb9a8a6c4c216f7c58403776d7bf0d5a086d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 13:37:19', '2021-11-22 13:37:19', '2022-11-22 13:37:19'),
('5a72ff426590a60ec7fa630e4ceb70ed5257fb847f64617f65edf047fe94c44f4eb5aca873b8bd14', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-30 20:25:07', '2021-10-30 20:25:07', '2022-10-30 20:25:07'),
('5a843f16f717717262d75c9870756ae7f6f914721d63f321cc1d3d09c1ca85c5117ad8992643f392', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-29 05:53:19', '2021-06-29 05:53:19', '2022-06-29 05:53:19'),
('5aa8a7529a28e6341ddc307be29a8d524170159f7361733449c9aa0a22e8efecfdc57aa1e3360165', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-21 06:53:05', '2021-12-21 06:53:05', '2022-12-21 12:53:05'),
('5ab0846e2c5075965db98e9ddd54835ddc648e298ab9643b12a263b64a0b7a3a85a329ddbec58dec', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-14 14:01:35', '2021-08-14 14:01:35', '2022-08-14 14:01:35'),
('5b138edd5304a2e822a3828067f55993504002ffac0d4afd0e71dce6d3d371001ddababd3ef0e8d0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 18:05:15', '2021-09-01 18:05:15', '2022-09-01 18:05:15'),
('5b163f46f19c7b912e27be19c1110aa97a7cbf2e8cb33097ed9331467bb54a39d95e7aea701f6c8d', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-24 15:18:01', '2021-11-24 15:18:01', '2022-11-24 15:18:01'),
('5b1642c58702b473c35eb2f006a94a23115f8f3a4ad335cab1d5ec9f9e6d6d63df06186f4888ec40', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-08 19:10:08', '2021-08-08 19:10:08', '2022-08-08 19:10:08'),
('5b2ddf89150086947f8e630a4eac04439c4c60f1f7e3a527bfedd4c3e55fd9520d1b15a423840372', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-17 14:49:40', '2021-08-17 14:49:40', '2022-08-17 14:49:40'),
('5b70fb309a15b6dab57d619689dddd1337969bbd0e45bae1a8b7409a38e95ac8d0cc89fa22e75526', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-26 22:38:32', '2021-11-26 22:38:32', '2022-11-26 22:38:32'),
('5bcd465679692927fbbcc103e915169ad4ac2701f5663c2fee2b97e0b56f9018ca0d39038e6c87a4', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-28 15:36:06', '2021-08-28 15:36:06', '2022-08-28 15:36:06'),
('5bdbcaffa03e74902284ff94276201ed8053be2797eb4c7f585c7174e33c65fc9f41a120a87f46a0', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-07 07:51:10', '2021-11-07 07:51:10', '2022-11-07 07:51:10'),
('5bf6e9ba6feb2633595293fefdba16aa7bce84656929a4f37fce29e72b6ba3352610aa353cd1d88b', 22, 1, 'Personal Access Token', '[]', 0, '2021-12-01 11:13:55', '2021-12-01 11:13:55', '2022-12-01 11:13:55'),
('5c1f65e05a1a7de102448e98ac37085c938a92fb04e5d3db71d695d4e07d230dbccae2223329d314', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 16:39:11', '2021-11-29 16:39:11', '2022-11-29 16:39:11'),
('5c6c02e7a90adc7d244fea4d7e693445bf559383222e6ecd036dd21a58fd090a24110af06e5fe6c1', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:28:42', '2021-08-10 07:28:42', '2022-08-10 07:28:42'),
('5cde02f4b239ffb9512d366600fd82f51c7021244f60b0ba91de93cfb8023e103a7887bd20c3a80f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:02:11', '2021-11-29 02:02:11', '2022-11-29 02:02:11'),
('5d0ce85328df34176c47282bae79f30e100d5daa29c6bb87836623482ecdbb1838485b44123fd967', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-14 05:03:30', '2021-08-14 05:03:30', '2022-08-14 05:03:30'),
('5d1e731b808bad83b2c4b88b0d0860193c000f04f44d12d764ef335efb39c63828a371f8de9525fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 08:19:06', '2021-08-07 08:19:06', '2022-08-07 08:19:06'),
('5d258190363947e09b9a8270d813f15ed458d14bcfde1c76dc1b8cf57a42a3de70c344cb814ebeea', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-05 06:45:10', '2021-09-05 06:45:10', '2022-09-05 06:45:10'),
('5d3042d88f9bccd6f95b8abf044bd4e789b613d88dc893cede73be64627da75b85df28c1e4b48ed3', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-16 14:22:56', '2021-09-16 14:22:56', '2022-09-16 14:22:56'),
('5d83e46e8340a5bd0c24001b36785b34ab5e50449992c751a122adadcdff933ff9e80a71dc49c010', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-01 19:48:22', '2021-11-01 19:48:22', '2022-11-01 19:48:22'),
('5d85a2d6c4baa9a8f94c6a426c0fe7d684790e0e6e5287e7c474cdb1fcc014b502d3f3d41f40ae36', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:33:58', '2021-08-22 14:33:58', '2022-08-22 14:33:58'),
('5d8b70802a067e14fcbb51af73b4ae9ff8a4c241475ed76bf1003b808f67406f09382087de693079', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 07:21:28', '2021-08-31 07:21:28', '2022-08-31 07:21:28'),
('5d8cb0d7e74ec24aa00e1fb0c0cc5e149073fcd86f9397851f0a9f8717a62b10eb8a1bd4a9008830', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-12 15:25:08', '2021-08-12 15:25:08', '2022-08-12 15:25:08'),
('5de41009027000f6d0e7d81c46c85884ad038e56be2783d4a619b70f1af3993016f81005f69b1d3d', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-18 11:15:14', '2021-10-18 11:15:14', '2022-10-18 11:15:14'),
('5de71d0de5d6061e813a53c34d0e39a13f9d910ef774241fab1b2b049ac5bc8614a7d5b2839c9b1c', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 07:06:51', '2021-09-01 07:06:51', '2022-09-01 07:06:51'),
('5e1cf0b7dc1920ceeac23dab4f6c3401e3ac7954817192e3c57fd413dd4210ac28a9c6533adf8f50', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 19:47:49', '2021-11-11 19:47:49', '2022-11-11 19:47:49'),
('5e2052b3b5f8e9adff453182b554fa058ada6fb3b319fb4b725472ff5bebbb35231b1c4e414edb19', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-09 13:34:29', '2021-08-09 13:34:29', '2022-08-09 13:34:29'),
('5e4fe3e7f126a430177810ead7cb02c276d6e6a655d94c82740ba01a00529bfdc05b75b26afdb9cb', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-11 08:39:21', '2021-08-11 08:39:21', '2022-08-11 08:39:21'),
('5e7caf49adb7cb5ac004f6dfb9ea788cb869265d09a76d1c2a6fd97a4a34b733d5552231f78fceda', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:36:41', '2021-09-09 14:36:41', '2022-09-09 14:36:41'),
('5e9b17adb634569bcc502c991f6706c2bd912e30424ab153733c5d290b2595fdb80f006a81828881', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 04:04:33', '2021-09-05 04:04:33', '2022-09-05 04:04:33'),
('5e9f65cbd3a36a7aa3ed956021f80bf1a0aa68ae9d2f63ba6d5ca16b6f56a12b344f50b6895c057a', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-07 21:56:38', '2021-11-07 21:56:38', '2022-11-07 21:56:38'),
('5eb83b19a4bb7452bfb82ce6a5225bbd8a7723c02abb4b2b60a3c9345d0b0799eb9d910f3ef92bb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 19:28:47', '2021-09-02 19:28:47', '2022-09-02 19:28:47'),
('5ec5d341f6762cf322c472680f213ac902b1a01e34b17b7ef1c53a73b93f99141b09ff86fed46c0c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 20:40:49', '2021-08-12 20:40:49', '2022-08-12 20:40:49'),
('5ecd01484dbc59aa084795af06608e3064d4931e9b782e935d02cfb50b03a5dada08e7ef15808219', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 05:09:37', '2021-08-31 05:09:37', '2022-08-31 05:09:37'),
('5ef8c3ea2fbe9e4c68cb26c5904028559ba7c0273173d6bd75f6b3db8bebdcd00160d3eb36272904', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-16 08:50:29', '2021-11-16 08:50:29', '2022-11-16 08:50:29'),
('5f1d4ed980ea1a9ec9bbd47f77c6be00cc75c4599bf404aa5c6fa5f6a56873bd3a377d81bed6f234', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-15 15:39:59', '2021-10-15 15:39:59', '2022-10-15 15:39:59'),
('5f3f0dd881ca6d1f6d8074caece2e47ddf932b2321c9f91d53d18d2cbbce2ee07e3a128c719b2e4e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 14:42:02', '2021-09-04 14:42:02', '2022-09-04 14:42:02'),
('5f6f957d145cf6dd362e1b02e1d1f854505a333dc7f75cd99a0e39b20fea1f911c0ddf6daf3631e6', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 20:01:29', '2021-09-16 20:01:29', '2022-09-16 20:01:29'),
('5fe13b0ff5c4c85a72d4223179358e9a6e37380f672d550ec8f7d867ddc5e167193e35c3a22e63c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 04:24:51', '2021-09-04 04:24:51', '2022-09-04 04:24:51'),
('5ff3175a708530f08cbd246b0114c7c95f6c996b2c282cbf3bd01b5e70bba14622e00efdacdba744', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-14 14:14:33', '2021-08-14 14:14:33', '2022-08-14 14:14:33'),
('5ffd89bbef0fa6bc85c3b2c4222c1f0132593e0f3430b6e8f2ad25ade59f9b28d3f17d371998d48a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 00:44:28', '2021-11-07 00:44:28', '2022-11-07 00:44:28'),
('6006d1442d93aa361ff16051b62e5099d71f586166874059f6ec369746b26539857caefc0bcc14aa', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 13:23:49', '2021-08-31 13:23:49', '2022-08-31 13:23:49'),
('601828afdec17884754a0e68c57caeda2f4d50c11bb49b99cf878a68d4dff15d92d21999c5181474', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 20:19:17', '2021-08-10 20:19:17', '2022-08-10 20:19:17'),
('602a63e2612e2ac608f4f5b26cb42f60741fe92f4a9b551619ecfc27e2a938a59a893aa3e6bc5711', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:03:08', '2021-12-01 15:03:08', '2022-12-01 15:03:08'),
('60367651e707bde4cca69606f3f3152d696af05e5498a5ab1992b431848530ab92cc82da56b0f590', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-27 13:54:10', '2021-08-27 13:54:10', '2022-08-27 13:54:10'),
('6036c7559ff35179766bdd65a644778733bfca76d8aefa075049d402489c3e954f4bb92eb6f7cc85', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-26 12:08:47', '2021-08-26 12:08:47', '2022-08-26 12:08:47'),
('6041c8809e14c841370ffcf55e32b2732e8184508cc89333a751ba8c12c3ed1664f3936fa47540d4', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-09 03:29:02', '2021-08-09 03:29:02', '2022-08-09 03:29:02'),
('604884ca468e8245cf60c55efd50b7cdefae393cfec3a8854b30981fa5098bffb62431f75639e161', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 16:15:52', '2021-08-24 16:15:52', '2022-08-24 16:15:52'),
('60723e678e05e94beba814c83541b415bbc88331bd91a5fe5edc719bcae0f397fb88b66d8bf6b8e3', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-17 17:42:46', '2021-08-17 17:42:46', '2022-08-17 17:42:46'),
('60b939d8b34d90bafd9a34c0d2ab2f558cba805baf622282e5c4d212ddec04a18681f8ee87a37f0f', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-30 15:05:53', '2021-08-30 15:05:53', '2022-08-30 15:05:53'),
('60bfc48439f9b30bb854a5e891c8865133e3e0bc53e2997a111c64340be5c0ed6c50b17d1faa9a6a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 02:31:21', '2021-09-11 02:31:21', '2022-09-11 02:31:21'),
('60d4b28396ef2c0b81d8ead0f0383c551a45814e0e8288fa24f700b64bb251d178bca957c7ddacfa', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 15:00:57', '2021-08-23 15:00:57', '2022-08-23 15:00:57'),
('60ea981586dc214ac9ba3bff0bbb388ea77a38d55bfbf4406a349c04d9972bee258c71bcedabe74b', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-23 16:39:57', '2021-11-23 16:39:57', '2022-11-23 16:39:57'),
('6114608b89ad1cd0ff980ea98ab5d2a55fbee5f75af8e258fa75d80f0adc8ae6ea30c2622f25a189', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-02 16:53:33', '2021-09-02 16:53:33', '2022-09-02 16:53:33'),
('613d9ae342e0eecdcd6d942a369a5fc1b11e5906f8354997ec92e8c4eaaa807808ab5e970f397afb', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 17:51:36', '2021-10-14 17:51:36', '2022-10-14 17:51:36'),
('615586a0a92cbd250bbd3cd24ed603ac462c0a5c483a8b2e49ccddb4a511ec3aad10a7bc6021a53c', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 10:45:01', '2021-09-05 10:45:01', '2022-09-05 10:45:01'),
('6176556d9ad0724d5d90530eea3868a67d100f41b9bb72b7ea90c794eb0d25d8c43c10b7ab0dcc5e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:41:52', '2021-08-22 14:41:52', '2022-08-22 14:41:52'),
('6178975ae4d4814302087f7e91f2444886454f937253b1381cf4df62aa7a76b6ab61b231eae602d4', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-01 10:15:44', '2021-09-01 10:15:44', '2022-09-01 10:15:44'),
('6198282a940171ce70615652b76f57ff71477e45e3a99637b97d0edd75097ec16eb81cbacdc45e00', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 17:56:49', '2021-08-18 17:56:49', '2022-08-18 17:56:49'),
('61a35f7b75e5ed4254b6986694e3cd17123af7ee5edb6dbc0f3e871a11639a9ae6f9501b5f116920', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 06:25:14', '2021-10-17 06:25:14', '2022-10-17 06:25:14'),
('61b45b49e918423453169d61d155b83c62a6fdc6b7d632af1964d7772af0160cff28fff436b055dd', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 05:41:11', '2021-09-02 05:41:11', '2022-09-02 05:41:11'),
('61db6b877cc602cca69e16ddb44def17bdf8f1b1a8bbd8a4a08fb437105267726e5d93a205d47c6d', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-30 09:12:39', '2021-08-30 09:12:39', '2022-08-30 09:12:39'),
('61f32a120aa9ff841f22418e10ee59e8db20e8a3d305317dd6ffa92489f569658292bcd250f9252e', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-29 04:20:18', '2021-06-29 04:20:18', '2022-06-29 10:20:18'),
('6204007957099cdce05bf6c6f1fd80fbe209ad6a0a6e706b900177e2dbdcaf55b2f09782f5561440', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-20 20:39:58', '2021-11-20 20:39:58', '2022-11-20 20:39:58'),
('621e7df7f9e811164a6d6db1dc072b9dee78e88e63fecc30782747fea7d6bcc6df193c1f6a8cb390', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 06:52:36', '2021-09-18 06:52:36', '2022-09-18 06:52:36'),
('6276c3373ce0387cdf76c14985b876aefa5247c7f159f2c2708526a79243a2ac9613f59624b07e41', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-05 03:44:56', '2021-08-05 03:44:56', '2022-08-05 09:44:56'),
('629b54f0e4e0bdc6b677ae48c1a6fcaecab85ec272f026b563c9e58754d80e5c2da4270177324430', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 10:09:16', '2021-10-20 10:09:16', '2022-10-20 10:09:16'),
('62a426de0bba401682beff1c474b5562409e757688726627b3e9ae19b4a9e1e1bfd4c5f27006eeea', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-09 12:34:36', '2021-09-09 12:34:36', '2022-09-09 12:34:36'),
('62b22b90cdb8f05711a1065345e9ff1cf36e7e72931dcaf3585d7322f8b8d6a524692f50467bdd47', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-28 14:45:48', '2021-11-28 14:45:48', '2022-11-28 14:45:48'),
('62f89b08f03ea0d7447cc0a05590abbdcd2608cc54dbba9cbd3b57362bccef9112813e16aa2b07db', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-02 10:50:20', '2021-11-02 10:50:20', '2022-11-02 10:50:20'),
('63c66b8c6e00b90347e059ff70d8ddfcb9fdd99e3fe0431a5a2419f5a8311c7185f61cd0b7d9e52f', 24, 1, 'Personal Access Token', '[]', 0, '2021-09-15 10:19:17', '2021-09-15 10:19:17', '2022-09-15 10:19:17'),
('63d133ed6e19dff6b1cadd85fa365fdcac71f316573692a413974dd5ca4101dd20f6d8da3b0ac705', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-16 21:01:59', '2021-09-16 21:01:59', '2022-09-16 21:01:59'),
('63e800713f94b91f72697d057b38af684c3d4aa93e3dd62b555a68b6da4fd98a75332b957113bdc3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 03:57:56', '2021-11-29 03:57:56', '2022-11-29 03:57:56'),
('63fa6c721edfb0955fa439d332b50957d08f6eb724f20582d653efa9f1502c2694d69986291b6e87', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 18:34:54', '2021-10-17 18:34:54', '2022-10-17 18:34:54'),
('63fbd70e2b6b80edf5881cf556e6dd0fc263e75ad382b61e5ead93b81566a0408749e401063e4cb0', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-14 09:42:00', '2021-08-14 09:42:00', '2022-08-14 09:42:00'),
('641678da215b49dea4d00ec94f078cb322b41e9f310012708463be00d3dd1c24208d1cecddbf46b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 11:05:01', '2021-11-23 11:05:01', '2022-11-23 11:05:01'),
('641b5dcb2e7247d0430553b4dcfa81fe93dbda0558c17af4e8046332334b549d3bced2b78d70c4b1', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-31 10:06:13', '2021-08-31 10:06:13', '2022-08-31 10:06:13'),
('6430531ab62d2f1d62360893cca50d6647c0fcfd09ddbec5f4a9875de20a4ed050644c755c24b539', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-31 11:29:21', '2021-10-31 11:29:21', '2022-10-31 11:29:21'),
('6437d8de7cd234bd9aae41e6ab5686b0b0316470d8a91cea699546771edcf6e93086592ff4557962', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 20:43:45', '2021-08-30 20:43:45', '2022-08-30 20:43:45'),
('64388ff5904c0a192bef8efafd0b54f3ef7fd6b6aabea6aef0d48f1ff8973fc06d592b9d508b9475', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 12:42:36', '2021-10-25 12:42:36', '2022-10-25 12:42:36'),
('645fe7296f2689c3aaa5c569de6e40230abb01fe143d59c2d1d96986fb336ec702b12ab422e3109f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 17:54:39', '2021-11-30 17:54:39', '2022-11-30 17:54:39'),
('646f6c25d3520639d2b2737f735a7f10caa05dd43a60ba2aa1b3cdfead4620e1638a09052658a76d', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-23 23:30:53', '2021-06-23 23:30:53', '2022-06-24 05:30:53'),
('64bf7662cd78a7048da17edfc78febea50e4b0dbb39ab629ce04a7ff89c3ab10478c3f46285bb2bd', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-21 04:22:57', '2021-10-21 04:22:57', '2022-10-21 04:22:57'),
('650efa5abca1945ac10339916cfb378547991f55aad6dff6c7dc83c5f7ed377adb13797158a7d620', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-29 01:30:02', '2021-10-29 01:30:02', '2022-10-29 01:30:02'),
('658c049414db78a68840afc0367816ab970511821d4436813f7778e5bce6c8576723cfd2c8948ff2', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 15:42:07', '2021-09-17 15:42:07', '2022-09-17 15:42:07'),
('65c3c6d7160b44e3bba0f5000a444e06d11f11381f612cd3ee940ac8826e155ad8eca85cc938f61e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 06:03:50', '2021-09-01 06:03:50', '2022-09-01 06:03:50'),
('65dfa61549ae32b44653fcc92e2f7064099e60a9cdf1dd1aca657cd95b134bbe755cf19a9b4d4ca5', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 06:07:08', '2021-09-15 06:07:08', '2022-09-15 06:07:08'),
('65e19ca3f5067ec5f3c9df74a525bd3b79f2edbb546c71141e01556b4e94f8d0f1588fb5c567935e', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-10 04:41:19', '2021-09-10 04:41:19', '2022-09-10 04:41:19'),
('66247e9859ead1c6d8e2c93514d93e1f684c55ead53532c7835375e9948c8303256d4d6109047b83', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 15:14:59', '2021-08-18 15:14:59', '2022-08-18 15:14:59'),
('664c6e66fd8b506e3e99fb54e93962f445c350c9596dff586f02296982299523fee4bf40428a2cc0', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-21 06:20:01', '2021-08-21 06:20:01', '2022-08-21 06:20:01'),
('665e07e96a9fb64d74eddc4008bc763620061f199ac6d03c1af8f1c3c38adeec91ef3e8153bdfa37', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-14 18:10:54', '2021-11-14 18:10:54', '2022-11-14 18:10:54'),
('669ce10995ee87800d16c3d0da23ba4778e2144874035d3e9b3fcde2b210e073c6820b1bfb94fe09', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-15 15:44:35', '2021-09-15 15:44:35', '2022-09-15 15:44:35'),
('66a80815b689f77c32ae4ea989feae410d874abca069ee58e7982d5b19789ef6b705389862412874', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 22:48:18', '2021-09-16 22:48:18', '2022-09-16 22:48:18'),
('66ab35645cb836825067ef4cbc5518d7c81faeed3808231f97da0ac4fffe4e91edc719802c72411e', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:39:02', '2021-08-22 14:39:02', '2022-08-22 14:39:02'),
('66d0d1cc5df306941f0e490825a055b45113a61e384a9b78773673a800d364066fee881a78c6d20f', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-10 19:40:33', '2021-11-10 19:40:33', '2022-11-10 19:40:33'),
('66d65fa3aa8790fe560dcae3ee96ecd05a26ff81a98712a754ba4f1dcca64d53f28f0955ea56d99f', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-02 08:33:51', '2021-11-02 08:33:51', '2022-11-02 08:33:51'),
('66d952eaa2f05b1cb301d8b25858dd4d1c13bc1fcc95bfbd4ef8bfa3fbf8a2e086d1e09da3907013', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:39:05', '2021-11-16 12:39:05', '2022-11-16 12:39:05'),
('66e3c0c80351258137b4a29fa3e9bf2adab73141d3d8066634d323f2fb7b0cfd4e5b06bf7a714246', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:43:35', '2021-10-29 18:43:35', '2022-10-29 18:43:35'),
('6712bef79459910df1a9bac66360e924e2d1b3ef9587cf77cbd3478fb9880a57da5d2e7caea5640a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 07:36:12', '2021-08-27 07:36:12', '2022-08-27 07:36:12'),
('67434abc36a1948487cc5df6fec0c9316a02f74ee1d393ad61f234a054618d4ac6394892c260ce9b', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-06 17:16:26', '2021-08-06 17:16:26', '2022-08-06 17:16:26'),
('6759d473ab8183ba4756bf84a84e438baf4c170b4b184b6eb58307d74b086d7ede84db9071c9ae88', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 06:45:14', '2021-11-05 06:45:14', '2022-11-05 06:45:14'),
('6770899b41a966984c75bf6543421dab9ebd27f53cbf2ba0304adb194b767a5425d4b896d5eee226', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:28:57', '2021-08-10 07:28:57', '2022-08-10 07:28:57'),
('67aa7f9b5172a4ee19aa0de991ae4255c07a3fbf1a6aec80c8340bfbd2ad6f508ab5f3c25b043267', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-16 10:01:18', '2021-10-16 10:01:18', '2022-10-16 10:01:18'),
('67fe30f508f493c3dbc176cbc6e8aee0629abef65944ba723e3c310bcc0b46f8e5e3d73adda49b5a', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-26 08:43:38', '2021-11-26 08:43:38', '2022-11-26 08:43:38'),
('680828fa2bb0bf5cfba3b85fb190598845f64c2014f5caee375cc1475be7d265672b32e52b22d634', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 00:39:47', '2021-11-28 00:39:47', '2022-11-28 00:39:47'),
('683aa62c23e21c3427d5e03bcedced37a54ebbf61b8cfc68adb6783bddffe4598eed4de77a1c6c1a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 04:43:26', '2021-09-10 04:43:26', '2022-09-10 04:43:26'),
('684de5e6bd668b358f0bce65dfcde430730205f36fcef259e7761cb210d5813ce00bd9cad99f1c3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 16:30:18', '2021-09-10 16:30:18', '2022-09-10 16:30:18'),
('6861c512e64a3710b26bb2d96eb61bdd9443d59c06cc601140428ff641993e8b957e2f8805edb055', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-21 06:51:40', '2021-08-21 06:51:40', '2022-08-21 06:51:40'),
('686ccface0dc989eb01cae4e1747ddac3b0bd81f2f407c9bcd0f0551c25c66c0c07c11d24e9a7da0', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-22 23:39:26', '2021-11-22 23:39:26', '2022-11-22 23:39:26'),
('688fb4427a764e5d95eec7d27ae541ae07fd5dc704df09e85548ca364e354a3a509d9dab0043131a', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-11 08:49:09', '2021-11-11 08:49:09', '2022-11-11 08:49:09'),
('6897fc4ec39d9d80425ac70f8602d1795cd1531355e0dbcfb02b5729a76e4a85068107975e9dbca6', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 13:56:44', '2021-08-10 13:56:44', '2022-08-10 13:56:44'),
('68ad301b5ed70f916b223c4cefec7278fbaae40fae8d664db46708100e7c3f9f6f4c99fb272aada3', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-22 10:37:52', '2021-10-22 10:37:52', '2022-10-22 10:37:52'),
('68bbb225a9a5ea218e45db2dd2e0cfa40d911123c92cae9d2edc64df0708e27ded24fb3a08a9b926', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-13 00:37:15', '2021-08-13 00:37:15', '2022-08-13 00:37:15'),
('68c7cd38c4e959b411e7018bd7e1f689eca11c9244275a25fb04baadfa67b948ea5c60190a694801', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 06:52:35', '2021-11-24 06:52:35', '2022-11-24 06:52:35'),
('69139d8d0704a907df838dd2e43df7eee8960e45eb0a66ccafe92f004d1b3966a840cfc58311e739', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:51:44', '2021-08-25 04:51:44', '2022-08-25 04:51:44'),
('69159823c08204f2e8e63f014672bd7f9f48c31139fb59660bd2c5b322d0952827ae5f8eae06302d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-07 15:01:56', '2021-08-07 15:01:56', '2022-08-07 15:01:56'),
('699756af74e197b4ecfc169cc5eb216d42157775605d7660e1fa22a594454d2869728c6b30e978b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 09:41:52', '2021-11-24 09:41:52', '2022-11-24 09:41:52'),
('69a349965715b601e791dc3376fba58f661a47a13da833636967b879fcf7e026eb579b6c0019dc8e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 00:40:02', '2021-11-14 00:40:02', '2022-11-14 00:40:02'),
('69d5f1f8a448ce96e8c1577051903152f83a37aa082fd69defab4669c16eb9175df5b754ca1eaf28', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 13:28:20', '2021-11-24 13:28:20', '2022-11-24 13:28:20'),
('69f4ca1c0fa32bb94928b3f9537df5666753665b753a4353607240942d6c2f96afa5f27ebad89dde', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-28 07:16:31', '2021-10-28 07:16:31', '2022-10-28 07:16:31'),
('6a0082171e2255cdf9c3835d2002720781f9451e92072fb2ab8168d86ba11338131f4ea3e145d17c', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-08 04:16:45', '2021-11-08 04:16:45', '2022-11-08 04:16:45'),
('6a0a779aa0c9198ad8972a91d7c82c9bbc63035b9f04c6f29f345ca382a075e29b80d75f2f705018', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 16:29:14', '2021-08-10 16:29:14', '2022-08-10 16:29:14'),
('6a0eaccb1d026d258dbee22b66ecfac3ed77c77deb80cac6b32f75e0f2ca89982b73242c58e31d70', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-27 12:11:46', '2021-06-27 12:11:46', '2022-06-27 12:11:46'),
('6a214b13d3ab1c7334c5ffa70632ae0b645e7e1c174e1b06c8ccfdd7ddabe1ddd29f1664277205c9', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 10:59:51', '2021-12-02 10:59:51', '2022-12-02 16:59:51'),
('6a286b8f8068a1af93e3be3665a58130df8b3885af69409a0112c9946b00992a7ff2c4c60bbb8cee', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 03:05:07', '2021-12-04 03:05:07', '2022-12-04 09:05:07'),
('6a36deebd4cf0e6a5596afd44af847d441592ccc2c4677719f7d00f11c80e3b4501b98ab2cce6387', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-14 22:24:29', '2021-09-14 22:24:29', '2022-09-14 22:24:29'),
('6a40d17e60055bdab526fec3a84bc67fcad33a70b54cf12a8f4287776c2f5c078039017f8b30d9b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 16:08:44', '2021-08-23 16:08:44', '2022-08-23 16:08:44'),
('6a445c87078661e18bed0afd8300847cbd6deb7b43764741fe24745aaa7bf4e784bcf4636612f803', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 13:56:07', '2021-08-10 13:56:07', '2022-08-10 13:56:07'),
('6a4bcec24327b38eb39b6d206189cf40f0f3478be4fd9a37b6100012db14e259b4ffa2863ebf6bfa', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-30 09:55:04', '2021-11-30 09:55:04', '2022-11-30 09:55:04'),
('6a595b617a90ff0f0fac89e08d345e3c5b25dd4f91bcb4ade1e625564f592848e565a1384a4d3f67', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 09:59:26', '2021-08-10 09:59:26', '2022-08-10 09:59:26'),
('6a6ce0693cc2e1b657e2187e0f03d7518ddd81f35d8e145c19f43b4f8c15a0a65c8f067818aa891a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 04:19:09', '2021-12-02 04:19:09', '2022-12-02 04:19:09'),
('6a81c57d71c1dec6c2e19bb75b1d11531b65a0931abcde698f583db0672e27c929ae7e0525878910', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-06 20:06:38', '2021-08-06 20:06:38', '2022-08-06 20:06:38'),
('6ab4bde22780f8dd687fd62a32f2ba75a18c48cc76795e340e22a6d1cb67dcc00c1aff5d42f2fe98', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-11 20:01:18', '2021-09-11 20:01:18', '2022-09-11 20:01:18');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6ac0d9a0bdb83f12943c9f8ca8a299ea174010a9ec15897f71996cce9eb390b1b93ee65c5ecba90a', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 16:11:59', '2021-10-21 16:11:59', '2022-10-21 16:11:59'),
('6b38ab535cb892536480c50f9425c2c41c993178e333141449acbd34ca294c9023ac475814e012a6', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 03:53:00', '2021-12-04 03:53:00', '2022-12-04 09:53:00'),
('6b754ec23772d56dd3616c7e668d39fbfaa9c4e43d5395ef3b0f4e8d167f386ae0025465aa739536', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-23 21:03:03', '2021-10-23 21:03:03', '2022-10-23 21:03:03'),
('6babfd2b0f25419531b4a72889a223af33866e9a243e543d5d84936e0574dcdbc158be65b34c6615', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 20:48:04', '2021-08-30 20:48:04', '2022-08-30 20:48:04'),
('6bce27f09090b23256b70ff296e58a818247fbb8f60d36c798b4f21f48d48f38a346e70f47e11b2b', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-01 06:24:59', '2021-09-01 06:24:59', '2022-09-01 06:24:59'),
('6be4b1b469f39189e68da2566610e9c4e465ad44cf149f15d0a240d3e27beaffec052b6b4895196a', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-04 20:34:00', '2021-11-04 20:34:00', '2022-11-04 20:34:00'),
('6bee8143015151a8ec39ea674692a64872acd094f5f0115486a0da120ca5cda7b09afa7343d24820', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 15:34:29', '2021-10-28 15:34:29', '2022-10-28 15:34:29'),
('6bf38f8ca91f4053acbefe23144f63bf3f17d5c9cf3236b2b490997a213a7b35301bc5479cfeb9dc', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-08 05:40:20', '2021-11-08 05:40:20', '2022-11-08 05:40:20'),
('6c48a5e7f34531d4b976222de008ff49b94a51091b0df8458c9c289a8fa147aa7a6a6435b9b26b28', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-23 18:04:12', '2021-10-23 18:04:12', '2022-10-23 18:04:12'),
('6c6ee8ac4a9203c4ee90d7de15959f38f6ab18d0a144978a684dccadd6cfd8dddee77ea18be128a6', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-30 08:00:22', '2021-11-30 08:00:22', '2022-11-30 08:00:22'),
('6c752d35dc265a63fc207eccee9230c82d3e3197758e353c468b8fc98be9873327a14ac17020f9a1', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-23 05:27:22', '2021-11-23 05:27:22', '2022-11-23 05:27:22'),
('6cb8af8b39771d0f540853818559b88c04c4704c403a07a26994faa31846b4df4951d8f55b109041', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-24 13:19:11', '2021-08-24 13:19:11', '2022-08-24 13:19:11'),
('6cd5fc0a28fcf8b1a716cfa2a48a7e1846a1d9b634f23bbcc393aa4d7359d30d5767780f193b48ea', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-10 20:45:18', '2021-11-10 20:45:18', '2022-11-10 20:45:18'),
('6ce39760eff43e8f15f01078739b2038caae2f992210e94e0fc2d3968b85c473c2db1681a4b91bba', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-02 23:13:40', '2021-11-02 23:13:40', '2022-11-02 23:13:40'),
('6ce9707059f31d330738199072743361745c951a2e041e939d579bc74a340859f36c4992556e6e04', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 20:06:45', '2021-09-11 20:06:45', '2022-09-11 20:06:45'),
('6d0452def32951f0788221a3e285bd23a81021c08c06dabe3821eaa8eb862c5698e0370b1acd460f', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-27 11:46:27', '2021-11-27 11:46:27', '2022-11-27 11:46:27'),
('6d37d8f38f06f5ef460c959f6bc3f931f6bf8206e5ebc498431ce66025110832a2f58644e256baaf', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-15 09:48:16', '2021-10-15 09:48:16', '2022-10-15 09:48:16'),
('6d5c06282114d0cd2bd4b698b874a9257e73dcdca2fb958031c509d217e78ae3e53b6ea754f6e3bd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-29 03:14:59', '2021-08-29 03:14:59', '2022-08-29 03:14:59'),
('6d8db3fae75291ac7d2404dab81ddd75d4f29f223012013d8509a581ea57b22cf778f66a1a9ee779', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-30 18:50:16', '2021-08-30 18:50:16', '2022-08-30 18:50:16'),
('6da05e69b1533d52aeace5cfae9bfe838c0ef566586561bd1710736473960a6cb04ba09e039f400c', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-28 13:12:44', '2021-11-28 13:12:44', '2022-11-28 13:12:44'),
('6de19f0db1dc69b583afd693723cf299d842ffd801f27df54c83ec476ca4d765c3a0d07a1732ef94', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 06:21:11', '2021-11-03 06:21:11', '2022-11-03 06:21:11'),
('6e35cd2500a65309f7c3b51f282fa578cbbbad2378b5e1d60cfef65d24ee9393764f7952a1d0973c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 23:59:31', '2021-11-25 23:59:31', '2022-11-25 23:59:31'),
('6e436c39156143d79201ee9c01391a1fef197d0b6439154a98609efe7fc5128ead32d9d86fb6dc10', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-11 19:45:05', '2021-11-11 19:45:05', '2022-11-11 19:45:05'),
('6e4cebee714ba3803ae06e2a6bb5661f43960fd2c9745e2b29bb7e232b2f45a1614e899be431e1ff', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 10:35:36', '2021-08-30 10:35:36', '2022-08-30 10:35:36'),
('6e5a5010cf3efb499fc0e887bc6c48291337e051ca154dd6d05b1bb7affa724304981814f7137855', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 08:26:07', '2021-11-15 08:26:07', '2022-11-15 08:26:07'),
('6e84e498b546d7e4a18c7cc0c6ec3d02b69da613fcc8c0636b40b64f0fc4d8cf00343e9b9846aabc', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-02 11:39:16', '2021-09-02 11:39:16', '2022-09-02 11:39:16'),
('6f12131ce721f4a87f52be6955c46cf1e183eb4d56ad236024c9e573b9ec769bc5e26165038df384', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 20:15:26', '2021-09-07 20:15:26', '2022-09-07 20:15:26'),
('6f2d4f249b694bb712c940f720955b9846ccf7eeee7a7cf46593ae2528f0194ba4981ad8eb0bb78d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 16:54:45', '2021-08-28 16:54:45', '2022-08-28 16:54:45'),
('6f49e2991d7f2d70edf9714d777d06fc93a6eef2a04cb9169a1b92c30d0c02ed6dfa24e69516b0d9', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-01 02:28:48', '2021-11-01 02:28:48', '2022-11-01 02:28:48'),
('6fb4b978930a9557fb22ef060b7cbc25ea3c71eae50fbedd2e690c75e177e811ae080ad74b8cf412', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 17:22:12', '2021-11-29 17:22:12', '2022-11-29 17:22:12'),
('6ff5b426151e4e5a1a6256b1075eaf93c88e198d32eb625051ddc84e2e5d74f73b822e2e64e4b525', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 02:05:25', '2021-09-14 02:05:25', '2022-09-14 02:05:25'),
('701bfdc9e3cf4cf49a613585ca7212b31fc452895549f9a94944bc143b6d250223cd85c69e5a5378', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-08 18:59:21', '2021-09-08 18:59:21', '2022-09-08 18:59:21'),
('702021e79ad6f7b51fc95b340b337b571f01398c5d07ee6d72dec17cae67de11030833e5d501a047', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-06 05:53:56', '2021-08-06 05:53:56', '2022-08-06 05:53:56'),
('703b36ed56a33188a49dc523105fda3bf32ce07406d83ada27f5f84927e135bab27eff398205e566', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-07 13:26:36', '2021-11-07 13:26:36', '2022-11-07 13:26:36'),
('705588fb7aad8161e4e9fc43ac25942db54b7b8843480de2882e3277bcf60c31743e720033f13bda', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-11 12:46:18', '2021-09-11 12:46:18', '2022-09-11 12:46:18'),
('70811edd9c1908e9ebfee8d78b5663a26d02edc2fab68c4cd67647c7f2c3289bd26a13dea8a8ea0c', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-15 01:58:08', '2021-10-15 01:58:08', '2022-10-15 01:58:08'),
('7092cdedad3b9956a5e8e4674befb20eb95f5d820f56af33eaffaa8b1cbc31e8d5f330a15eae4aaf', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-16 15:51:05', '2021-11-16 15:51:05', '2022-11-16 15:51:05'),
('70a04b1880470a4d98b9fa77a4233b965b40ad61a2bd294146bf9bb22a1b9947577b48532a9821c8', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-25 15:57:40', '2021-11-25 15:57:40', '2022-11-25 15:57:40'),
('70d1ec46719324c6858e03d8a211ff21cfd6ea42a22ff066091412568aafac225fbf055e42d14abb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 15:56:23', '2021-11-25 15:56:23', '2022-11-25 15:56:23'),
('70da99b7aa48642b00b8f33df47e0623d5cb7e9dee3a2a951bbe88269fa02e05ee3a100e4fb937e3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-29 22:09:43', '2021-08-29 22:09:43', '2022-08-29 22:09:43'),
('7112513e931daa1ff41433ecbc326c3e065e3e2f662c40eb8a7748966313e2e15c3e6e70dfc9f65e', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 02:15:35', '2021-09-01 02:15:35', '2022-09-01 02:15:35'),
('7130f944e508d72199479bb801eb254d63e6f3e93c8f828bd7381e649f0ec1383c3f738a9447a0b1', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-12 15:28:40', '2021-08-12 15:28:40', '2022-08-12 15:28:40'),
('7134b19ed27257cc45187904b3af3656bd80702e6aa0bd4623e7cfee065d2c84adbb5bdb49a2aadb', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 04:08:07', '2021-11-29 04:08:07', '2022-11-29 04:08:07'),
('71b32fbe28bfa11b885102fbbbb7d770db4188842494a46e38666414f35e8ea06198fa387dd9ae65', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:39:50', '2021-10-22 08:39:50', '2022-10-22 08:39:50'),
('71baab71d8e6af416c4b68850ab1a398041a5cb1cce93740499ff4e5b8923459e6905cdb1feb6bf1', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-19 23:28:45', '2021-10-19 23:28:45', '2022-10-19 23:28:45'),
('71cd25702a845ac0811f7b3be4988f438fc2d8afea8654fe238cb5022047a4b84343d0e625a9a053', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 15:54:14', '2021-08-31 15:54:14', '2022-08-31 15:54:14'),
('71e4fa8b74981c873890c878aec447336ddcae3fc5c4081a22f90c635910f76886302be8b535500f', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-29 18:46:34', '2021-10-29 18:46:34', '2022-10-29 18:46:34'),
('71e72f55c2d802f4cacb59aa931f13d84962269006d3f85961af38dae4a5c2a5608f7c6eac5e0942', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:18:40', '2021-09-09 14:18:40', '2022-09-09 14:18:40'),
('720662f270f7629803ddb0aaa3f3dd6d2856b236e03aca634c47bc1b4abee34843bd3b673d65e9d0', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 11:42:46', '2021-09-09 11:42:46', '2022-09-09 11:42:46'),
('72195138866c4d95a2d3da1d34f91cfd8accfdb5d0f92cd8e27bdccfe2c3ebc23dc5d340788d4f2a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 19:39:01', '2021-11-13 19:39:01', '2022-11-13 19:39:01'),
('72251479303bbbc9a1cd7eddd1d4351e8bdfc91dfaac0532eb1b9fa571324cf55c8223e59ac59c15', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-14 03:28:11', '2021-09-14 03:28:11', '2022-09-14 03:28:11'),
('72724858c21aba204714728c44d8302609f43a3adb707bf8dc62ba0a66503944ceee2bfe359850ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 05:46:07', '2021-09-05 05:46:07', '2022-09-05 05:46:07'),
('72b7b77648ff0809ea9c40e4923e19c2be10327a907e96b9217b88cdb8b9d9ad2e809dc279ecc274', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-18 19:46:41', '2021-08-18 19:46:41', '2022-08-18 19:46:41'),
('72cc5098699838e64b5220e18df78cd5c8c44684be86dae95ac51f95fd21c94f85417ac41c0e0eb3', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-31 18:38:00', '2021-08-31 18:38:00', '2022-08-31 18:38:00'),
('73339625191cf9b747a9566f6e4f227a667679e98f7dd88aad26cab52a0d8842aef5a8a7653d528b', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-05 12:44:47', '2021-09-05 12:44:47', '2022-09-05 12:44:47'),
('739326544eda88ee4b369bc6305943223abf5b2d37798be90053a1c051238b8bca7453101e9bbdc4', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 14:33:28', '2021-09-03 14:33:28', '2022-09-03 14:33:28'),
('73bde31c2921d2e47b580a5862a4089686c695e98e7b050db11716b9b63d29e9160753fa0d6b00a5', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 13:37:49', '2021-10-20 13:37:49', '2022-10-20 13:37:49'),
('73d83fd51e1edb8afd62c8ff5b3e29aaf47658adeca784e61cd8d6ab2000b65687ed8260f4b5e895', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-27 13:36:59', '2021-10-27 13:36:59', '2022-10-27 13:36:59'),
('73eebcf2e5aa9a4c8de7a8a34aee3e6bb241327ff43f905ae1bb8bfc377fdfbe3f26b740748b8b48', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 08:09:12', '2021-12-01 08:09:12', '2022-12-01 08:09:12'),
('73ef50aa298a2a43d46a6c3931e05447f5d7400a644fa2f58f06b1f994b147d08659f0f7695ad50c', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-22 12:58:40', '2021-08-22 12:58:40', '2022-08-22 12:58:40'),
('742da304b9eb4f78bf598fb0aeaf80d79c58072ca5176cb9858d9432636299d40d87d46deb99d021', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 17:46:47', '2021-08-26 17:46:47', '2022-08-26 17:46:47'),
('7446847f42cdc3c51d5b5139a472b165854dcfe4e3916eed484305f547faf6e7a570b8d439672ad6', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-10 08:55:00', '2021-10-10 08:55:00', '2022-10-10 14:55:00'),
('744c3a945fb69d9418dfff4bb855220ae94ca8e26a3c478609b91dc36dbae2e251594ff9bb7ed91b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-21 06:21:56', '2021-08-21 06:21:56', '2022-08-21 06:21:56'),
('7472de81b4e903064242cea0ffb93d1fbecce92bb5d8a7953f53394c8328dd3b9b84df8bcee22b09', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 06:49:16', '2021-08-15 06:49:16', '2022-08-15 06:49:16'),
('74962f0b010b163b3858eebc31d1d7bd308476f0e0cce317911edbd6fa97305263369ce4e7fa6d4a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 05:16:10', '2021-09-13 05:16:10', '2022-09-13 05:16:10'),
('74b3912bd8f81e45c8655bb17cbc2f4974fba6e642521dc384a57aeedbb1c94b73dfb8bcfd759462', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-02 12:59:01', '2021-11-02 12:59:01', '2022-11-02 12:59:01'),
('74ca71f4a43c6c9be4d2e159a821372042b0715bce28f77337e7ca17bfa1eb30947812363fb2508f', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 18:59:31', '2021-08-30 18:59:31', '2022-08-30 18:59:31'),
('74f5542ecdf62148a7d1fc91492627aff9f319850b26177356eeef29bec06a65a2b2cda0be099974', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 15:26:43', '2021-10-19 15:26:43', '2022-10-19 15:26:43'),
('7507527d1acfe07c299a6d046c1938ca8ac30edb4a9edff0b9ff28389bc74817062ba574680a8ce5', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:07:44', '2021-08-10 07:07:44', '2022-08-10 07:07:44'),
('7518bcbce05984ff1dece7079c3881d03d37e00df7eaf9abf59b269de5bb31bab5f876037bfffee3', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-08 01:04:58', '2021-09-08 01:04:58', '2022-09-08 01:04:58'),
('7548144d6bb97a3c42875e97257d24fd647079dc49e4467c272a839670903613e719360c4aa73ce0', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-16 17:14:55', '2021-09-16 17:14:55', '2022-09-16 17:14:55'),
('75b9b62c699fccc05e4be59b03974bb3e5920bb000bdfc2c71c013916a2fc5d0338b6c07ac9ff9ef', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 04:31:50', '2021-08-23 04:31:50', '2022-08-23 04:31:50'),
('75d42e3b19d4ea2cae62cd15bde4adb21f7b8662c9054e28e57ec81727238b07fe9c2981224f5343', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-14 11:40:40', '2021-11-14 11:40:40', '2022-11-14 11:40:40'),
('75d84e294b2f97cd164dbb8e976be65d20e173f3185c8d2ddd047986638011245453e4138ab30c4b', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:42:46', '2021-08-03 06:42:46', '2022-08-03 12:42:46'),
('76343d899282719f7816145ef61bd22509a12d66116d3a6d01d14041c443090f6a033d7ac78a9739', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 20:42:12', '2021-12-01 20:42:12', '2022-12-01 20:42:12'),
('767bf2abb35ee0c98d6ebc5c8f5b5c751bde3b6e18bc680880e6bce6d3af3775a443659f45eba75e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 08:08:09', '2021-11-24 08:08:09', '2022-11-24 08:08:09'),
('76a958d2704fa7300b2227e075a669557691f8bda4e4378fd651841d632aa410a3fb118e43c8ea2d', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 17:26:42', '2021-09-04 17:26:42', '2022-09-04 17:26:42'),
('76ad3a2848d77075ae95ac02ce24c40cf8cd746495599e3593f47f7e747b95ede319868bf38484b2', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-15 09:52:16', '2021-10-15 09:52:16', '2022-10-15 09:52:16'),
('76b788f13b94e50f97124ee31f6c41a5f16f25e49f23fce45f49e3863f3851e0806ef91a84fdafaf', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 13:16:06', '2021-10-25 13:16:06', '2022-10-25 13:16:06'),
('76b8a12e5bf66d8a69e3370b12b3d12e45a9ca5393f065d861293fa67af880d755157eb0f15a8efc', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-08 10:04:21', '2021-11-08 10:04:21', '2022-11-08 10:04:21'),
('76d5c4c81b2f1f492d190b3f5084b4439110a2cead544b42a112b5c3851544be9c2727de6a0d7a62', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 15:42:58', '2021-11-13 15:42:58', '2022-11-13 15:42:58'),
('76ee602b0fbbda70d2c54b6a40f0217cd541f47f97c0bf550042f3494ff7110fee2a87d268286a21', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 14:03:30', '2021-11-25 14:03:30', '2022-11-25 14:03:30'),
('76f482f3fc886743d18cfbc72cb9546752fa9a8402ccdeab855a1ba7e97c97bad85c0f122817cc96', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:10:06', '2021-12-01 13:10:06', '2022-12-01 13:10:06'),
('76f579048424a4d14948f20158e7822a4661ebead60f2ae707390c9954e1491c4bc311ec3644916e', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-12 21:30:30', '2021-11-12 21:30:30', '2022-11-12 21:30:30'),
('774f649104cb5ba374e73eb83f93bb0374d1a51bf6665268da4bb89c836109de3b4adac869f88c5f', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-12 04:51:26', '2021-08-12 04:51:26', '2022-08-12 04:51:26'),
('77515ad776f49f2d4be4a7ab68646c920920cdd8052b37fce2280e287999a4aa31e0119e464b1895', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 10:20:10', '2021-08-13 10:20:10', '2022-08-13 10:20:10'),
('77523f89af6aaeedd0c91ee82f978e86f60af4e37bfa4b2a646713b522d5e375908305235a03e4e3', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-19 10:43:15', '2021-09-19 10:43:15', '2022-09-19 16:43:15'),
('7787e614958c0a41d58c54bf350cbd35eea366628e5d9c51557b2263bb98ed187ff0dfd8272b474b', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-23 01:53:07', '2021-10-23 01:53:07', '2022-10-23 01:53:07'),
('77c627ee2378046039533c497b47754bff542bb2e2eea4c00c772deb098a449e5c9db747eec9cfc5', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-21 06:21:15', '2021-10-21 06:21:15', '2022-10-21 06:21:15'),
('780109496ff429809c9ec8d32e930527aa66cfc729476607461aad0db87b876236159044eea0d1b7', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-13 06:13:55', '2021-08-13 06:13:55', '2022-08-13 06:13:55'),
('780a8e5309c8f6a11a84d9f118695b4c5cf889150519d1e64af88b6ee729e9670a6555999813749c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 21:25:11', '2021-10-17 21:25:11', '2022-10-17 21:25:11'),
('78152200e86fbbe5433176d13f214a9900cb98bc104c16db826d0625d6546c9fb745b988f4acf88a', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-06 05:53:46', '2021-08-06 05:53:46', '2022-08-06 05:53:46'),
('78152e78309a7bd78924bd667cfcc7eeb3c0fb71990c09cd57015745427e5b1b54675981fbf84da7', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-17 12:05:07', '2021-09-17 12:05:07', '2022-09-17 12:05:07'),
('7860fbc0d500838f2d6d87d04eb46bcf344190cad85d8d45ac641c3bdea4d24a37c2f34478ff7033', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-14 09:56:54', '2021-09-14 09:56:54', '2022-09-14 09:56:54'),
('78cd4ab399d5d48b0d390e6a76a47f7e450fd8d2f87b7a87c8cdc8fe71a8cfc810324f033e01f582', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 01:25:07', '2021-10-29 01:25:07', '2022-10-29 01:25:07'),
('78d4dfb9d6b7a60c8bdd2412eb8bda740c6a62fa5e5422adf0c64cb563aa6bf40d5f588040e7703f', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-29 20:03:20', '2021-11-29 20:03:20', '2022-11-29 20:03:20'),
('78e5ae55d9b2f783df8ac67bc21fe1fa34657502077e1ded300a338500b44f9efbd72eff83d28587', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-26 03:26:13', '2021-08-26 03:26:13', '2022-08-26 03:26:13'),
('792e5cc677543ef7fe6aed953e2fcfc303f3821626705806557a677279c373bf56453665250ba756', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-15 03:04:01', '2021-07-15 03:04:01', '2022-07-15 09:04:01'),
('793ce3fcdb238aabf429fdd334ffab720255a7aad3dd4e18524dc3b82b8fd3ca4efaee91e10197c2', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-29 16:54:28', '2021-08-29 16:54:28', '2022-08-29 16:54:28'),
('796495068bda7fb15681f56962675c000da1ea424a0ef101462ca1f02ec0e4cf4a852bccd9a67a76', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 18:25:51', '2021-11-11 18:25:51', '2022-11-11 18:25:51'),
('7973ca80bda0b9daea08389392edb25a35a03cf6aaff5ed783bf4d04140122c743920ec4cb455875', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-10 03:49:34', '2021-10-10 03:49:34', '2022-10-10 09:49:34'),
('79b90090127168a27d441da5b5dd7a4c1f7cb436a645900fa7d9f7871a3da80dcae67bb8d93d1da4', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-01 10:12:40', '2021-08-01 10:12:40', '2022-08-01 10:12:40'),
('79b9d67b570698203fbabad48365c8ccdf04be02250e2f2728360ebe130bba5dafe08b956f33095c', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-31 20:45:08', '2021-10-31 20:45:08', '2022-10-31 20:45:08'),
('79d9aaf514ac417dedb23b2c527bef1c9291184d10404cbae12b5ebe27ce520adc1c0330ceb66eb2', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-21 01:43:36', '2021-10-21 01:43:36', '2022-10-21 01:43:36'),
('79f099a35279b28b80615d545a00b8288dbf1578a85078d4eac3c420835fd202802dbf115514d5bb', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-19 06:53:32', '2021-08-19 06:53:32', '2022-08-19 06:53:32'),
('79f727415bb2a5b85058f4c5f0b70aabe5ee169e082b92aa083129419c7d5ff78228d1bdbb2e8499', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-17 15:43:25', '2021-09-17 15:43:25', '2022-09-17 15:43:25'),
('7a010f0555d4d0fa9ae3db35f4ed2acfd5687e8900a668c44589fdf2326bdbc2b045359cfbd27fa7', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-30 05:33:20', '2021-10-30 05:33:20', '2022-10-30 05:33:20'),
('7a41d12645c91bf1d6de49a212311a80925aecb57b803b9ab94add693654370b9a4045204c9058c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-18 21:21:44', '2021-08-18 21:21:44', '2022-08-18 21:21:44'),
('7a4eb49ecb17cfeb25b4c47a171fa79a147a5ec15d993c09a929b0ba562b2c8c1d80ed0faa277bd3', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-10 19:36:34', '2021-11-10 19:36:34', '2022-11-10 19:36:34'),
('7a5ba62ec7dcbfbe9dca36ba87c2a965cab1f31f75debe240dfc5dcb6a1d3d29db303b0a462d0839', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 08:19:37', '2021-10-18 08:19:37', '2022-10-18 08:19:37'),
('7abcfe9541a7661be4c9e3e7e7d78ad64cbfe306193a2a81ebb361269ce28d02da4c8902d6b07a45', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-29 13:48:42', '2021-11-29 13:48:42', '2022-11-29 13:48:42'),
('7ae90337a47431baa0c45c2a381c92aa399cf7857b91383ec85b39f4c029f871ca7abfb43e617a2a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 08:43:12', '2021-11-26 08:43:12', '2022-11-26 08:43:12'),
('7b113d7c2aa0fe742231671104b6bf0eb6aed1bf533065c2a872df06a81d4c3847e76824d41e1aa8', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-12 21:09:40', '2021-11-12 21:09:40', '2022-11-12 21:09:40'),
('7b4ff5b95dbdf61b58f9548e3dab4c2a6038e753d2e32bd1fe1d276f2578936fba27694d90e1dce8', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 04:58:54', '2021-10-17 04:58:54', '2022-10-17 04:58:54'),
('7b5ab62522fae1f524f29be4405e8a455b9fcb035389269c561dbf8d8b4c9354f36ae3992317be37', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 17:07:33', '2021-10-12 17:07:33', '2022-10-12 17:07:33'),
('7b6cb4c45ad91255a937f6af5e2e7683a42ed250f5e1bb7da1ba542da531783224c4c6e0ec24a6e2', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-25 23:38:31', '2021-08-25 23:38:31', '2022-08-25 23:38:31'),
('7bbbfd61728e70225f368eb3a71fb6dd8c8c71c27060f28b0a257646eade711ab7f37fa5ff1d6839', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 07:29:57', '2021-11-11 07:29:57', '2022-11-11 07:29:57'),
('7bc2a5133baf326f8667a563512fe4c3a5c36e495788aa85823561f7ef9ee4b19503d0a56dedaf46', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-25 05:41:08', '2021-11-25 05:41:08', '2022-11-25 05:41:08'),
('7bef4f7e4f909ec56ea020add25afdb6aec0146fd03fe1a9b17fd1bc1c78eed0fdd1cee664789323', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 16:09:15', '2021-09-09 16:09:15', '2022-09-09 16:09:15'),
('7c615e0eb7217eaba1f8377a76b3700cdb0c49fd42beb7de964bd217d558eaa80c6e9ba5ce898952', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 07:01:07', '2021-11-25 07:01:07', '2022-11-25 07:01:07'),
('7c61ba3a840cdbdf2510daa73967775d1af113268c458fb26464c4f87a52a2269d17edc23bb6e7ae', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-17 11:50:53', '2021-10-17 11:50:53', '2022-10-17 11:50:53'),
('7ccf09d1f71a5938da1a294b059908111ab5755034238367cd55d5fed01830af251daf34c6876d20', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-08 05:32:13', '2021-08-08 05:32:13', '2022-08-08 05:32:13'),
('7d1a8ce23013ff66aefec60d5a4b5f343623d768addfa0bedd9c900fd651017e25385e0c61165975', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 02:29:30', '2021-10-28 02:29:30', '2022-10-28 02:29:30'),
('7d282a695b48f20db53893a851cb7625ab6edf3a131b081d9c875529c7faf45bb8dfcf7d33b83f5e', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-02 16:37:31', '2021-09-02 16:37:31', '2022-09-02 16:37:31'),
('7d2a3a2b018f183619f9001014753ef48f5a9721e662fcbbae92a6eb1d003c76ddbd203f49820157', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 07:03:18', '2021-11-25 07:03:18', '2022-11-25 07:03:18'),
('7d3563e3e57f6821b958b34aba83256ccb93905b062dd8d1cdc05c89ce74fe0258ea862581eaf351', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 19:38:20', '2021-10-14 19:38:20', '2022-10-14 19:38:20'),
('7d3d1463e78f723e00cd4ac357a68ee846e4810769d01dcd46a01d16bba286c68564c3c4fb3deb82', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 09:26:41', '2021-11-27 09:26:41', '2022-11-27 09:26:41'),
('7d5dc1d710637f22ae22c5aa1b998bb4eae0b083f41b1cb40d61b33d2b700d625bd12c43e13d4f60', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-21 16:34:15', '2021-08-21 16:34:15', '2022-08-21 16:34:15'),
('7d687603a86f21ab4ffbd1e5d6c411fe3aaa196ec0460c8f3fe9cd196112148a0305b9001c02f8b9', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-15 20:53:41', '2021-10-15 20:53:41', '2022-10-15 20:53:41'),
('7d99323fdb1b47051935c12290d2724ade57214e4f2a9fac63f577007bb0aa8a047b66834e2ef5d6', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-27 19:37:40', '2021-08-27 19:37:40', '2022-08-27 19:37:40'),
('7d9d37d38562f0a330c1723bee684403cc77ad0e0eef3fe821e9150fa5405794541ee1a29860cd7e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 07:47:01', '2021-11-22 07:47:01', '2022-11-22 07:47:01'),
('7d9e270e62b609dc21bc9e02242c086c07252c8c91cb0e09deb5473bacc55e8c669caba3b1593d8d', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-06 19:20:47', '2021-08-06 19:20:47', '2022-08-06 19:20:47'),
('7da15d42211a576240ac89542732f701f958fcd426e937148ec33726f723c8bd891b86f1f4e5237f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 02:16:56', '2021-09-13 02:16:56', '2022-09-13 02:16:56'),
('7dba58c8b14eb5a7726f8a67381c8755bc14ce8b7ae69fe317bc3bf7c971a59b34561a26bceae224', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-24 13:25:42', '2021-10-24 13:25:42', '2022-10-24 13:25:42'),
('7df26588448a61f4ed3b1072c2366bd08c7211b77fd7896e067c43e41be63a90e11ef70c878ea9f4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 20:04:59', '2021-08-12 20:04:59', '2022-08-12 20:04:59'),
('7e0883ad3f61f8ab323a30a249de3a51073de900cd9913e6a81fa29074b67bd325c098e4ae29f7c6', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-06 03:08:22', '2021-08-06 03:08:22', '2022-08-06 03:08:22'),
('7e1ddc3a85db7cef79d3bb2d1093721f002e24c79196d1194db9c34939cf605050d4225b856be58b', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-06 17:14:06', '2021-08-06 17:14:06', '2022-08-06 17:14:06'),
('7e35dfaea59e9bcdc5fbd70ea70bb17f66f07027029c0b701845fba98e42f0e6b1f050f89b6bedcf', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 20:31:23', '2021-08-16 20:31:23', '2022-08-16 20:31:23'),
('7e5eaa4cb02d9096a3be3de42ea66623b263ded5ed0350461d8bc8897cb3050ea0d3364c8d537cdd', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 21:29:51', '2021-09-15 21:29:51', '2022-09-15 21:29:51'),
('7e6804a8fe2b9c7e2eb88a614a33f5bfd4b9e0c7d0bc8a83a92e834d34bb24815b6cec48b4487c7e', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 11:10:30', '2021-10-19 11:10:30', '2022-10-19 11:10:30'),
('7e7151bf8f5a37a7d89dd8e09a3e0a69e7f04784204525ef62b2fb619de43b651f5798f0fb4c34a6', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-31 18:33:09', '2021-10-31 18:33:09', '2022-10-31 18:33:09'),
('7e7a226a6451fd5853054600d0070885babc30036c15db2eefedc6e237727640ecb901a415fc27b7', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:26:29', '2021-08-10 16:26:29', '2022-08-10 16:26:29'),
('7e8b62e2d21da6887512aae8584280ba161d209d76a87fafa5e73db2d1a2a80d88584bcee7a3b050', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 00:18:00', '2021-10-25 00:18:00', '2022-10-25 00:18:00'),
('7ea0ebad42376222474593a6d7bb16cce40834d51f2512fe0571aa0c96340ab6269ef37df2756ce3', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-22 07:46:28', '2021-11-22 07:46:28', '2022-11-22 07:46:28'),
('7ec1487a9dac595301499895b3a3bb3132d2598ce8ae77d232ed51080f1ab5b52b9677a4d564be7c', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-13 10:19:51', '2021-08-13 10:19:51', '2022-08-13 10:19:51'),
('7ee733440b727e54ca46dbdd401bbdb160811e5dd34e2ca019c5fa0bcdb268a3c5be9a6c25a54ac2', 20, 1, 'Personal Access Token', '[]', 0, '2021-08-27 07:05:45', '2021-08-27 07:05:45', '2022-08-27 07:05:45'),
('7f1a589e5a3b48aec2ab024baf6ecc0ec5ac565a742bafe33eb92aab7c19d25ea39822b5eb3551d9', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-25 05:36:52', '2021-11-25 05:36:52', '2022-11-25 05:36:52'),
('7f23853a39a6eda2c894ffbe2784e3c62ee3bc11bb2a6270705940840dbdee66472eb19ec5a1d638', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 09:09:06', '2021-08-30 09:09:06', '2022-08-30 09:09:06'),
('7f318737a7613fb7f648d5ac71639309b748e29aee24dfdadc7d9f8568ddb4d3c6b2286033a6896a', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-20 22:14:40', '2021-08-20 22:14:40', '2022-08-20 22:14:40'),
('7f85bab263db7af8e0338db7223c1bd48a3de27b7160898fd01a1eb03ba865aba66e12e8ef73643d', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-14 08:16:07', '2021-10-14 08:16:07', '2022-10-14 08:16:07'),
('7faaece1064541fac8b8cbc68198f66fe592e912ea2b5fd890c26b2bd486c1b011412afe587e8b71', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 13:02:50', '2021-09-05 13:02:50', '2022-09-05 13:02:50'),
('80095ef81be966187d1fd8dee3a5a77eb896af3f354583d6426fd93460da8a73b4735ae7f8bcc58b', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:12:39', '2021-11-03 16:12:39', '2022-11-03 16:12:39'),
('801655475abc24c9d2f4d847756b4e86de6ba2c8adefce2bd5c179d3b229de47cf9182a9f4ff3a34', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 13:44:35', '2021-11-18 13:44:35', '2022-11-18 13:44:35'),
('8021fb9094766d09828f34ec7e9887a5ebfad60fbad1b4dadfb8635c62ac182d9f9c11d9d94424a9', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-23 13:31:53', '2021-08-23 13:31:53', '2022-08-23 13:31:53'),
('804b0ed2ff3601476787fd6ddcc88a1800cb26482c21b449ebc36cd60a7616c4265df418be3aabf7', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 14:33:35', '2021-10-12 14:33:35', '2022-10-12 14:33:35'),
('80592fe4f7347374fccf41e10c6b68b1b4ac7ced67bf11854acc86bbc3c78870adf444e8147b3512', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-29 07:21:50', '2021-08-29 07:21:50', '2022-08-29 07:21:50'),
('807263521371998f909713ac26f19e2e862e10d25851c9aa2d6b85dd669e2486eb4ad0c7b84b8381', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 23:05:47', '2021-11-15 23:05:47', '2022-11-15 23:05:47'),
('80ee0614a46fbfe61da86b1c805af164917dead59c3245d5674eb804f21624eff9feb1d5c56f45eb', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-21 10:52:46', '2021-09-21 10:52:46', '2022-09-21 16:52:46'),
('8103ddfcc3928eface9e38958f88849db937bc028bf5904fda8259c0e616b64630d03a1514154daf', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 15:56:16', '2021-09-14 15:56:16', '2022-09-14 15:56:16'),
('8105636cfabc55ed5ecd40d605a25e6b05014fb9e51eee7225bce79acbc9d767ea0e179cd396998a', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:53:11', '2021-10-13 18:53:11', '2022-10-13 18:53:11'),
('812c4dcc7986e9aabefba0c0156356b0b1dec253227795b0fae1fe7f2a464cfe76ab4abc2b878be1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 02:26:48', '2021-11-28 02:26:48', '2022-11-28 02:26:48'),
('8134d8936c7b8188ccfa1fd8837140058ab211feeffdb9dcbb452177a8f59a9b91320ad233443f22', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 09:57:16', '2021-09-09 09:57:16', '2022-09-09 09:57:16'),
('81857f8dd971964a9ec33703d41669bc0bc9b4586ac929ed0c61d6d59a2498a1c0227157ce923ad0', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-22 15:53:06', '2021-11-22 15:53:06', '2022-11-22 15:53:06'),
('81a7fcbc09ea0b747a87d3a944b1cbd2967e2760e928aa1ee76966ad25e7b8f8c913eb64cc902274', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-09 09:57:46', '2021-09-09 09:57:46', '2022-09-09 09:57:46'),
('81c18f51e41750720d464439232f5295fd609a1e769f0fb85769f5feef045ad47f96f3a4fefe68c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-08 10:05:07', '2021-11-08 10:05:07', '2022-11-08 10:05:07'),
('81da3794fcd1ff86cda4600d293e4f3e5a8a1f4da34eb255fa9a78d9e5ea8ad875b5eeab51a88af8', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 21:51:04', '2021-10-19 21:51:04', '2022-10-19 21:51:04'),
('822a82d2de2d1a94feffe45a2cb59a0cae3da56a36284fae8e57bcaead08cbd7dd832b1ef3817935', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:12:48', '2021-10-25 12:12:48', '2022-10-25 12:12:48'),
('82545e064e8eedd0d3c66f77d9ac361ef38c8e47f517c3ffbc4cdcfd98e2d1555ad16bde6a04dfdd', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 20:30:19', '2021-09-15 20:30:19', '2022-09-15 20:30:19'),
('829ad33bbee0f2ee58d6a386305f428288a78b2b89c8a70704dfdc31dd94a09f399ca3dff22e35a2', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:54:36', '2021-11-29 11:54:36', '2022-11-29 11:54:36'),
('82ba9f85a57cab9f933fb66c2a7fdd3011bb19193486bb34ad0bf66897eacad4bab1a55ddbf2c8f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 11:12:10', '2021-08-31 11:12:10', '2022-08-31 11:12:10'),
('82d68c745ba42019ec5a2cc0cb7c3b34784d25aff402984c437c04610a614eb6930ea7ab048306da', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-24 12:31:24', '2021-11-24 12:31:24', '2022-11-24 12:31:24'),
('8304cbfa4f0addc18904effdfa87e96580f70d1b6eafeb3121706be27afe58b3a8acdfd0efd60548', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-19 09:53:14', '2021-11-19 09:53:14', '2022-11-19 09:53:14'),
('83094924fed13e08a180d312494a96e92a1dbbf44c096af568108b4386f8381c6602fbc7a2509809', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 20:23:40', '2021-11-23 20:23:40', '2022-11-23 20:23:40'),
('8361eeeb197539f70fa8a4341d0b40a941b5a5fd939bd5c6c02fccaf977241178aab8ae2679fa2eb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 15:43:19', '2021-11-10 15:43:19', '2022-11-10 15:43:19'),
('83cc5e5523500948c252007e15129335110abfe25199ce8e54952ef57aa8a3efed28bd3ff6db705e', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-23 05:30:09', '2021-08-23 05:30:09', '2022-08-23 05:30:09'),
('83d4771fcb1497a08caa9d4928172a6fb8a28607c11fdcd07d5b0d24d951aa535f49a749e9c7714c', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:03:59', '2021-11-03 16:03:59', '2022-11-03 16:03:59'),
('8420d52fa0acd03a64c95a18103f1a12a613ce3e1f6169cd968113e201a544b870ea21636be2fae1', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-13 20:12:56', '2021-11-13 20:12:56', '2022-11-13 20:12:56'),
('845dfefb9542d132eee075289d7cd4a846f4bf1c8db3e50d5c0afa05d77ce034b1e01f1bbb610cef', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-17 20:51:16', '2021-11-17 20:51:16', '2022-11-17 20:51:16'),
('84638f8ee0f847a1a48cb5be1b3805f3fc6015588243e7b8725e9445115d387e2a55568b4b6d37b9', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 04:23:10', '2021-08-26 04:23:10', '2022-08-26 04:23:10'),
('84836069673113a2973f1271d67ca828efa4e3ef3aaa390515432eabdd17c1349c266c98907365ca', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-14 19:13:41', '2021-10-14 19:13:41', '2022-10-14 19:13:41'),
('84e361306acdf97b4fbb6e74178b6e4e9eb362e188597a1f95a11219209b5d49f4cd0fce14b0e18f', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-28 19:39:48', '2021-10-28 19:39:48', '2022-10-28 19:39:48'),
('84e5862567ce9b9e82120803876d66b5528cbe4e1e8902890758ce5a6455ad3aa57cfaf910f013b2', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 13:58:19', '2021-09-05 13:58:19', '2022-09-05 13:58:19'),
('84fac453a1a02a35794fd559ef77116367205f8f3f2c664c4146a9fe0e1db8e39ba353b006ec8f88', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-13 07:43:43', '2021-08-13 07:43:43', '2022-08-13 07:43:43'),
('853a4c62c32745afc8def593e6500b5b3e1ea4aa9af04694802f689c9a5dd0673400c39f9c180357', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-30 23:07:18', '2021-10-30 23:07:18', '2022-10-30 23:07:18'),
('854a7c040b90717484483628696d3dfcb6e8c9706005c6d4e7263070ee6629a7eb8bad63553681dd', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-20 16:09:31', '2021-08-20 16:09:31', '2022-08-20 16:09:31'),
('856d17c4ac1b520701b83b230e0a328c92d4b80a57ceac8046eba6453a7f2420a691229f16cdfd01', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:36:01', '2021-11-25 12:36:01', '2022-11-25 12:36:01'),
('8589506bfb76da5c8e17f2d3bb035764a562a92732833c0d0faf29f16479f945c5428a3099434b97', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 01:51:08', '2021-10-21 01:51:08', '2022-10-21 01:51:08'),
('85dfd08f141f901326f9693f889dc597b1e8aa016e191f9d1dd60587a8cc80683b730a1737ce20bf', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-29 03:08:51', '2021-10-29 03:08:51', '2022-10-29 03:08:51'),
('85f51de31bcc8fa5542eb4f71a08e2f29a18ae6ba5d474e9a265b7411666546253ad3cd9618ea942', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-02 06:45:55', '2021-09-02 06:45:55', '2022-09-02 06:45:55'),
('85fb9ea7e5030bad7f3b179e0a85d58ac31394cf19df22e93c89c84f07280b0f448b33ca702c5566', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-10 21:22:51', '2021-09-10 21:22:51', '2022-09-10 21:22:51'),
('865893476e3405a7eb3befc386457b7d79953cc3987e59f33af9e4af993fad98ce163ac882513646', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-14 04:21:43', '2021-09-14 04:21:43', '2022-09-14 04:21:43'),
('86bfb032929c1acf59ea677c4f5b7337dac10f516519d22cebeffcc50d0f9fad4f1efa5bcf8822b6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:47:34', '2021-11-29 20:47:34', '2022-11-29 20:47:34'),
('87087328d137d7e1f497f0d7a0b6a6552df1c75ee5dbcdc7873799ddb5d0255f6d2e6d2af9a62736', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-12 10:39:49', '2021-09-12 10:39:49', '2022-09-12 10:39:49'),
('870e0121a52d3a60b5a46ae1a0d10194073a7048c41cb69c731e8b18b3e1280486f9a93431dc7e2f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 06:05:23', '2021-11-25 06:05:23', '2022-11-25 06:05:23'),
('8726499bda955cecde3c7409284a6feb318930f3d88195a91bf508ce0f2dd43abb3944a9cdf24423', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-15 15:09:48', '2021-08-15 15:09:48', '2022-08-15 15:09:48'),
('872c4d8a07d54095378174e02fa2208847bc09b75c4e4a9b6c40e114fcd89430e3fca9681f2ecbec', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-10 04:10:21', '2021-10-10 04:10:21', '2022-10-10 10:10:21'),
('8731d13deb06d4a380fa28513ab7aa7f10b1d3213bd47cc1cce255962785f991a5655036553502ed', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 07:01:07', '2021-11-03 07:01:07', '2022-11-03 07:01:07'),
('875260b029fbc16356143123b92de8d6d9e695f5d037e6fe725fa962eba9b59e577671685b81b984', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-28 22:26:01', '2021-10-28 22:26:01', '2022-10-28 22:26:01'),
('8768503130c9660d19acfd033048a5f2f6f6db7dbadda99527366cfa81e996925bbc143da754a0e4', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 06:48:11', '2021-11-25 06:48:11', '2022-11-25 06:48:11'),
('8775f78258e725a5930cd25960bc39ce5895d12c6ac454b58bb8d6a53cfaad4ff388d96cc5c08456', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-27 18:17:17', '2021-11-27 18:17:17', '2022-11-27 18:17:17'),
('87c31c56e86dbc62e976330c3da64a5af5d7cf75850fbfd41d9ca2f9f3b7794e3718b08e64f4f24e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 02:14:29', '2021-09-15 02:14:29', '2022-09-15 02:14:29'),
('87e50e18057d43313182f04adfe0c93dbaefca11d73e71b980b347df0a63343e777ce45b4e2f4995', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-08 19:49:49', '2021-11-08 19:49:49', '2022-11-08 19:49:49'),
('87f5b80eab551d96487d14b1269530754f9177363d16103bdc1c462a4d9ddcf0d398d1b35f8afba9', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-13 16:21:40', '2021-10-13 16:21:40', '2022-10-13 16:21:40'),
('8816a9cdda313d3ba5484e6dbd04550a601b7a6a57f317a43147db708d6e70ddc42ecded26ade854', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:36:15', '2021-10-13 18:36:15', '2022-10-13 18:36:15'),
('88212db9b0bd91f00bc32b44c19033d840239ee91bdfce9728939bb308768adc36173f2662b57d5f', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:57:09', '2021-06-07 23:57:09', '2022-06-08 05:57:09'),
('885ec73d36894637cd2372c707e6f83c0349bb3a0d0b092fcb368c3f8b7c466c1e28371bd0c869d8', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 10:02:32', '2021-10-14 10:02:32', '2022-10-14 10:02:32'),
('887100338714b64ca9ca1ccd98786560356974f311f2b321c0b4ce6d5cb6fdfbf8d435df368f8105', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-19 17:08:59', '2021-08-19 17:08:59', '2022-08-19 17:08:59'),
('888dbf7ee44e5fe1377e212830ec852f7b58f78b5bd5516d3dcd4c6b2d79011735c7f6291d4a5f3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-29 05:02:20', '2021-06-29 05:02:20', '2022-06-29 05:02:20'),
('88d7ff927f7346ab9597f55e108461aff5bef478883e992b9c23a2e29a25a50560b7f8dad2100df5', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 20:45:40', '2021-09-15 20:45:40', '2022-09-15 20:45:40'),
('88f81edb30b3442c2386d9e4d56994f7f3d2bae1bf61b69328fefd42de853c7aa790b59a41bec138', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 18:48:27', '2021-08-17 18:48:27', '2022-08-17 18:48:27'),
('88fb0fd41a625bbdc1a83d7c15f1172c388f2dc5649ac6a7ca044e78d69987806199cf4e65c4f937', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-29 05:39:35', '2021-10-29 05:39:35', '2022-10-29 05:39:35'),
('89453f2619a4ac4b83ef4aa28b9a0052ad328605e916bdfc98c8fde0e9996c5fce4ecc71fcda5cb5', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-03 07:39:37', '2021-09-03 07:39:37', '2022-09-03 07:39:37'),
('894a841e611db1c19862f435b1a77d425e0f490b7e92b9fa7132436fd8654527d7da4e3845d1a2e5', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-11 18:11:03', '2021-08-11 18:11:03', '2022-08-11 18:11:03'),
('898982f1f11c080adacd3aa12e753b2eb743134b6dbb42733aad31bd3438dddf666b756c87c274f8', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 23:07:02', '2021-11-29 23:07:02', '2022-11-29 23:07:02'),
('8991e39f1da0799ac522b2b7e44f6a569d6c53dc20af3aff14abbc69787ecaa5edee0bd2bff78d6a', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-26 01:56:42', '2021-10-26 01:56:42', '2022-10-26 01:56:42'),
('899d305e1de521885ae88d66613cc48e1fd4c313e27054394c589a5e6b57f86d04eacc5141080a51', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-23 22:45:57', '2021-10-23 22:45:57', '2022-10-23 22:45:57'),
('899e929f7aa5c410ddfa8ed753f50bea93760e47c29434f2366dd0299115aeb9d64b9f21f99e2b32', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 14:01:17', '2021-11-28 14:01:17', '2022-11-28 14:01:17'),
('89aeb631c1f7c74941a0f942e491ffefb67cbcd059aeb54fb44ae25be38ee69ebcef414fd1e3dc85', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:52:54', '2021-11-17 14:52:54', '2022-11-17 14:52:54'),
('89c8f8d74249a3336a2d72216ba176a0b2c0e4648d47d0ed2e1d83260d53b9ba16169c1173cd184e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 07:19:47', '2021-09-13 07:19:47', '2022-09-13 07:19:47'),
('89cdb6ddcb27657ef52bcf06537ab762394ee86d51f4f70c4c5c1f83f3850eb56b20d2310c31f583', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-29 20:09:30', '2021-10-29 20:09:30', '2022-10-29 20:09:30'),
('89d532b56374bd174d923f80f35adb5274b49606aa094ccbf42fb4e53c3e5235251f684581998768', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 08:33:39', '2021-09-01 08:33:39', '2022-09-01 08:33:39'),
('89f07b1ff838beebcacfead706218e6003a10108a4b1236578bba09b2d9798d50cdaee668b3c78f0', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:01:48', '2021-11-03 16:01:48', '2022-11-03 16:01:48'),
('8a508e24d69e66a11ec8ca58d3ce92273c740364769bfdbc0011b6e1381c2ab1e0f2767d5f777739', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 18:22:05', '2021-09-17 18:22:05', '2022-09-17 18:22:05'),
('8a57cf385c2b69af89002f18f17a31c08428a0b5d09f54ddf0d5b5235a7cae0b3d2ad171fd665196', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 16:19:37', '2021-11-14 16:19:37', '2022-11-14 16:19:37'),
('8a854d2dd1077e9b6c801ebe4e5ad101d89aea20f2dab14ad31122ed12eada30718f3f3fcb150b92', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-08 05:08:51', '2021-11-08 05:08:51', '2022-11-08 05:08:51'),
('8a94150bf00ea6e8efa9f7b7cd22ca1defcff479867f02cab79e66b05c42f1754a0e18fb82689778', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-16 20:23:29', '2021-08-16 20:23:29', '2022-08-16 20:23:29'),
('8a9a8815da07042b600c620742fae5c15fa120a90d81f8802b02b285b614ba95097cef7c14343603', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 05:02:08', '2021-11-30 05:02:08', '2022-11-30 05:02:08'),
('8a9da1731307196b7d77ca4dc7f91617e4e94cd37b4e2715a75df9e4785f9c1b2a64b6ba879ad44f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 00:37:54', '2021-11-07 00:37:54', '2022-11-07 00:37:54'),
('8aa6e7f8f79bc6426f8276ec3a48d1c9614d2da35114da4cc8ebbb947e36d4d49c8955b2ce41be6f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 01:01:21', '2021-08-20 01:01:21', '2022-08-20 01:01:21'),
('8aba6f1315f6a957151f42edc1b6302a2a16676e78660e8674971ac9710f352b991ffb5d318ed4df', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-13 17:16:44', '2021-09-13 17:16:44', '2022-09-13 17:16:44'),
('8acfecb3de0cfea21161a1f7e25d520887e9bc64a71eed817626f3425d1f297f86eed015a25bbfbc', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-11 08:32:56', '2021-08-11 08:32:56', '2022-08-11 08:32:56'),
('8ad2cc780fd92366a2b25106ec6970ebb5261e9354f68ea70c420d832020f88415f4b3808ecff7c7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 04:34:43', '2021-08-23 04:34:43', '2022-08-23 04:34:43'),
('8b103cc20afd824e5e6993b69d4e2a79ebeefc81727fa49b527da2db4fcddd7c3858b26c9addbef6', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-15 04:29:44', '2021-09-15 04:29:44', '2022-09-15 04:29:44'),
('8b133341e49cc76183bb97816b4e71716992dc1aa99c88c26e5c533a0cc2a5fbd9073815bae7fa64', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:23:58', '2021-08-22 14:23:58', '2022-08-22 14:23:58'),
('8b3a4fa7de0e85ce5a93d1d90cfe30562e9660a5b1a9215d9f54c89aa35ce848d118ce0d1b707c9d', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-19 14:37:50', '2021-10-19 14:37:50', '2022-10-19 14:37:50'),
('8b426893d899b144df2a6a2780e978889b2301f9a08483b971963c62b4ec17b53f0fcc88086bbc23', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-15 01:59:05', '2021-10-15 01:59:05', '2022-10-15 01:59:05'),
('8b6a15e013dd26caaf2e4991070769d2f8cb44c8bf4449b8b13f65779996c3df8ee79fec30c85592', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-26 22:38:25', '2021-11-26 22:38:25', '2022-11-26 22:38:25'),
('8b875ce4072e45b4da37978342f77c2989bba08deb8372c1f714593530f0fee32eda831094da759e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 09:16:13', '2021-08-31 09:16:13', '2022-08-31 09:16:13'),
('8b8cc6a9f5998d917702f61ee58ba5062337f47eabb6269f9c6d92e603e2cdcabab269d9f66cd1ae', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 13:19:20', '2021-11-22 13:19:20', '2022-11-22 13:19:20'),
('8b97921b8282c8de6711f111d1809977a1109003921fbf8531b48840165fe0e219d4252c52d473dd', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-27 19:39:36', '2021-08-27 19:39:36', '2022-08-27 19:39:36'),
('8bb391655117fc3ee4437dce4badfaec1e0d1f395c4d6b47b3f68fde61bf3f6872fa549afc67c5c4', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-30 09:03:40', '2021-08-30 09:03:40', '2022-08-30 09:03:40'),
('8bb7833218ddfa204b1cda7e6a2bd0bcc847fa41a03f02ce789794d13b4e276ba3c2bec9ee3e9f7f', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-06 03:01:03', '2021-08-06 03:01:03', '2022-08-06 03:01:03'),
('8bda2a4824d644351a3d0b3fd5759ed2c954634b393d02900a7547d9d1eb77ba0ce5f091a05fe0af', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 10:13:10', '2021-10-14 10:13:10', '2022-10-14 10:13:10'),
('8bef5208e13ea5744a8eb47967a73400ee6e1877ff3daaca4e9607205dbb5a4478883e4be1abe530', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 14:03:53', '2021-11-25 14:03:53', '2022-11-25 14:03:53'),
('8bf01bdefabe0e2e15a642a8336aca35ff9db38a9631cc4ca85481eee19da4ff0f8442ccf94342ef', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-18 23:42:55', '2021-09-18 23:42:55', '2022-09-18 23:42:55'),
('8bfb73c8f90dad495104420a7078dd16cb6111b9213e8c97f0ec5733474f83af9823dc453b20bd18', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-30 18:58:22', '2021-08-30 18:58:22', '2022-08-30 18:58:22'),
('8bff6b5dbd94365e53dc1ca2592af47c3dcd0f583df0e1212990336ab4dc6251f9ceb9a7b92ff975', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 10:43:17', '2021-09-07 10:43:17', '2022-09-07 10:43:17'),
('8c1400ddb31258e5100141e286ca4b43bddec9eb847f0f36cbf51bf8f7e5695b653511c43385e33a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-20 22:15:24', '2021-08-20 22:15:24', '2022-08-20 22:15:24'),
('8c897b8ad80ae071cb060ed1039bc2c3074aefc7f6130ba5989cecfdaaae8153b867dc830ede81b9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 00:00:05', '2021-11-26 00:00:05', '2022-11-26 00:00:05'),
('8caafeb324752bcccc115ea5dba32cf31e704f243b698c600ca31858c066ef8b1ca847f81ff3b7cd', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-08 17:40:07', '2021-09-08 17:40:07', '2022-09-08 17:40:07'),
('8ccbd5c71225061d721799fdc7f75d81cd3be00bfe150a19d70f6c6c1e074274a1f0e4693f9b84ca', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:42:38', '2021-09-09 14:42:38', '2022-09-09 14:42:38'),
('8d01c12abf098ec92f4a01511f3cd9c9ad5655d0b5aadb9ce4fdb4bdaf171bd958888f7ca223b768', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-20 00:58:55', '2021-08-20 00:58:55', '2022-08-20 00:58:55'),
('8d23bf5b2e25b19d0255337d21efe011895071aa3d99373e4b39103879a3338db94156461fbc4416', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:01:58', '2021-08-28 05:01:58', '2022-08-28 05:01:58'),
('8d24524ed3b075c59637c2039344cf4e5ac073f50cf7cc7fc8d8fe89770b9b642fbf71c699f3def2', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 13:35:24', '2021-10-19 13:35:24', '2022-10-19 13:35:24'),
('8d586ac804955704635b04c38d8686f4cba1c59a454c239179ad4932d425d4a245d199daf91e38e6', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-14 14:03:44', '2021-08-14 14:03:44', '2022-08-14 14:03:44'),
('8d58d99cba654ce412bea580e514da47faeaff58ed6580fc648b1c58f936f0b12e7abc890697cdaa', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-19 14:11:56', '2021-10-19 14:11:56', '2022-10-19 14:11:56'),
('8dd13ccdf7d858350549456e34551b94c97de6397c8cb711d831ca71baf5e6d57731091bca13e8cb', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-06 20:05:55', '2021-08-06 20:05:55', '2022-08-06 20:05:55');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('8dd35cf35eaa557867b53b2de84d98c1f5fefd584531dd98fad7b92233f2747d4b6079956790e0ed', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 17:21:56', '2021-11-29 17:21:56', '2022-11-29 17:21:56'),
('8e1d4a008fb6d5b10f7534d686e5077346c6ab996a6218ff2336678973bb0cecf8f1d3a10aebe2d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 15:15:33', '2021-09-03 15:15:33', '2022-09-03 15:15:33'),
('8e84ee00c7a53ba6a45d4d2723e794a5578d6240af4ff4c5da25ece093c323b2a43249f7b286c59e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-13 10:05:17', '2021-08-13 10:05:17', '2022-08-13 10:05:17'),
('8ece5c42ebae6dffbbc2a26f60a6d673d44473f971337cfef13340ce3fc25deaadd7629ec999ad86', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-13 10:21:37', '2021-08-13 10:21:37', '2022-08-13 10:21:37'),
('8efbf08f74395d053b199920189e94914eb6e2391f2a21f28758f809b2a986506e7da1e898b5f7eb', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:07:27', '2021-11-03 21:07:27', '2022-11-03 21:07:27'),
('8f08b1e0d18a4e8da0098ef495c45e02090383dec79449bad24405c26af55fecdbf03d1e22b23920', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 19:55:03', '2021-11-29 19:55:03', '2022-11-29 19:55:03'),
('8f48c991738ad25a00e5001634130ceb8e73b559e8a5747b5bfa025c26ffbb496769aa64bdb4ee77', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-01 16:31:36', '2021-11-01 16:31:36', '2022-11-01 16:31:36'),
('8f4d0674d9260626529ca3c602697081a1b77ee8c396bcb8b3cf5762328ed80cee909f2a72901de3', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-11 06:53:04', '2021-10-11 06:53:04', '2022-10-11 12:53:04'),
('8f7aabad95536fdd63a6217a8258d6762ae66dd8395230edb0aa8ea7301abe5de6ca303d09b20761', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-23 03:50:52', '2021-08-23 03:50:52', '2022-08-23 03:50:52'),
('8f8805d4e8528adb6a2cf0e933d715712c157508a6ba2c261919fb5e639b347630778eee31bf22be', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-21 16:55:51', '2021-11-21 16:55:51', '2022-11-21 16:55:51'),
('8f90e61e08b96ebd16de307e0fb2b9d3cfa0408524b8761d23b34ddcb6c1e4c8f514d4a30961682a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-26 03:29:51', '2021-08-26 03:29:51', '2022-08-26 03:29:51'),
('8fd383f15770a6400b4fdacbc0c9f545b95e39a90a9ee25c5f65621ecaa0363b16f1484ef15b5f72', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 21:24:57', '2021-08-07 21:24:57', '2022-08-07 21:24:57'),
('8fd9dabaf43a780c3403aeb8e2163901c6b5ccfa64b6ea80c7feec7291d679d8588e32a862ceaada', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-04 16:27:43', '2021-11-04 16:27:43', '2022-11-04 16:27:43'),
('8fde30af373f42b397c4099ac8a334c8bd65db1cb8af9481bd41c33075f11e2716f36b213159540f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 07:35:02', '2021-09-07 07:35:02', '2022-09-07 07:35:02'),
('8fe2eebb339ade469d70c2158214d65f8e76cdccf1b6c5f0e61bb722c9732137425608d0f79224f5', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-10 06:50:10', '2021-10-10 06:50:10', '2022-10-10 12:50:10'),
('8fe3eeb53af6ab9cd9ddce792bca790733e06303bc2a274cfbebee4083383a2083456dfb4d06d179', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-21 07:49:12', '2021-12-21 07:49:12', '2022-12-21 13:49:12'),
('8ffd4d453675a5f6e09658034246a301d1872e93b986a51e969b390b90a55417e5b2104e204aa30e', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-12 21:33:42', '2021-11-12 21:33:42', '2022-11-12 21:33:42'),
('900c2cfb407b1f8d2903d24ad1f222055b27d5d03f32188668346c25509d6ae2f782f82341bb6462', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-14 01:43:51', '2021-10-14 01:43:51', '2022-10-14 01:43:51'),
('903464fd9d6496b8535d2f3226b98fc3e70197567af6263a4bdf5cef6a7f197e3c726f62e4809128', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-06 15:32:48', '2021-09-06 15:32:48', '2022-09-06 15:32:48'),
('903b602ecc1065650ed6f6b49d853b9421b673ea1b932a6071569c540c2cd26995546bb7fc595e3f', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 13:45:13', '2021-09-15 13:45:13', '2022-09-15 13:45:13'),
('904dcc360901855420c8b7e54a4b923b3d858f7f5bceefba2f38d05989a08a3b866173b12b486a85', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:03:43', '2021-11-25 12:03:43', '2022-11-25 12:03:43'),
('904fa7c8d585e1a368f4ab1639dbdba845fc27da38ea1f928fb96e9a3381c649061012762af11789', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-24 15:37:07', '2021-08-24 15:37:07', '2022-08-24 15:37:07'),
('905e85f76008e95b25bb85e1a69d7bb8dc7bbfe629ec19601ae9416c8d67a47dea209332c4635531', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-28 13:13:21', '2021-11-28 13:13:21', '2022-11-28 13:13:21'),
('908992556e8a80ed836518d8bd4792f80c47614052ca0238b59f9f533103162f4d60df289b790de1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 16:36:36', '2021-11-05 16:36:36', '2022-11-05 16:36:36'),
('90984659a8bdb60fb19489154e2fa30e92353358bb0abd99abc5fc358ea5d3dbfe5ee283ce399da0', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-23 08:37:32', '2021-11-23 08:37:32', '2022-11-23 08:37:32'),
('90c6a484e65756594a65cbbf33ebaaedb7ec957fb0ea8cb0d726b34d1f1e6704bf9a72d92c4829b3', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-13 15:12:14', '2021-08-13 15:12:14', '2022-08-13 15:12:14'),
('90c7d397fed52814141ab31d21e19cad11b9ef6b51fe47e36b404f0d786e44ca4beda386eddc40cb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-28 01:38:33', '2021-11-28 01:38:33', '2022-11-28 01:38:33'),
('90cb923da639b4529385a1966ba8bfc1c29817727d57814824a6f7fdd5e3d5c84a722908bc802d54', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-02 07:48:37', '2021-11-02 07:48:37', '2022-11-02 07:48:37'),
('90fb83a808ac6589ee8b8ec5b58833c6d41d4849683a84e9137358019ca8fcab1832400702e3005a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 04:17:07', '2021-12-02 04:17:07', '2022-12-02 04:17:07'),
('91282ba1bc66eb75952bc92fe9defdde10c306befbe5a1927ff557564ac4c4cd7973b7c84d041dcc', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 09:48:30', '2021-08-30 09:48:30', '2022-08-30 09:48:30'),
('912d9ad1aa1129eac819751a50e8edb6d399efb933b7db6098414bc50d40eb563a67801c843a45c4', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-05 07:01:31', '2021-11-05 07:01:31', '2022-11-05 07:01:31'),
('9148c0baf15fd35fd8a8b40dc1141daa2800d7d07cc8d43d032dbd5c2d8a21fc9043eb0cb8485aa3', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 06:11:54', '2021-11-02 06:11:54', '2022-11-02 06:11:54'),
('915128b0b61b4bc1dd67d8ebdc8a69b6c3ad11484643fd3f5a8aa2196f8ac2b5e435a5ce891cd9be', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-23 07:40:21', '2021-08-23 07:40:21', '2022-08-23 07:40:21'),
('91516ec356ae80acbf4379895c35fc60e422b948e85d130b26ce1dccc8734b9324b1eddc26e5a5b1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 13:12:23', '2021-08-06 13:12:23', '2022-08-06 13:12:23'),
('9178e4a7fcd85e57e9009591c0d9063a2836ad6002cded74201972ffeeb6acfb1f6fa7601131e74b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 14:11:20', '2021-08-24 14:11:20', '2022-08-24 14:11:20'),
('917a253fb18d1b9e4654bc26e9a15717e14336bce8c5e15bad52c4d7085cb37c1f364beb3874e61b', 20, 1, 'Personal Access Token', '[]', 0, '2021-09-03 04:13:21', '2021-09-03 04:13:21', '2022-09-03 04:13:21'),
('91adbebbe04eadb402d1de05452b0ae340acf476221c55867bbd361d0cd8974f6b0c56adeacf6b26', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 19:13:16', '2021-10-14 19:13:16', '2022-10-14 19:13:16'),
('9202e066be66ca079c3804b8688583d1d0a46901cdaa15b9a15fbae30bd3767507af4eaa4437160c', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 14:18:36', '2021-09-01 14:18:36', '2022-09-01 14:18:36'),
('92364488fdcc160810c48d094813eb54e95b7f8de68fd6e92f6ef06a7273023f3574bec99fee7ec5', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-25 04:30:23', '2021-10-25 04:30:23', '2022-10-25 04:30:23'),
('9238e8dbef606cde25b4bc039baa4fe4ad5d4b64265d98b1be37807f829f72dff0a2041526f1a561', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-26 22:36:08', '2021-11-26 22:36:08', '2022-11-26 22:36:08'),
('92ab88b944ab7d4013fcf25fd660739e13fe7ca270d26d20e3ecb6b204dff1a33068a13a57d5aa5f', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-26 10:55:59', '2021-10-26 10:55:59', '2022-10-26 10:55:59'),
('92eacbfd1670d735246a8df9184dc015f326ab77e90b4c24745c86f5c2d8b264cfa7d83ca82dddca', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-30 17:10:21', '2021-10-30 17:10:21', '2022-10-30 17:10:21'),
('93006d2d2f336fa0db9f525fcb317d3101d250705ea7356dcb29ea965842f7391e0bcf355524d930', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 04:25:43', '2021-09-14 04:25:43', '2022-09-14 04:25:43'),
('933761f2b149fdad4360639cdc5d8affc4cb55fc3d8e574b35c5042353e6c118f0502fa4ddc4f692', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-07 09:38:02', '2021-08-07 09:38:02', '2022-08-07 09:38:02'),
('93571e5d907169951033aa0462ea747db8f8fc26110a20ac11b3b1e603070c468bdd8ceede3d6f10', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:15:56', '2021-10-13 18:15:56', '2022-10-13 18:15:56'),
('935cc6a3d7a4d7eef618d8608463eadb303df305a4cac57c47850fbb5960a98ccf592ca627fc8ce5', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 10:17:59', '2021-09-18 10:17:59', '2022-09-18 10:17:59'),
('93a2bc582227983b54b37297591786d2d5b96992e34f99229abd95105b2e01b1833ca61a861a3630', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-30 07:41:19', '2021-11-30 07:41:19', '2022-11-30 07:41:19'),
('93b8a14434066c66e293ee2b6c84ace1381cc43e38cfe7761b7ae2700e039b505a4ba26e21915c78', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 13:59:24', '2021-09-09 13:59:24', '2022-09-09 13:59:24'),
('93d5f7692c2deec106fa02cce814da3150bb04af3c5daef18001cec0f1ed53bd3c89aef01bc15ff6', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 06:59:40', '2021-09-15 06:59:40', '2022-09-15 06:59:40'),
('93e650d9d5149e0cb5bae10f5a5ccacf78dd5f0d833185844db23322c4f0e4be5a80831247f0113c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 05:19:20', '2021-10-17 05:19:20', '2022-10-17 05:19:20'),
('93ef451a085a1a9829332b8d22eea41263a788f88d9749ed8730633d6177b9a959300f2579ea0c16', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-11 21:30:42', '2021-09-11 21:30:42', '2022-09-11 21:30:42'),
('941f4fe9689bb701e9a972df2d086cdf694a0260747abf0912eb07c2a4250f22d967616ef51d61c8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 15:22:58', '2021-08-23 15:22:58', '2022-08-23 15:22:58'),
('942554a0ddc0634d8b4cdd7d1a130eeb9b3879009438f3c51394e35350ba8a7bb42f6cab2e44f9f9', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-29 14:00:41', '2021-11-29 14:00:41', '2022-11-29 14:00:41'),
('9456d551a0632c214d4b7a5aa1b472f53b4ee48d787ed454d52c8121c047dfa985d39ee4e25e452f', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-23 17:19:20', '2021-10-23 17:19:20', '2022-10-23 17:19:20'),
('946a88884005875795287a55ab39611ff50e0900812366212ceef6c55ae5eda9b3cf0d8694db946f', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-24 07:13:55', '2021-10-24 07:13:55', '2022-10-24 07:13:55'),
('94a93e73577daaa131aba761cc3c875a0058b98dac194c949bad588464557093be54dcc08e5cccd7', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-14 09:41:26', '2021-08-14 09:41:26', '2022-08-14 09:41:26'),
('94d8c4263cd06eed136590ecbd796ed4ca7261950c6fc12ee156522921382301f04274cec525b5eb', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-06 06:53:40', '2021-08-06 06:53:40', '2022-08-06 06:53:40'),
('94e2dc4a2a613d0e2586fbf6816be94777168551c2bb4156c02104c164b3b785f883135cc424fa5d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-02 19:11:15', '2021-11-02 19:11:15', '2022-11-02 19:11:15'),
('94f031da094e3669bcfff3ee799bfbff548be55a8919a2feae32ee914b5c6b33a6a00875573c313c', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-09 00:25:36', '2021-08-09 00:25:36', '2022-08-09 00:25:36'),
('9520948ffbcf696b8830be3c944307ea6b7cfa2240d6f6386c742261bb44a5d263e69e87fe2c73e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 23:59:14', '2021-11-25 23:59:14', '2022-11-25 23:59:14'),
('9541be4a0ba5b2b3153b7df26a123a53a99346151911e7c6d8810b9d98e04d5ccc6c8c4ff2a424b0', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-26 05:35:55', '2021-08-26 05:35:55', '2022-08-26 05:35:55'),
('955a1061724a1cdbf19163baaa20b260b46410d3f78070444ab69ba025cac3e5c7aaf39b972f9bf1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 22:47:35', '2021-09-01 22:47:35', '2022-09-01 22:47:35'),
('955cdb8534ccd89f2dfc605393358a316fbd59e5f97be3fa203771e4de03b955dfaaf9aa846bf980', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 03:51:55', '2021-08-15 03:51:55', '2022-08-15 03:51:55'),
('955cdda7a1f4a8177b1b001b159bcc7996b54fd4ce6290c78397b7bbedc33eea3663c191851af2a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-29 10:35:53', '2021-08-29 10:35:53', '2022-08-29 10:35:53'),
('95717322f7208170a015812a9a4d1c81ebd64d12f0004d49cc5ab103a10726ead7dd3b87727dca79', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-26 05:37:54', '2021-08-26 05:37:54', '2022-08-26 05:37:54'),
('957a4e10504c42e7fc3922f6c462320d5396d2c551d75e848c32b4eb0cf1bacf8629a993d5c34fef', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-01 03:51:02', '2021-07-01 03:51:02', '2022-07-01 09:51:02'),
('959183220ee5dc93dfcdf0c603ff24a451abd5de2f4ab23588c68e6a9d8d6f15a6b998335c9d7347', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 20:40:31', '2021-09-15 20:40:31', '2022-09-15 20:40:31'),
('961b27a4f7e26116d8d0b027fa0c8d2e13d69fdd14e2471b28530d0f00c24095dee7e827130d4dfb', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-01 14:59:59', '2021-12-01 14:59:59', '2022-12-01 14:59:59'),
('962c25f5eefd051458e0ad6221e0d81d580f6445511ea50c86ce9aadf5fc7e71392c133cd2776b21', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-25 15:56:49', '2021-11-25 15:56:49', '2022-11-25 15:56:49'),
('962d820a488380271ba79770c20080448490314ef6a703ddfeace79dc01f148d05b0367de9b9de46', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 18:03:12', '2021-08-24 18:03:12', '2022-08-24 18:03:12'),
('964dbd21787d9582337890d6346f79b5bf451b20d3486c278285eb2d4bd4ef47071ce617284ff814', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-21 05:36:09', '2021-11-21 05:36:09', '2022-11-21 05:36:09'),
('96b3020fa83b9ff7f4520050304602e90fbb48739a21d221407e42e2df1861e00dac1825ded327ea', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:05:57', '2021-08-10 07:05:57', '2022-08-10 07:05:57'),
('96b44415a5e7f0ea712ebca1350280c13bf5ba72e7e85f1e69f31acd083c9279bdab693a680f408d', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-20 01:07:31', '2021-08-20 01:07:31', '2022-08-20 01:07:31'),
('96e2745c3ba30e1daf62ba90dbd0c9b81eae115c8b4ddd0fd59df719850ba024fdb97f34252a4b7c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-01 09:46:49', '2021-09-01 09:46:49', '2022-09-01 09:46:49'),
('9741e7de73189635ee8f2b9b98ad4186318211edfbe55bb5a39aaa1e2f590914c2795faf94e2ce86', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-10 05:53:31', '2021-10-10 05:53:31', '2022-10-10 11:53:31'),
('980521f6f72ec5d5b9f6685150e50dfe91b9f768c8f1cab8703146d9c821526b5fac1411ced09cce', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-13 02:39:45', '2021-08-13 02:39:45', '2022-08-13 02:39:45'),
('982d574fc61c5f9112e61565cf12bdc476410a167702505999fb421444ccbc5248c25e1b524c95e4', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:31:16', '2021-10-24 05:31:16', '2022-10-24 05:31:16'),
('9832f4a0884fb343f8d8832e29337a7fdd4c233d94958a3993027a4a6d5b3246d3605081f8ea162d', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-28 14:41:14', '2021-11-28 14:41:14', '2022-11-28 14:41:14'),
('9843278daab6cfbfa4b01766de48fe368b7dec8d4513ff0a715a5e34b112feee031d72aaf957f223', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 05:53:43', '2021-08-06 05:53:43', '2022-08-06 05:53:43'),
('9845b88b5bb383aefa2df35e658ed16a75b17792f5792c88f70ee4b00cae1ae9da1adaa403ecdaf8', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 05:48:44', '2021-09-15 05:48:44', '2022-09-15 05:48:44'),
('986b0fbc3d2da3abb566cd8e1ee81d4fe5dbaff6b082db486e1d941caeac90f31c13140d62340473', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-18 11:20:03', '2021-10-18 11:20:03', '2022-10-18 11:20:03'),
('98fe938cf6f49cb7456e80df97ae04ed0417b8a24d76fac09e6d063ced0e25564c3a862d5b51a903', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-20 20:38:04', '2021-11-20 20:38:04', '2022-11-20 20:38:04'),
('99227cc9a195167654514de5bb3e34670dd56508c7390078ae92df03b5b95ad5459b68e53f78850e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 05:36:49', '2021-08-23 05:36:49', '2022-08-23 05:36:49'),
('99304c160a82bf2da514a702b2a749f55367b77bcbd4cff9c3f3bfbc072cfeba7a8dd7ed0638e909', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-27 12:11:57', '2021-11-27 12:11:57', '2022-11-27 12:11:57'),
('993b411914930c9b67c5cfee0f5f13f1f694f79675241b00a8d317d1174947b1b3ed10fc973c838d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 13:16:06', '2021-10-21 13:16:06', '2022-10-21 13:16:06'),
('995854b9add2317fe0565154c522222b9ae8421a64ce2ff3e3070fac9460f7630b0462d4f463bb02', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 17:26:47', '2021-11-13 17:26:47', '2022-11-13 17:26:47'),
('99fd9f44889ab735dbbb0823b904730a55fc3a5cdc726b71fb60109c003f232948586bd8dca799b3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-05 19:20:15', '2021-08-05 19:20:15', '2022-08-05 19:20:15'),
('9a18912fa1b18edbdb176c07bf7c6192884c9191e671874364ebe9746b58b2befe1ba3fa7c08866b', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 04:51:47', '2021-09-01 04:51:47', '2022-09-01 04:51:47'),
('9a3f9a39b7afa335d726acff357d8eac78f3da30c04fbf0de8ba1a0019ed1a25a54f71c16b40d465', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-13 15:11:41', '2021-08-13 15:11:41', '2022-08-13 15:11:41'),
('9a44506db99d2de0134a6d3524c219f4f9e7c59787669ffb5f0e4dd6b3f27c9c5a007fc5045d28f2', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-27 06:15:05', '2021-10-27 06:15:05', '2022-10-27 06:15:05'),
('9a45cc90304c91179e155d835d5b16be63e07b845b707a22f355dd34c5f5c50c068f97cb71e7334f', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-12 14:33:28', '2021-09-12 14:33:28', '2022-09-12 14:33:28'),
('9a4979f779a9b4030bdc0d8a1bf243da59fd4494418c2d5887e2f5308d6059f888ee98a14b2ab05d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 15:13:32', '2021-08-23 15:13:32', '2022-08-23 15:13:32'),
('9a4c6cc70658de59af05cf87b28b3a1c69f92782592b1fb60970dc8053a1209b6949c124be822bc2', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 04:19:54', '2021-08-10 04:19:54', '2022-08-10 04:19:54'),
('9a5b6662861c410029adc7b5a2114dec8bea7c4db63796524874637b190c4497e43a0524e4ae5b8b', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 06:34:19', '2021-12-01 06:34:19', '2022-12-01 06:34:19'),
('9a6e99d1b76e5aae8ec210f33a0e529c6b1ba6edb16f1478d1b185ff1d103bbb1ddab24b9fdf9a97', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-30 09:57:36', '2021-11-30 09:57:36', '2022-11-30 09:57:36'),
('9a7695291336dddb4994e081721cd821078dcd74d7532f94d4a8c4fcdafbceeb5f2b91c8b864236a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 11:04:09', '2021-09-05 11:04:09', '2022-09-05 11:04:09'),
('9ac1a0417e14a6e95f27c00a5be7de3c70030029f17b17ad8a60c2268802a11bb20b75b356c22cf1', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-19 20:02:33', '2021-10-19 20:02:33', '2022-10-19 20:02:33'),
('9b0686203e1ea0eb803690e669487fa91dd7df7b1f58ef6601b0d19512a5d9a55df6b449da4cd0df', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 22:52:27', '2021-08-13 22:52:27', '2022-08-13 22:52:27'),
('9b46ac5860efaab8164601f3ca6a0f92f660d7e5c7d6494a7e1f06fd17a43b38b822685fb3213d69', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-19 18:18:31', '2021-11-19 18:18:31', '2022-11-19 18:18:31'),
('9b47ea6e50e143b61438360349b549371a874e04fe1ead8684ea5f51203ae7cb52c25dc7a2ce8a34', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 01:00:08', '2021-09-04 01:00:08', '2022-09-04 01:00:08'),
('9b4f86266fca5f1dd6c43c1bf72a258bd8f139b5596c65f064e23c4225d2365ce3b68440d1a6adfe', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:08:23', '2021-10-13 16:08:23', '2022-10-13 16:08:23'),
('9b51ea34e03690d5bb569af6be79e4c902c4fd6690033c34d47e4ea395be2e4272a0061b6b4d2a03', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-31 06:41:01', '2021-08-31 06:41:01', '2022-08-31 06:41:01'),
('9b714ad1d9da5469cedcc32bcf37db7c0f739340414b62bb8b6ea8bfdd65a93b93a7531f16d47e6c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 14:47:18', '2021-09-05 14:47:18', '2022-09-05 14:47:18'),
('9b7989eac71605295a6837d9af5d2c5fa09fb68d11f588b9cb8a6fc841d2c0aced988b43b39b97ab', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 02:07:23', '2021-08-17 02:07:23', '2022-08-17 02:07:23'),
('9c97f96c1f8a9fb760d0462d514daae864a6af25c079a1c9f7c595289f732b9f7554e30b68acbbf7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-25 11:15:30', '2021-10-25 11:15:30', '2022-10-25 11:15:30'),
('9cb1eb9ce4af7d3ee6f200f6a228922178cded3cc0d1ab2dfcea70b705f496108ad8828cc1f4e0b8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-25 00:57:30', '2021-08-25 00:57:30', '2022-08-25 00:57:30'),
('9d03daa46ec74ee23462837920b8448f5b28bba33e3e2d0eaec5424a94fcba9fa4561192410a53e7', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 22:55:13', '2021-10-17 22:55:13', '2022-10-17 22:55:13'),
('9d0ed3d228247cf913d39909b8bf5a430f332d58f58a7ccba81df5d2a238110e3e59864fe43c8045', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-15 09:11:20', '2021-10-15 09:11:20', '2022-10-15 09:11:20'),
('9d18ec3dbe6669c5b16f2db86ffc0f30d537e19e00179d74b495e645382209ef49ce60ee001d8f5b', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:06:19', '2021-11-17 19:06:19', '2022-11-17 19:06:19'),
('9d30037d76c373e829c75253b0cad0f684acb46f86c16f46e595d681b0794509785461c66e1cc2dc', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-19 07:43:40', '2021-09-19 07:43:40', '2022-09-19 13:43:40'),
('9d77328fd1640fb2bf5e243b05ae905d28e59d6292f59a75df0189d959c5c43279200d47b29badc0', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-04 06:16:33', '2021-11-04 06:16:33', '2022-11-04 06:16:33'),
('9d7bbb7e778f6456898623647f1cfbc2b8d7f8745499a9a93ec6ef2595a3826001b8eba15937e2eb', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-12 09:38:31', '2021-08-12 09:38:31', '2022-08-12 09:38:31'),
('9da5aa1dc4b799536b4aacf111a5b60bf6bd12d28f788b56dce049497cfe81c5a72f2da2468ae4e0', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 17:04:40', '2021-08-30 17:04:40', '2022-08-30 17:04:40'),
('9dc9994c0bea5307d6f00b4a5df17b67f1211e194de4aaa0cec441f4c0d9dd513665173a763577a2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:58:25', '2021-11-29 11:58:25', '2022-11-29 11:58:25'),
('9df372aecf398bb690c4b1a254e265e1c901ef27e3a846d224e497a2123af5f57d8e771b4ffe91aa', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-14 10:12:27', '2021-10-14 10:12:27', '2022-10-14 10:12:27'),
('9dfc481c4cbfd239affb945d6890a14ca21bdaf70b6a098f13fd9aa5585cede58bc17db2a2385521', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-02 11:45:37', '2021-11-02 11:45:37', '2022-11-02 11:45:37'),
('9e0780288f4408887c1b0183e9850d40850d0eddc8cf68e9760deed0a31ffd84e11a855196ecbdc1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 12:10:25', '2021-10-26 12:10:25', '2022-10-26 12:10:25'),
('9e3af6994c5e88ef447f67d55dbd4613d810afb4632e242d4cece384f2cd999f979ad59daea50028', 22, 1, 'Personal Access Token', '[]', 0, '2021-12-01 21:16:47', '2021-12-01 21:16:47', '2022-12-01 21:16:47'),
('9e56124eb70d4fe21dd32143605235caa6e9d66aa4ba2e95299be94a54b848f549e97368652324e5', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 04:24:22', '2021-09-05 04:24:22', '2022-09-05 04:24:22'),
('9e5ec6bebe266d3f7dd5dd49a4eec993e86d84e7e4dfde9acfb00c6621bf94de5b95c065bcaefdca', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-21 11:10:08', '2021-08-21 11:10:08', '2022-08-21 11:10:08'),
('9e7e719647f83081afea45929325008283bcb0ad354476c008198076773183ba8d77912e3b773f53', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-28 01:01:52', '2021-08-28 01:01:52', '2022-08-28 01:01:52'),
('9e96f379f7f5755e663aab8b39e37d4880f0865716b5ac36d8cfd29bcf0927b7352e6e38334a5b43', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-12 07:13:52', '2021-09-12 07:13:52', '2022-09-12 07:13:52'),
('9e982cde4e3066448d94594c72e8e23a2dfac8bb0643d37eacd9bc18d74997044e58891e1bbf8e0a', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-17 11:51:11', '2021-10-17 11:51:11', '2022-10-17 11:51:11'),
('9e98f24b303b8205b8be3f03c225948afc9e27f9be299cb26d4d6da69fcd99d63472eed0a65dcc7d', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-14 05:43:26', '2021-08-14 05:43:26', '2022-08-14 05:43:26'),
('9eac5e92b6b6e067688af45089128f0225a976190896066ebc068ce263503de685cc8235843bab0b', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-24 04:32:42', '2021-10-24 04:32:42', '2022-10-24 04:32:42'),
('9ede07e46e33b4f3749ece22d15dae97f46266088574adb4f05b8f45745dadf8dbc9e5d5bef2646f', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-30 21:32:56', '2021-10-30 21:32:56', '2022-10-30 21:32:56'),
('9f2ffacae2c49e01962933076111698681828487cc2ee7133544cf95dc5dadc3907f05057141692d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:05:54', '2021-11-29 12:05:54', '2022-11-29 12:05:54'),
('9f3a16d149c1554879eaf79f67830f096c27a53b5fdbe1149ca476fc352a087081f87d5f1cdb6044', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 19:07:16', '2021-11-10 19:07:16', '2022-11-10 19:07:16'),
('9f4053012385c402e91e2d271d7f16bc7ddf9e9c6213356c98982087b28b7b0cc5411fda94011615', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-19 06:36:46', '2021-10-19 06:36:46', '2022-10-19 06:36:46'),
('9f50c636aa656be00a360cb149e6218242d9f27b772d1fc60793736338200fb06574200bd193167a', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-15 11:21:34', '2021-08-15 11:21:34', '2022-08-15 11:21:34'),
('9f566c276aee318da2de0018880d9d00caa966e00268bd635dcfba291c047a261c220e8741d512e7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 09:17:19', '2021-09-13 09:17:19', '2022-09-13 09:17:19'),
('9fbfe78f7a9231ae06e4a15c11ae5a18256d4e0198d59858dbd0d3eb2bb921453d637d344f24226a', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-01 20:43:56', '2021-12-01 20:43:56', '2022-12-01 20:43:56'),
('9fc80da07ebdb5036dc3a0ddd7979c841e345ddf0d8faf179db9a58156420b174c5c86584a4748d8', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-28 13:37:25', '2021-10-28 13:37:25', '2022-10-28 13:37:25'),
('9fce686b6c7dc1c54b7bfc702787a7730ceb9c939d35ca5130f7729b986cddf3c779478a459f09c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-08 10:37:37', '2021-09-08 10:37:37', '2022-09-08 10:37:37'),
('9fced40f3960ffcdfaecddcfb5af05b08a62039623a65bc9bec7b292cd82f086a3912a57dcf4d9d2', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-08 12:47:16', '2021-08-08 12:47:16', '2022-08-08 12:47:16'),
('9ff209a6e728292fb83ebe45e0db113fa60a0ef5f2711ecc2314981f0ca931a921350b862e32953d', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-05 14:01:57', '2021-09-05 14:01:57', '2022-09-05 14:01:57'),
('a053d14106ff5f6e43907f9f06d32ec621f9b9bca4b9f4630bbd3ed426d378abc623b4ec5ef3624c', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-24 05:21:07', '2021-08-24 05:21:07', '2022-08-24 05:21:07'),
('a07b00975e1bde4c3baf9f28b5046656d17438bc611dc70889d027b9b9487d5310267c9455b009de', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-25 13:38:21', '2021-08-25 13:38:21', '2022-08-25 13:38:21'),
('a0caaf605c107af6e1f7286382d5e93815679919c468ce71d06885b3fd84e31afcbda8b8fb1e5709', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 11:16:39', '2021-11-24 11:16:39', '2022-11-24 11:16:39'),
('a0da8ae969ab9dfc8443ebeb1f64c255fa311b0c379155ecc1fb7570649fd0b02a695eaab653ff95', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-22 15:00:38', '2021-11-22 15:00:38', '2022-11-22 15:00:38'),
('a105fb648ca6bec73802add661ef3411efab3cab962f5c1becf971617dd51924f3e25bc99feecf5c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 06:39:15', '2021-08-07 06:39:15', '2022-08-07 06:39:15'),
('a12438e2b5aae9b0eb17677afad5101dbd8e352429a89ff5a61e51a3a3aece345c4ef097591a1f11', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 00:11:36', '2021-11-03 00:11:36', '2022-11-03 00:11:36'),
('a1246cb62b49dd76e00eff1b6aefccd5e0873e08bb6b69f4813b997d56d0497b84d9ccfaa5aadca7', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-18 15:19:15', '2021-08-18 15:19:15', '2022-08-18 15:19:15'),
('a14b894fa65b5d4d8f78c8b1d28f4c626506a9d28cac6e79c3c53d7d33f1460700b72cf839d47add', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-13 13:24:12', '2021-09-13 13:24:12', '2022-09-13 13:24:12'),
('a15bef2b77cf945da4668509d0037528bafc8107be623db2c724c5491633abdbb6d5d273f9b8e634', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-22 05:29:19', '2021-11-22 05:29:19', '2022-11-22 05:29:19'),
('a18d775292ba4bc8c465317b986d4de9cc6310dacd42af899f2f691ee2a07a13fe85bde2882d4f5b', 26, 1, 'Personal Access Token', '[]', 0, '2021-10-17 03:24:40', '2021-10-17 03:24:40', '2022-10-17 03:24:40'),
('a19184f2cdbebbb41f110c432f5a68aa7bc678113dcac02d8c0732c06ee669aa9b2722639c82f7a4', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-29 13:46:16', '2021-11-29 13:46:16', '2022-11-29 13:46:16'),
('a1c2a13f19ad479c907df2444254872f76b4bf9638698013ec59757939dc21599f23929bff5662bc', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-27 12:13:05', '2021-10-27 12:13:05', '2022-10-27 12:13:05'),
('a1c6982286a61dcbd5fb209e064773a4bf44d57fa0da5ed68777027628b71de857a1efd774b8b3f2', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:31:10', '2021-10-22 08:31:10', '2022-10-22 08:31:10'),
('a1dcb2aee8a45476f2de727b7603f145fc6065ea5586cc4aaa10a65467ae294a2524f6d2c5ef91f2', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-10 10:33:47', '2021-11-10 10:33:47', '2022-11-10 10:33:47'),
('a1e51fe84be304650c27b7ded069a3c3c627a55900996bb93af13c32b22cd19be7a8eaedf9431b5b', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-30 08:05:57', '2021-11-30 08:05:57', '2022-11-30 08:05:57'),
('a1e70552383f30595cd0d3df2cad58a0fef1a387b1288371de3b39ba5a94e18e44a99f28c8302001', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-15 08:56:54', '2021-09-15 08:56:54', '2022-09-15 08:56:54'),
('a210de185ae1eba8d6cd2294815f3f55ac209e5d4b652a3b1ae6e4cd5cfe01f238c775e4719662c5', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:33:12', '2021-08-03 06:33:12', '2022-08-03 12:33:12'),
('a2251736e312d8a3020ad34379b2fd33d6b04c9c7f967942b2e55a927f1be3539151affad735b73b', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-25 04:29:29', '2021-10-25 04:29:29', '2022-10-25 04:29:29'),
('a24688830403f31c8c188694c9eb94e0afeaeca4ab8da0749c52f8498b26e9591cd3983325fd9085', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-18 18:13:49', '2021-10-18 18:13:49', '2022-10-18 18:13:49'),
('a277dfaea305fed860d4c8250992ec32fbb1971ad021488d2f7f6408fe1aa598a01b12a1fe13bab4', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-23 10:17:43', '2021-08-23 10:17:43', '2022-08-23 10:17:43'),
('a2ba95425845aa041738be3c3d92459bdc0aa65b7de1ae85683f72286663b596dac0ed75fa9b5366', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-25 04:52:34', '2021-08-25 04:52:34', '2022-08-25 04:52:34'),
('a2be46b5aa527baeaf78ca8c0d823c07d76fa30d2c382e180bba8b76376474d4ca6a4afd02e095eb', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-07 11:26:21', '2021-08-07 11:26:21', '2022-08-07 11:26:21'),
('a2c09c6a4f1edaedfcadce0753a10872081b234476838df5d80c4fb041b273eb980419aef876843b', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-28 14:42:25', '2021-11-28 14:42:25', '2022-11-28 14:42:25'),
('a2cb58bcd4c0826a0a524cdc7211fd1b9de021daed490180817176e34b9954920f86de1820518737', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 20:46:59', '2021-08-24 20:46:59', '2022-08-24 20:46:59'),
('a31fdc5e464f883ea9c3ef304d4f4196897dc0b33fcbde23ac65389c315d1507423769fd25e83b31', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-07 09:11:23', '2021-09-07 09:11:23', '2022-09-07 09:11:23'),
('a36cc72085e7fed60bedffc1a4a88d393a7e4fe870b08ce9d49b157b800a6e57e2681c2d5cca13c1', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-10 05:21:12', '2021-09-10 05:21:12', '2022-09-10 05:21:12'),
('a379b1fa6600085640a270182babcf3db95eee724b11a0ee1f61dda36e65e666cc68f9bd64009457', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 19:54:49', '2021-11-29 19:54:49', '2022-11-29 19:54:49'),
('a391a4b7fe987fd7a58a82dfe6677ed630b8e02498a57db21f6ba2791e14dd28b4199627b8747a59', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-21 15:07:51', '2021-08-21 15:07:51', '2022-08-21 15:07:51'),
('a3ea84fda2dc2be162c35ac27bde8f809babac32025dc95c6e0b742b86ed6e152b2cf6097c1121c5', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-12 15:37:15', '2021-08-12 15:37:15', '2022-08-12 15:37:15'),
('a3eb58af5c1eb3ee673406035acde2431dc6252d5a123955650209586f8cd5c760da7e90c1c42051', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 13:23:35', '2021-08-27 13:23:35', '2022-08-27 13:23:35'),
('a41eb1aa4215ca53200aa986c29dee276c7a8cb319b20e60f89c388f97b32ddb0977add4a0e617c7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-29 19:39:57', '2021-08-29 19:39:57', '2022-08-29 19:39:57'),
('a4270fe6b6f318d4adf9c34360c37ec921ac99fea54a3dd01f266e45b6961316836e72853088ba00', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 17:42:38', '2021-08-16 17:42:38', '2022-08-16 17:42:38'),
('a49f4eef1c4da1cc81305e02be8aa2259e81d112a745b2afa0633a093a1b23f51cbbab3d3a51a8ee', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-28 13:11:57', '2021-10-28 13:11:57', '2022-10-28 13:11:57'),
('a4a4572e6dad11bc1ef05e52341bcbd90c289d7ec5335ace1c057e85bcf7a7251d1a808d0eb17cff', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 12:34:35', '2021-11-24 12:34:35', '2022-11-24 12:34:35'),
('a4c7a8af479d017c47c01cb54efb70ce2af8d4eb543fdab038133d7d1f6c1ac727e86f11cd4e9bb3', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-26 18:28:27', '2021-08-26 18:28:27', '2022-08-26 18:28:27'),
('a4c97b69c545024e02cc0ee2be4ceb39d9aa900ea40721dd9d91502168869b156ef47646bcbe428a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 02:03:04', '2021-09-11 02:03:04', '2022-09-11 02:03:04'),
('a4ed51f22d33d50c1de6cf36939afeec2ba629ed3903b1d34a4824c56431c874a2ca16623bc0a8cb', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 07:14:08', '2021-08-18 07:14:08', '2022-08-18 07:14:08'),
('a501b36087b714dc1350d1f80f6136faf06a28b36c8ebc4b2ebe5c50d0fcfdce561e00e966b1ac20', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-13 18:46:49', '2021-08-13 18:46:49', '2022-08-13 18:46:49'),
('a50f5d45a4d324acf66335ca27417a94ec4912e306fe2fc12cf515a91ef11be624c6686465a3030d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 06:16:38', '2021-11-04 06:16:38', '2022-11-04 06:16:38'),
('a512c133bd83cbca162a6f32ab51defe2c789c1f55ff2c5dee6ef2e700ce539d120b337d5f431062', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-19 07:09:18', '2021-10-19 07:09:18', '2022-10-19 07:09:18'),
('a51e148f058f6fcce6d65143200146a54027c2868ebae76ff5a1e395bb9af75de00aa908a6341924', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-21 06:21:09', '2021-11-21 06:21:09', '2022-11-21 06:21:09'),
('a538d09248dc700b760486421a4520b14c187306cdda77be8a694f39781ee31023527f9f3f71ff01', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-27 07:03:53', '2021-08-27 07:03:53', '2022-08-27 07:03:53'),
('a5440ffad99a377ba9692a0bd3ecff07f171d9ce65eac428e4c49f698c3f3390c1e03ce54b93228a', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-14 18:42:30', '2021-11-14 18:42:30', '2022-11-14 18:42:30'),
('a5bb6424301bf93e50389027b23dd37452994372ff4d4387ac9f68335e05d20b081b0317d6316d22', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-27 12:13:59', '2021-11-27 12:13:59', '2022-11-27 12:13:59'),
('a5cd08bdfe08027ae8706adb6bb7d674bbd55c1e8d0869b39c0dd6cd569f57dfb190fa6d8a295409', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-20 22:14:03', '2021-08-20 22:14:03', '2022-08-20 22:14:03'),
('a5e464ec380cc98efc0a1bf92a464bdbb875e2ca39205919e703f3e8c445fff99ace0239c9cc32cb', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-28 22:18:35', '2021-10-28 22:18:35', '2022-10-28 22:18:35'),
('a604e0b7cfb9a8a4e64b1adcc2bed4503bd43ba1ab5245ce2eae62d7b7d9334c089bba25950d2121', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-25 00:18:37', '2021-10-25 00:18:37', '2022-10-25 00:18:37'),
('a6215b70458e98fefa1aded53ecd42d0509e512abb2f46de733004f88fecedb7fc0304666bf4bcaa', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 22:13:42', '2021-10-26 22:13:42', '2022-10-26 22:13:42'),
('a65cacf741e71685d9d29f88643416dde9b0ab1e34c3f94ccd947201551c95293abbed61166c5b9a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 17:11:17', '2021-09-03 17:11:17', '2022-09-03 17:11:17'),
('a696cf6fb841c80528fc2d2cf96d401745f2900fd8ae9e29c184ed4280ac840ef32573ba10aa6956', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 19:14:36', '2021-11-23 19:14:36', '2022-11-23 19:14:36'),
('a6c87c78c4bdc86325060cd19be479cf807cb0a2d4c294d9821280a602d7c073d92787bd1d3448f0', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-07 13:34:15', '2021-11-07 13:34:15', '2022-11-07 13:34:15'),
('a6ec19804c0b8f4be7c5b67ad189cc44571e772ff45cbcd5e40dddec60b42c1fd08a12c72fc09c28', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-02 08:33:29', '2021-11-02 08:33:29', '2022-11-02 08:33:29'),
('a6f72491016176acbdf319e5fddf65af4b64f6e20f0c2ca4551f650e27ff3372a5c7e1f0694cbfbd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 06:15:40', '2021-11-24 06:15:40', '2022-11-24 06:15:40'),
('a7112c5e8bda2c435403412d12acca981879b1cf1371f7a63170c566adc0def0779b2ffdd61bd94a', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-15 11:49:36', '2021-11-15 11:49:36', '2022-11-15 11:49:36'),
('a7331b6ba777d53891df683ea755a8210e064a19f006984342e7ad61f6f74cec0338c8cc06aa642f', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-03 03:29:00', '2021-09-03 03:29:00', '2022-09-03 03:29:00'),
('a73708dd0caf3004725d147a189b8d622de340b95c2f39e795c45b9b1e21ad44559366ff195faba1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:11:03', '2021-11-29 20:11:03', '2022-11-29 20:11:03'),
('a73a64cc1eb5b5a1d6d10f6520c96aca263d5e381081379b04e6b32e063716d2a27ea0261e73a00e', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 06:15:32', '2021-10-22 06:15:32', '2022-10-22 06:15:32'),
('a7434151c9cdb31e4f9537e3ebad5f6a9d02ec13aa5048621d99e12112b6205ae4de6b1461a1be97', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-24 03:34:53', '2021-10-24 03:34:53', '2022-10-24 03:34:53'),
('a7513e1b70910b0dc725922e7502b184e9ddfc7d5a5267dcc6337c185e143db05b93ed847832b010', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 10:04:25', '2021-10-25 10:04:25', '2022-10-25 10:04:25'),
('a7564290270d959826440e7ab269f3a2c55a2832b7bc9d151ffaa2b5beee454e8539cceeb0b1f33f', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 15:54:48', '2021-10-18 15:54:48', '2022-10-18 15:54:48'),
('a75677ac4c9a670ce59f4d11421a6146238701fea755ae2a20eab0b0e5fad941bc98d84a2df0da2f', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-23 16:58:37', '2021-10-23 16:58:37', '2022-10-23 16:58:37'),
('a7712b8d8ccd25ef97b955a91173defa1b64bfdc2717bd0369e848c6d53af8866443d8eac0a3dfc0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 13:28:15', '2021-08-07 13:28:15', '2022-08-07 13:28:15'),
('a7ce164f5aec64cebdea9318144d5738a06b2eb36d42a987665c867f1ba08edd2c2ca0c2e5810559', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-04 17:30:08', '2021-09-04 17:30:08', '2022-09-04 17:30:08'),
('a7d52958e48800ce258f1475860c94dd336ff546734958c596ad2e4ac9dccd2a22598deef6d7aec7', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-29 08:51:19', '2021-10-29 08:51:19', '2022-10-29 08:51:19'),
('a7e9b98885b2e6bac62c78c97e6233ad5791b72a0e217f1cd1a9553251456c3a72c9f10c6d9ebb59', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 04:35:53', '2021-09-11 04:35:53', '2022-09-11 04:35:53'),
('a81cadb113adb577fc1e140ee0b23da06b679bc29b295d5482edbc8614df3d9b003b964725dca79a', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-19 14:57:50', '2021-10-19 14:57:50', '2022-10-19 14:57:50'),
('a82cb1ca413fbd4e475b50d2b7b727e97c4d8bc8ce348a0bf1bf5959399848e1a260a6ed1584a2a8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-22 01:07:56', '2021-08-22 01:07:56', '2022-08-22 01:07:56'),
('a8769b39b54e867ffb174f9d76d6256c17e76fde8fca2f73846465f6a82bb34cf20eb4fe27f9acea', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-14 10:09:59', '2021-08-14 10:09:59', '2022-08-14 10:09:59'),
('a888298e780f08992466d06efdae8f3aafeaec34879750aacf5107a8309283f8fff9717168a288a3', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 10:03:49', '2021-09-17 10:03:49', '2022-09-17 10:03:49'),
('a90a4422384a96170603c0d5b1ede5d1511cc4cfeea5bb5d0b509b63e708a884a47bae8e2d698d92', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:25:56', '2021-08-10 16:25:56', '2022-08-10 16:25:56'),
('a90aa58c58c29a07722fe852ce05c0b44789f22354c6fa37cb6a899c037542079772791ad2b4ab70', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-04 17:29:11', '2021-09-04 17:29:11', '2022-09-04 17:29:11'),
('a94af1997ebc9be6f1bba20169f6e5d51e42b1d41bd2dc6a6a46b7e19f056c3960d8c6f90809bb1d', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-18 23:42:00', '2021-09-18 23:42:00', '2022-09-18 23:42:00'),
('a9c3bde15bdd80c051d4f0ebe65bb034879cfbca0ebf6d30e993ebb8224426d507561df602e238af', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-07 07:12:25', '2021-08-07 07:12:25', '2022-08-07 07:12:25'),
('a9ced37caced57882c7a5fac83933fa76dfae2a7b73f912a6cf622ba2d458bc2054a35669fcc9765', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-06 11:36:55', '2021-09-06 11:36:55', '2022-09-06 11:36:55'),
('aa458f3f1425513146bebe0dcdd156baa7af7954721cb448c5336ed3867c31378d730fb5415a7b5e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 20:14:35', '2021-08-28 20:14:35', '2022-08-28 20:14:35'),
('aa90365a0b124090d211217fe3e3322716f8eb37cbb9aa0389d584fa03735ba1ed10e6b8488f97b6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 12:26:45', '2021-11-23 12:26:45', '2022-11-23 12:26:45'),
('aabd9043b9d38432ca29fc8b42d1798d66acdf7b900b5b6fe67878c7bd88532725e7cd735c4e6ccd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 23:31:43', '2021-08-30 23:31:43', '2022-08-30 23:31:43'),
('aad7123e5f34c2d740bf49e8bd7b970d9ece6bf85fcad809d9c8727c06693311dbc7638e5cd8acdf', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-24 04:32:13', '2021-10-24 04:32:13', '2022-10-24 04:32:13'),
('aaf88d256f10452e34ab1a70b2c7bfeec5786e3de369ac5af67fea97c0cdf58990d519196bc5e411', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-27 10:30:47', '2021-06-27 10:30:47', '2022-06-27 10:30:47'),
('aba7268c923b633cf2a46f65022c0abd872fcae6d9654a5963e22b39e363311f1decc20c5d91f354', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-09 05:35:21', '2021-11-09 05:35:21', '2022-11-09 05:35:21'),
('abb0dde0f110ccb219b7d4227b792a20cb2abac44ea01252e059473d151c31638a794fe13940e3f0', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 17:22:39', '2021-11-29 17:22:39', '2022-11-29 17:22:39'),
('abb21758a55d9cd981f776e762c5369846f6f976402e863af89b3ee1a2e3b7528c23890c194fb093', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-24 19:26:34', '2021-10-24 19:26:34', '2022-10-24 19:26:34'),
('ac510ce037d2fbd728a0dfde6d9f4aafb63b7f27ce28b1eb41ec80db689e7866a874d5ee1e49633e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-22 17:16:31', '2021-08-22 17:16:31', '2022-08-22 17:16:31'),
('ac62e4692e105652c26fb9be71641edf913ca0d2f6674c3a35f2a86ef14312f89479ce6ffd0ca596', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-14 14:15:05', '2021-08-14 14:15:05', '2022-08-14 14:15:05'),
('ac642132ccf608f919f3987e473b1443f390b42d48db1faa5db5dacd6b5d4235e2347c5c84324966', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-17 22:36:13', '2021-08-17 22:36:13', '2022-08-17 22:36:13'),
('ac73af49eb73bfa4a7a4c7ab09dc0af02a5c365fea81661e44613b1c2ad92ac667d6f50acc7b0832', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-20 03:39:41', '2021-10-20 03:39:41', '2022-10-20 03:39:41'),
('ac8bc157b3726d568949fcbf7ae588b63efb0baf639f83ceeea21ce979281771fc27027ed6523344', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-13 06:09:03', '2021-08-13 06:09:03', '2022-08-13 06:09:03'),
('ac96dddaac7b80cc63fbf211558d97e7f32000fbf5dd178a0812b1955c5c8c5972df29acbff2da27', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-18 00:24:00', '2021-08-18 00:24:00', '2022-08-18 00:24:00'),
('aca8a6d1e946af6594c48adf31cbd9b266991e9b29dddabcbb10e373d22d4d88aad782698c150263', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-14 03:11:06', '2021-10-14 03:11:06', '2022-10-14 03:11:06'),
('acc82f44c143036f51baa12649094f24d96a72b6f6ee77b8e5a4e76d63b1b6125ef4b16fc3fc17c6', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-07 18:10:32', '2021-09-07 18:10:32', '2022-09-07 18:10:32'),
('acd9c510946f6e133a1107593096fc6dc09ca462f9810255c727669d6ce29cea0a024c74eae75312', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-29 18:07:52', '2021-08-29 18:07:52', '2022-08-29 18:07:52'),
('ad8812baaaa87042727f54ab2cc2f29abbb35d358f9be271777afd6ce32d6138b515895acb3b9a59', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-13 18:20:05', '2021-08-13 18:20:05', '2022-08-13 18:20:05'),
('ada7607b036445c3387bb2d4aa1c4a6835d90a7760c68e5531676d4cea062efa3f88d8b994fad1db', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 10:29:08', '2021-11-16 10:29:08', '2022-11-16 10:29:08'),
('ada8e552c7d0071306910f4de78603d23e0239e707b21c17cba4c0e85fed1162afc0afb3f794e03d', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-19 14:10:59', '2021-10-19 14:10:59', '2022-10-19 14:10:59'),
('adcb1b27a80aaaa1511c16f8f94fa74893697f7cf4b0438b0d7bb575cdb88e3102ce5316d1053d15', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-18 11:17:32', '2021-10-18 11:17:32', '2022-10-18 11:17:32'),
('add899b7f99784d053ca9ee1797e5e977b8a9ca854da92d61602a829995d0465a7a8a25fb750c700', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 13:37:14', '2021-10-26 13:37:14', '2022-10-26 13:37:14'),
('ade194b1781b657ea34b0bc14c44e7a58fd09d77a31595a35c893efd1f61181fb8a09096c2d73d81', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-24 13:04:46', '2021-10-24 13:04:46', '2022-10-24 13:04:46'),
('ae18c8ba0c3c8a27e43ca1a61d565d42bd568628a0d95699b50868ddd0a890c98b06dac8d6b3bce3', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:50:09', '2021-08-25 04:50:09', '2022-08-25 04:50:09'),
('ae26b04d0b7212b081c9238c32bb6d5365f3038e9d079c14d08dbb6c2456e1fe54a922d90e9e2147', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-02 06:34:42', '2021-12-02 06:34:42', '2022-12-02 06:34:42'),
('ae4ff4d89f843dd49cf9648d828a5e8c3d7ab21e775edd6cfe6ff6a4160de134d72097c2a0bc5e99', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-14 19:38:36', '2021-11-14 19:38:36', '2022-11-14 19:38:36'),
('ae8a1d278c59ad7007f809b0f465ceed4885610ad25619f39811883d4e3adec71370cf0b54330ff9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 21:19:14', '2021-11-24 21:19:14', '2022-11-24 21:19:14'),
('ae8ab977b80979a1c78a2a9cd2bf1a7f4bd0483494f57cd9d82c946fdc2dc297d337bed502dfb3f0', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-19 18:20:17', '2021-11-19 18:20:17', '2022-11-19 18:20:17'),
('aeb336e165ceac3c6ee8b4db99240b9aa8d4da06321001176ec20e133e995081c49def2f98ddcfd4', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-07 11:29:57', '2021-08-07 11:29:57', '2022-08-07 11:29:57'),
('aeb85dd552a5580e20e6bb09e434ba9a393340a98bba8ea47bdc1c07ffb68b8033dbae45f9af23fa', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-13 05:29:26', '2021-09-13 05:29:26', '2022-09-13 05:29:26'),
('af02d8e121ec9fb62673f504a4f51715017c1e71a21adf637e33cb00bc329e904003616064fa6ab7', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-18 04:04:39', '2021-11-18 04:04:39', '2022-11-18 04:04:39'),
('af2531cec8d40b5b5b138b5627840bcbdfdcdbd5daf4f65af33376638cd9657a0838e9aa8b6835dd', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-21 07:26:01', '2021-10-21 07:26:01', '2022-10-21 07:26:01'),
('af26e34916e61c3fefe3da5779311640fba565bba5d87a35f1747a43081e2dcca309500f475b3813', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-16 09:59:54', '2021-10-16 09:59:54', '2022-10-16 09:59:54'),
('af40cd35bc7339d2d936bfa523b6a95302e6e83a86ef9bcba8f4b1455ee1c55caeef8b6e5839a378', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-14 09:42:40', '2021-08-14 09:42:40', '2022-08-14 09:42:40'),
('af4de62ae40c9d1ff1f2771cff018e0b8735ab70c2b712e782e1b89dea1fe4d6982c35713f380e8b', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 11:26:57', '2021-10-22 11:26:57', '2022-10-22 11:26:57'),
('af5df116e9307facfd9af67f74e198ecfb0a1d33839e2847896224842df8c64e289c96a02780e260', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-04 06:14:51', '2021-11-04 06:14:51', '2022-11-04 06:14:51'),
('af678d200e91070172715618fc951412aba5eee7f11f74b9e6341ce2c90b7c1c8a08150c9a736c3c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 06:44:47', '2021-09-05 06:44:47', '2022-09-05 06:44:47'),
('af704cac904b05fc538a42f3037799184bf2f5bc3ad4b231a9d79048d8cf34b024cf300b3c3e6eb2', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 13:56:57', '2021-08-10 13:56:57', '2022-08-10 13:56:57'),
('afb743e4fc5475de9951f30e0d94157877faee00c426b61c09849c6a96c9bdb3a32de522217f32a5', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 05:00:02', '2021-11-30 05:00:02', '2022-11-30 05:00:02'),
('afb993e363a20d733564bce8e87f5a8fc4891788b1f7d70dcfb8195536e68240210d66157f314521', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-15 17:57:27', '2021-10-15 17:57:27', '2022-10-15 17:57:27'),
('afca5391eb71402a9da405ecf924de1dc375deff85aae0fe134a4deb6e139cc1e9348bc21b4c9bd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-16 16:23:19', '2021-10-16 16:23:19', '2022-10-16 16:23:19'),
('afe00b12032273d63eb62020c688b4377ba410799361d41cd096151d647627911ff2b507b14e2861', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 22:59:30', '2021-08-11 22:59:30', '2022-08-11 22:59:30'),
('afe23bd4110dc6c7eb418bee58d12711e8b24f707d41d6ac199ae99d54464243327e4fc849acfce8', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 00:22:25', '2021-10-25 00:22:25', '2022-10-25 00:22:25'),
('afedf495e026485944ebac9137467c8fc3cc755d90bbab917f8b43edef983aa00b50bc90640fe89a', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-12 15:38:34', '2021-08-12 15:38:34', '2022-08-12 15:38:34'),
('b005998737292bc8492c12f652514fa666c6229f47ee57845ef29ca2b179523a0968ddc6dc27a982', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-08 17:38:14', '2021-09-08 17:38:14', '2022-09-08 17:38:14'),
('b00dbdda5eb78068eca868df91e054dbc14b6ae6c794ac4144a70ab34b20cb4d156a42b1f58e1c54', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-24 23:14:26', '2021-11-24 23:14:26', '2022-11-24 23:14:26'),
('b01b61236e490827ecd85e255687ed032f2a92f3a9bd4dd08ef8ac6a623a8315619954322c1b32f0', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-27 17:14:41', '2021-11-27 17:14:41', '2022-11-27 17:14:41');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b01b90a36a6c29da8b269e34cbceb0f7672c7142d71a6172d8a2478e6f50d9b41ea34927e98c64b5', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-16 04:21:37', '2021-11-16 04:21:37', '2022-11-16 04:21:37'),
('b0616ee5ab6414eec66988afb9855be25fea6a94adb0702425f3cbe5f32fa9b6561155b6dd19ace9', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-15 10:33:32', '2021-09-15 10:33:32', '2022-09-15 10:33:32'),
('b081179d110821f193e04bda0618ba22eda7dd5b86619d7a1cd084cd651c55bc9ef691b578583154', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-02 19:48:53', '2021-09-02 19:48:53', '2022-09-02 19:48:53'),
('b08c7af4d1df00741892321a2111365cc6d32e2409bf3b1596df8534c55cfb70d315389953fc7f6e', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-11 06:42:34', '2021-11-11 06:42:34', '2022-11-11 06:42:34'),
('b0c54f97a080e53b07e265cd715a95525436de63889c441f6a56117b5921f14e1aa4f13161ee32f5', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-16 12:44:09', '2021-09-16 12:44:09', '2022-09-16 12:44:09'),
('b0d48ae583568f8cf1c3ecf0890dfe2402abcbcc6b26d28da7e44a65d6af1f1d77ba859f79a12987', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-18 11:01:05', '2021-09-18 11:01:05', '2022-09-18 11:01:05'),
('b0e78ca0ded378cb36ce82f2209c474a7d9cf35e556d168208b7b802dc7ff4c0752919b17d1eca27', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-19 12:19:37', '2021-10-19 12:19:37', '2022-10-19 12:19:37'),
('b0ec2840a8f2b369772843a397267ebfd1c399766f9e9bd133e1c8b8c4979f392655ff7beacdd8f6', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-04 06:08:14', '2021-11-04 06:08:14', '2022-11-04 06:08:14'),
('b10b7028b6dd44e0f381ea5b67b13231aeb4851b0fd32856e67c9e8b25ae72356a9d3d0a7c67b78b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 18:01:44', '2021-08-30 18:01:44', '2022-08-30 18:01:44'),
('b122fce6b8fefcb64a162b733ea77a78f3cfd647bb671f369e9e091dd2641ce2d9fb9c8f1bfe2b48', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-13 13:55:52', '2021-09-13 13:55:52', '2022-09-13 13:55:52'),
('b12d0f88bf555fd02b226a81aa524469b94cd2f0c4bfbf6e70ba768683f5d2939221f5689ec91e6e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-14 09:41:28', '2021-08-14 09:41:28', '2022-08-14 09:41:28'),
('b1367ecea781751f9d49f777164831eb55daec5dc6dc4c6f870d69f46168ec8374dde2f48af90b3d', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-01 04:15:48', '2021-11-01 04:15:48', '2022-11-01 04:15:48'),
('b1409709b3b36dccc69203e970b675b972ed50287da2cf288dd4e0f847f7c91f9cdbc84743333c5d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 18:51:29', '2021-10-28 18:51:29', '2022-10-28 18:51:29'),
('b14479dff97597f643db77fd34a06e267bebd169729919ff84f38b408b93fd4b8fac54c3b6e650d6', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-12 05:31:02', '2021-09-12 05:31:02', '2022-09-12 05:31:02'),
('b14e31fdbd810f88d97b787964845114c601855fca3735932c845ea60b4c5f7c90d3b5ba5060c3de', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 11:06:20', '2021-09-09 11:06:20', '2022-09-09 11:06:20'),
('b1b9c1091358c77270c12cc65cb539e2c25df582c4e0c53425ed4f7dd73ad858872375e960de48c4', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-29 20:16:03', '2021-10-29 20:16:03', '2022-10-29 20:16:03'),
('b1ee4fafdbf08a30aaf7dbc73c985c92585d2b0a6066f6d10582dd740e4780e46f93019a71c1251b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-16 06:16:22', '2021-08-16 06:16:22', '2022-08-16 06:16:22'),
('b24d56a01cd2003e1a5f5fd60fe01e287c7b2a387a04e0dff83c669b91517e2678f7c52249627146', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:36:04', '2021-10-13 18:36:04', '2022-10-13 18:36:04'),
('b261c02d01cf7a517458f4797c7dfbb7e87910b548452c1665780add674f82c28209a3adfc9fa5bc', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-17 11:51:15', '2021-10-17 11:51:15', '2022-10-17 11:51:15'),
('b2798d419e88c0df366d9664b33fe605b9ac88121d264cbeea0eaf3e466f5ceb4aea5c12ef5db14b', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:29:47', '2021-10-22 08:29:47', '2022-10-22 08:29:47'),
('b2d0212a0791223438c23bf7edaa35ba2d341b14834689c6b4a4c443836dbc3ab15585e4eb2b047a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-19 13:44:09', '2021-11-19 13:44:09', '2022-11-19 13:44:09'),
('b2d20ec41c938fe62467b6ebf26084794ce047bda7367a5f4e557ae7135f0ccfc0760a648e5c4599', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 06:16:46', '2021-10-22 06:16:46', '2022-10-22 06:16:46'),
('b3022332437c220a7bbf2e98733cb453e61607698634cd3eb012ed53cb7b3ed01499113f90d3495c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-29 16:56:13', '2021-08-29 16:56:13', '2022-08-29 16:56:13'),
('b32890d105bea8b1473113d2df4deaec75f695d05ee1e22943281839511316f575b30b5425549aaa', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 20:32:44', '2021-09-15 20:32:44', '2022-09-15 20:32:44'),
('b32f8815b2fd0a48d2b88b934f4683b802f4e54c1fd646eb520d53d932d4469b5c203dfe99f33234', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-13 10:22:03', '2021-08-13 10:22:03', '2022-08-13 10:22:03'),
('b3309854533e493d6e60f27dc05a32dda1c2cd2b6508ae106892025d8bf9b3c814668526bbbf6d24', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-14 07:33:40', '2021-08-14 07:33:40', '2022-08-14 07:33:40'),
('b3a9a80c20032337ce5a8bc7677a16ab86f53eb32c9357038e7bd609723f73a1f1e0e24c1e2c6b14', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-14 19:46:46', '2021-08-14 19:46:46', '2022-08-14 19:46:46'),
('b3e565708f17f6ee62ed1fc8a41645459ba3d91e3a35cce0ef35359cb7e7effa4b6eb68052912064', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 12:37:59', '2021-11-03 12:37:59', '2022-11-03 12:37:59'),
('b3f79bc7cb6f5725397514f1b10c485e37ffdc0d084261aad8aa70d5317b9844374e6c704f630a7d', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-22 13:34:37', '2021-10-22 13:34:37', '2022-10-22 13:34:37'),
('b41411e95efc1c2cea9b873916b1029ff2a9d7bd53401930ba7738174e940c49f3e6eefc710c43cd', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-30 20:48:53', '2021-08-30 20:48:53', '2022-08-30 20:48:53'),
('b4153a3fda1a29477d9b0965c87de4aa0341d093071713b789c5eaf9287fbf4de3deecf776bae7a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-09 16:51:11', '2021-11-09 16:51:11', '2022-11-09 16:51:11'),
('b42cb22cc4ef3c3b5f494751342d54c0ff1475217203981acf8017436373a0aed1a4a2e92a1e30eb', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 17:52:09', '2021-10-12 17:52:09', '2022-10-12 17:52:09'),
('b4366d8691ef3a33e8ace39db3a60368f19575927199bb5f9a8822f282fd706f68d6732b5b448b48', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 09:55:55', '2021-09-14 09:55:55', '2022-09-14 09:55:55'),
('b4686cce42dad2ba7e4b7c4c2ded7fee6e9d503e687cafaeaeae879f32aeb5714e5cfc8e58cecbb4', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-02 23:04:13', '2021-11-02 23:04:13', '2022-11-02 23:04:13'),
('b4800b45d5eeb458a36289c4450b64730d822642fdaa271819c2b3d8f584fab642f621d51bd5b263', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-17 13:38:58', '2021-09-17 13:38:58', '2022-09-17 13:38:58'),
('b4dc5fe26e1208df594c42bf0a3f479fc9eae1b2ed69009fc63fc692422fa254aa52eb4479e345a9', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-28 13:19:10', '2021-10-28 13:19:10', '2022-10-28 13:19:10'),
('b5164ba397e6bb576cc04dca2beee4026b115789cf6a6d218c4c706539a9e4030ec0c462a21d5fcc', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-16 21:56:57', '2021-10-16 21:56:57', '2022-10-16 21:56:57'),
('b528153afdbb25d734ea99de39f2ef0cb80066a0126e33e13eb5b311cbfaec2425cb82fc2ad208e6', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:16:06', '2021-11-29 20:16:06', '2022-11-29 20:16:06'),
('b528d3785ad3c9bfb490b658fc591c9e075f4c694cc734285943b02dfc605107525688872f37daec', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-28 07:17:02', '2021-10-28 07:17:02', '2022-10-28 07:17:02'),
('b5320c604ef3c59c550a90ef901eaa5d6f3107db241b35d6515b003e203a32dae36bb8963ca61777', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 18:22:44', '2021-08-07 18:22:44', '2022-08-07 18:22:44'),
('b557e75990374bc1e522282a952c6d21d97c08fb0dee5e64f00488e5ccb7f6f8e56a1b68c03f70ba', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-17 21:30:01', '2021-08-17 21:30:01', '2022-08-17 21:30:01'),
('b56261c9281a25077c1e5c96dfba77f80adf7f7fa0b2ccef0b21ceec7d35d704cccf560823f22494', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-06 13:26:06', '2021-08-06 13:26:06', '2022-08-06 13:26:06'),
('b580ccc7bbb685bae8ff04f47413f9788f73d5523e6d02f657a50bf53bd490992034e7ccb780a8d9', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-22 15:49:02', '2021-11-22 15:49:02', '2022-11-22 15:49:02'),
('b58fd0601174b0ca4e09c1615b26879b240259382e71811582833449d3a6acb39c855b5879456db8', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-20 09:16:36', '2021-10-20 09:16:36', '2022-10-20 09:16:36'),
('b5b4627a6feabb1af54d958393b21817a74687edb09fc40382fa05256c96335e41b20aa092bf5d04', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-18 07:41:39', '2021-09-18 07:41:39', '2022-09-18 07:41:39'),
('b5bfcf69d695aa4c8abdf4effc9067614447732c0a6634c681696af70551b0f59d0476827fc27c96', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-24 11:53:44', '2021-10-24 11:53:44', '2022-10-24 11:53:44'),
('b60953647f0fcfc0a7047451431a18f12c8e1eed0dc447343972aa2f2deb03533656bc0938609791', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 04:11:57', '2021-12-02 04:11:57', '2022-12-02 04:11:57'),
('b632336a9c1cc3738f33472e5f688f04da04860e9d8a9556ef64045509f461ecc317517fe760b7b7', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-26 09:31:06', '2021-08-26 09:31:06', '2022-08-26 09:31:06'),
('b6b8195e83cb151961324fc30bc334fbf64a3a488fe0b5879226ddedcdbb653beac739e493559ff2', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-10 09:30:06', '2021-08-10 09:30:06', '2022-08-10 09:30:06'),
('b6d43078913169332ef0b23a258e4506e0c1d0e8ed78f0b0561c10ac9c90b158d1c84fdcb4ff3f20', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-27 17:15:04', '2021-11-27 17:15:04', '2022-11-27 17:15:04'),
('b6ee0f3049f29b6dfbb7e8554d2249a33f437f63b299068c7931898b49e4d8f8e74d556c1d3634a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 08:39:38', '2021-11-23 08:39:38', '2022-11-23 08:39:38'),
('b6f3b980e7a259291eb4c8fff271708347228ad95cc5564d048f57e19122de49f9746c57d88b163f', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 07:55:17', '2021-09-15 07:55:17', '2022-09-15 07:55:17'),
('b6f86bd8f4e5930fa87064e45bab89f54859699ebd10f863813bd4d7dfedbdfef0b873fe10fde1ab', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 04:37:26', '2021-12-04 04:37:26', '2022-12-04 10:37:26'),
('b6f92183d3229742a147c2c92a3393f2090c69d86d73d90c6dc3ca65f8b2bacb920354529a72395c', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-28 15:30:06', '2021-10-28 15:30:06', '2022-10-28 15:30:06'),
('b6ff2d4b979ea44804621e420d9b81b2f3b354e374516f53e58fc7f1cf6dab1e4e7fe8080e8e9825', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 12:28:42', '2021-09-09 12:28:42', '2022-09-09 12:28:42'),
('b70fef3c7a3ca79e9e935ff217fc83bc60dc0b89e52b76074476449a87a41b8c44e985e63533c066', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 07:39:48', '2021-11-29 07:39:48', '2022-11-29 07:39:48'),
('b71d1f89125d419e6d48666fbeed65075f36ddf768edc2f99c65a9b87701e9e32ade8a5f4e4fae8c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-31 12:03:42', '2021-10-31 12:03:42', '2022-10-31 12:03:42'),
('b7391401f71ef13311b2d53bd3512e333c41549d937393df94b342550fe7604915b9bcbcdd9fcd88', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 10:17:37', '2021-11-14 10:17:37', '2022-11-14 10:17:37'),
('b75991028bc29fa5b304d3caf619b1b825b32192a0755174802f8f2a633ce98208e38903585be062', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-19 07:43:56', '2021-09-19 07:43:56', '2022-09-19 13:43:56'),
('b768a966a6902eaefd00b7f68cfc0549bcf7a76ef46f9d5934443ab631b9000e5a9d25af0e6a551e', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 04:32:27', '2021-10-26 04:32:27', '2022-10-26 04:32:27'),
('b76db7a026a867a10305b1fd5ac0136b70e4d4873faef1d6fef7d236c69c9d6b88dfad504335e119', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-27 12:14:37', '2021-10-27 12:14:37', '2022-10-27 12:14:37'),
('b7a1592905fa676378e2627b311eb51caa1d10ffead029325b24a5d59526f0ac8c030d340fd55cf9', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-24 13:05:27', '2021-08-24 13:05:27', '2022-08-24 13:05:27'),
('b7c56841bdc77e62731e1048f279370ec496e85cc9eb9e8c4ebecdaa1a1f5f38c42f45e3fc374a47', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-21 03:45:39', '2021-11-21 03:45:39', '2022-11-21 03:45:39'),
('b7c879978f5507d82d275906855024ee846f479955c171d2ea740f1ca9cd4fa46b7f84b7395eee48', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:41:43', '2021-10-25 12:41:43', '2022-10-25 12:41:43'),
('b7f27974a018013f475772c4a9e41e060e5d5eeac993fff823688a35677681b45329d5ba30af17d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 07:21:21', '2021-11-12 07:21:21', '2022-11-12 07:21:21'),
('b7f3e34eab588e2bb203ab73f6c16bc6c5d404a9c111e491d1a063aceef738c5cf3fe4d9788f3c9d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 07:01:15', '2021-10-28 07:01:15', '2022-10-28 07:01:15'),
('b7ff54451445def6aa3b38a5a139d603d01421c07def0e3c95319c1b74bc0ec0282ca257b04726ae', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-14 22:58:55', '2021-08-14 22:58:55', '2022-08-14 22:58:55'),
('b8858f4cdda8af9c736e0edd1c09d864e0a53bbe8b300b24581c108bdd9b94eb3063fa24062ac5ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 18:53:07', '2021-09-03 18:53:07', '2022-09-03 18:53:07'),
('b8b0a385bd7fe6de0aa070151b095e813fad76d6f656c9a31984b87fa93b53e1bb699b07191ddaee', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-21 16:35:40', '2021-08-21 16:35:40', '2022-08-21 16:35:40'),
('b8d8a43989da5d5e274fff821af091ac5cce3818eca167ce4463ca4e379f18cabf2f095d938b5a03', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 17:05:03', '2021-08-30 17:05:03', '2022-08-30 17:05:03'),
('b8da78d0dac06392df971f339703305507fc544c5ab8977870a9fc031337260ce0fdce912d077378', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 11:49:55', '2021-10-17 11:49:55', '2022-10-17 11:49:55'),
('b909f46c3fd619e65eb019b4a06e0d3a73133939eeebb12b65cd833d85a39a05c60d79d2c5d9fcc3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 01:10:50', '2021-08-20 01:10:50', '2022-08-20 01:10:50'),
('b91741bd3de76c8b15b0a268e9012ee8d15e7406972b4614d93ab9b22f186999750453ab79d8c333', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-02 06:27:07', '2021-11-02 06:27:07', '2022-11-02 06:27:07'),
('b942aa0bd1b9ac6d3099b31fe903af3aa350923c9df7d349850b00a86345fdbdc688ce755c1eae90', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-15 12:32:41', '2021-10-15 12:32:41', '2022-10-15 12:32:41'),
('b943cb04b2de2d00efe819444f1e00677dc9553256c8616cfb52502e0f323556012d1765ee8dbfb1', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-10 04:55:18', '2021-09-10 04:55:18', '2022-09-10 04:55:18'),
('b9e431c82ccfc937fdf12294147f3ddacf2b4ad84b7836a8f3f94e798f047ee5f3022e24b062140b', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-02 13:11:20', '2021-11-02 13:11:20', '2022-11-02 13:11:20'),
('b9eb8c686bdc4942ea41d08b786988b3fa63ab9659d224a04d2eaf56569c4f1dd217ac34880f372f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 15:21:40', '2021-08-30 15:21:40', '2022-08-30 15:21:40'),
('ba011fd835e68bf82571ed705bad7d4e9830996e978557c8fb28872d0f3eb9f4b74a741feb14c1fb', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 15:34:30', '2021-09-11 15:34:30', '2022-09-11 15:34:30'),
('ba067035f625d0e37030109e3307ebb8dd9bdcc4de61ac5b4b31f5b704e6d165bd4abe5cca70b56f', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-31 02:28:00', '2021-08-31 02:28:00', '2022-08-31 02:28:00'),
('ba6fd7e7fc03ee2888262113e09309378a6640be34a6c53d878c7809d150b8185904eca2ea1af6a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 06:47:39', '2021-12-01 06:47:39', '2022-12-01 06:47:39'),
('baa2992c1b6f9b459819087dd03a23710a0937b0f32885553466a564486f5be8c86cb8f6e1659319', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 05:46:05', '2021-10-25 05:46:05', '2022-10-25 05:46:05'),
('babab67a8fa3a55bc92b49c6eab2c7843dbdaf376cd18a9215b18dfc40b68677785a19b6cbd9bfc3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 12:01:44', '2021-08-30 12:01:44', '2022-08-30 12:01:44'),
('bac24e8a077ead7666ed2fbe8aa6bf8b81ba54d4df19cf935a1a5a99a8cd4b4546d446d9a2f582a9', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:24:10', '2021-08-10 16:24:10', '2022-08-10 16:24:10'),
('bae82e5318f166e8c95ce310489e9f7a6bba5049881084208d91c90578fcb3f25c7754c56d303ef7', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-30 18:55:15', '2021-11-30 18:55:15', '2022-11-30 18:55:15'),
('bb07190d2135a5deb6f3c21e3e7d2fb30e2f7877accc0cb33c9a8506a964441670620cce021c2416', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-31 18:44:03', '2021-10-31 18:44:03', '2022-10-31 18:44:03'),
('bb105b157102fb77b89d952dee5c12d36b8786a1470e34513f7e01b2629b07c6e98b1267a43878e7', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 18:10:11', '2021-08-13 18:10:11', '2022-08-13 18:10:11'),
('bb1e20a0092ed96b71ebcbe1666adf4837ebe57a74de7eddb6521207de827ff17503d4833ba8ceaf', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-03 18:54:43', '2021-09-03 18:54:43', '2022-09-03 18:54:43'),
('bb205ac70a5000e171705a50b2db41ce5dc1a72bb2005723f2f580daae183e5f9c90e10947adbaac', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-26 04:17:26', '2021-10-26 04:17:26', '2022-10-26 04:17:26'),
('bb34ff02b6aaf361b084804d76f18856b04968bfef000c942b2f739b91fc72acbfda6f1c11945c26', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-19 06:52:46', '2021-08-19 06:52:46', '2022-08-19 06:52:46'),
('bb4cfec7df583cf521658219e7054b18104e813b81a01ab2cafb944b6c22d3dbe2e8abefeb7eae6d', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-22 20:06:17', '2021-08-22 20:06:17', '2022-08-22 20:06:17'),
('bb6ae46b0588e4f45aa5eefd5eaed651fdb77b1704550b797f8c16216d6eef4371ffa98562d6637e', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 16:57:43', '2021-08-30 16:57:43', '2022-08-30 16:57:43'),
('bb6e76da9f35c485bad9840b9fd79c9c5634dd64007004e9f1ac9dbd69663cbf7fa6668f7404e0c2', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-15 16:03:07', '2021-11-15 16:03:07', '2022-11-15 16:03:07'),
('bb8d53731d0bb088918058678b341ba37e6c8f4ed055fa36485d1dfd769d487f059a3a76fd408671', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-27 14:16:08', '2021-08-27 14:16:08', '2022-08-27 14:16:08'),
('bb9aee720236773de2968f67c31f566299189da1e8651f3f3db7277e73effc3f4c6cd95955687319', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 11:46:30', '2021-09-09 11:46:30', '2022-09-09 11:46:30'),
('bbb6fe2a8ac70f37404e37f4165d7f6937f781e9c7dacc24ffbebe2e5e1452d8f8694384e8e14a55', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-08 14:26:03', '2021-09-08 14:26:03', '2022-09-08 14:26:03'),
('bbdc2f0204e41f64a9d2e8e0ee3743c36d3fd52f9a5fcb8479e9026190edd51bb84559ed92cadeef', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-19 16:14:29', '2021-08-19 16:14:29', '2022-08-19 16:14:29'),
('bc0dd4a9dc30e8140b9cbc8adc16057c5fca48a688c8c517c90a234fffe45ec90b434d0d1b497edb', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 17:24:38', '2021-11-29 17:24:38', '2022-11-29 17:24:38'),
('bc19795d09081ec31a715d328b6d12d20546081af7c5a5689b140a3994be31209c078f57b7bb0f8c', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-23 20:27:46', '2021-10-23 20:27:46', '2022-10-23 20:27:46'),
('bc45460546a132bf4d2b2512089ca69b99a3db96803e355a6c8f0e1f9736bafc96e065f1779d9c93', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-06 15:26:36', '2021-09-06 15:26:36', '2022-09-06 15:26:36'),
('bc899478692b1aa45979d26255221c43f02f8b517ee646f20c50c210552f5cebc8932b760740cf57', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-16 21:57:44', '2021-10-16 21:57:44', '2022-10-16 21:57:44'),
('bc98d22efbe3c9803c80b1ff06c97562a32e978ff1c7147b387877cdbd5f9bb14315509d236c3408', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 18:58:41', '2021-11-18 18:58:41', '2022-11-18 18:58:41'),
('bca375aa27b19f4a646d981a9a22f84a3bc1fb70b40ae1d5f3e0ab04a1825616236765288967de12', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-19 16:49:23', '2021-08-19 16:49:23', '2022-08-19 16:49:23'),
('bcb476b9d5e43f05ce3c77583ffadc59e941ca802083b4019b348da9494f4b4d15e012eee14c651b', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 22:35:04', '2021-10-17 22:35:04', '2022-10-17 22:35:04'),
('bd235e8a5cbaf921393908edd86ffcb7eb55bb451cccd44c84c68101eef507a31bf1eb05a770f073', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-07 16:34:50', '2021-11-07 16:34:50', '2022-11-07 16:34:50'),
('bd396770d03d5872aebf5be120fe3188caf2bbc9a11c6274a932bd162e6ebc3293d2e3dda43ccf69', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 14:10:02', '2021-09-14 14:10:02', '2022-09-14 14:10:02'),
('bd50daec11a247f3b9efe68cb0fae5859b9a29cbdf16e7fd7a9ea79cc9232d1aebf99033ecfd8454', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-12 18:10:22', '2021-09-12 18:10:22', '2022-09-12 18:10:22'),
('bd526b1e86d918a2874d973dc1cfcdbe5c7e2d79cdd31bc6029bfbda473a4f61bcb2034c42adc14a', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-01 14:54:44', '2021-12-01 14:54:44', '2022-12-01 14:54:44'),
('bda07df2c06f137028b1d0b53c4379b64370590d8ef46dd178e0635ac7fdd39abc13b3f39a0694f4', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-11 12:42:34', '2021-09-11 12:42:34', '2022-09-11 12:42:34'),
('bdc71d9e689e45b386e5f3b3ea6bcfbcedd6d1014ef261aa7a601664c7d37e4c7c85bedde55af5ca', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-07 13:30:07', '2021-11-07 13:30:07', '2022-11-07 13:30:07'),
('bdfad6a6e3bad3fb32f28e0b932d3076f779bed07dca4617c3f2256ded10572de1f38d93d4a5bace', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-04 06:15:42', '2021-09-04 06:15:42', '2022-09-04 06:15:42'),
('be2661ced81bedf48f20183c826e4878ba8166b815dc3d7a3633ef1dcbdc0f602624b5e119bbbec1', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-26 22:37:57', '2021-11-26 22:37:57', '2022-11-26 22:37:57'),
('be2d2725c12fff5e325a4baf428023b7b6336ad56dbe68992f035516ea23ced208bb680087998b94', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-27 23:08:50', '2021-11-27 23:08:50', '2022-11-27 23:08:50'),
('beb1ba3bf9e4c3f78667cb6c1db5b41d239038f13c0c00479b3d7d01ee08d3cefebaa4877a5f1f9c', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 13:45:17', '2021-09-09 13:45:17', '2022-09-09 13:45:17'),
('bec5ba7cc5be55aff6d5ae5a2fadcbd81ff5d0b91776142fb4fbb0d24ae4247472024e453220bf6f', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-16 19:21:34', '2021-08-16 19:21:34', '2022-08-16 19:21:34'),
('bec70528e8842bfda304ee34ab883fd15420237af4e321360c5dd6a10ccb784b75b2787c010f73cd', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-22 12:57:06', '2021-08-22 12:57:06', '2022-08-22 12:57:06'),
('bed5928a8277cdd9c1bd998f07b1270e465489ddefe8b14c4ddf55864b385d29dd9686949323b4d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 23:22:33', '2021-11-25 23:22:33', '2022-11-25 23:22:33'),
('bef875d518f00ec3c50ea4c72e3cd42c1199fbe9d0e8b1b2f2592aa987eeff03243b40643b6bd2c3', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-17 07:29:17', '2021-10-17 07:29:17', '2022-10-17 07:29:17'),
('bf5482e1893e6ad3b79ff9e444d252dae9145b713ca52aae93b33500163b372692869ceacf62aab9', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 13:02:37', '2021-10-26 13:02:37', '2022-10-26 13:02:37'),
('bf5d25b2ed4f90719f66636c2a6cc57398fd8c2203c87a1c2a04df832ba560051933d8b1a31d6cd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 14:33:03', '2021-10-17 14:33:03', '2022-10-17 14:33:03'),
('bf885eaf723f744ef4337bd5f78bd0658cae2720dc23d2a71515367fc989ba1884004a9cef4e78aa', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-23 12:37:44', '2021-08-23 12:37:44', '2022-08-23 12:37:44'),
('bf8f05bf88d08e478ca0a5adb7eac17cfa305e666a5720f3a5a07ae954f5d4690acafad27ee58645', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-16 10:45:44', '2021-11-16 10:45:44', '2022-11-16 10:45:44'),
('bfde2f16d530dfac4552afa24bfc1ebb9d7ef8e4613fd95d1a16fb3f0dddb5283bd06da554751c84', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-08 19:54:22', '2021-11-08 19:54:22', '2022-11-08 19:54:22'),
('bfe7ef637d18c751b8b474bad190fc3038f776fddaa148b92bc96afabc70c6717d581885cd1e3e23', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-25 05:48:37', '2021-10-25 05:48:37', '2022-10-25 05:48:37'),
('bff3ad88fb401c852b79342fb4de1d8e415b507ada7277331e5b7a513a461e983664e88fc138aa53', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 16:56:07', '2021-11-11 16:56:07', '2022-11-11 16:56:07'),
('c018e347bad34a5cff07570af334a0cf2078a684cba7898c060c1e60f0329f0019b1da3626cf58d6', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 22:54:01', '2021-10-29 22:54:01', '2022-10-29 22:54:01'),
('c038275362b8644d1736e28aa271c5a42a8ef31383e2971c071443d7a7f31c3fb4f6dd6edaedea9e', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-29 16:52:04', '2021-08-29 16:52:04', '2022-08-29 16:52:04'),
('c09b9efc98e53ee91cfc7e3d903118a00d833d442e0fc9fcbcb67a251427f9f879cdb9518f874d05', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:24:33', '2021-10-25 12:24:33', '2022-10-25 12:24:33'),
('c0c8df4302973bb47e1926eb6d207e987a9c2542522f6b16192f4739659491f864aaf7d4cca25f63', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-12 04:36:50', '2021-08-12 04:36:50', '2022-08-12 04:36:50'),
('c0cca091aa965d6c4af7823da1db3a3cbcdb70ab347b3c68a1e9aba5648b11442800fa9efbb1699f', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 02:38:48', '2021-08-13 02:38:48', '2022-08-13 02:38:48'),
('c0d9c090dcec198dbe7dc3310f150e569fdadd233f052fcf6a3c0ab4ecdc1a876b4045ec4144b641', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-28 17:19:28', '2021-06-28 17:19:28', '2022-06-28 17:19:28'),
('c16162d4cb354237009bfae97f04fd4a7c468571afcf6d09d35448bbdaedb69025dd4451e4ff8151', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 07:10:32', '2021-11-25 07:10:32', '2022-11-25 07:10:32'),
('c177fc4b57b9399e351ee75fd696915abbdbd6e503dbe902264ea1d639cd082808fe9ba3e0ffd8ec', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-25 04:47:08', '2021-08-25 04:47:08', '2022-08-25 04:47:08'),
('c17e826707863327f70eff5ebbdae81a49099c8fbe03011be4f3d3b15fdb0ce4ca5fbc86bff1dfad', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-18 05:55:49', '2021-09-18 05:55:49', '2022-09-18 05:55:49'),
('c1865f7201eced18bb027312a761dfc4528d1b135c4fa4b592cd94d895d3bf4adfffe7e62f0a2e5b', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-17 02:11:49', '2021-08-17 02:11:49', '2022-08-17 02:11:49'),
('c19f745856cfeede03f29a1d6d70f1759ac0eb0a8fed8cf6fd7d707b1ef908436ea64292a6bd420d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-18 19:35:19', '2021-08-18 19:35:19', '2022-08-18 19:35:19'),
('c1a943dc750a32d7ae522ba5c483454ecf4d4d4dbe1f045588be1828d21c3c99050bac164e3638b5', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-31 18:12:18', '2021-08-31 18:12:18', '2022-08-31 18:12:18'),
('c1c69a3197a45ecf552d9f32fd5776ca1ca12e423bc929b32d71afe19a1a33f29ae16fa240a74ec3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 11:29:24', '2021-08-20 11:29:24', '2022-08-20 11:29:24'),
('c1cb45097e476bd4c40f05964b0387596e0aacb04997419071ad98f68472fc262655be8cd63066fb', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:14:05', '2021-10-25 12:14:05', '2022-10-25 12:14:05'),
('c1d3560c27c6ef622fe2a2928059b86884ae4e9e2a81ac4579cc44a336623534edbed850f08d2ec3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-10 16:06:05', '2021-08-10 16:06:05', '2022-08-10 16:06:05'),
('c1edc8949a068da92912d8e26320d3f31dfba900975c60c13af3f10bf91ae08ae89395b201a98be8', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-01 19:10:28', '2021-11-01 19:10:28', '2022-11-01 19:10:28'),
('c1ee55a9c32182aa10cc5dee11680d61344e99c258cb211e702e33381ffec71c9d6ce22b4fae3bf7', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 02:24:16', '2021-08-31 02:24:16', '2022-08-31 02:24:16'),
('c1f3f6615ba3d5ecdcabff846f914a02709c32f47f79052e2a63d3023ec3318dc68b5ea7a37d7bfb', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-22 08:32:45', '2021-10-22 08:32:45', '2022-10-22 08:32:45'),
('c1f5d78a240bb4b2de84fa9ffa31ef08faba27522624493fedf5d7b209b48f6ccf6c40f75d66faed', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-18 19:44:35', '2021-08-18 19:44:35', '2022-08-18 19:44:35'),
('c1fb26dd10bcb3634a8410056e9692469ac7d1e600f1102fb27e3b70266966066bb4355b7d13d14a', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-17 21:09:36', '2021-08-17 21:09:36', '2022-08-17 21:09:36'),
('c21f6c60365e26324a799fb08ae612e977797a12ba2070303ca6084a59e05fd93919a231d52ea5dd', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-14 04:39:02', '2021-09-14 04:39:02', '2022-09-14 04:39:02'),
('c22177ffc41cc782f66c5e2c2bb59b3ec4d3598b4a090f93ef868bcb44fc7b1aece7f7818a476840', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-05 04:26:28', '2021-09-05 04:26:28', '2022-09-05 04:26:28'),
('c226186228a4072a424675ba27e1ac184c25b2e416d8b8628b0a977844feadbb36de1923a14fc2c6', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-07 10:36:13', '2021-11-07 10:36:13', '2022-11-07 10:36:13'),
('c22db9dbeb85fec2b182dca65d758c436f5780f89495605094fe0d885d71216408021c0b04cb4734', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-15 17:45:31', '2021-11-15 17:45:31', '2022-11-15 17:45:31'),
('c23d80e73cb7790cfb9dcc9941d34d03037cf3e854b4e6b65674008fd2092b5e8975bcf79204033e', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-14 09:50:34', '2021-09-14 09:50:34', '2022-09-14 09:50:34'),
('c25004bf4992d74e153a320d3644db3ad5d9b42c579147f033369f5b6a2e498b9b0fad94ac4aa8e2', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-14 02:02:25', '2021-09-14 02:02:25', '2022-09-14 02:02:25'),
('c2708a96e8e5d1c8c1388a776e94930402095e24ab98d3f29dce9e5ceccedde67083ab6e2308dfb8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 15:20:01', '2021-11-14 15:20:01', '2022-11-14 15:20:01'),
('c2773b760e33697d4415e43ea621b3b74772ec9927b8fa60db126a85d93833b2d80796a86bd99444', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-10 21:20:22', '2021-09-10 21:20:22', '2022-09-10 21:20:22'),
('c27ad988c06e03478b6742bdad67745b48e15959ae326247f7abaa7c3383e54c9aeacafc39070edd', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-10 21:25:46', '2021-09-10 21:25:46', '2022-09-10 21:25:46'),
('c312235c93e1ad18531afb9d164605212defa707356a0e6fb5196846ce8a889da87bc93a5bc3c8ef', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 09:42:02', '2021-11-27 09:42:02', '2022-11-27 09:42:02'),
('c340cc0792c94c92e0975751c989974d9fb092bf1ea36b68f6659d4f3a02c680f87400c099c649d9', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-23 20:33:19', '2021-08-23 20:33:19', '2022-08-23 20:33:19'),
('c3551b85b1b510436e157be60329577b60e9dc5f83bdc4799d5054faa14eb54a2867ba4c169a03d0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 07:10:01', '2021-08-26 07:10:01', '2022-08-26 07:10:01'),
('c35a8ddd87b07fcaae441a3a3c876c5b6374d453e9fb3f522e81ece754613b93d2b0df6af5384f14', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 22:45:14', '2021-10-17 22:45:14', '2022-10-17 22:45:14'),
('c370f6f07aa217b3d2ef3c2c19c7923a397bd6ca63007fc2435b8f56a509237930ea780870d020ad', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 06:50:27', '2021-11-17 06:50:27', '2022-11-17 06:50:27'),
('c386004afb3323dde041e96665c0e1be6ffa41e1623268279d7bdcec624b8f345a4588d44d6df92c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 07:02:21', '2021-11-25 07:02:21', '2022-11-25 07:02:21'),
('c38b9e05607d9cdbe5dd5b631cb132b5e20ddcb0f61ff6188a50013a6fc787f70e8991bfc5c272dc', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-11 14:06:20', '2021-09-11 14:06:20', '2022-09-11 14:06:20'),
('c3c331c8a05f4e64fab24369a262d4254fac8820f5dbe7e982b88fd5fc421f88d9d6bd75f60e7dea', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 07:33:18', '2021-11-15 07:33:18', '2022-11-15 07:33:18'),
('c3c9ef616f4f2c40179ca0ffda58ff05b965e4d7be0c4f4ff675e7d522117cb69ae40f5fce47e38f', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-04 19:43:19', '2021-11-04 19:43:19', '2022-11-04 19:43:19'),
('c3fa3d6302c316b2a7423299b448f525b41354713d01d67908ab0622a6f6c691f1022cc41e43424a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 18:49:12', '2021-09-10 18:49:12', '2022-09-10 18:49:12'),
('c3ffdf9eb6fa44ccd121f83d0a668d9414d9975eb814b8dd168b22d30eb38db2d098f34097b650ea', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 18:55:00', '2021-11-30 18:55:00', '2022-11-30 18:55:00'),
('c438b179e9deffa900bed9a773c2ba3109af7b6e2fcb35455c5d9775f7341535db87fc210e5427e9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-08 20:05:30', '2021-11-08 20:05:30', '2022-11-08 20:05:30'),
('c448f606879b84f1492dc046c3aba2c6a2417ac7c7c7b9461b89db88f451249dc1820d40fdc197b7', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-10 04:40:55', '2021-09-10 04:40:55', '2022-09-10 04:40:55'),
('c44b8403edd524bbc72bf2f773ed90324710393ae3fa7f647959cfe483524e48c0d2b37ce7c39422', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-20 20:07:55', '2021-11-20 20:07:55', '2022-11-20 20:07:55'),
('c49e1e72bb6ad03a483efce629404ef2bfbe8343ae359474c85bd291c72fc380d7f50dbca4e3cbeb', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-22 15:00:51', '2021-11-22 15:00:51', '2022-11-22 15:00:51'),
('c4ff96bd011bcf8531b51d000e492a68c5f12014613835c49fedf055ed4bc04ec60b66db05da1836', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-18 11:13:37', '2021-09-18 11:13:37', '2022-09-18 11:13:37'),
('c5030302391c7eaa6a7820349e1eb7b8b3763e2d8b47e3737edf4974b1f2ecbbf50190831b5ca4ff', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 05:01:01', '2021-11-30 05:01:01', '2022-11-30 05:01:01'),
('c5031efbd0735164a2627c58cbb3b013f92bc1887de06ac44aec17d2dbb379102736f9e954c95fcb', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:47:53', '2021-11-29 20:47:53', '2022-11-29 20:47:53'),
('c51ffa4814735649afffbd5b950c97a809af6d549d722ca68da6dbd589ddb50ecccc044043b25a3c', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-18 18:12:51', '2021-10-18 18:12:51', '2022-10-18 18:12:51'),
('c539ce8d509e282fe8a708b7f2be2cbe2e4b7cfae0a62955f2a4e268bc4fbaf39c1389b33a43b0bc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 15:33:46', '2021-11-11 15:33:46', '2022-11-11 15:33:46'),
('c5531cb3763f6f527cb2c71b5b69178126734447cbcb025925d387683ea6d26b8196247b2af79bb5', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-23 05:28:16', '2021-11-23 05:28:16', '2022-11-23 05:28:16'),
('c57d500f4d05bea0b7b9d62d0825dc7b78e677271fa6ab208ebf8a97d2b466786ff8a0ee8e389bf6', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 20:04:49', '2021-09-14 20:04:49', '2022-09-14 20:04:49'),
('c5974d4bf0536964fed5b4c5f757a9f8f052cc86291bed87856e4fc28f180e06e5816a657c83b7cd', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 14:16:40', '2021-09-16 14:16:40', '2022-09-16 14:16:40'),
('c5989494822b50d2e9547c5aebfeb9912ac9797beaa081ba81e112beb2cbc153cd2f227b1f98ebcc', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 21:25:30', '2021-09-13 21:25:30', '2022-09-13 21:25:30'),
('c5b419d16e1fc8963267de6748ea491b0757c1022fb26bc19db85d18f14c8629320d685db2bbd37d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-30 08:40:33', '2021-08-30 08:40:33', '2022-08-30 08:40:33'),
('c5b46f76e9c70e259af994533f2b212646436f0a1161c01acd207d1875ff50716a54f2ca434fdbe2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 18:32:34', '2021-11-10 18:32:34', '2022-11-10 18:32:34'),
('c5fc9ba29ab980b39760cd416392ceb40ff36f91847c95d058496dfd93eff9dc9ac5aa8c20599326', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:04:03', '2021-11-12 19:04:03', '2022-11-12 19:04:03'),
('c6007565b01e89b5992cc9efe443f87d0134e6ca190f9d9e62e4345b587fddbf2a1dae6d3507054f', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-22 13:23:07', '2021-10-22 13:23:07', '2022-10-22 13:23:07'),
('c60701665efbf3028040d9f841ed4b2601d02f6c022324e4bc4880c3fc0690a69801626b604bca88', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:35:57', '2021-11-03 21:35:57', '2022-11-03 21:35:57'),
('c66e8b265b85b5608873cd20a0824de518374c963f95f8036686e1e95189afe238e554638b1703f4', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 16:05:04', '2021-11-03 16:05:04', '2022-11-03 16:05:04'),
('c7013c10d7a37c28ac6011f0412748ce74eef655a9dfe83dea079852a54f0a73553171f5fc9fc370', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-02 13:11:58', '2021-11-02 13:11:58', '2022-11-02 13:11:58'),
('c706fb05fd95835f2fd4ca040e6f74923999185eb4242c51cb534629c0dc8a0777aa7d93394d6062', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-05 14:54:50', '2021-09-05 14:54:50', '2022-09-05 14:54:50'),
('c72d60a778052f45b551061f8a650de0bb560f7c39fe25a17e0d84a0a7562492ee9fc8af5aba21f0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 02:38:32', '2021-11-22 02:38:32', '2022-11-22 02:38:32'),
('c74f7a573fac76733c3dfbb9e348d26a2720dd7dc20b19da11837b5618c3c3682255e542f7d5233a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 06:26:19', '2021-08-13 06:26:19', '2022-08-13 06:26:19'),
('c7763ccdb67b8997928aec03d01963c0d67fedf85f9f95d663d550baf09478a88d4c972de05a8259', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 10:12:52', '2021-08-30 10:12:52', '2022-08-30 10:12:52'),
('c7ad4c783c8d09caaaadbee9122229701906d818a5bc25959bd295bb87efbdbb2049a897fe34fb78', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 21:25:43', '2021-08-17 21:25:43', '2022-08-17 21:25:43'),
('c7caa74845797de4133a098fc941e540c80a2156fd6a51fe4ca05fc4f10a9a71964b53084f152a4c', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-09 14:41:04', '2021-09-09 14:41:04', '2022-09-09 14:41:04'),
('c84d9ba1eecc8a354c2a9ee2ec2b3b531232cb940c765d2e585868412873d737080a2aa1b7948c53', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 12:38:25', '2021-11-03 12:38:25', '2022-11-03 12:38:25'),
('c8623ec90650ace0db3ff2ed0b98698b77d286ec5093014dbdd84b6b3e60c1a5ba62d14483b45ade', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-15 07:13:47', '2021-10-15 07:13:47', '2022-10-15 07:13:47'),
('c86af28c5c649d2b0d55d9b8be061dd12c7b8199ee28e90c1ee900e23df9d5b7063efdbfd763ba98', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:33:17', '2021-11-03 21:33:17', '2022-11-03 21:33:17'),
('c886ee7534689bffc80042125e2d40ccb58e38b0488015d115830fb77190748c9bc089e6b9032104', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-19 08:03:56', '2021-11-19 08:03:56', '2022-11-19 08:03:56'),
('c8b142ab77b8f885229154f8c419bbea70eae8a960d912e937ffc0b62e6c6553065ea12a7bbfa99f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 15:01:53', '2021-11-22 15:01:53', '2022-11-22 15:01:53'),
('c8c4064de94a88ceef6a912c8d19d4e3c1487c64bb57c536b4bf0bc3cc7e805bac98e34c4b442b00', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-01 06:25:25', '2021-09-01 06:25:25', '2022-09-01 06:25:25'),
('c8df0d168d17757aed01173f932f9f4948a6a902514b77336033ead1e8d12516fb059314508f1329', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-17 21:34:36', '2021-08-17 21:34:36', '2022-08-17 21:34:36'),
('c91173326ed38bfead4351aa68aaaa27c9b61e82aa471836f223f0558ce5ac6ed36cd8547202d513', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-17 22:05:55', '2021-08-17 22:05:55', '2022-08-17 22:05:55'),
('c9255ada0b93dc6def9341a2d51880e2d66832953fd988abd9ffeaf404f09cb689d3597e6abcca44', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:35:06', '2021-08-22 14:35:06', '2022-08-22 14:35:06'),
('c94d473003cbcabbbf1809e53054a027114a51ddf9b075381449a63268c321b803cd6cf9928b2bd3', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-22 10:39:23', '2021-10-22 10:39:23', '2022-10-22 10:39:23'),
('c94dbf6e48ac81b9757a46cdc27f5bc837ad9c8f4c12388d9b74ebe8aa93074105afbe57e110a2f4', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-08 19:11:59', '2021-08-08 19:11:59', '2022-08-08 19:11:59'),
('c9547b6a77179d67a9d4d2c1c38413dbe3ac4c61cd7492650eb3e9e61413c03be2d86faebc5ce004', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 05:48:50', '2021-09-01 05:48:50', '2022-09-01 05:48:50'),
('c956c041d3f63834d7ae1dfedb02ede97a221ddbb1586eb4b3b16f3257c42877166d291461b047a5', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-15 12:47:01', '2021-08-15 12:47:01', '2022-08-15 12:47:01'),
('c95e652be467d7a28845d73360bb22bbf78da786b3bbe76dd85200dcdbf102f8e13b209b2ba95f09', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-22 14:41:47', '2021-11-22 14:41:47', '2022-11-22 14:41:47'),
('c98ae2b3f7adc2f62953a745f66ae6b787773c073064070d43abbe8578d5905b57e2cfc62ef2c2f1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-09 06:52:50', '2021-10-09 06:52:50', '2022-10-09 12:52:50'),
('c9964f28588f833c5a18276eb94cae1dd1bab5b31b14dd651243e68c82d1e84d08f21ed2ce2e0384', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:43:35', '2021-10-29 18:43:35', '2022-10-29 18:43:35'),
('c9a012f37ba7d33fc23edc3769a04052e2d5faee8a712070962dbc4709ef6a7eeb2582b088e56630', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:56:32', '2021-10-24 05:56:32', '2022-10-24 05:56:32'),
('c9a7399fa36189aa1d5e645bea1479dec0c07be913e5759746a68eb1ed502cbaf6ef43a5f9e01124', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-30 07:35:34', '2021-11-30 07:35:34', '2022-11-30 07:35:34'),
('c9c5e34438635f9fea3366da8ed8fd9f8fa1c6a00a65ac76691c5d50a125dd97d92f009d8e2370ef', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-08 12:40:56', '2021-08-08 12:40:56', '2022-08-08 12:40:56'),
('c9faea90fbac6b7d4d225eec5a6bae214694f1642204c3ffa4e3d16837187453f08adbec572aa864', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 06:42:24', '2021-09-03 06:42:24', '2022-09-03 06:42:24'),
('ca41a545d9d83a01dbffc7b5aa818c4b0a49c792297e91b5d42cdf2b01f3104bb6d9f782db841c47', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:48:17', '2021-12-21 07:48:17', '2022-12-21 13:48:17'),
('caaede68b1ab6f10d923d00e23b43ee0bc347faefd12680f95765c61e11249397c5692fcb6aec90c', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-22 15:00:19', '2021-11-22 15:00:19', '2022-11-22 15:00:19'),
('caca64a68e407a077a0b1c56fcbb3c643dea79ae9ceb5b2e0981245d82c366b74faf31e084670452', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-26 22:47:54', '2021-11-26 22:47:54', '2022-11-26 22:47:54'),
('cae1918dbd1ba4305a7862bd80a5aec50d9fbb8174211794cec386481850e9e01709d234719f350e', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-07 07:16:36', '2021-11-07 07:16:36', '2022-11-07 07:16:36'),
('cb832444e91b078c30971e56f1d61c15de856f8cc4217d2652ca6c2c8c19550a3735695e830ae345', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-02 16:40:11', '2021-09-02 16:40:11', '2022-09-02 16:40:11'),
('cba74577dbc9ac0fc439d09cf12d6b0f163cb834465f1a2c8b2652325a0754068b694b21bc12254f', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-07 08:23:37', '2021-09-07 08:23:37', '2022-09-07 08:23:37'),
('cc0d23712a00502274a09dd6b6801178bd7b68f4cfefc1c90bd777f6a568264ba387d60b52abf288', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-16 17:25:18', '2021-11-16 17:25:18', '2022-11-16 17:25:18'),
('cc11afcc3e05373b1e9598d7270c23a499b178b92de919efb51efae05140615f8802b67f4a2fc100', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-09 21:07:52', '2021-11-09 21:07:52', '2022-11-09 21:07:52'),
('cc1b52f3d324552edf325d9a747fe7fb9136621640ae176bf2f5fa9ffbf31fa59d7ce702d928bab7', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:39:38', '2021-11-03 21:39:38', '2022-11-03 21:39:38'),
('cc5d8433ca0f505b0efc124199a7b182b5510f89671c859fa257ee9f2c55665975ecd7b9e39aa777', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-08 17:49:23', '2021-09-08 17:49:23', '2022-09-08 17:49:23'),
('cc7f8e9aa012caad35dd41f009dc960942410dc6ffb7bff8e77b3f08cc65e0c34b016bd1bce51b85', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-11 10:19:07', '2021-08-11 10:19:07', '2022-08-11 10:19:07'),
('ccb33b27097d687efca21f33224af8ce26b06043b6aeb0a1418ceefe8b67b86187faef8df7d6ee6c', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-13 16:08:44', '2021-10-13 16:08:44', '2022-10-13 16:08:44'),
('cccdb06d6e9ebe8bd276e9e31c0a5af643e817b7b6baba5683869982e876eda3c23b1f950f67a8ef', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:36:14', '2021-11-30 01:36:14', '2022-11-30 01:36:14'),
('cd0a8a609d40084fb865a95f47b1c8c22c8dc82ed46930799025036bd504d636b0f0d01534cd564b', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 21:25:10', '2021-10-21 21:25:10', '2022-10-21 21:25:10'),
('cd1cefed07a6b68bef870af03b5c1adc1a67210de91860293db78e2b06eac3359d725f19e367cfd1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-03 09:15:38', '2021-11-03 09:15:38', '2022-11-03 09:15:38'),
('cdb44aad42a6701c3b694f4b5fb5035dbd2e1921d0477ff9f160f02997e3efce22bb88e2db5eb7d0', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-11 06:56:06', '2021-10-11 06:56:06', '2022-10-11 12:56:06'),
('cddeb92081edff36656a161628be25ff6cf8a2d5b3d0b4c6ab504033f9021e170ee38daf353168cb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-05 22:33:31', '2021-08-05 22:33:31', '2022-08-05 22:33:31'),
('cde1055c0bb691a3f0a28da2a2831867ebf8173a1f2058b45e9181cc1173560dbc88e4273be46a5d', 16, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:52:59', '2021-06-07 23:52:59', '2022-06-08 05:52:59'),
('ce06f89112d69eb3cc1f876bc1c1cd44be68bff2e9dad89e5a6568ddd2f1c76efd59fc855d407693', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 07:29:41', '2021-11-30 07:29:41', '2022-11-30 07:29:41'),
('ce5db11bde5cde57c5782b4b419cf119508f830a0a91f2093f54cad1945450d41775b603c3646547', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-10 13:36:22', '2021-11-10 13:36:22', '2022-11-10 13:36:22'),
('ce5e6bbb5dcfae1122f6285010e277b7ef776d1b082a49774533252540a54fff96de36b457256f5d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-25 19:09:22', '2021-08-25 19:09:22', '2022-08-25 19:09:22'),
('ce5ff588d5068b1933a67dec0bd4c789aaca17cbbb5099a00669ee6e0393246d3dccad7e2b256a3a', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-26 20:33:24', '2021-11-26 20:33:24', '2022-11-26 20:33:24'),
('ce78ee41d823e3179c096fcc0b6766fc717c67cb24e6ab362488f0176df757e372685c6a283a7724', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-06 08:02:24', '2021-09-06 08:02:24', '2022-09-06 08:02:24'),
('ce8dde721eef16f6d400338fa5c03fa2edc246c3a2be352430b1ca7a210074f4a6d88d864b6ad13c', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-14 13:27:35', '2021-09-14 13:27:35', '2022-09-14 13:27:35'),
('cec50cecdfbff5b7b5be82e08072c853e6e29e125b7da4e588d594b987f6aa2c7c94a6a67d326f03', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-11 19:50:44', '2021-09-11 19:50:44', '2022-09-11 19:50:44'),
('cef9c01fae18f7507e18dca86c3e35061b6c0056d3b760bdd8979be57672b82e660b310914879ec8', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-25 08:01:23', '2021-11-25 08:01:23', '2022-11-25 08:01:23'),
('cf4877cfc8c51b0d54fce85f1eaddf892324d2c64c471bf740e2e060603d6e0ba705fdaf4da5dc5d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 21:57:43', '2021-11-07 21:57:43', '2022-11-07 21:57:43'),
('cf78f1f7979f730a9761887026d712decf63d52370e613e60c8cb4cee260913261e8da25135a918d', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-06 06:45:54', '2021-08-06 06:45:54', '2022-08-06 06:45:54'),
('cf7f59c944305994cee79470abef40b4bcdc75cdf01a87cfc9ab45487f6c44bdbb21f7606dd20f73', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-29 06:58:56', '2021-11-29 06:58:56', '2022-11-29 06:58:56'),
('cfc2dfcc9212e4b0b916d9ae06c1e865f4ce4278a17bef5731e072e200c21a6a08bbb422b5ea8af2', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-21 13:22:09', '2021-10-21 13:22:09', '2022-10-21 13:22:09'),
('cfc7d03c20e6784cb844b9f686a70bc655fc71015aa50cf8e400f58503fb9aebec4e56a13acc8c18', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-09 16:11:46', '2021-09-09 16:11:46', '2022-09-09 16:11:46'),
('cfcbd5c1ac3959370b9bfee661ca9ff991955f543989603e00767823970f2a1ef2f0b8fc987bc15f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 11:31:57', '2021-12-02 11:31:57', '2022-12-02 17:31:57'),
('cff52285ea40dfc76399a7dccc0b855859b73eaf972d64cd82f12cd9fab4a370aeb9d69f071f48d5', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-21 11:16:42', '2021-09-21 11:16:42', '2022-09-21 17:16:42'),
('d0095e4c7e63f203e524e636d045ce7b0c2e34fae4c235ef15526d000b5c282952e978fd27f52a14', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 09:39:22', '2021-11-15 09:39:22', '2022-11-15 09:39:22'),
('d0311a9b7301a9e5dc988ab7b9c0b32bd1d2f30917b81b73e2e9b50616daeca26e6172b3c3c71011', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-30 07:59:24', '2021-10-30 07:59:24', '2022-10-30 07:59:24'),
('d0548dcace79a7edbfd4ba406cacba68f5d9a44008c72bf04b6719b2aeb41bb696797d782cf0d4f1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 19:16:23', '2021-10-22 19:16:23', '2022-10-22 19:16:23'),
('d05ac50d5050e6cde5ad3d21286b310b21ab546dc9443f6e5570a4589bdcb6dd6f3926a808fe7e3b', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-04 02:24:55', '2021-11-04 02:24:55', '2022-11-04 02:24:55'),
('d09a591785e5f5ed373e5da79653312328c3f2039722d6cf4a78682600ca3ba17afaa5630a09afa6', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 08:53:55', '2021-08-30 08:53:55', '2022-08-30 08:53:55'),
('d0a8c4d29efa8a04e89cde189fb12dafacc05dd2e66335a6bebe013e8d71e63862c0c0cc85cfe6e1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 09:25:55', '2021-11-27 09:25:55', '2022-11-27 09:25:55'),
('d0b60157940fef5edc23f97547354bbf0f9daaa91776247d7a2a3b82e9657500dc06f66c745cf7c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 07:09:46', '2021-08-06 07:09:46', '2022-08-06 07:09:46'),
('d0ccfb7494d304a0c0ced6a80c133dc6b85b1c6ddf5f1db1fbabd23226ed942f8db4f96080477d9f', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-28 00:56:23', '2021-08-28 00:56:23', '2022-08-28 00:56:23'),
('d10e07626088783b2e858cd7059872b7bd54f27fb7efacca23c7455d906fbcddd47af315f2711746', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-28 12:26:08', '2021-10-28 12:26:08', '2022-10-28 12:26:08'),
('d1114b8945a65c6ce2c667c3bf02c2c726a47986a47d266dfc1494c65a3f845dbad650bddfaf0ea6', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-21 07:29:02', '2021-10-21 07:29:02', '2022-10-21 07:29:02'),
('d116d0fb5ac3e22f046b4840851ca2524e2d3a73555c1232002c8b67bcff9214824a0f77bbd1f781', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-14 01:59:30', '2021-09-14 01:59:30', '2022-09-14 01:59:30'),
('d117a2aba1177a3eb33c83742fd068ca9c42a09014e6cc894321df3148f7ee530942d69a648feced', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 08:28:03', '2021-11-29 08:28:03', '2022-11-29 08:28:03'),
('d169577375e4c9b6fb0fcf9bbf849012794714c07df0756c36cb2ce48d0505269fadb2e4647bda7d', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 22:47:17', '2021-10-29 22:47:17', '2022-10-29 22:47:17'),
('d18a4b98b2bb9892857338a697c6cd89231744616ad4ca9abc0e257adaaeb1ef712e7da9e2aef5cf', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:49:36', '2021-10-29 18:49:36', '2022-10-29 18:49:36');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d18ac13c1e6ec4dac2d985c0701818977225990786985aa2f7c658b87df525f1cd71554c63269294', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-19 06:29:25', '2021-10-19 06:29:25', '2022-10-19 06:29:25'),
('d1c282bc79c975fe024272c05b504d26ec8b3f9860d6381e8c582778e6c055db78c60af31bc84c2c', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 04:15:11', '2021-11-24 04:15:11', '2022-11-24 04:15:11'),
('d1f22666b52e2e4936e8bf4543039bc281f5a805d8fd9812709223dd579db2f6d29703f124be6608', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 15:17:51', '2021-08-13 15:17:51', '2022-08-13 15:17:51'),
('d226e8db20be8f612b259af8a18815b25c16d9b3f89814ba70fe5667da97494756b9fe304a1dbd6a', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-12 17:50:33', '2021-10-12 17:50:33', '2022-10-12 17:50:33'),
('d23678a7d67cbeedc353c430b1c53925e4189acef08218b0e4b24bea3c4f38dc355994ccfe1da89e', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-31 10:09:19', '2021-08-31 10:09:19', '2022-08-31 10:09:19'),
('d2f4aeb7ae9720130f6cb5483a4f9105082b2c544e56558195821b15c823ea096e24f4e7b29efee8', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-13 03:28:23', '2021-11-13 03:28:23', '2022-11-13 03:28:23'),
('d318ce8545b14fc62e6951c18ab3be6dd794c14ad635c91acfe740cad6202dd35392f07f554f39fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 06:00:15', '2021-11-30 06:00:15', '2022-11-30 06:00:15'),
('d339e43a2c55a036b9b02aa487a5e24718949fe5534fdcfb7f6f303a541a8938db94838b57939f30', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-19 07:44:26', '2021-09-19 07:44:26', '2022-09-19 13:44:26'),
('d3476346699a75dbaa3e12058f1c625ce633e24b1518cc555900bb2395edffe79706a778fe2f6013', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-20 07:25:49', '2021-10-20 07:25:49', '2022-10-20 07:25:49'),
('d3735f0826c1c735f94ed7cd9ff4d4d391fc489921277bc80dbbe3a81c3bee62f3272c249f246888', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-30 06:44:20', '2021-11-30 06:44:20', '2022-11-30 06:44:20'),
('d38ddb74190d1f833045649b29b08d35106706f033f0d14cd8428c68d7ef2a3367c07e1cb1d39392', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-22 08:43:35', '2021-10-22 08:43:35', '2022-10-22 08:43:35'),
('d38fa7e8ba81368870d7e40f5f09cae1566f09db52b618da24f8e837a68b85008bf4b24aad33df38', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-30 23:04:46', '2021-10-30 23:04:46', '2022-10-30 23:04:46'),
('d3ac1d0a7f669b28175dedbb24633dc321c7392362a1502441cc1c21b39f85a6891bd1b917f69a0a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-23 12:35:31', '2021-08-23 12:35:31', '2022-08-23 12:35:31'),
('d3c274b106b99f5eababe116fe18395c06f00dbb939e981c1ed39802b0d83c03d313621740fb3269', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-18 17:46:52', '2021-08-18 17:46:52', '2022-08-18 17:46:52'),
('d3cdaddac1f7e5ca0e3099956941ba5cdb9100a8a70020734c50bcf2bd5f972ac2616ba9fec9374d', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 17:49:42', '2021-09-14 17:49:42', '2022-09-14 17:49:42'),
('d3d39dc71f373de10cb0b4069fbd1278e269e4a78cc67316135efb6f18685e6e876f39b48a9c49cf', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:17:24', '2021-12-21 07:17:24', '2022-12-21 13:17:24'),
('d428c1be063902aaabff829a962d136fa73a4cbc7d9eaa0a605c0fc779179ac0f8136db6f311e738', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-24 06:42:42', '2021-10-24 06:42:42', '2022-10-24 06:42:42'),
('d45045ce9cb5857e982f9774cd14ca6161fe00b5f55513d7c26a05a5459bf4ff267bc390afd42a33', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 06:04:41', '2021-08-31 06:04:41', '2022-08-31 06:04:41'),
('d48df45d422500890f582920eec74e5ff40b801613ca7ff228941db539f68182b995e648532c02fa', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-17 17:42:11', '2021-08-17 17:42:11', '2022-08-17 17:42:11'),
('d4fb66245e882a6b2b9ad8baa93d862fa87078e0c331439d8b8108cce7a779a6d544ccdd0d5d5a9e', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:00:52', '2021-08-10 16:00:52', '2022-08-10 16:00:52'),
('d50aeb1a800710202eff3c28a1cd40363fd398a25d87d1b10fbd6abace56a2c8116197cdf8656c57', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 10:20:19', '2021-08-13 10:20:19', '2022-08-13 10:20:19'),
('d53ef7f7a91c3ce8d2af0e703f27a0a791c266619d8005bb9bbc858fbc45152e75cf4585af8f5678', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-18 07:16:04', '2021-08-18 07:16:04', '2022-08-18 07:16:04'),
('d562750eb99a8e637b9e563fe92986591c9b40ed1439bca69e40173e4b4e192c6d76873e139e8670', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-13 18:04:14', '2021-11-13 18:04:14', '2022-11-13 18:04:14'),
('d570f7db07cc9e286fc403b0ca77b6c637b16fe2b602811a00fc3a212583bfbf759ef2758f80a1a8', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-13 21:21:48', '2021-09-13 21:21:48', '2022-09-13 21:21:48'),
('d5a2b7c95735658fdffe6833a40f397bc3d288f5913c2e6a555ca3a6e932022018eab828661fe287', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-26 00:16:09', '2021-10-26 00:16:09', '2022-10-26 00:16:09'),
('d5c09c4235e509c871e44a77b70a46ae2e236f786bfadd1138de5cecf7324d76ef4f45c1fef7443b', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-16 12:15:29', '2021-08-16 12:15:29', '2022-08-16 12:15:29'),
('d5d98169886a97884097f2058d01463313d6c8acc4f02317e3f6c58316de016464077b1cb0d82898', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 12:27:54', '2021-11-27 12:27:54', '2022-11-27 12:27:54'),
('d5e2fad3123cd82efd9fcd930102aabefea0dcbc1689f9701ce71200dd0676c37d31e379aab4a854', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-19 10:51:51', '2021-08-19 10:51:51', '2022-08-19 10:51:51'),
('d61d5e0c7f561a8f11d29dc931f3c5d2c71ac99287fd80744fa6fbc4d62dd98edf7d3431527a44a3', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-26 08:47:24', '2021-08-26 08:47:24', '2022-08-26 08:47:24'),
('d624d77b038307b48919c47674c7202948788c1a14470290ab341f1d4a03b1151d19551fddf593af', 28, 1, 'Personal Access Token', '[]', 0, '2021-11-09 04:43:20', '2021-11-09 04:43:20', '2022-11-09 04:43:20'),
('d62cbef06f0888f64333fff41fc0d905f5b1982609d26b73fe4f09899cf75cd3a8780dc2c3b170bd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 13:31:20', '2021-11-22 13:31:20', '2022-11-22 13:31:20'),
('d64464cc0d889468d837e4ac5417470deab0abb3463f4a77d7501f1e82eef2955f1aebf9a7eaf91c', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-29 06:59:08', '2021-11-29 06:59:08', '2022-11-29 06:59:08'),
('d6be5ef1b68f26161edce32ba278e22d4524d65f7ff654dda2875ceaad686f608151fcedd52e8794', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-23 07:12:40', '2021-08-23 07:12:40', '2022-08-23 07:12:40'),
('d71aeb6dc0a8a5d63b58f94bf6fd42f36fc55c043da4e0b3b0905f03adba733e39a0cd486a79097c', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-30 09:58:33', '2021-11-30 09:58:33', '2022-11-30 09:58:33'),
('d721ef5f3ca7a67b3b2ba5628f6e24630c26d0651ad86a5b83f8323e9f38fa6bb28086c5f0a0a8aa', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 21:25:47', '2021-11-22 21:25:47', '2022-11-22 21:25:47'),
('d77b688c53179d50d3ef5892a078426e2481bb7401c58f92c85076cfad706c072ef4a8e8c4048781', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 07:38:05', '2021-10-28 07:38:05', '2022-10-28 07:38:05'),
('d79cecefb138bd7e8cba6d75a74498b3b14ddfa1f77555dd0ca78ee24f5daded15613d44a1b3504c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 13:08:23', '2021-10-25 13:08:23', '2022-10-25 13:08:23'),
('d7c45ddc58a805a8477c46fd04c61defb79d64193726834f86655fec88ab9157e9f6ea1d984774bd', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-15 07:12:13', '2021-10-15 07:12:13', '2022-10-15 07:12:13'),
('d7c9dbe9a94aef4378e4f687da3da9eedfb5d9d2f5de82ec4b443b9450b7a0635ab39dc6c0dcf499', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-28 13:12:57', '2021-10-28 13:12:57', '2022-10-28 13:12:57'),
('d7d8d4c76aa70af066d9ad71f34d6c841dde9f6a7677021f2cd61749f46c1de627bbecaee5e2ec87', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-31 18:37:24', '2021-08-31 18:37:24', '2022-08-31 18:37:24'),
('d8314b0a84f467c04a0a1df46646e73d54d2c093826812d4fb949d5215984c6ef16d3772075fb02d', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 11:33:44', '2021-11-02 11:33:44', '2022-11-02 11:33:44'),
('d864622c99f317b881987043baf7daa52a67fc2593885ea3962dd1ad26012c071fe9bbc51a3a84be', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:11:20', '2021-08-10 07:11:20', '2022-08-10 07:11:20'),
('d87646bdc10ce09fd161c05ae5f6afde334aa1cb72fbb9294df9edd2c28574eff1be7908c047e692', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-26 07:12:21', '2021-10-26 07:12:21', '2022-10-26 07:12:21'),
('d87d12183f738336d3f32f8b8a609eeb9805beb5cf3ef305fbd3f1f7b316f47aa39801f1ae3a6aee', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-09 11:54:26', '2021-08-09 11:54:26', '2022-08-09 11:54:26'),
('d8998c0e70f2d4412cc4016a91c0cf72dbc5054f2cfbf7ae21f009482e0a6ca60af0b9e6f2915f33', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-11 05:01:54', '2021-10-11 05:01:54', '2022-10-11 11:01:54'),
('d8cbe5489a4ce0aaa10a1bfe4b2babb654600c9b13f2593a11d67034921415639686d68992c0f4c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 00:50:26', '2021-08-13 00:50:26', '2022-08-13 00:50:26'),
('d8db876f124b9624265536e59568657ce2975cae28a6d0b766fe0f5bf33e7e5da1271089855e8d92', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-27 08:37:14', '2021-10-27 08:37:14', '2022-10-27 08:37:14'),
('d9201257b25d82c1252f3cca46ba43e6e971a2e0d27b6d57d4718c80d08f215d9d2e0f0578fb2624', 21, 1, 'Personal Access Token', '[]', 0, '2021-12-01 21:14:53', '2021-12-01 21:14:53', '2022-12-01 21:14:53'),
('d956b4dde6263149bdceeeb13a7a0afd9112fb174e8684b3171187b77e22c2599debdbc8c92dacbf', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 21:19:49', '2021-11-24 21:19:49', '2022-11-24 21:19:49'),
('d96058925290318d5b584889492100689fa60a7e7dd604c0ea48183ab7ec0b19943a9dae8d54a8f8', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:57:37', '2021-11-29 11:57:37', '2022-11-29 11:57:37'),
('d980f70643d1915e17268c3f6b111f84e1a0f1fdcc484032b4262f3a3ff333fb48c65c97a7a297bb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 10:18:21', '2021-08-23 10:18:21', '2022-08-23 10:18:21'),
('d9939f31c32a431c14393d155453ff7858d83fb97cbf232718dcc1a6b2b72eb432e65a70ffd4fd5c', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-12 05:51:21', '2021-10-12 05:51:21', '2022-10-12 11:51:21'),
('d9d2b1d59e48147ec81c670a07f308e6a2b5e472c051549227a8f418dece54763228246266d78807', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:57:23', '2021-11-29 11:57:23', '2022-11-29 11:57:23'),
('da0765c5c424b59448b15b20911e7de98794cbd308c53eb83cbe24726cc8d57969b1e718665d9b0a', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 07:52:40', '2021-11-02 07:52:40', '2022-11-02 07:52:40'),
('da45345f4d55d45ae818856768cae1bc011f02d8a1cf6eb755d8be082f961f37e31a102c94f78d0e', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-16 13:14:11', '2021-10-16 13:14:11', '2022-10-16 13:14:11'),
('da9635796c56808516aea1a9ed3bc9c11919b5f7d88a91b41cad65145a7d60a325f068584940ca8c', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-24 23:13:54', '2021-11-24 23:13:54', '2022-11-24 23:13:54'),
('da9a2119d0e1e31e77f23cd0130b3c153caf68887c205f58ec46ae6bca0e47d28692fa8bec2f9a8a', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-21 01:39:57', '2021-10-21 01:39:57', '2022-10-21 01:39:57'),
('dab0e858706081ab1abc6eb64f9de26c04dc76fa91f5a9690cd7880cf1f058889b7defa0197fdd9d', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-18 10:58:58', '2021-11-18 10:58:58', '2022-11-18 10:58:58'),
('db1da7b63b62532606323a7cc6cfecc7576a5ef6c6e6af12909cf44df24cc3e344f4b734c9076596', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-12 17:22:12', '2021-08-12 17:22:12', '2022-08-12 17:22:12'),
('db368aa8c09798b5112ba4bb1ef41a85d41914fa06a66876734a3c1b01da48b3c93db8122435b7ca', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-22 14:21:47', '2021-08-22 14:21:47', '2022-08-22 14:21:47'),
('dbb66b3b184021fd57013852ac9fce4a95695a775d4858cc76c9e3e4f07fb39db0e043ef6b190f4d', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:29:24', '2021-10-24 05:29:24', '2022-10-24 05:29:24'),
('dbd215491fdfab485c509660738c360f3d16deeb73c1aefb07588cd9fc9f7fbed1dea40e085dd5f7', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-09 07:37:45', '2021-11-09 07:37:45', '2022-11-09 07:37:45'),
('dbdff6f8ced9aae80b9d038574aee1a0c838bf1392591ba5701e53fe74472b383f90a9678eb38e26', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-28 14:05:38', '2021-11-28 14:05:38', '2022-11-28 14:05:38'),
('dbf8c90877dc142346a15d4f97eaaa2e74d00e4451c340e205f544bfc2326b748cc6f83a6ab2861d', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-09 14:38:09', '2021-09-09 14:38:09', '2022-09-09 14:38:09'),
('dc165b72498a10a294d3f35b3e528d064d5cab74a9560ee99e83b5d6fa96fe0ea08404bd2e7b875c', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-07 10:38:08', '2021-11-07 10:38:08', '2022-11-07 10:38:08'),
('dc25b09cd11dcf66fedb94d37449850b818252b5ccb05e63899fa59d784830ae7f95447c67405cfc', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-04 12:06:50', '2021-09-04 12:06:50', '2022-09-04 12:06:50'),
('dcc600d0c25a7e2e0e1e73860ad9cb6379d0ed13a51d4c3548a0a90fba0f852839722cc1d12fa186', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-23 16:42:13', '2021-11-23 16:42:13', '2022-11-23 16:42:13'),
('dcced2bf0b043e8ca46662a12ef47b8d2435424593248c9a550a9b02f867b5277b92e651d22d1658', 21, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:47:54', '2021-12-21 07:47:54', '2022-12-21 13:47:54'),
('dccf8ef3ff3c09a46d2ce8e3e0285c97e9fed2e5a55a3b5c66e95c11a758e6061330771529902418', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-13 07:53:41', '2021-11-13 07:53:41', '2022-11-13 07:53:41'),
('dce744cbefa9438df17b2683a37d9fd795078a6a5a04a44190969d82c8285489aac970918055bd76', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-10 07:30:09', '2021-10-10 07:30:09', '2022-10-10 13:30:09'),
('dcf0d8386bf16beaaacc2afda0236eaf32137c2c046831bb0a48554c4418be56564fafe4b037940d', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 12:35:35', '2021-09-09 12:35:35', '2022-09-09 12:35:35'),
('dd032351a903cfb9c40f0df0ed63bf7275ea2cb0a2494a0f62f620ce136fc3a55b5c6331ca497ca5', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 17:20:33', '2021-11-03 17:20:33', '2022-11-03 17:20:33'),
('dd05f802269db23873cb269ef47782cf419d94fa0bbd68579fa0df749552d127f07933d960ac20d5', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:42:14', '2021-08-03 06:42:14', '2022-08-03 12:42:14'),
('dd1a289f8e477feead434781f9287b1e3c88c64bee74b1128fdaeab6e27ca0d1f39d1370f9d42122', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-21 05:45:24', '2021-10-21 05:45:24', '2022-10-21 05:45:24'),
('dd22eb8e7ff9ef5917b6fb0aa4f8bc37f35403b19662b12a950bb50c7b877821fff5b35417268848', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-12 09:39:01', '2021-08-12 09:39:01', '2022-08-12 09:39:01'),
('dd2c955806091b2ed8a10a0cef9e2ab2ad74932433209925a8ceda38a1552119e7d37f74a7dec4c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 14:06:14', '2021-10-18 14:06:14', '2022-10-18 14:06:14'),
('dd2df5fb6894868dcbf943919e5275fce32b3d68d02ef26376836ae1717f4784ada4546a1cff2732', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 02:10:26', '2021-11-29 02:10:26', '2022-11-29 02:10:26'),
('dd3bce223bc7661c01125a1a518861b9f758ebb346960847eb1c67d858da9539ff5bf668cefde63f', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-23 16:08:29', '2021-10-23 16:08:29', '2022-10-23 16:08:29'),
('dd4826fe7dceefeff51c9c8257cf837bc5d086166e924e8c6ebd11e8c390833942b920f0a55e919b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 11:16:16', '2021-11-24 11:16:16', '2022-11-24 11:16:16'),
('dd6801878df289869097fdf55cd9e36a5ae596071ce87b54051ced2416eab6098923f2fd6e4bdabe', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 11:42:29', '2021-10-22 11:42:29', '2022-10-22 11:42:29'),
('dd6b5c3ca39ad73622864f0dccd69d0149dedd2e4a9d45e5b21bc049c857951a8c69247680a0433c', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-07 07:16:02', '2021-11-07 07:16:02', '2022-11-07 07:16:02'),
('dd6cff3d756b7b0854fe53e25282f8f03ff23a23dfe766bfaec1b44f96c1d9fad02f9860888e8ba0', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-31 13:02:09', '2021-10-31 13:02:09', '2022-10-31 13:02:09'),
('dd7b0aa4a44241044dcda56a78325609ad8ddc466bb2936c0d530976d5d7a72ac7d063c51b6da4ea', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-19 13:22:12', '2021-11-19 13:22:12', '2022-11-19 13:22:12'),
('ddc26dc4d34b49c32e1a7effb59268690689ecce0f8217f87b511a14c6b2250db7f177a85562b309', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 15:32:04', '2021-10-20 15:32:04', '2022-10-20 15:32:04'),
('ddc9a1a6083ae6c12d73a9d5751022a20b3e647695ccb544200447506e26cb76eed26ea819f6923a', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-12 14:33:50', '2021-10-12 14:33:50', '2022-10-12 14:33:50'),
('de3c00935e9a27299e4a5cfdb83beab219716897670103d4e5632e14ecdd4a96e22f48f0a2f16414', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-24 07:08:08', '2021-11-24 07:08:08', '2022-11-24 07:08:08'),
('de8e2c1490aecb97d9a74a07367cab60e2c9199d1241812dc28e3f2d3f647cb0a86a299ea26765cf', 1, 1, NULL, '[]', 0, '2021-11-27 08:52:02', '2021-11-27 08:52:02', '2022-11-27 08:52:02'),
('de8e4311d9927e9176728cc45e264f5b90ee5cf8ad35552977f1518a08cd960c1f47e479fbdca5ab', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-14 11:42:34', '2021-11-14 11:42:34', '2022-11-14 11:42:34'),
('dea85ee20c03896b669f578519b8ecf66d91595b47d03ee06e937087ad02f402857d6d39f70b7ef6', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-20 05:58:01', '2021-10-20 05:58:01', '2022-10-20 05:58:01'),
('dee491ef4878766a99b49f185335ac3036a11f11800ee3614db1c954877c88d94b55a2349a684699', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 09:11:49', '2021-10-20 09:11:49', '2022-10-20 09:11:49'),
('df3aee31fce0fb2627c584adbdeffd8f0a6a0f6ab5deb76d5b165fed173ce7d27af4cddebbeef96c', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-10 04:58:56', '2021-09-10 04:58:56', '2022-09-10 04:58:56'),
('df472368b1fffdbf9837a279a3605bca05974a7971caf4461b63b0e374bed068806eab954e1e9b1c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 19:16:42', '2021-10-14 19:16:42', '2022-10-14 19:16:42'),
('df7fd857b1431d7ed80b9941be0e98d65844818eac417ec554b67cf490a2ce0931ed7b445c6a8402', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-19 23:48:39', '2021-10-19 23:48:39', '2022-10-19 23:48:39'),
('df931128a652fb9cd1f62b2c69d580e7f085738c2d19a45a7452b5e359aedf15a180770c5af65b4a', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:08:23', '2021-08-27 09:08:23', '2022-08-27 09:08:23'),
('dfb256cdab0eb4eddabbfb11b65fd0c78d3674cb292ee94453ab67484561561f3db057a4a7ca54a4', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-30 18:58:50', '2021-08-30 18:58:50', '2022-08-30 18:58:50'),
('dfba7d8ceee74f7035c52c22b46cfa5f8643da33f37384da51dc6a5967ee1596db1bf430966d8e65', 20, 1, 'Personal Access Token', '[]', 0, '2021-08-23 12:38:59', '2021-08-23 12:38:59', '2022-08-23 12:38:59'),
('dfde97e275ffcdbfabf84238b0d2c67c6528c89f09a3a79b7ba2372f4f46d56e5dba2ed3468a5361', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-19 09:19:59', '2021-11-19 09:19:59', '2022-11-19 09:19:59'),
('e03be34bea5681c6650b9b20b458284ed0f5dee47e9686582b427a18e75cc4622cd4a0f42ae4b926', 20, 1, 'Personal Access Token', '[]', 0, '2021-11-27 17:14:55', '2021-11-27 17:14:55', '2022-11-27 17:14:55'),
('e04d7a21d1c255d177519536b6713c1d5a527acc121fd6f96978a8a8be5b94c4939afce642ba0dd2', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-21 06:49:52', '2021-12-21 06:49:52', '2022-12-21 12:49:52'),
('e08bda199b35abcc009d52b800714d2643986e460993717ae0206dffe3c3dde42cccee275cbd8178', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 09:10:36', '2021-09-16 09:10:36', '2022-09-16 09:10:36'),
('e09a90dd3307b704aa753629ba0016e0d8b84c05eaccce0f14e7a1e471b936a2f1cd7047641f36a2', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-18 11:57:27', '2021-09-18 11:57:27', '2022-09-18 11:57:27'),
('e0a741de3e9d6959cf46949f77d721de8a9f9064331651eeef06670ad89fb5aae1bdc8367be7d8d3', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-06 07:55:47', '2021-09-06 07:55:47', '2022-09-06 07:55:47'),
('e0bfd8daf66537db2dc112fee8015e5b378441d9c63e45df139437e6fa812456ecaa161503d0f93f', 20, 1, 'Personal Access Token', '[]', 1, '2021-09-07 22:54:51', '2021-09-07 22:54:51', '2022-09-07 22:54:51'),
('e158456a000ef3a612343be0ea7f9b2bae1133bb108d5a580f568ef2d7559404887bf08f3ce327f2', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-15 11:54:32', '2021-09-15 11:54:32', '2022-09-15 11:54:32'),
('e16684e213ec83da376802788a92c474b142ceda4f845f1f0899bb041d9c537d99a2f0db2aa38b20', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-10 07:11:39', '2021-08-10 07:11:39', '2022-08-10 07:11:39'),
('e16a2f19c18578cf1326257d410891b11b6ed1f06bb6f38eb0d034a30bc3f466c50606417e2f3ad8', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-24 05:35:07', '2021-10-24 05:35:07', '2022-10-24 05:35:07'),
('e18acf1e9ac89155fba88bb6db5a889c0254bc2c47aad79ab2fee0708d642b0decc5ddf84166a4e7', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-16 14:11:59', '2021-09-16 14:11:59', '2022-09-16 14:11:59'),
('e191291b3459c1735b9780ce268d195b6f285694e4703a7b4c79daf9fd1643ff2db27d58e0af164d', 22, 1, 'Personal Access Token', '[]', 1, '2021-12-21 07:47:39', '2021-12-21 07:47:39', '2022-12-21 13:47:39'),
('e19dc2237bf64383e7a505fb9275bed7053d0cd0a9a08efe1dfef5846ee49ea3495d462cb149586c', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-28 14:39:04', '2021-11-28 14:39:04', '2022-11-28 14:39:04'),
('e1abaa12e0243e78f45db5bd14afe15eb4edc99572fee0786bca80743a3b4ee60aa2ec1823c9e311', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-09 04:15:28', '2021-08-09 04:15:28', '2022-08-09 04:15:28'),
('e1db79138f8a5df64df403b7c60831af12ef75af6146a3db8e5e80707281087d10192c878f6cda82', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-26 14:43:42', '2021-11-26 14:43:42', '2022-11-26 14:43:42'),
('e28079a3f04bbca3bd0166425d4ee06ded526807a570817a29bb8c94f095474b7c691348a696bde8', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-16 04:52:04', '2021-08-16 04:52:04', '2022-08-16 04:52:04'),
('e2958c1319e8b7e691118c0b8ed7ae3af21bbc0b703973f019c522cffc807db6fc8377b151fd6f37', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 00:35:52', '2021-11-07 00:35:52', '2022-11-07 00:35:52'),
('e2a9fa55d87b197542ec97e85988e7533eef33ed4e8ef3dcefcd8ad6db939b8fad33fe16134a0bf7', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 04:19:30', '2021-11-24 04:19:30', '2022-11-24 04:19:30'),
('e2aa0cdcd70155e7dec5b4570aa36d11b274f8d5674107274a5322c073f0992a3fd721a77caf3813', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-17 13:36:27', '2021-10-17 13:36:27', '2022-10-17 13:36:27'),
('e2e95ccd144a90f628a976d1956c35f94a2edf56d944bce48a9a0d3e80514cdb977d085a2251f35e', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 08:37:59', '2021-10-20 08:37:59', '2022-10-20 08:37:59'),
('e3235b2a7840fcb17ac34f1c659c735478710b3103d06244d6e8cf536ed3fecf0efceb964e3c0c8e', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-08 18:41:25', '2021-09-08 18:41:25', '2022-09-08 18:41:25'),
('e34f4b0da4430bec381ebea1f711f21227567a7ca662f1cc07e5d07e7899b4cf1454837e25cb027b', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 14:54:31', '2021-09-09 14:54:31', '2022-09-09 14:54:31'),
('e38355f1b73efc4c6624f107f2ca33d11ff84d5baff9aa33cca8ae16e2dc1321b87613b60d3bb649', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-15 11:45:10', '2021-11-15 11:45:10', '2022-11-15 11:45:10'),
('e38ca70abc0a6e8f77ca40dbd4c6bfcede171181ccb87faf3448d36ff99c0bbbe7471f4ee8c8f1e1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-17 05:59:47', '2021-10-17 05:59:47', '2022-10-17 05:59:47'),
('e3b3d7106d7f2a22e0888c9205b977183cafa171169d0fc0827f53725ce588bc290e73ac378d7fb0', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:35:16', '2021-11-30 01:35:16', '2022-11-30 01:35:16'),
('e3d1d4aaf6988048058fbeb23df7a53cc01b72f69a34a77f13e886baa858861674ef3db00555ec53', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-23 08:38:58', '2021-11-23 08:38:58', '2022-11-23 08:38:58'),
('e3dcde19bdf208f598595f745034d115c0f33ffdd681b46b08c0b9db803cb6f248e22bbdf630b56f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 12:41:46', '2021-08-15 12:41:46', '2022-08-15 12:41:46'),
('e3eaf44a273ec2dee02978a56382b99350a7af6bf0aee2bf390b754f1ea90cc50b913b65bfdfdc9d', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-22 11:42:04', '2021-10-22 11:42:04', '2022-10-22 11:42:04'),
('e3f152f382bf4aa4efa96140cfcd1765463ff3fb1fac5ce55ffacab58ae5653ccbafe99f90bf3e53', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 09:23:18', '2021-11-27 09:23:18', '2022-11-27 09:23:18'),
('e3f3ebfd9db63dd1ede7b93fc624aa57bbcfe59f8eba9845899b4883cce742bc833c5a28e7a80827', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 11:49:26', '2021-10-17 11:49:26', '2022-10-17 11:49:26'),
('e41cd393f1107c31c4191614ed9cffb25ee031efd4fbd4a5a9c6db18b1b90c2b08b986d44537f7ed', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 04:12:35', '2021-11-18 04:12:35', '2022-11-18 04:12:35'),
('e42a5b29397547a0a9ad789d9f7d5a39ec3e569be15254d7e5a262e863096005181ed7a261ac1d1e', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-18 12:06:29', '2021-08-18 12:06:29', '2022-08-18 12:06:29'),
('e44496a73a7f0b232eea7c197af06caf31f8f1c3c321fac3a279f6e8efb912b396c0e5dd5f268e2f', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-01 09:10:50', '2021-09-01 09:10:50', '2022-09-01 09:10:50'),
('e464091925d861542323de3b68123c938de3bfa4f3a49aea7b268918e97e34e18e8cf4be76dea186', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-24 19:30:52', '2021-08-24 19:30:52', '2022-08-24 19:30:52'),
('e4b3330053b08641a5845d1458a905acbc50dbb1273697c949562eb1cd6f49422599a640d095ef44', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 03:06:52', '2021-08-26 03:06:52', '2022-08-26 03:06:52'),
('e4c0294150d10f9307cd2887bf43ca3d1038cc8b42aa502579cae11fe28be583407ed1ff8de5b405', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-30 19:20:52', '2021-08-30 19:20:52', '2022-08-30 19:20:52'),
('e4d838b2845a2450efa4ae0a9cc78fbfd88e592a1e971a0351efadcfac91b7132b76d92ed789a65b', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-12 17:51:43', '2021-10-12 17:51:43', '2022-10-12 17:51:43'),
('e4f79270b24ac73f85092d6af23ac722cbcae87eb3276460cbd3b89a81ee83645bdaa5ec62201433', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-20 06:38:34', '2021-10-20 06:38:34', '2022-10-20 06:38:34'),
('e52dcd25a6ef592897c13adb389efc759cccdc97881ce5527b6ba1b6f9096a9be416f3856097e7c7', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 04:05:07', '2021-10-25 04:05:07', '2022-10-25 04:05:07'),
('e55d97499a60e99a8bf171cb90b8a2aac27351cce81587ac4cd57265e887534be8ca614c5fd44d13', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 19:16:33', '2021-11-22 19:16:33', '2022-11-22 19:16:33'),
('e59f9df5ecb5ef2eeb293cf8ea48d9872c0db1cd19a4bae3e4ab58c54d273622bd70ab50fc3a156c', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-31 18:30:03', '2021-10-31 18:30:03', '2022-10-31 18:30:03'),
('e5b676ec5fdfafbdce7b38609f3ed1b77e401648b8cb884271f7fe253790ad563824cfc613258e67', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 03:11:41', '2021-08-31 03:11:41', '2022-08-31 03:11:41'),
('e5c561c1d3c5b1589f8c5c70a4c25b1fa575180ea5c86fd1ee069b20bdc25a8fd97a8732f1ebb3ac', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-28 00:17:06', '2021-10-28 00:17:06', '2022-10-28 00:17:06'),
('e5cc292a17e13db82c99dc87ea4c645d14e19ed8b7b82ba0bc63f5ffa8e36b872467720376c06abe', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-10 06:31:06', '2021-08-10 06:31:06', '2022-08-10 06:31:06'),
('e5d41e2ea1f9aeccafae4e561998f1e4e0982050b6445dc20ca88dcd2e425a1e948c360364a296da', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-23 16:44:05', '2021-11-23 16:44:05', '2022-11-23 16:44:05'),
('e5e522fdd792dbaeb120ecdb3178c53ee5b0b05055ec9cd79dd2a3e80ae6092317384220b3bc9513', 20, 1, 'Personal Access Token', '[]', 0, '2021-09-11 14:24:51', '2021-09-11 14:24:51', '2022-09-11 14:24:51'),
('e60feef8135af5b2252f52f738bc44b4ca941f15c90667b148b1b8f865030ed3d4ce1270ad86f610', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 04:11:02', '2021-07-27 04:11:02', '2022-07-27 10:11:02'),
('e63246383573c4d6e71afbdf9599b02e7c960f88758f2a0bc3c6b0962d8233b58574b5ca3e6fb023', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-24 11:17:41', '2021-11-24 11:17:41', '2022-11-24 11:17:41'),
('e651a14a30f8160180a459a8c680eddcf73adb2996b33236aab476bb19ace5afabd57ddac5bceb70', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-25 05:37:24', '2021-11-25 05:37:24', '2022-11-25 05:37:24'),
('e66f511586040e590af83f080b561c604318e12e6403be5a940a519953ba5407bedc7f9c4f38b935', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-25 20:59:37', '2021-10-25 20:59:37', '2022-10-25 20:59:37'),
('e6792f51c88aa664dd8463916bd70f093832629c9860bb04c4015f1c8428abf1fba8635da8b385ef', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-08 01:09:15', '2021-11-08 01:09:15', '2022-11-08 01:09:15'),
('e69bcba4e9044db3c4e9a9b7dc1cee19038e6213add11de2ac7cd8b2754a00c3a6fbba380068c0e1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-18 04:13:12', '2021-11-18 04:13:12', '2022-11-18 04:13:12'),
('e6b4086724ddf66a1ceb2edfae547434ce2b334e1ed68152e730061a1634491a982d79f98df35e94', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 06:49:08', '2021-09-11 06:49:08', '2022-09-11 06:49:08'),
('e6d75fcf74ee86d2078f7bd756656610eb0d65a296129359d61cfe02f6336b79695a69cf059cb135', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-20 23:12:09', '2021-11-20 23:12:09', '2022-11-20 23:12:09'),
('e7373827acb3e7f80ea82fc0216e98e74e6cb15421e8fd46eac5176e45e4c91d4a0e2fb16f3e6316', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-02 08:03:38', '2021-11-02 08:03:38', '2022-11-02 08:03:38'),
('e7654e2bc4ba202f78ccd33683cc8d1497678cd374de92023e12ed31ad1d76b6645c75bb5d74837b', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-29 18:55:21', '2021-10-29 18:55:21', '2022-10-29 18:55:21'),
('e79ece4ab5d7d0dfc86e7325c5f6c542acd99f14a45764f17538d220bc4ddfbdae023868a4683c84', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 08:37:46', '2021-11-12 08:37:46', '2022-11-12 08:37:46'),
('e80d20d7ec07d99b7f54fbdd24b4e6f7be2a0ee0da0c822d90085396095a0c7bbbdff2f77a642a27', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-29 12:19:38', '2021-10-29 12:19:38', '2022-10-29 12:19:38'),
('e861f3a39cbf7ee79da8acc87c3d6c1041137505ca486585a38e3ff9201a1d829f8829229084633b', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-09 08:55:49', '2021-08-09 08:55:49', '2022-08-09 08:55:49'),
('e8c51f40a26b2f14f157c39e163d220ff2cff221eda87e5fba6bd345964e182c36959a59f04ca148', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 13:24:34', '2021-11-07 13:24:34', '2022-11-07 13:24:34'),
('e8e45c3775fca1f588a97046f2278edf3005d2ee8f306012952ca1bcad49dc7f210f46ad4cd8c9cd', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-22 14:43:48', '2021-11-22 14:43:48', '2022-11-22 14:43:48'),
('e8f82f1cb4af30f58a133fee14d526bcb63f0434812f8ee9fed3f86bd851ddbde731d68442667879', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 13:35:22', '2021-08-13 13:35:22', '2022-08-13 13:35:22'),
('e8fc755d643ff135ea5dc2fb2127b89daed906fd18b9d4b6ffe7612ab9dbab874ee3dfb7c4408fc5', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-31 18:14:06', '2021-08-31 18:14:06', '2022-08-31 18:14:06'),
('e943669637c508625fe4827d172fe752b1e071f8364bfa09e36fd6066d9b0e7091252fd04ae8f6a8', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-18 17:55:44', '2021-08-18 17:55:44', '2022-08-18 17:55:44'),
('e94e1d9648c5a60f76634881bb190c254c244a7b588309005033d361ec7f4d7ab3e1a10616e1d0a6', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-18 15:20:44', '2021-08-18 15:20:44', '2022-08-18 15:20:44'),
('e9672c5c11a30f57a9d168c3020c5e0174012fede4c8691903088e87455a429c0904fdb0df9fbc10', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-11 09:32:27', '2021-11-11 09:32:27', '2022-11-11 09:32:27'),
('e98c57b062e69124f40f52274fb2ff6299b35bd610cd62056522ddf238a8237f80c87be53c69911d', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-25 23:39:09', '2021-08-25 23:39:09', '2022-08-25 23:39:09'),
('e9b5e51e80cb703f3cc555659eafdcd3f919b38ae363c94d530455d2c7727d761e21a648fb2b1a6e', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-08 22:32:05', '2021-08-08 22:32:05', '2022-08-08 22:32:05'),
('ea1bd1af16b350bfe86e1f9179ad3aacb47623ab954e533b34e94975709731814b2f3ba083fcda3f', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 07:48:49', '2021-11-02 07:48:49', '2022-11-02 07:48:49'),
('ea5db39b1e2deb59ca4e77830832dc25f105a4de1ee81d3f87beab8ca1634de1006b4dde9b02c141', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-18 15:20:23', '2021-08-18 15:20:23', '2022-08-18 15:20:23'),
('eaa14a00a9534bda8014095c9e2d8e3782ec7d185681e3f1b57b7a11b83f368b67ad8ef28614436a', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-03 00:12:54', '2021-11-03 00:12:54', '2022-11-03 00:12:54'),
('ead26e1f6c128fbc2e550729495fa525b680be08857032a99e1c9b541e416107751642febcd488b0', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-08 19:51:07', '2021-11-08 19:51:07', '2022-11-08 19:51:07'),
('eb14da649a2f96952339ea85055ab75e149c0c08ffd667adf5f23f78be94959b208402676e38c163', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-13 06:16:01', '2021-08-13 06:16:01', '2022-08-13 06:16:01'),
('eb1644e5ee338e7eecb09a0e0ab00728040c1c306adff8eaa5784a2f539a3b1d327d75f19d39437e', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-15 08:26:35', '2021-11-15 08:26:35', '2022-11-15 08:26:35'),
('eb499e386069e21c6101dbe6632c4defc4d1ed585ca4636bfbbf3593637a8e65ff0ecb55cb31173a', 21, 1, 'Personal Access Token', '[]', 0, '2021-09-04 11:50:32', '2021-09-04 11:50:32', '2022-09-04 11:50:32'),
('eb63e8aa2afb80e868927e68e5acc827864676d08f5e4a3326d781d54bf9c5f8b69ce6862e1f59b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 22:36:58', '2021-11-12 22:36:58', '2022-11-12 22:36:58'),
('eb884ad225421a8a1ddf91f39cc7c12c6cb776e225b76c429e351d08c4a7e3839eac6f4c6cbfa6c1', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-19 13:24:21', '2021-11-19 13:24:21', '2022-11-19 13:24:21'),
('ebadd2e9d7dbc441879ae459f605f7450e9fd8bd7e4e9e24ff89710902b010b8e6a67ec12b3cf0a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 19:40:33', '2021-08-27 19:40:33', '2022-08-27 19:40:33'),
('ebb91be9c712b12644786075bf527fdcb96ea630d3103af2a59a53770f6d6f054bffe77bbc05a924', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 01:59:35', '2021-11-29 01:59:35', '2022-11-29 01:59:35'),
('ebc313144d45abf8ef4ded75c5453b9a95cf9cf7d255dfdaab4e6bb13cfe38906d83cdd92de6e41b', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-14 03:19:57', '2021-11-14 03:19:57', '2022-11-14 03:19:57'),
('ebc920f80db6212069b1f5e02ee410ad4b625b419f52be9cffc7a588ff05b0890a81f50b5cc16a99', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-12 21:31:48', '2021-11-12 21:31:48', '2022-11-12 21:31:48'),
('ebdc6084996ef1f3007c42838ef3116d573ea51fd86b354e6abff527b308f2c356c8ebcbf22737e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-06 12:47:58', '2021-09-06 12:47:58', '2022-09-06 12:47:58'),
('ec02f7deb90b40961ca9b9075a769e0e61f7e458bcec1e4c44796c170028b60ce883fac5408d538d', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-31 20:46:19', '2021-10-31 20:46:19', '2022-10-31 20:46:19'),
('ec084c7446ed246a68838fd7c0ce4e85971cb42d16516c1fb5c1603569b8de9142de801b60c052b8', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-24 11:14:48', '2021-10-24 11:14:48', '2022-10-24 11:14:48'),
('ec7a037520461ea1eca6d0b11d48684709b7d1a234763f49c0770d443c39d3b2035f6ec1da0094a9', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 11:43:35', '2021-11-30 11:43:35', '2022-11-30 11:43:35'),
('ecaef2a7712b6956c5879f4dfbbf68a027728b2ccb617134202e1f9101051043d7609eb671d334c3', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-23 17:29:35', '2021-10-23 17:29:35', '2022-10-23 17:29:35'),
('ecbea5f4126583c86e154233b2947440bd57708c9586c7e8b1a5ea207bea7d59e6a64ad7ef5e2e37', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-28 21:26:08', '2021-08-28 21:26:08', '2022-08-28 21:26:08'),
('ecd0ccc762d53002c4c16e041d40a84613877c7d506bc4e018bac5702b21b2160228c81e12ae9d88', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-18 08:47:47', '2021-10-18 08:47:47', '2022-10-18 08:47:47'),
('ed52d27754aa2c9705f5e49225a4f97b8746bfa4e9d468c4e6930757b72e35eaf978c85e2ae58e07', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-20 04:57:39', '2021-11-20 04:57:39', '2022-11-20 04:57:39'),
('ed5f23e924ef155ba01f08f8e3b5a7beb756eb91106f08e3dc36e0bfd54912bd6179ba956184a560', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 07:40:59', '2021-09-16 07:40:59', '2022-09-16 07:40:59'),
('edc43909dc322e278ad4cf5fb87a0b95c06bfbfafc99214c709f9fe5517638a2cb3584e5cb9e731e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-07 09:54:18', '2021-11-07 09:54:18', '2022-11-07 09:54:18'),
('edda98c6198c290c31a32b4883844276556e3c36ec27e083aedf123c73b67d82be7a99be57f7d16a', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-07 19:59:34', '2021-09-07 19:59:34', '2022-09-07 19:59:34'),
('ede3211024500e665ee977ffaf6583b44cfa07f80e4a5098a6d0acbd67f43bc66ed9c4f85536991f', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-08 19:54:03', '2021-11-08 19:54:03', '2022-11-08 19:54:03'),
('ee01fe6b45d430f0b98294598989e928fc1b875e3fc18769678cd535860ed303a4b827eb02895260', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-08 01:11:16', '2021-11-08 01:11:16', '2022-11-08 01:11:16'),
('ee54b96046978efe2d6c33f3993f5e7ccf6519c19c6da97b6212afdf45e81b01c72e1d4b60a35f6e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-17 00:03:18', '2021-09-17 00:03:18', '2022-09-17 00:03:18'),
('ee6323b5e248a0d412492df2cb41204aeef3bab246c4b9a7a3d5c7e275e03adc957ef32c703f29c6', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-14 19:39:03', '2021-11-14 19:39:03', '2022-11-14 19:39:03'),
('ee690669eb63daa628f6bfa5857c1aaf917fa2f08312cd178b5a4cbdb14cf9f5a7bc370631b8d20c', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-20 01:45:38', '2021-10-20 01:45:38', '2022-10-20 01:45:38'),
('ee877531808455ee5bc7eee2bc561d372ae6ce220a2ccb5d5a3e079d0af4981ef9e81b12c496194f', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-25 04:37:42', '2021-10-25 04:37:42', '2022-10-25 04:37:42'),
('eedeb72c3bf9281612c5d856d9ad55d1134b90cd22617db15c29b7d41b42791352b2f800cfc43af0', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-20 09:26:28', '2021-08-20 09:26:28', '2022-08-20 09:26:28'),
('eeef70a0ade7ff7dc1938b38bbe9d34bdbbf6d7bcaf603ddbc20a2530be10fc44bb5431f948f2fb3', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-11 18:19:33', '2021-08-11 18:19:33', '2022-08-11 18:19:33'),
('eefb04dee8c7972434d071372b87bdf31f998831387e4b147c8543e1bfb98fe7fe73271524939a0b', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-04 14:09:31', '2021-09-04 14:09:31', '2022-09-04 14:09:31'),
('ef08c997e8e774fbfa3e62e2894eeb61b6fcc5c046a380dc9d99afb22ba76eff5aeb8d3c5122c687', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-09 12:33:23', '2021-09-09 12:33:23', '2022-09-09 12:33:23'),
('ef12ffe0d9bedda3d5cd60837c3d20f223688b4958fa6cf1c24a8eea02e162f0bd21f0c160954301', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-03 06:55:41', '2021-11-03 06:55:41', '2022-11-03 06:55:41'),
('ef4fdb994c3eef7ac000eb48e87f2ae4a4b8b94ae8bda01fd110133b8de52af7b3d8064434314943', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-13 16:00:59', '2021-10-13 16:00:59', '2022-10-13 16:00:59'),
('ef61e70077e663e0103a1eb00b67a9fddc6d7150ce85516e69df511d4242db7e14d637a14d5bd5c9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-14 14:35:22', '2021-11-14 14:35:22', '2022-11-14 14:35:22'),
('ef6d96dd1a5c8d71c5736e76c72c313fa816df80d1bcb4747b8b24112c987d75a844a6128514cabd', 17, 1, 'Personal Access Token', '[]', 1, '2021-06-23 23:31:50', '2021-06-23 23:31:50', '2022-06-24 05:31:50'),
('ef79ffccd1f91b362feac6f65ed7ad4b89c922fb08c23bad263596d433e61109fe39925dc466ca3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 04:32:51', '2021-11-23 04:32:51', '2022-11-23 04:32:51'),
('ef9320a955dc75463df335327811fa329bee6dbf94a1d26bae3bdaa45861b77149cd606a6ead416d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:54:32', '2021-07-18 02:54:32', '2022-07-18 08:54:32'),
('efd9f9152ea40a6cc84a63aef3dd145ffb1add58f8ec31ac04db89e2d07a2f8f246981067fc19be0', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-15 13:01:01', '2021-09-15 13:01:01', '2022-09-15 13:01:01'),
('efe2e802611dc234512737fcb07e543a8d83a72a31cf578253049ed5794457a80a020f26070de575', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-16 19:19:08', '2021-08-16 19:19:08', '2022-08-16 19:19:08'),
('f009899c2535e60b4047705c8a7d3975a583299b2c3f579b0f429ded7ae54e483b0f16ec9b822481', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:38:02', '2021-11-30 01:38:02', '2022-11-30 01:38:02'),
('f04fdf802e3848a94aa3a7ef7f973bcc40f00a274a39fce9f40ed2fc39bd765be757459439188142', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 15:06:14', '2021-08-07 15:06:14', '2022-08-07 15:06:14'),
('f0721488ee74d7ceb93073070591ca2e39b552669e54ed1ce9bdd53cec134ee5223b532e3625d1e1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 08:09:29', '2021-11-23 08:09:29', '2022-11-23 08:09:29'),
('f0791325edae6604cd5c208a30250bea842c9f92f7f30585a76ead3b0300ea5edcf6486b3356dfa7', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-18 09:16:23', '2021-09-18 09:16:23', '2022-09-18 09:16:23'),
('f0aca0c517947b0cf73666334a1384f0de48dab02518f221dac153dc1deb21f5fd848dd66dd96dbe', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 02:47:20', '2021-09-15 02:47:20', '2022-09-15 02:47:20'),
('f0c2d3a0cdad502842e75a62075d3597d3fb7d83a431f72cd99f5e40a95330e1ee8f61f459f4a65e', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-03 18:51:24', '2021-09-03 18:51:24', '2022-09-03 18:51:24'),
('f0cce191d920b28ada35d7ecd2c2ac86e280e432930c85e68495859231c45669cfc6000bd1d55aed', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-21 03:15:45', '2021-11-21 03:15:45', '2022-11-21 03:15:45'),
('f0eb894fd9d8956e453a82b05492abd00d6dec523912dac458f73c9701ca01ba74e1fb13fd6979b0', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-24 14:12:28', '2021-10-24 14:12:28', '2022-10-24 14:12:28'),
('f10f6bba3cc5cbe2493630bf2c6caeeb447974a89a6c977251ac8de6f3f60d751cb1dfab62e9e747', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-26 07:31:47', '2021-10-26 07:31:47', '2022-10-26 07:31:47'),
('f117d7922b309c444bd83411936749b50a0d20a85313619205ce906d23abf5b42260b394f305e293', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-21 06:27:31', '2021-08-21 06:27:31', '2022-08-21 06:27:31'),
('f1308e4d22fe8d98c338d8a8c0ab494d5ad5d3bd400b6e376f4fbcc22f17e35c5d4fb43816c74091', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-31 06:37:12', '2021-08-31 06:37:12', '2022-08-31 06:37:12'),
('f145b957be6f6c408e850aa9ecd52442f3deb2f3b13fb63bdb13bcaf3e2fc060f3f5e0ca9c66cd1f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-06 19:54:47', '2021-08-06 19:54:47', '2022-08-06 19:54:47'),
('f164818578d0f19356e21427e323e494827a525c7dcaf798a051dc2e3c03e8e937f6d383fbfdb5c7', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-25 12:41:55', '2021-10-25 12:41:55', '2022-10-25 12:41:55'),
('f189ee47dc59287f821d82f05217e2dad42b472b0540182dff612d0677026d2395f282c34eb10340', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-26 14:44:26', '2021-11-26 14:44:26', '2022-11-26 14:44:26'),
('f19ab2512b96363a2f61e42c64f34eb4c78033b1130af505c369ff1f60c871425e7da4c3cb77c13d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-14 08:27:34', '2021-10-14 08:27:34', '2022-10-14 08:27:34'),
('f1ad9a10ebd73a9bf6094ae6e966af3579abb36137727b3531ed80f074342017a770a6805554e7cb', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-03 06:40:29', '2021-08-03 06:40:29', '2022-08-03 12:40:29'),
('f1d1d04bf26b095756d3c7ece36832d01b0b0413358c23a91a7dd8830e0a2771e0e6364eef383f4c', 1, 1, 'Personal Access Token', '[]', 1, '2021-09-04 11:25:12', '2021-09-04 11:25:12', '2022-09-04 11:25:12'),
('f1e0d73a2116766ce54aae4c910302ce23b2cf7674233b6c11e8680093821e7e868fc3281a07dcff', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-13 06:21:59', '2021-09-13 06:21:59', '2022-09-13 06:21:59'),
('f1e3cfeaee8477f0e4419d1f6f6afcbf8ede1c7089865e9d863dbffe2d1ae19f409ca3ae5e3111ad', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-02 12:35:00', '2021-11-02 12:35:00', '2022-11-02 12:35:00'),
('f1f7c82d1fc69b900b39060c701e421da4a47ce1f30a2c45707786c964036f5d48d488970c5418cd', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-22 13:19:55', '2021-10-22 13:19:55', '2022-10-22 13:19:55'),
('f20b57aa05080b1951a6b732755074f2d9034745c372977553372d58a230fd16f797227cc503d157', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-18 07:00:44', '2021-08-18 07:00:44', '2022-08-18 07:00:44'),
('f225fdfae3b5b8d2452cb4fbc7eb44c2959af5c7a3de563869f2a0b49fca6546a1090a1027e8cca7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 17:41:47', '2021-09-10 17:41:47', '2022-09-10 17:41:47'),
('f235d9700dc86b9a896fc688f8d282f0a44871d40aaba82c2d9cba42da0a0d9e3788cd6875c3ab32', 22, 1, 'Personal Access Token', '[]', 1, '2021-10-14 08:16:51', '2021-10-14 08:16:51', '2022-10-14 08:16:51'),
('f2bae554cbcc4cb737094575938b6188db5250e1d0d273eaf9ae76ea9127e601a95c1cbf754d0bf0', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-05 16:35:40', '2021-11-05 16:35:40', '2022-11-05 16:35:40'),
('f2c11d24c5a2b90d828a73eb8def077699994b4e5fd1beb010d42c3694dd0a8d19302f56580a8e0d', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-26 12:39:48', '2021-10-26 12:39:48', '2022-10-26 12:39:48'),
('f2c3892fd2ce9c025ceac21adb26b6f25ba9306d8087616b0c6661bdf4c44446dd0c475af75b1b6f', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-15 16:19:16', '2021-10-15 16:19:16', '2022-10-15 16:19:16'),
('f2cc80cd5dcf39f4fe9e1d481d2da19e4922eebbc860d8b2a064119bea98c35c6529011a11adc421', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-18 23:40:18', '2021-09-18 23:40:18', '2022-09-18 23:40:18'),
('f2d12fab6a6358bfef14d46956e167c98673e7910b8e74b6103e3546d9ef30cabd8b76bac01d14b1', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-13 09:22:17', '2021-11-13 09:22:17', '2022-11-13 09:22:17'),
('f2dc98fd8b125b43b7e53cc416f801e513af74173ca274c5d2f8166bc5e79abe0f9e093f4b69be33', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 13:02:52', '2021-09-13 13:02:52', '2022-09-13 13:02:52'),
('f2e0f7570a3b7aec791475124d7a35b7ef1e7fe4f6112bfe2528b60e52c7c0b977c7210c5fe54aa2', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 13:13:42', '2021-10-25 13:13:42', '2022-10-25 13:13:42'),
('f30f6fd568277bd5176ece89f07f130738cff26bb274dc9e8639cd6cff438b1a12c44fb3740d7226', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-13 06:09:42', '2021-08-13 06:09:42', '2022-08-13 06:09:42'),
('f36bdc460aa3dd7526ae7d6a27b055feb38c439677963d84c569ef85ac2b26407e1e1c48693bb690', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-24 04:04:45', '2021-08-24 04:04:45', '2022-08-24 04:04:45'),
('f389a9a54ef6767ce9858d72bef404f99dca8f0fc68443cf05614d29ab3f871c366f43e8f862cdd8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 17:05:14', '2021-08-30 17:05:14', '2022-08-30 17:05:14'),
('f392532a0ec81c4db4ac9b3f6449a55ef5d74f4d157798bc30da1e61a4e03d686cd1a5128c6b4e55', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 15:25:05', '2021-10-12 15:25:05', '2022-10-12 15:25:05'),
('f3955237aff6d7299678749f6b5ce095174a3813a20ca0bc1ffda87408638d438f097fcd62e5862f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-08 05:08:51', '2021-11-08 05:08:51', '2022-11-08 05:08:51'),
('f39eeeebd0b29b279c99a94af5335ede49819e136c1b168ee6833ad119fd1afd188467763ca20c8c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 10:15:45', '2021-08-12 10:15:45', '2022-08-12 10:15:45'),
('f3cf9e53f5dabd6944ebeefe50b130079cd94ce09a459ee7694d0ea8b79b3f45386edc33aae03e47', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-07 06:17:58', '2021-08-07 06:17:58', '2022-08-07 06:17:58'),
('f3d3958510954eabc2ccde79e7abb05d6bcb54dd5918dfe92772fa0cd86a799d5f89f9fbc55490ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 00:13:25', '2021-09-04 00:13:25', '2022-09-04 00:13:25'),
('f4692cbe223199b752e0cc5819c03561b0a547abf4593c5ba7b15bb1b736afdd9f30acfb7fa870c4', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-05 23:45:55', '2021-09-05 23:45:55', '2022-09-05 23:45:55'),
('f484756a7ba4971118d15e502c1438301d3c68dbb3579986336a76f56099ab07801e837c142b59f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 06:08:44', '2021-11-04 06:08:44', '2022-11-04 06:08:44'),
('f4c649ed15802983a9d1ece44e1960836691e993d2d41dcb21e9bc1df9e4b21b74b0473a6cae739f', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-08 10:03:39', '2021-11-08 10:03:39', '2022-11-08 10:03:39'),
('f4f2d09725dd6ad2bf1a3bff01cad655854db182b0e7f205cc562e3efa2dbb50e011b7545e13b0db', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-22 14:59:45', '2021-10-22 14:59:45', '2022-10-22 14:59:45'),
('f51cb948ffc81d550535ed58debae76a056ac956d36e691bfd309646a45e2b5d6a39a9a487357dde', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-08 12:39:09', '2021-08-08 12:39:09', '2022-08-08 12:39:09'),
('f53281041cd8734ae1b03a0d7c8442716344a2eb06aa47cf515ee301ce9db373be9d85c60ccb6a65', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 23:42:54', '2021-08-12 23:42:54', '2022-08-12 23:42:54'),
('f58702852f3c13a1f037be1c550bc4b2ba60b7e0ec28c5cf9603ce87991086ccf1e939a7dd2ad1e9', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-18 11:24:51', '2021-09-18 11:24:51', '2022-09-18 11:24:51'),
('f59b3037ccca4053db41c3d84ab8a869676f72729cbcce0ed8b3290dd691eb510570638e40c1d59b', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-03 02:18:59', '2021-09-03 02:18:59', '2022-09-03 02:18:59'),
('f59f4088a219e951d697a7a76883f0dfd701c999d517c8683790671fd6d7e90b8a40fbc9fc54854c', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-02 12:19:37', '2021-11-02 12:19:37', '2022-11-02 12:19:37'),
('f5a1afa6d867350f5532dec5f771673eab70b55627e7c9326ee7c38bb7ee7be6287792f253d64a6c', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-26 12:10:41', '2021-08-26 12:10:41', '2022-08-26 12:10:41'),
('f5f7e82ae5fdaa33f129f6656d51165d0b818a6e8e364585411958f62481e788bcbe0704d01013a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 13:14:18', '2021-09-14 13:14:18', '2022-09-14 13:14:18'),
('f6015b3c58b6daa1a3f4cdd044b2712f9b623039c33aa36714d025ded9260c45ada8778cde94fb67', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-07 08:04:14', '2021-08-07 08:04:14', '2022-08-07 08:04:14'),
('f60eb07ba5635e79cc4202239af6ded7a5ec1d417a43371830b4988e5bd001cae3df502a73978099', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:35:35', '2021-10-13 18:35:35', '2022-10-13 18:35:35');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f64b2bece3973aed35a25fca7c3abe25a787acdd1b22818c65227eb040087f75081f48378e90c172', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-11 05:21:31', '2021-09-11 05:21:31', '2022-09-11 05:21:31'),
('f64f240e72b57436daa1d09ccbd7575a47d7f0ad8a73ed1b8e37631190903f26964a461c4066a082', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-19 05:17:09', '2021-08-19 05:17:09', '2022-08-19 05:17:09'),
('f65cce58deb09e1935b1aaa8fdaf9539f2efa599ab0d5a22b7f97e14bc8d7caa87ebb0d5480842a4', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 14:14:47', '2021-08-13 14:14:47', '2022-08-13 14:14:47'),
('f692cc1845b580168a16671a86f143cc8888b7f679262d1104e507ddf592d190a5d33488711772d5', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 12:10:42', '2021-08-30 12:10:42', '2022-08-30 12:10:42'),
('f6a9addda9f40ed697eb3c885b3475bf9c84a7465bb225724bba34745dccf47fb9edf05341c25bcb', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-16 17:34:41', '2021-09-16 17:34:41', '2022-09-16 17:34:41'),
('f6b364a8672a7b67729fe37acbc9b24910935a55d3369658706491b945de74b8bd3dec435a58327a', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-19 14:11:16', '2021-10-19 14:11:16', '2022-10-19 14:11:16'),
('f6cd89a3cf3fc472a19d4ae8ab87e760ce2077f08327be83e68d9aa5283b82a3862a77946fbd8dce', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-30 14:20:50', '2021-08-30 14:20:50', '2022-08-30 14:20:50'),
('f6d33e395091a42bdba5ce6dd6974c8584d7a85f8e014497af2809370424243062665c000ea26f60', 20, 1, 'Personal Access Token', '[]', 0, '2021-10-14 04:46:37', '2021-10-14 04:46:37', '2022-10-14 04:46:37'),
('f6e3aec773f9ed94b59ef8d6619dec91c0b309bce9f07df545258ee686bebee1003c040880f9bbe4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 12:19:14', '2021-11-26 12:19:14', '2022-11-26 12:19:14'),
('f6e528a0b3f47c816324b673d912d25e1f4b07bdb46190765e0829d54d50314e8846ce58baa791a4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-23 15:12:51', '2021-08-23 15:12:51', '2022-08-23 15:12:51'),
('f72cb39d187228d39b49b048d13fc65c3f11ccd16adfdab0ea95ec61b73f825d71508e0b73e2f3d1', 20, 1, 'Personal Access Token', '[]', 1, '2021-08-10 16:03:58', '2021-08-10 16:03:58', '2022-08-10 16:03:58'),
('f72e0e5efe90359ea418b949e2ba2c700356508c27b2a60c5c9ce6b353d4e67df45e017f0f3ea1a0', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-03 21:36:52', '2021-11-03 21:36:52', '2022-11-03 21:36:52'),
('f72e782146aa94ab2a3321be9dc0c1248b58b70d90bcf26d46450d6c0fb25a191590c3f5ee93b716', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-11 13:23:40', '2021-11-11 13:23:40', '2022-11-11 13:23:40'),
('f7425c4755cba49a3b76907465319469a03936c447cf6823bf91399f293a7ea5288c338d49450df6', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-30 21:32:30', '2021-10-30 21:32:30', '2022-10-30 21:32:30'),
('f78399900193e2f9e6f26f77ac7e9eb5f331f58b577ac64b05a6fd15e3d650afe4672bae2660510d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 08:39:37', '2021-07-25 08:39:37', '2022-07-25 14:39:37'),
('f794bac67b21cfe27e8015f9968315b398f1edb6d2183f471ef9972124a876e42dae0762db024e84', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 13:24:47', '2021-11-22 13:24:47', '2022-11-22 13:24:47'),
('f7c1d68caecb90ce181cf361d31790973ed4a90c5f4e87c1195a8d3e5de12a3624fdee31e7e19536', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-12 18:26:31', '2021-10-12 18:26:31', '2022-10-12 18:26:31'),
('f7e49e7af7d178d0bb8164186c5b118c16f50f07541e2cf291b44c88d9470b20f5699f010f2d3594', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-17 22:10:18', '2021-08-17 22:10:18', '2022-08-17 22:10:18'),
('f82711a076cd2ad8b680a94e6a4d8e1a032b034a16f816428f4be1c175529addad1122a874a7f600', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-27 06:39:45', '2021-10-27 06:39:45', '2022-10-27 06:39:45'),
('f8483e7121e7279bd11f3895294b86340ad09d49a49dad5a02e713b9b58f4c0b67a677aae6d95706', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-16 15:59:15', '2021-10-16 15:59:15', '2022-10-16 15:59:15'),
('f8515ac784f984ec5263f071e598d94cac69d132be3c401d74c6d7c5859e3e34d7d54a250584f9e5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-08 11:57:48', '2021-11-08 11:57:48', '2022-11-08 11:57:48'),
('f86dc8bb797b704574abd3be842508366afc6e6f25c4abe38be3448d7378126706cd5fce8941650b', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-05 06:18:24', '2021-11-05 06:18:24', '2022-11-05 06:18:24'),
('f87508895d0dd227fa2428266bb4e879b1c42f540077135855554ae147dd563d9b1cbafcb64e52b1', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-13 06:06:34', '2021-08-13 06:06:34', '2022-08-13 06:06:34'),
('f87ca14f743a53548ccc7a87b86d50ed088e9254f677aa0b285946a914544870d313601f2c2a8dbc', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-30 12:00:01', '2021-11-30 12:00:01', '2022-11-30 12:00:01'),
('f87e3f94be533720b162c2858337a3785b618628952bbe09238ee594505b1eb62679373ea167667d', 21, 1, 'Personal Access Token', '[]', 1, '2021-08-17 09:18:24', '2021-08-17 09:18:24', '2022-08-17 09:18:24'),
('f8896ee7fee1e62366ea4692ba73cd129a837c768c8b56597f4a3e31bbb10ebc1970e846bb575cce', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-06 06:02:37', '2021-08-06 06:02:37', '2022-08-06 06:02:37'),
('f8cc7bd205493e819ef025236c63f7701e0286d549159ade7a807efbcb1fb3ab05bf22e251843cd9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 06:48:25', '2021-11-23 06:48:25', '2022-11-23 06:48:25'),
('f8df4c14afdfa07137374213ed8023106b34ca3ea4dba235f487c1094bf99f438fc56aa64302dd0d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:23:43', '2021-08-27 09:23:43', '2022-08-27 09:23:43'),
('f8e117d27e67fa33001a47bfb8f53b75a8af49bd32a4c13126d0e155253a2a0e7c312c3a70b36e40', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-17 07:27:12', '2021-10-17 07:27:12', '2022-10-17 07:27:12'),
('f8fd823d357ff422c0162e90c770377b2d3e0c0d732b92f175f2e47d116c1f6f3ecc498cbe15587c', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 17:52:35', '2021-10-28 17:52:35', '2022-10-28 17:52:35'),
('f90ad5cf05184a3ff6f8abab86d8176c6f925fefb85687a743136bf8c25546d66dfebfd0dc54ddc4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-26 22:10:47', '2021-08-26 22:10:47', '2022-08-26 22:10:47'),
('f929a9957189ffab47d7420ec0f042e86d7cf42834692b1421b3fab0f6a60ad3fd1a5d2e4829cc6c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:00:53', '2021-11-17 12:00:53', '2022-11-17 12:00:53'),
('f9438148431c6a7e57ba774cd87d6de2514c622db9968769032f423385c4ed9169bf5bf91f724bf7', 1, 1, 'Personal Access Token', '[]', 1, '2021-10-25 20:59:01', '2021-10-25 20:59:01', '2022-10-25 20:59:01'),
('f9d6ed91d5fe37a0077be849d9215ec5ddfcbf66a388b0ccad12b32cd022a53a5d221be0f5ad3834', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-28 16:05:32', '2021-11-28 16:05:32', '2022-11-28 16:05:32'),
('f9e57bdcca3062ba656a5651f00be0bdcd02878ca5c81b36984b05fefb2afbf49e9ae8946acf477a', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-29 18:51:01', '2021-10-29 18:51:01', '2022-10-29 18:51:01'),
('f9fc8962e4c09c4a097c3941f9f501c9c416673c550595b3e197a239f095a122e98fd1fffa98a725', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-30 01:36:32', '2021-11-30 01:36:32', '2022-11-30 01:36:32'),
('fa464f942725e8b1214b7bca70cbbc0fa33bb610a1ca22b446dad15a686b05aa5ccb81ce37d8e46c', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-25 05:39:41', '2021-11-25 05:39:41', '2022-11-25 05:39:41'),
('fa539e7d9866081c05d90cd66402d2b9d067893c5af8cb887bb930fe8856454348c1e3906f48e449', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-12 04:48:12', '2021-08-12 04:48:12', '2022-08-12 04:48:12'),
('fa58e08f724c3de94905bd83b5db8f59dc109f485f41335d93821ec84869338650fca6093eda3f97', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-09 07:55:53', '2021-09-09 07:55:53', '2022-09-09 07:55:53'),
('fa7a33a26c07ea9f8e6c8109537b684e83dbd6b095fabd1c1cd54bcbb536f0474c7dddb83c68f20e', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-04 06:01:19', '2021-11-04 06:01:19', '2022-11-04 06:01:19'),
('fadea89f2aa96a68bad2094cfa87a4820d36d28a2c46bedefb719ba781e6a7fe0fd6e07d6c863e0b', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-23 02:46:42', '2021-10-23 02:46:42', '2022-10-23 02:46:42'),
('fae94faddcd5105b7a69d13c8d96da53d10a2244c37de3b667e9357f7864edd905dd96c981ce2118', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-24 19:58:25', '2021-11-24 19:58:25', '2022-11-24 19:58:25'),
('faf9824cdc911555fb68603ce6e9bd585a1de5b5ea0310dd74d5adaf9c2e3aa0b7531e3ed7befe55', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 21:27:06', '2021-08-28 21:27:06', '2022-08-28 21:27:06'),
('fb1a80b8f31d62d0f6889f4b6d7a192779a27678b56a46636f352342286f592035d7df0ba5ddef1a', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-24 05:45:25', '2021-08-24 05:45:25', '2022-08-24 05:45:25'),
('fb53ad208c7281a6a02d455296127571dfdd25705023302f260c58df27a91804f9005e9199aa2d79', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-14 03:21:10', '2021-11-14 03:21:10', '2022-11-14 03:21:10'),
('fb5a72e9fc435f4189562adddcb5a218b715f31ed542fa0c4d7f8c0013e277d54623cf05d5b99889', 21, 1, 'Personal Access Token', '[]', 0, '2021-10-26 05:19:32', '2021-10-26 05:19:32', '2022-10-26 05:19:32'),
('fb6cfb1492fad67dad058c7caf742dea0f4a290178b135cd7db97a53eb759eb736c9e796c7b578de', 22, 1, 'Personal Access Token', '[]', 1, '2021-08-10 13:55:33', '2021-08-10 13:55:33', '2022-08-10 13:55:33'),
('fbab467b8da15f5b958e2f1de02512a3d42f0a85c6b60ff91b2bfc81a4f4bea82b1110ee43357dff', 22, 1, 'Personal Access Token', '[]', 1, '2021-09-13 17:11:35', '2021-09-13 17:11:35', '2022-09-13 17:11:35'),
('fbbcd5435b6b16837fdd5abbe7f305efb3db1c0fd0411e6127aed6501576374876414a64c7b1d17e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-19 12:08:56', '2021-08-19 12:08:56', '2022-08-19 12:08:56'),
('fbc9dfcc68f460c206709b5860b3c8e26151bc75ff45ff0b8f5283f4f1f7ec34a03d0ed351155a7e', 29, 1, 'Personal Access Token', '[]', 0, '2021-11-19 00:33:20', '2021-11-19 00:33:20', '2022-11-19 00:33:20'),
('fc14769d9f8494b7ae91780bac674c9df2ca5c36cafd65727d9358f0bec2000175d471dc858db9e1', 22, 1, 'Personal Access Token', '[]', 1, '2021-11-30 18:32:56', '2021-11-30 18:32:56', '2022-11-30 18:32:56'),
('fc1fdd1a67077b0885a306334e1276b8c3c706aa2ae737c64f840d650efde7801ec94af66131724d', 21, 1, 'Personal Access Token', '[]', 1, '2021-10-18 19:22:48', '2021-10-18 19:22:48', '2022-10-18 19:22:48'),
('fc207ff7f391a1cd81740878fbf50dad821ce3ea03af76882586229c869f9a8babb37ef57af13689', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-20 07:28:07', '2021-11-20 07:28:07', '2022-11-20 07:28:07'),
('fc4447744e7f61773cd582bead59d7c787976655ce947e4b6b3e27d43c659106c16844a8fbeda256', 20, 1, 'Personal Access Token', '[]', 1, '2021-11-28 14:26:27', '2021-11-28 14:26:27', '2022-11-28 14:26:27'),
('fc76a7728fc75d63e7c01eb73493f085c557350295d8b4785b4c4116b5dafaa3683b3356858f1590', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-06 20:08:29', '2021-08-06 20:08:29', '2022-08-06 20:08:29'),
('fcf9d9bda4aea953a6fe46b9049f590d975cd579cf5624c07783e8babf5227edac5007d75d2e1c4c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-11 16:58:58', '2021-11-11 16:58:58', '2022-11-11 16:58:58'),
('fd01bfb0aa4c6523a698cb36acd7ead53fdd71018c5e6e7fc9883c6baa87bcfb3383d8dd424942d1', 22, 1, 'Personal Access Token', '[]', 0, '2021-10-13 18:27:29', '2021-10-13 18:27:29', '2022-10-13 18:27:29'),
('fd3d69ae43741f8dcb3b09ba63862f3e2cefe0b8298257b5ef7aca51ad6190911cbfc4f20fa5b18d', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-29 14:44:50', '2021-10-29 14:44:50', '2022-10-29 14:44:50'),
('fd4e4598cea8c76e80c4c64027f1bb75843d613eb96e976a5aa80b420d78a9c48bba6a631113f58a', 20, 1, 'Personal Access Token', '[]', 1, '2021-10-13 03:34:04', '2021-10-13 03:34:04', '2022-10-13 03:34:04'),
('fd625ed41e61974e4a2c7e40956092b6f3e86c5c6acce49d92f421f76162e2622e18349f6f7fa159', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-19 01:00:29', '2021-11-19 01:00:29', '2022-11-19 01:00:29'),
('fd822e437494ae0da6a1d2a29e8e61256541b3a0abe17c98765fb2fe3da0f1c3caddea782d526577', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-12 15:39:33', '2021-08-12 15:39:33', '2022-08-12 15:39:33'),
('fdcfd814ba9e01718433f075f971629dc1cfcf4c6a006d8e5ba53442c424c900530f6e6afc837489', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-11 19:47:32', '2021-11-11 19:47:32', '2022-11-11 19:47:32'),
('fdf3808ce1fbf09e25fc0ce9edc0ab2ada7b75495af5a67c5638a3547707c25cd1f9a7ea7ecbeaa9', 21, 1, 'Personal Access Token', '[]', 0, '2021-08-21 16:35:58', '2021-08-21 16:35:58', '2022-08-21 16:35:58'),
('fe20a4c9edaecb6161e6253ebae34f85af1842a6924c00615a938bbb037eb39a40e6f9effc783c66', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 15:56:10', '2021-11-25 15:56:10', '2022-11-25 15:56:10'),
('fe2a843a9d835b909cb446b3a5c72f17801c4a3f02152f1f1a310e1b3c5bb4d69cd6bb44ffe301fd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-15 08:38:44', '2021-08-15 08:38:44', '2022-08-15 08:38:44'),
('fe2d1b6cf7480657819507f7ec8c453d221b1fe558755359c257a7a6ac72c986932ffcf5b9d60ab6', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-29 19:52:53', '2021-11-29 19:52:53', '2022-11-29 19:52:53'),
('fe4dabde2f3e74035fe7f1f3231a141c3283d589dea403e27f8b31a34150e4b126e4bb44294c39e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-27 17:15:57', '2021-11-27 17:15:57', '2022-11-27 17:15:57'),
('fe6403fa5a9781a41bbd4c9e21528da74aa77fcc350c58f11a0c6265049d906d8e72ceba7e228526', 21, 1, 'Personal Access Token', '[]', 1, '2021-11-04 06:04:05', '2021-11-04 06:04:05', '2022-11-04 06:04:05'),
('fe8ddaf6221186a250ce05ff5ba8b8e468f803a8617276a6b0a81ae126eb187660e94cea6756d163', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-29 14:12:07', '2021-11-29 14:12:07', '2022-11-29 14:12:07'),
('feb0241c6854ba5e2a63a80c296b35284ddcd6a4c3b52dab2e4b298ebd95b82916cc0be933428259', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-05 14:46:30', '2021-09-05 14:46:30', '2022-09-05 14:46:30'),
('fee7558e2fe13895c3819cc5e16315fd0c2cc0a744decbe6f7b47870999b79878341a463415cd587', 21, 1, 'Personal Access Token', '[]', 1, '2021-09-15 15:10:16', '2021-09-15 15:10:16', '2022-09-15 15:10:16'),
('feefec9fd47c488c2c852cc6081b7350d2d7d9395d92514bcbe3c047300e799ff56562b6cb7b60b0', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-19 13:24:44', '2021-11-19 13:24:44', '2022-11-19 13:24:44'),
('ff018d1e0ede0cc60d5841cec19b8dbd35353490fb8bcb4148c3d93a367768b48aacf9f220f2b439', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-04 06:17:01', '2021-11-04 06:17:01', '2022-11-04 06:17:01'),
('ff1808095fabec3579488ebef1a06de3c7df9fd0a0a9b725997bfe6db44bfa7cb4ffda93d7aa1045', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-29 03:45:25', '2021-08-29 03:45:25', '2022-08-29 03:45:25'),
('ff20cdc13488faa662e4fca3e77a269894a10050d9e39e9d58cc9ac2a259cfa6b0c331c89aa5af1f', 22, 1, 'Personal Access Token', '[]', 0, '2021-08-06 05:53:53', '2021-08-06 05:53:53', '2022-08-06 05:53:53'),
('ff273436c7660fe721cff77759a10f7749eb9ea58e2148e88072157582d598565bd2706b6b0e7314', 1, 1, 'Personal Access Token', '[]', 1, '2021-11-08 23:04:42', '2021-11-08 23:04:42', '2022-11-08 23:04:42'),
('ff5ab7438ba71d1308c009ac80b6fa7225f8da02a247c49316e5a89da57943f02d82cd4f06d5a487', 22, 1, 'Personal Access Token', '[]', 0, '2021-11-27 01:09:44', '2021-11-27 01:09:44', '2022-11-27 01:09:44'),
('ffaf6612cbc86b6c3143636b13f68132b49df2cb7685b8034cc503eea0ef4e958625c4c6fba4a7b5', 22, 1, 'Personal Access Token', '[]', 0, '2021-09-02 13:47:43', '2021-09-02 13:47:43', '2022-09-02 13:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Food Khan Personal Access Client', 'pvUEMETyyUBJZd5eIvaaRUDSZfjFcHLVqk41sIrX', NULL, 'http://localhost', 1, 0, 0, '2020-11-27 17:57:56', '2020-11-27 17:57:56'),
(2, NULL, 'Food Khan Password Grant Client', 'WcQMCKHLkSi1UPgl1qrhKhDn4rATHCs4SKf8Tcv9', 'users', 'http://localhost', 0, 1, 0, '2020-11-27 17:57:56', '2020-11-27 17:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-27 17:57:56', '2020-11-27 17:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_order_groups`
--

CREATE TABLE `online_order_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `work_period_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sgst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_payable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_to_deliver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_boy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_boy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_rider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_phn_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `is_accepted_by_kitchen` tinyint(1) NOT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `is_ready` tinyint(1) NOT NULL,
  `is_settled` tinyint(1) NOT NULL,
  `reason_of_cancel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `delivery_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_order_groups`
--

INSERT INTO `online_order_groups` (`id`, `restaurant_id`, `work_period_id`, `user_id`, `user_name`, `pos_user_id`, `branch_id`, `branch_name`, `token`, `order_bill`, `vat`, `vat_system`, `cgst`, `sgst`, `total_payable`, `payment_method`, `payment_details`, `time_to_deliver`, `delivery_boy_id`, `delivery_boy_name`, `note_to_rider`, `delivery_phn_no`, `delivery_address`, `is_accepted`, `is_accepted_by_kitchen`, `is_cancelled`, `is_ready`, `is_settled`, `reason_of_cancel`, `is_delivered`, `delivery_status`, `created_at`, `updated_at`) VALUES
(2, NULL, 59, 1, 'Admin', 1, 11, 'Uttara Branch', '5130', '135', '6.75', 'igst', NULL, NULL, '141.75', 'COD', NULL, '1', 20, 'Mr Delivery', 'come early take bonus', '12345678', 'tongi', 1, 0, 0, 0, 0, NULL, 1, 'delivered', '2021-09-19 08:43:02', '2021-10-15 01:58:33'),
(3, NULL, 59, 1, 'Admin', 1, 11, 'Uttara Branch', '8241', '115', '5.75', 'igst', NULL, NULL, '120.75', 'COD', NULL, '30', 20, 'Mr Delivery', 'come early take bonus', '12345678', 'mogbazar dhaka', 1, 1, 0, 1, 0, NULL, 1, 'delivered', '2021-09-21 09:24:44', '2021-10-15 01:58:27'),
(4, NULL, 59, 22, 'Customer', NULL, 11, 'Uttara Branch', '611', '150', '7.5', 'igst', NULL, NULL, '157.5', 'COD', NULL, NULL, NULL, NULL, NULL, '09090909', 'AaASdas', 0, 0, 0, 0, 0, NULL, 0, NULL, '2021-10-22 15:00:23', '2021-10-22 15:00:23'),
(5, NULL, 59, 1, 'Admin', NULL, 11, 'Uttara Branch', '428', '150', '7.5', 'igst', NULL, NULL, '157.5', 'COD', NULL, NULL, NULL, NULL, 'afg', '12345678', 'fsds', 0, 0, 0, 0, 0, NULL, 0, NULL, '2021-12-02 11:03:23', '2021-12-02 11:03:23'),
(6, NULL, 59, 1, 'Admin', 1, 11, 'Uttara Branch', '1208', '150', '7.5', 'igst', NULL, NULL, '157.5', 'COD', NULL, '78', 20, 'Mr Delivery', 'house no12', '12345678', 'kurmitola', 1, 0, 0, 0, 0, NULL, 0, 'pending', '2021-12-04 03:08:48', '2021-12-04 03:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `online_order_items`
--

CREATE TABLE `online_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_group_id` bigint(20) UNSIGNED NOT NULL,
  `food_item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooking` tinyint(1) NOT NULL,
  `is_ready` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_order_items`
--

INSERT INTO `online_order_items` (`id`, `order_group_id`, `food_item`, `food_group`, `variation`, `properties`, `quantity`, `price`, `is_cooking`, `is_ready`, `created_at`, `updated_at`) VALUES
(3, 2, 'Pineapple', 'FRUIT JUICES', NULL, '[{\"property\":\"Mild\",\"quantity\":1,\"price_per_qty\":0}]', 1, '135', 0, 0, '2021-09-19 08:43:02', '2021-09-19 08:43:02'),
(4, 3, 'Watermelon', 'FRUIT JUICES', NULL, NULL, 1, '115', 1, 1, '2021-09-21 09:24:44', '2021-09-21 09:30:07'),
(5, 4, 'Orange', 'FRUIT JUICES', NULL, '[{\"property\":\"Egg\",\"quantity\":1,\"price_per_qty\":0}]', 1, '150', 0, 0, '2021-10-22 15:00:23', '2021-10-22 15:00:23'),
(6, 5, 'Orange', 'FRUIT JUICES', NULL, '[{\"property\":\"Egg\",\"quantity\":1,\"price_per_qty\":0},{\"property\":\"Cheese\",\"quantity\":1,\"price_per_qty\":0}]', 1, '150', 0, 0, '2021-12-02 11:03:24', '2021-12-02 11:03:24'),
(7, 6, 'Orange', 'FRUIT JUICES', NULL, '[{\"property\":\"Egg\",\"quantity\":1,\"price_per_qty\":0},{\"property\":\"Cheese\",\"quantity\":1,\"price_per_qty\":0}]', 1, '150', 0, 0, '2021-12-04 03:08:48', '2021-12-04 03:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `opening_closing_stocks`
--

CREATE TABLE `opening_closing_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `work_period_id` bigint(20) UNSIGNED NOT NULL,
  `opening_stock` bigint(20) UNSIGNED NOT NULL,
  `closing_stock` bigint(20) UNSIGNED DEFAULT NULL,
  `addition_to_opening` bigint(20) UNSIGNED DEFAULT NULL,
  `subtraction_from_opening` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opening_closing_stocks`
--

INSERT INTO `opening_closing_stocks` (`id`, `branch_id`, `user_id`, `ingredient_id`, `work_period_id`, `opening_stock`, `closing_stock`, `addition_to_opening`, `subtraction_from_opening`, `created_at`, `updated_at`) VALUES
(44, 11, 1, 9, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(45, 11, 1, 10, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(46, 11, 1, 11, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(47, 11, 1, 12, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(48, 11, 1, 13, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(49, 11, 1, 14, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(50, 11, 1, 15, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(51, 11, 1, 16, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(52, 11, 1, 17, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:36'),
(53, 11, 1, 9, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(54, 11, 1, 10, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(55, 11, 1, 11, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(56, 11, 1, 12, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(57, 11, 1, 13, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(58, 11, 1, 14, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(59, 11, 1, 15, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(60, 11, 1, 16, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(61, 11, 1, 17, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(62, 12, 1, 9, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:13', '2021-10-11 05:02:13'),
(63, 12, 1, 10, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:13', '2021-10-11 05:02:13'),
(64, 12, 1, 11, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(65, 12, 1, 12, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(66, 12, 1, 13, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(67, 12, 1, 14, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(68, 12, 1, 15, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(69, 12, 1, 16, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(70, 12, 1, 17, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `opening_closing_stock_food`
--

CREATE TABLE `opening_closing_stock_food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `work_period_id` bigint(20) UNSIGNED NOT NULL,
  `opening_stock` bigint(20) UNSIGNED NOT NULL,
  `closing_stock` bigint(20) UNSIGNED DEFAULT NULL,
  `addition_to_opening` bigint(20) UNSIGNED DEFAULT NULL,
  `subtraction_from_opening` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opening_closing_stock_food`
--

INSERT INTO `opening_closing_stock_food` (`id`, `branch_id`, `user_id`, `food_id`, `work_period_id`, `opening_stock`, `closing_stock`, `addition_to_opening`, `subtraction_from_opening`, `created_at`, `updated_at`) VALUES
(45, 11, 1, 55, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(46, 11, 1, 56, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(47, 11, 1, 57, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(48, 11, 1, 58, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(49, 11, 1, 59, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(50, 11, 1, 60, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(51, 11, 1, 61, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(52, 11, 1, 62, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(53, 11, 1, 63, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(54, 11, 1, 64, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(55, 11, 1, 65, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(56, 11, 1, 66, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(57, 11, 1, 67, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(58, 11, 1, 68, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(59, 11, 1, 69, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(60, 11, 1, 70, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(61, 11, 1, 71, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(62, 11, 1, 72, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(63, 11, 1, 73, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(64, 11, 1, 74, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(65, 11, 1, 75, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(66, 11, 1, 76, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(67, 11, 1, 77, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(68, 11, 1, 78, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(69, 11, 1, 79, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(70, 11, 1, 80, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(71, 11, 1, 81, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(72, 11, 1, 82, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(73, 11, 1, 83, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(74, 11, 1, 84, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(75, 11, 1, 85, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(76, 11, 1, 86, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(77, 11, 1, 87, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(78, 11, 1, 88, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(79, 11, 1, 89, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(80, 11, 1, 90, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(81, 11, 1, 91, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(82, 11, 1, 92, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(83, 11, 1, 93, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(84, 11, 1, 94, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(85, 11, 1, 95, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(86, 11, 1, 96, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(87, 11, 1, 97, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(88, 11, 1, 98, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(89, 11, 1, 99, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(90, 11, 1, 100, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(91, 11, 1, 101, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(92, 11, 1, 102, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(93, 11, 1, 103, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(94, 11, 1, 104, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(95, 11, 1, 105, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(96, 11, 1, 106, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(97, 11, 1, 107, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(98, 11, 1, 108, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(99, 11, 1, 109, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(100, 11, 1, 110, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(101, 11, 1, 111, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(102, 11, 1, 112, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(103, 11, 1, 113, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(104, 11, 1, 114, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(105, 11, 1, 115, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(106, 11, 1, 116, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(107, 11, 1, 117, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(108, 11, 1, 118, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(109, 11, 1, 119, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(110, 11, 1, 120, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(111, 11, 1, 121, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(112, 11, 1, 122, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(113, 11, 1, 123, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(114, 11, 1, 124, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(115, 11, 1, 125, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(116, 11, 1, 126, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(117, 11, 1, 127, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(118, 11, 1, 128, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(119, 11, 1, 129, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(120, 11, 1, 130, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(121, 11, 1, 131, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(122, 11, 1, 132, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(123, 11, 1, 133, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(124, 11, 1, 134, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(125, 11, 1, 135, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(126, 11, 1, 136, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(127, 11, 1, 137, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(128, 11, 1, 138, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(129, 11, 1, 139, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(130, 11, 1, 140, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(131, 11, 1, 141, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(132, 11, 1, 142, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(133, 11, 1, 143, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(134, 11, 1, 144, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(135, 11, 1, 145, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(136, 11, 1, 146, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(137, 11, 1, 147, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(138, 11, 1, 148, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(139, 11, 1, 149, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(140, 11, 1, 150, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(141, 11, 1, 151, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(142, 11, 1, 152, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(143, 11, 1, 153, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(144, 11, 1, 154, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(145, 11, 1, 155, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(146, 11, 1, 156, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(147, 11, 1, 157, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(148, 11, 1, 158, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(149, 11, 1, 159, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(150, 11, 1, 160, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(151, 11, 1, 161, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(152, 11, 1, 162, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(153, 11, 1, 163, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(154, 11, 1, 164, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(155, 11, 1, 165, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(156, 11, 1, 166, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(157, 11, 1, 167, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(158, 11, 1, 168, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(159, 11, 1, 169, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(160, 11, 1, 170, 57, 0, 0, NULL, NULL, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(161, 11, 1, 55, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(162, 11, 1, 56, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(163, 11, 1, 57, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(164, 11, 1, 58, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(165, 11, 1, 59, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(166, 11, 1, 60, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(167, 11, 1, 61, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(168, 11, 1, 62, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(169, 11, 1, 63, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(170, 11, 1, 64, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(171, 11, 1, 65, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(172, 11, 1, 66, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(173, 11, 1, 67, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(174, 11, 1, 68, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(175, 11, 1, 69, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(176, 11, 1, 70, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(177, 11, 1, 71, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(178, 11, 1, 72, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(179, 11, 1, 73, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(180, 11, 1, 74, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(181, 11, 1, 75, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(182, 11, 1, 76, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(183, 11, 1, 77, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(184, 11, 1, 78, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(185, 11, 1, 79, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(186, 11, 1, 80, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(187, 11, 1, 81, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(188, 11, 1, 82, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(189, 11, 1, 83, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(190, 11, 1, 84, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(191, 11, 1, 85, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(192, 11, 1, 86, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(193, 11, 1, 87, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(194, 11, 1, 88, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(195, 11, 1, 89, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(196, 11, 1, 90, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(197, 11, 1, 91, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(198, 11, 1, 92, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(199, 11, 1, 93, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(200, 11, 1, 94, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(201, 11, 1, 95, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(202, 11, 1, 96, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(203, 11, 1, 97, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(204, 11, 1, 98, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(205, 11, 1, 99, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(206, 11, 1, 100, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(207, 11, 1, 101, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(208, 11, 1, 102, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(209, 11, 1, 103, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(210, 11, 1, 104, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(211, 11, 1, 105, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(212, 11, 1, 106, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(213, 11, 1, 107, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(214, 11, 1, 108, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(215, 11, 1, 109, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(216, 11, 1, 110, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(217, 11, 1, 111, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(218, 11, 1, 112, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(219, 11, 1, 113, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(220, 11, 1, 114, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(221, 11, 1, 115, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(222, 11, 1, 116, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(223, 11, 1, 117, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(224, 11, 1, 118, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(225, 11, 1, 119, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(226, 11, 1, 120, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(227, 11, 1, 121, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(228, 11, 1, 122, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(229, 11, 1, 123, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(230, 11, 1, 124, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(231, 11, 1, 125, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(232, 11, 1, 126, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(233, 11, 1, 127, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(234, 11, 1, 128, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(235, 11, 1, 129, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(236, 11, 1, 130, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(237, 11, 1, 131, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(238, 11, 1, 132, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(239, 11, 1, 133, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(240, 11, 1, 134, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(241, 11, 1, 135, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(242, 11, 1, 136, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(243, 11, 1, 137, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(244, 11, 1, 138, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(245, 11, 1, 139, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(246, 11, 1, 140, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(247, 11, 1, 141, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(248, 11, 1, 142, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(249, 11, 1, 143, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(250, 11, 1, 144, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(251, 11, 1, 145, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(252, 11, 1, 146, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(253, 11, 1, 147, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(254, 11, 1, 148, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(255, 11, 1, 149, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(256, 11, 1, 150, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(257, 11, 1, 151, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(258, 11, 1, 152, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(259, 11, 1, 153, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(260, 11, 1, 154, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(261, 11, 1, 155, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(262, 11, 1, 156, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(263, 11, 1, 157, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(264, 11, 1, 158, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(265, 11, 1, 159, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(266, 11, 1, 160, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(267, 11, 1, 161, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(268, 11, 1, 162, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(269, 11, 1, 163, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(270, 11, 1, 164, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(271, 11, 1, 165, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(272, 11, 1, 166, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(273, 11, 1, 167, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(274, 11, 1, 168, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(275, 11, 1, 169, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(276, 11, 1, 170, 58, 0, 0, NULL, NULL, '2021-08-03 04:51:15', '2021-08-03 04:51:44'),
(277, 11, 1, 55, 59, 0, NULL, 110, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(278, 11, 1, 56, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(279, 11, 1, 57, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(280, 11, 1, 58, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(281, 11, 1, 59, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(282, 11, 1, 60, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(283, 11, 1, 61, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(284, 11, 1, 62, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(285, 11, 1, 63, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(286, 11, 1, 64, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(287, 11, 1, 65, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(288, 11, 1, 66, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(289, 11, 1, 67, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(290, 11, 1, 68, 59, 0, NULL, 130, NULL, '2021-08-03 04:51:54', '2021-09-22 03:14:16'),
(291, 11, 1, 69, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(292, 11, 1, 70, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(293, 11, 1, 71, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(294, 11, 1, 72, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(295, 11, 1, 73, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(296, 11, 1, 74, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(297, 11, 1, 75, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(298, 11, 1, 76, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(299, 11, 1, 77, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(300, 11, 1, 78, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(301, 11, 1, 79, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(302, 11, 1, 80, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(303, 11, 1, 81, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(304, 11, 1, 82, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(305, 11, 1, 83, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(306, 11, 1, 84, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(307, 11, 1, 85, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(308, 11, 1, 86, 59, 0, NULL, 100, NULL, '2021-08-03 04:51:54', '2021-08-03 04:59:53'),
(309, 11, 1, 87, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(310, 11, 1, 88, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(311, 11, 1, 89, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(312, 11, 1, 90, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(313, 11, 1, 91, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(314, 11, 1, 92, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(315, 11, 1, 93, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(316, 11, 1, 94, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(317, 11, 1, 95, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(318, 11, 1, 96, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(319, 11, 1, 97, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(320, 11, 1, 98, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(321, 11, 1, 99, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(322, 11, 1, 100, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(323, 11, 1, 101, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(324, 11, 1, 102, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(325, 11, 1, 103, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(326, 11, 1, 104, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(327, 11, 1, 105, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(328, 11, 1, 106, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(329, 11, 1, 107, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(330, 11, 1, 108, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(331, 11, 1, 109, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(332, 11, 1, 110, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(333, 11, 1, 111, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(334, 11, 1, 112, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(335, 11, 1, 113, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(336, 11, 1, 114, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(337, 11, 1, 115, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(338, 11, 1, 116, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(339, 11, 1, 117, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(340, 11, 1, 118, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(341, 11, 1, 119, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(342, 11, 1, 120, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(343, 11, 1, 121, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(344, 11, 1, 122, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(345, 11, 1, 123, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(346, 11, 1, 124, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(347, 11, 1, 125, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(348, 11, 1, 126, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(349, 11, 1, 127, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(350, 11, 1, 128, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(351, 11, 1, 129, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(352, 11, 1, 130, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(353, 11, 1, 131, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(354, 11, 1, 132, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(355, 11, 1, 133, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(356, 11, 1, 134, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(357, 11, 1, 135, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(358, 11, 1, 136, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(359, 11, 1, 137, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(360, 11, 1, 138, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(361, 11, 1, 139, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(362, 11, 1, 140, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(363, 11, 1, 141, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(364, 11, 1, 142, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(365, 11, 1, 143, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(366, 11, 1, 144, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(367, 11, 1, 145, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(368, 11, 1, 146, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(369, 11, 1, 147, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(370, 11, 1, 148, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(371, 11, 1, 149, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(372, 11, 1, 150, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(373, 11, 1, 151, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(374, 11, 1, 152, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(375, 11, 1, 153, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(376, 11, 1, 154, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(377, 11, 1, 155, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(378, 11, 1, 156, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(379, 11, 1, 157, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(380, 11, 1, 158, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(381, 11, 1, 159, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(382, 11, 1, 160, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(383, 11, 1, 161, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(384, 11, 1, 162, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(385, 11, 1, 163, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(386, 11, 1, 164, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(387, 11, 1, 165, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(388, 11, 1, 166, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(389, 11, 1, 167, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(390, 11, 1, 168, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(391, 11, 1, 169, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(392, 11, 1, 170, 59, 0, NULL, NULL, NULL, '2021-08-03 04:51:54', '2021-08-03 04:51:54'),
(393, 12, 1, 55, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(394, 12, 1, 56, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(395, 12, 1, 57, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(396, 12, 1, 58, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(397, 12, 1, 59, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(398, 12, 1, 60, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(399, 12, 1, 61, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(400, 12, 1, 62, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(401, 12, 1, 63, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(402, 12, 1, 64, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(403, 12, 1, 65, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(404, 12, 1, 66, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(405, 12, 1, 67, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(406, 12, 1, 68, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(407, 12, 1, 69, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(408, 12, 1, 70, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(409, 12, 1, 71, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(410, 12, 1, 72, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(411, 12, 1, 73, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(412, 12, 1, 74, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(413, 12, 1, 75, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(414, 12, 1, 76, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(415, 12, 1, 77, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(416, 12, 1, 78, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(417, 12, 1, 79, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(418, 12, 1, 80, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(419, 12, 1, 81, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(420, 12, 1, 82, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(421, 12, 1, 83, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(422, 12, 1, 84, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(423, 12, 1, 85, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(424, 12, 1, 86, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(425, 12, 1, 87, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(426, 12, 1, 88, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(427, 12, 1, 89, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(428, 12, 1, 90, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(429, 12, 1, 91, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(430, 12, 1, 92, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(431, 12, 1, 93, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(432, 12, 1, 94, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(433, 12, 1, 95, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(434, 12, 1, 96, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(435, 12, 1, 97, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(436, 12, 1, 98, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(437, 12, 1, 99, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(438, 12, 1, 100, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(439, 12, 1, 101, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(440, 12, 1, 102, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(441, 12, 1, 103, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(442, 12, 1, 104, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(443, 12, 1, 105, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(444, 12, 1, 106, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(445, 12, 1, 107, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(446, 12, 1, 108, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(447, 12, 1, 109, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(448, 12, 1, 110, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(449, 12, 1, 111, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(450, 12, 1, 112, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(451, 12, 1, 113, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(452, 12, 1, 114, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(453, 12, 1, 115, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(454, 12, 1, 116, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(455, 12, 1, 117, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(456, 12, 1, 118, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(457, 12, 1, 119, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(458, 12, 1, 120, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(459, 12, 1, 121, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(460, 12, 1, 122, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(461, 12, 1, 123, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(462, 12, 1, 124, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(463, 12, 1, 125, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(464, 12, 1, 126, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(465, 12, 1, 127, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(466, 12, 1, 128, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(467, 12, 1, 129, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(468, 12, 1, 130, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(469, 12, 1, 131, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(470, 12, 1, 132, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(471, 12, 1, 133, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(472, 12, 1, 134, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(473, 12, 1, 135, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(474, 12, 1, 136, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(475, 12, 1, 137, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(476, 12, 1, 138, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(477, 12, 1, 139, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(478, 12, 1, 140, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(479, 12, 1, 141, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(480, 12, 1, 142, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(481, 12, 1, 143, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(482, 12, 1, 144, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(483, 12, 1, 145, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(484, 12, 1, 146, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(485, 12, 1, 147, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(486, 12, 1, 148, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(487, 12, 1, 149, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(488, 12, 1, 150, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(489, 12, 1, 151, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(490, 12, 1, 152, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(491, 12, 1, 153, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(492, 12, 1, 154, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(493, 12, 1, 155, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(494, 12, 1, 156, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(495, 12, 1, 157, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(496, 12, 1, 158, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(497, 12, 1, 159, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(498, 12, 1, 160, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(499, 12, 1, 161, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(500, 12, 1, 162, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(501, 12, 1, 163, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(502, 12, 1, 164, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(503, 12, 1, 165, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(504, 12, 1, 166, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(505, 12, 1, 167, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(506, 12, 1, 168, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(507, 12, 1, 169, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14'),
(508, 12, 1, 170, 60, 0, NULL, NULL, NULL, '2021-10-11 05:02:14', '2021-10-11 05:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_groups`
--

CREATE TABLE `order_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `work_period_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `waiter_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dept_tag_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_guest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `dept_commission` bigint(20) UNSIGNED DEFAULT NULL,
  `order_bill` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sgst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_payable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_distribution` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `is_settled` tinyint(1) NOT NULL,
  `is_ready` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_groups`
--

INSERT INTO `order_groups` (`id`, `restaurant_id`, `work_period_id`, `user_id`, `user_name`, `branch_id`, `branch_name`, `customer_id`, `customer_name`, `table_id`, `table_name`, `waiter_id`, `waiter_name`, `dept_tag_id`, `dept_tag_name`, `token`, `total_guest`, `service_charge`, `discount`, `dept_commission`, `order_bill`, `vat`, `vat_system`, `cgst`, `sgst`, `total_payable`, `bill_distribution`, `paid_amount`, `return_amount`, `is_paid`, `is_accepted`, `is_cancelled`, `is_settled`, `is_ready`, `created_at`, `updated_at`) VALUES
(23, NULL, 59, 21, 'Mr Staff', 11, 'Uttara Branch', 7, 'Mr Customer', NULL, '-', NULL, '-', NULL, '-', '{\"time\":1627973840883,\"id\":1}', '1', 0, 0, 0, '285', '14.25', 'igst', NULL, NULL, '299.25', NULL, '0', NULL, 0, 1, 0, 0, 1, '2021-08-03 06:27:25', '2021-10-10 07:32:33'),
(24, NULL, 59, 21, 'Mr Staff', 11, 'Uttara Branch', NULL, '-', NULL, '-', NULL, '-', NULL, '-', '{\"time\":1627973852642,\"id\":2}', '1', 0, 0, 0, '115', '5.75', 'igst', NULL, NULL, '120.75', NULL, '0', NULL, 0, 1, 0, 0, 1, '2021-08-03 06:27:34', '2021-09-21 09:06:38'),
(25, NULL, 59, 21, 'Mr Staff', 11, 'Uttara Branch', 7, 'Mr Customer', NULL, '-', NULL, '-', 9, 'Dyne In', '{\"time\":1627973863946,\"id\":3}', '1', 0, 0, 0, '130', '6.5', 'igst', NULL, NULL, '136.5', NULL, '0', NULL, 0, 0, 0, 0, 0, '2021-08-03 06:27:49', '2021-10-10 07:32:30'),
(26, NULL, 59, 21, 'Mr Staff', 11, 'Uttara Branch', NULL, '-', NULL, '-', NULL, '-', 10, 'TakeAway', '{\"time\":1627973877667,\"id\":4}', '1', 0, 0, 0, '230', '11.5', 'igst', NULL, NULL, '241.5', '[{\"payment_type\":\"Cash\",\"payment_type_slug\":\"Ce6-1627817863-cash\",\"amount\":241.5}]', '241.5', '0', 1, 1, 0, 1, 1, '2021-08-03 06:28:03', '2021-08-03 06:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_group_id` bigint(20) UNSIGNED NOT NULL,
  `food_item` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooking` tinyint(1) NOT NULL,
  `is_ready` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_group_id`, `food_item`, `food_group`, `variation`, `properties`, `quantity`, `price`, `is_cooking`, `is_ready`, `created_at`, `updated_at`) VALUES
(117, 23, 'Orange', 'FRUIT JUICES', NULL, NULL, 1, '150', 1, 1, '2021-08-03 06:27:25', '2021-10-10 07:32:33'),
(118, 23, 'Pineapple', 'FRUIT JUICES', NULL, NULL, 1, '135', 1, 1, '2021-08-03 06:27:25', '2021-10-10 07:32:33'),
(119, 24, 'Watermelon', 'FRUIT JUICES', NULL, NULL, 1, '115', 1, 1, '2021-08-03 06:27:34', '2021-09-21 09:06:38'),
(120, 25, 'Musambi', 'FRUIT JUICES', NULL, NULL, 1, '130', 0, 0, '2021-08-03 06:27:49', '2021-08-03 06:27:49'),
(121, 26, 'Sweet Melon', 'FRUIT JUICES', NULL, NULL, 2, '230', 1, 1, '2021-08-03 06:28:03', '2021-08-03 06:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `input_key`, `slug`, `created_at`, `updated_at`) VALUES
(11, 'Cash', 'cash', 'Ce6-1627817863-cash', '2021-08-01 11:37:43', '2021-08-01 11:37:43'),
(12, 'BKash', 'bkash', 'f52-1627817872-bkash', '2021-08-01 11:37:52', '2021-08-01 11:37:52'),
(13, 'UCash', 'ucash', '366-1627817880-ucash', '2021-08-01 11:38:00', '2021-08-01 11:38:00'),
(14, 'PayPal', 'paypal', 'ONs-1627817893-paypal', '2021-08-01 11:38:13', '2021-08-01 11:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Work period', 'work-period', NULL, NULL),
(2, 'POS', 'pos', NULL, NULL),
(3, 'Order history', 'order-history', NULL, NULL),
(4, 'Customer', 'customer', NULL, NULL),
(5, 'Kitchen', 'kitchen', NULL, NULL),
(7, 'Report', 'report', NULL, NULL),
(8, 'Manage', 'manage', NULL, NULL),
(9, 'Delivery', 'delivery', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id_array` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `slug`, `permission_id_array`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '[1,2,3,4,5,7,8]', '2020-11-27 23:48:53', '2020-11-27 23:48:53'),
(3, 'POS Manager', 'pos-manager', '[4,2,1,3]', '2020-12-19 10:20:55', '2021-04-20 04:38:46'),
(4, 'Delivery Man', 'deliverey-man', '[9]', NULL, NULL),
(5, 'Kitchen', 'kitchen', '[2,5]', '2021-06-29 06:01:55', '2021-06-29 06:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `property_groups`
--

CREATE TABLE `property_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_groups`
--

INSERT INTO `property_groups` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Addons', 'bhV-1627965094-addons', '2021-08-03 04:31:34', '2021-08-03 04:31:34'),
(7, 'Spice level', '7yz-1627965127-spice-level', '2021-08-03 04:32:07', '2021-08-03 04:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `property_items`
--

CREATE TABLE `property_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_multi_quantity` tinyint(1) NOT NULL,
  `property_group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_items`
--

INSERT INTO `property_items` (`id`, `name`, `slug`, `extra_price`, `allow_multi_quantity`, `property_group_id`, `created_at`, `updated_at`) VALUES
(12, 'Egg', 'M3j-1627965107-egg', '0', 1, 6, '2021-08-03 04:31:47', '2021-08-03 04:31:47'),
(13, 'Cheese', 'qsn-1627965118-cheese', '0', 1, 6, '2021-08-03 04:31:58', '2021-08-03 04:31:58'),
(14, 'Mild', 'X5B-1627965135-mild', '0', 0, 7, '2021-08-03 04:32:15', '2021-08-03 04:32:15'),
(15, 'Spicy', 'Rxy-1627965142-spicy', '0', 1, 7, '2021-08-03 04:32:22', '2021-08-03 04:32:22'),
(16, 'Very Spicy', '7PY-1627965148-very-spicy', '0', 1, 7, '2021-08-03 04:32:28', '2021-08-03 04:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'type_background', '#ffffff', NULL, '2021-03-21 00:38:55'),
(2, 'type_logo', '/images/logo/1618997935-logo2png.png', NULL, '2021-04-21 03:38:55'),
(3, 'type_color', '#ffffff', NULL, '2021-03-21 00:39:29'),
(4, 'type_footer', 'Khadyo || All rights reserved', NULL, '2021-03-21 00:38:55'),
(5, 'type_vat', '5', NULL, '2021-06-22 00:04:35'),
(6, 'print_kitchen_bill', '1', NULL, '2021-03-21 00:38:55'),
(7, 'play_sound', '0', NULL, '2021-03-29 03:37:13'),
(8, 'siteName', 'Khadyo Restaurant', NULL, '2021-03-21 00:38:55'),
(9, 'address', 'Uttara, Dhaka', NULL, '2021-03-21 00:38:55'),
(10, 'phnNo', '12345', NULL, '2021-03-21 00:38:55'),
(12, 'favicon', '/images/favicon/1618997613-logopng.png', NULL, '2020-12-19 08:10:25'),
(13, 'type_clock', '#f64e60', NULL, '2021-07-01 04:55:04'),
(14, 'type_install', 'NO', NULL, NULL),
(15, 'timezone', 'UTC', NULL, '2021-06-30 07:33:35'),
(16, 'type_print_footer', 'Thanks', NULL, '2021-03-21 00:38:55'),
(17, 'type_print_heading', 'Hello', NULL, '2021-03-21 00:38:55'),
(18, 'table_waiter', '0', NULL, '2021-03-22 00:09:05'),
(19, 'pos_screen', '0', NULL, '2021-09-21 09:10:21'),
(20, 'sDiscount', 'flat', NULL, '2021-03-24 22:52:46'),
(57, 'vat_system', 'igst', NULL, '2021-07-01 11:12:43'),
(58, 'cgst', '2.5', NULL, '2021-06-06 02:08:16'),
(59, 'sgst', '2.5', NULL, '2021-06-06 02:08:16'),
(60, 'hero_sub_1', 'Welcome here', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(61, 'hero_heading', 'Enjoy our food', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(62, 'hero_sub_2', 'We are at your service', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(63, 'razorpay_key', 'rzp_test_xFsiMyNMoRtykv', '2021-07-15 05:16:22', '2021-07-15 05:16:22'),
(64, 'razorpay_secret', 'AEeprxQPmsSWQpjENMtfIOgz', '2021-07-15 05:16:22', '2021-07-15 05:16:22'),
(65, 'hero_image', '/images/hero/1632042752-hero-imgpng.png', '2021-08-03 04:46:49', '2021-09-19 08:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `show_manage_stocks`
--

CREATE TABLE `show_manage_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT 'is_checked',
  `value` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `show_manage_stocks`
--

INSERT INTO `show_manage_stocks` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'is_checked', 1, '2021-12-21 06:48:33', '2021-12-21 06:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phn_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `slug`, `email`, `phn_no`, `due_balance`, `address`, `created_at`, `updated_at`) VALUES
(5, 'Mr. Supplier', 'rI1-1627965854-mr-supplier', 'supplier@mail.com', '12332123', 0, 'Supplier address', '2021-08-03 04:44:14', '2021-08-03 04:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `slug`, `capacity`, `branch_id`, `created_at`, `updated_at`) VALUES
(17, 'Table 01', 'x6Y-1627817833-table-01', '5', 11, '2021-08-01 11:37:13', '2021-08-01 11:37:13'),
(18, 'Table 02', 'wrd-1627817842-table-02', '4', 11, '2021-08-01 11:37:22', '2021-08-01 11:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `temporaries`
--

CREATE TABLE `temporaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phn_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_banned` tinyint(1) NOT NULL,
  `permission_group_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `image`, `slug`, `phn_no`, `email`, `user_type`, `is_active`, `is_banned`, `permission_group_id`, `restaurant_id`, `branch_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL, 'gD1-1627812724-admin', '12345678', 'admin@mail.com', 'superAdmin', 1, 0, 1, NULL, NULL, NULL, '$2y$10$ZdyB.2dT5qmQtCkMdTZvWexauJBHVKoX2fqreodKLlgKBUYOF.ZLy', '1608367160FgqgKPEtC542AYHUUTYZcTagffhKMX', '2020-11-27 23:46:16', '2021-08-01 10:12:05'),
(20, 'Mr Delivery', NULL, NULL, 'uDJ-1627965929-mr-delivery', '2321231212', 'deliverymanager@mail.com', 'deliveryMan', 1, 0, 4, NULL, 11, '2021-08-01 11:36:17', '$2y$10$iBHISNLQ4YUvQXNmh2SIu.d/R98wq/ymvYsfmsmedetRxi6t0/mgW', '1628229236A24Muwlf3UZ0E69IxllVUOC9FqAhlu', '2021-08-01 11:36:17', '2021-08-06 05:53:56'),
(21, 'Mr Staff', NULL, NULL, 'npN-1627965898-mr-staff', '21212112', 'staff@mail.com', 'staff', 1, 0, 3, NULL, 11, NULL, '$2y$10$zMMQvTH84gKJIK0BZwiQruBrjAzKQtDoKCZG7.PdPMUQL.e.0ED2e', '16279738209LsFyarwKXH6AjjC2Dk3T1XToVNNo7', '2021-08-03 04:44:58', '2021-08-03 06:27:00'),
(22, 'Customer', NULL, NULL, 'sDT-1627968903-customer', '09090909', 'customer@mail.com', 'customer', 1, 0, 0, NULL, NULL, NULL, '$2y$10$YEyQIN78I8t4F0a3aV17K.UagObiU15QtKy74i.GFNFkUxjREmvJ6', '1627968907SwTlsxQ7z09xAy3orpheBwSUCVS2h1', '2021-08-03 05:35:03', '2021-08-03 05:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(21, 'Large', 'L9l-1627965157-large', '2021-08-03 04:32:37', '2021-08-03 04:32:37'),
(22, 'Medium', 'iBR-1627965164-medium', '2021-08-03 04:32:44', '2021-08-03 04:32:44'),
(23, 'Small', '1Ic-1627965167-small', '2021-08-03 04:32:47', '2021-08-03 04:32:47'),
(24, '250ml', 'lw5-1627965176-250ml', '2021-08-03 04:32:56', '2021-08-03 04:32:56'),
(25, '500ml', 'gp4-1627965180-500ml', '2021-08-03 04:33:00', '2021-08-03 04:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `waiters`
--

CREATE TABLE `waiters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phn_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waiters`
--

INSERT INTO `waiters` (`id`, `name`, `phn_no`, `slug`, `image`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Mr Waiter', '123322123', 'S40-1627817728-mr-waiter', NULL, 11, '2021-08-01 11:35:28', '2021-08-01 11:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `work_periods`
--

CREATE TABLE `work_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ended_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ended_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_periods`
--

INSERT INTO `work_periods` (`id`, `date`, `branch_name`, `started_by`, `started_at`, `ended_at`, `ended_by`, `branch_id`, `token`, `created_at`, `updated_at`) VALUES
(57, 'Tuesday, 3 Aug, 2021', 'Uttara Branch', 'Admin', '172621737', '173666376', 'Admin', '11', 1, '2021-08-03 04:33:47', '2021-08-03 04:51:12'),
(58, 'Tuesday, 3 Aug, 2021', 'Uttara Branch', 'Admin', '173669176', '173698647', 'Admin', '11', 1, '2021-08-03 04:51:14', '2021-08-03 04:51:44'),
(59, 'Tuesday, 3 Aug, 2021', 'Uttara Branch', 'Admin', '173708471', NULL, NULL, '11', 5, '2021-08-03 04:51:54', '2021-08-03 06:28:03'),
(60, 'Monday, 11 Oct, 2021', 'Dhanmondi Branch', 'Admin', '1633930333515', NULL, NULL, '12', 1, '2021-10-11 05:02:13', '2021-10-11 05:02:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_slug_unique` (`slug`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_slug_unique` (`slug`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phn_no_unique` (`phn_no`);

--
-- Indexes for table `delivery_men_checks`
--
ALTER TABLE `delivery_men_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_tags`
--
ALTER TABLE `department_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_tags_name_unique` (`name`),
  ADD UNIQUE KEY `department_tags_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food_groups`
--
ALTER TABLE `food_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_groups_name_unique` (`name`),
  ADD UNIQUE KEY `food_groups_slug_unique` (`slug`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_slug_unique` (`slug`);

--
-- Indexes for table `food_purchases`
--
ALTER TABLE `food_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_purchase_histories`
--
ALTER TABLE `food_purchase_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_stock_branches`
--
ALTER TABLE `food_stock_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_units`
--
ALTER TABLE `food_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_units_name_unique` (`name`),
  ADD UNIQUE KEY `food_units_slug_unique` (`slug`);

--
-- Indexes for table `food_with_variations`
--
ALTER TABLE `food_with_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_groups`
--
ALTER TABLE `ingredient_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_items`
--
ALTER TABLE `ingredient_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_purchases`
--
ALTER TABLE `ingredient_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_purchase_histories`
--
ALTER TABLE `ingredient_purchase_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_stock_branches`
--
ALTER TABLE `ingredient_stock_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `langs_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `online_order_groups`
--
ALTER TABLE `online_order_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_order_items`
--
ALTER TABLE `online_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_closing_stocks`
--
ALTER TABLE `opening_closing_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_closing_stock_food`
--
ALTER TABLE `opening_closing_stock_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_groups`
--
ALTER TABLE `order_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_types_input_key_unique` (`input_key`),
  ADD UNIQUE KEY `payment_types_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`),
  ADD UNIQUE KEY `permission_groups_slug_unique` (`slug`);

--
-- Indexes for table `property_groups`
--
ALTER TABLE `property_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `property_groups_name_unique` (`name`),
  ADD UNIQUE KEY `property_groups_slug_unique` (`slug`);

--
-- Indexes for table `property_items`
--
ALTER TABLE `property_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `property_items_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_manage_stocks`
--
ALTER TABLE `show_manage_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tables_slug_unique` (`slug`);

--
-- Indexes for table `temporaries`
--
ALTER TABLE `temporaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_phn_no_unique` (`phn_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variations_name_unique` (`name`),
  ADD UNIQUE KEY `variations_slug_unique` (`slug`);

--
-- Indexes for table `waiters`
--
ALTER TABLE `waiters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `waiters_slug_unique` (`slug`);

--
-- Indexes for table `work_periods`
--
ALTER TABLE `work_periods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `delivery_men_checks`
--
ALTER TABLE `delivery_men_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department_tags`
--
ALTER TABLE `department_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_groups`
--
ALTER TABLE `food_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `food_purchases`
--
ALTER TABLE `food_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food_purchase_histories`
--
ALTER TABLE `food_purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `food_stock_branches`
--
ALTER TABLE `food_stock_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `food_units`
--
ALTER TABLE `food_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_with_variations`
--
ALTER TABLE `food_with_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ingredient_groups`
--
ALTER TABLE `ingredient_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ingredient_items`
--
ALTER TABLE `ingredient_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ingredient_purchases`
--
ALTER TABLE `ingredient_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ingredient_purchase_histories`
--
ALTER TABLE `ingredient_purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ingredient_stock_branches`
--
ALTER TABLE `ingredient_stock_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_order_groups`
--
ALTER TABLE `online_order_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `online_order_items`
--
ALTER TABLE `online_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `opening_closing_stocks`
--
ALTER TABLE `opening_closing_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `opening_closing_stock_food`
--
ALTER TABLE `opening_closing_stock_food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `order_groups`
--
ALTER TABLE `order_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_groups`
--
ALTER TABLE `property_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_items`
--
ALTER TABLE `property_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `show_manage_stocks`
--
ALTER TABLE `show_manage_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `temporaries`
--
ALTER TABLE `temporaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `waiters`
--
ALTER TABLE `waiters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_periods`
--
ALTER TABLE `work_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
