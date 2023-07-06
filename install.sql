-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 10:29 AM
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
-- Database: `khadyo`
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
(11, 'Uttara', 'Xpa-1638609116-uttara', 'Utttara 11, Sector 11', '545454', '2021-12-04 08:41:56', '2021-12-04 08:41:56');

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
(1, 'US Dollar', '$', 1, 'left', 1, 'usd', '2020-11-27 18:08:45', '2020-11-27 18:10:15');

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

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men_checks`
--

CREATE TABLE `delivery_men_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'is_checked',
  `value` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men_checks`
--

INSERT INTO `delivery_men_checks` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'is_checked', 0, '2021-12-04 08:56:28', '2021-12-04 08:57:08');

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
(20, 'Burger', 'UP8-1638609145-burger', '2021-12-04 08:42:25', '2021-12-04 08:42:25');

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
(57, '20', 'Chicken Burger', '54', '/images/food_item/1638609190-burgerjpg.jpg', '0', NULL, '0', '0', 'RSJ-1638609190-chicken-burger', '2021-12-04 08:43:10', '2021-12-04 08:43:10');

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
(1, 'en', 'English', 1, '/images/flags/default.png', '2020-11-27 18:10:33', '2020-11-27 18:12:04');

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
(65, '2021_10_10_123222_create_delivery_men_checks_table', 16);

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
('00096a0ec65f80b57d1467e6627d8c5e7c22b7179dc63e371b594e2c7849960de02aef46accd6cd0', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-22 22:35:55', '2021-05-22 22:35:55', '2022-05-23 04:35:55'),
('32598a77da31b75f45fd49a4240e035f6b87eeb0589f5b8c1f2f590b2d92630ff583c76bfd526428', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-12 01:34:12', '2021-05-12 01:34:12', '2022-05-12 07:34:12'),
('3834355bc01a4eee8f7e769e8fa9b2281fb44b8c22a1575952d3f517c8cafd66cc99bac426ccca78', 1, 1, 'Personal Access Token', '[]', 1, '2021-05-25 00:00:11', '2021-05-25 00:00:11', '2022-05-25 06:00:11'),
('4282052f7dd850af47043d7f95a48c00fc4fe0a424001cdbd12d1331d2cf5380694f4594fe9133ba', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-24 00:30:15', '2021-06-24 00:30:15', '2022-06-24 06:30:15'),
('49970c242e1b435d3ef9fab3f9e614fea410aedba33e83e082a12ec65bbfd34f350901b777fdda6a', 1, 1, 'Personal Access Token', '[]', 1, '2021-08-01 03:14:33', '2021-08-01 03:14:33', '2022-08-01 09:14:33'),
('50bdfce98e24e9996f9c68dfa6e5320f6105b9780bbf4bf469432d7f3dca46a8baf592cbd7334ebe', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-30 07:33:31', '2021-06-30 07:33:31', '2022-06-30 13:33:31'),
('528a86182cc6edda5d8bd6c926630bb3c2a142951fdcbccfec7f6337e01435f707fff939e268eb04', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:57:21', '2021-06-07 23:57:21', '2022-06-08 05:57:21'),
('5a843f16f717717262d75c9870756ae7f6f914721d63f321cc1d3d09c1ca85c5117ad8992643f392', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-29 05:53:19', '2021-06-29 05:53:19', '2022-06-29 05:53:19'),
('61f32a120aa9ff841f22418e10ee59e8db20e8a3d305317dd6ffa92489f569658292bcd250f9252e', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-29 04:20:18', '2021-06-29 04:20:18', '2022-06-29 10:20:18'),
('646f6c25d3520639d2b2737f735a7f10caa05dd43a60ba2aa1b3cdfead4620e1638a09052658a76d', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-23 23:30:53', '2021-06-23 23:30:53', '2022-06-24 05:30:53'),
('6a0eaccb1d026d258dbee22b66ecfac3ed77c77deb80cac6b32f75e0f2ca89982b73242c58e31d70', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-27 12:11:46', '2021-06-27 12:11:46', '2022-06-27 12:11:46'),
('792e5cc677543ef7fe6aed953e2fcfc303f3821626705806557a677279c373bf56453665250ba756', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-15 03:04:01', '2021-07-15 03:04:01', '2022-07-15 09:04:01'),
('88212db9b0bd91f00bc32b44c19033d840239ee91bdfce9728939bb308768adc36173f2662b57d5f', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:57:09', '2021-06-07 23:57:09', '2022-06-08 05:57:09'),
('888dbf7ee44e5fe1377e212830ec852f7b58f78b5bd5516d3dcd4c6b2d79011735c7f6291d4a5f3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-29 05:02:20', '2021-06-29 05:02:20', '2022-06-29 05:02:20'),
('957a4e10504c42e7fc3922f6c462320d5396d2c551d75e848c32b4eb0cf1bacf8629a993d5c34fef', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-01 03:51:02', '2021-07-01 03:51:02', '2022-07-01 09:51:02'),
('98f16ae3666a561a3359d07a04a804ca0797638bc3a52dfbc1be7bb86e920894af2d934da8a7d776', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 08:39:02', '2021-12-04 08:39:02', '2022-12-04 14:39:02'),
('aaf88d256f10452e34ab1a70b2c7bfeec5786e3de369ac5af67fea97c0cdf58990d519196bc5e411', 1, 1, 'Personal Access Token', '[]', 1, '2021-06-27 10:30:47', '2021-06-27 10:30:47', '2022-06-27 10:30:47'),
('c0d9c090dcec198dbe7dc3310f150e569fdadd233f052fcf6a3c0ab4ecdc1a876b4045ec4144b641', 1, 1, 'Personal Access Token', '[]', 0, '2021-06-28 17:19:28', '2021-06-28 17:19:28', '2022-06-28 17:19:28'),
('cde1055c0bb691a3f0a28da2a2831867ebf8173a1f2058b45e9181cc1173560dbc88e4273be46a5d', 16, 1, 'Personal Access Token', '[]', 1, '2021-06-07 23:52:59', '2021-06-07 23:52:59', '2022-06-08 05:52:59'),
('cfeab2de5995afc801535597c523a3182d075b2f69ec8bbb8a951b9eafed5d5be00c8b83b2c3982b', 1, 1, 'Personal Access Token', '[]', 1, '2021-12-04 08:56:57', '2021-12-04 08:56:57', '2022-12-04 14:56:57'),
('e60feef8135af5b2252f52f738bc44b4ca941f15c90667b148b1b8f865030ed3d4ce1270ad86f610', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-27 04:11:02', '2021-07-27 04:11:02', '2022-07-27 10:11:02'),
('ef6d96dd1a5c8d71c5736e76c72c313fa816df80d1bcb4747b8b24112c987d75a844a6128514cabd', 17, 1, 'Personal Access Token', '[]', 1, '2021-06-23 23:31:50', '2021-06-23 23:31:50', '2022-06-24 05:31:50'),
('ef9320a955dc75463df335327811fa329bee6dbf94a1d26bae3bdaa45861b77149cd606a6ead416d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-18 02:54:32', '2021-07-18 02:54:32', '2022-07-18 08:54:32'),
('f78399900193e2f9e6f26f77ac7e9eb5f331f58b577ac64b05a6fd15e3d650afe4672bae2660510d', 1, 1, 'Personal Access Token', '[]', 0, '2021-07-25 08:39:37', '2021-07-25 08:39:37', '2022-07-25 14:39:37');

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
(19, 'pos_screen', '1', NULL, '2021-06-30 07:06:57'),
(20, 'sDiscount', 'flat', NULL, '2021-03-24 22:52:46'),
(57, 'vat_system', 'igst', NULL, '2021-07-01 11:12:43'),
(58, 'cgst', '2.5', NULL, '2021-06-06 02:08:16'),
(59, 'sgst', '2.5', NULL, '2021-06-06 02:08:16'),
(60, 'hero_sub_1', 'Welcome here', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(61, 'hero_heading', 'Enjoy our food', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(62, 'hero_sub_2', 'We are at your service', '2021-06-29 05:08:57', '2021-06-29 05:08:57'),
(63, 'razorpay_key', 'rzp_test_xFsiMyNMoRtykv', '2021-07-15 05:16:22', '2021-07-15 05:16:22'),
(64, 'razorpay_secret', 'AEeprxQPmsSWQpjENMtfIOgz', '2021-07-15 05:16:22', '2021-07-15 05:16:22');

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
(1, 'admin', NULL, NULL, 'bTQ-1638608919-admin', '45454', 'admin@mail.com', 'superAdmin', 1, 0, 1, NULL, NULL, NULL, '$2y$10$5tampDWRKIJSZP.qPPffeO1W9kxPRT0LqbBOrPpUsyOOixnrgUfKi', '1608367160FgqgKPEtC542AYHUUTYZcTagffhKMX', '2020-11-27 23:46:16', '2021-12-04 08:38:39'),
(20, 'Rasel', NULL, '/images/user/1638609288-userjpg.jpg', 'gGA-1638609288-rasel', '555555', 'rasel@mail.com', 'staff', 1, 0, 3, NULL, 11, NULL, '$2y$10$nFyFxX0l9CZMN9FSx6lh.esoF5ImWWmnqa.w6//9Ess6KUXRqLJ4i', NULL, '2021-12-04 08:44:48', '2021-12-04 08:44:48');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_men_checks`
--
ALTER TABLE `delivery_men_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department_tags`
--
ALTER TABLE `department_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_groups`
--
ALTER TABLE `food_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `food_purchases`
--
ALTER TABLE `food_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_purchase_histories`
--
ALTER TABLE `food_purchase_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `food_stock_branches`
--
ALTER TABLE `food_stock_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ingredient_items`
--
ALTER TABLE `ingredient_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_order_items`
--
ALTER TABLE `online_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opening_closing_stocks`
--
ALTER TABLE `opening_closing_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `opening_closing_stock_food`
--
ALTER TABLE `opening_closing_stock_food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_groups`
--
ALTER TABLE `order_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_items`
--
ALTER TABLE `property_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `temporaries`
--
ALTER TABLE `temporaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `waiters`
--
ALTER TABLE `waiters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_periods`
--
ALTER TABLE `work_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
