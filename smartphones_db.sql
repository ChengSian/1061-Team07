-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1:3306
-- 產生時間： 2018-01-19 02:33:35
-- 伺服器版本: 5.7.19
-- PHP 版本： 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `smartphones_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `brands`
--

INSERT INTO `brands` (`id`, `brand`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apple', NULL, NULL, NULL, NULL),
(2, 'Samsung', NULL, NULL, NULL, NULL),
(3, 'HTC', NULL, NULL, NULL, NULL),
(4, 'SONY', NULL, NULL, NULL, NULL),
(5, 'LG', NULL, NULL, NULL, NULL),
(6, 'ASUS', NULL, NULL, NULL, NULL),
(7, 'Nokia', NULL, NULL, NULL, NULL),
(8, 'HUAWEI', NULL, NULL, NULL, NULL),
(9, '小米', NULL, NULL, NULL, NULL),
(10, 'OPPO', NULL, NULL, NULL, NULL),
(11, 'InFocus', NULL, NULL, NULL, NULL),
(12, 'SHARP', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2018_01_12_124419_Create_Phones_table', 1),
(12, '2018_01_12_124448_Create_Brands_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `phones`
--

DROP TABLE IF EXISTS `phones`;
CREATE TABLE IF NOT EXISTS `phones` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `Phone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Colour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Screen_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Screen_resolution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CPU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RAM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SIM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MicroSD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Front_camera` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Main_camera` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Communication_agreement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link_web` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `battery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phones_brand_id_foreign` (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `phones`
--

INSERT INTO `phones` (`id`, `brand_id`, `Phone_name`, `Colour`, `Screen_size`, `Screen_resolution`, `operating_system`, `CPU`, `RAM`, `ROM`, `SIM`, `MicroSD`, `Front_camera`, `Main_camera`, `Communication_agreement`, `Link_web`, `specification`, `Phone_weight`, `battery`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'iPhone 7', '曜石黑', '4.7吋', '1,334 x 750pixels', 'iOS10', '四核心 A10 + M10', '2GB', '128GB', 'nano-SIM', '無', '700 萬畫素', '1,200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、NFC、GPS', '138.3 x 67.1 x 7.1mm', '138g', '1,960mAh', NULL, NULL, NULL, NULL),
(2, 1, 'iPhone 7 Plus', '玫瑰金', '5.5 吋', '1920 x 1080 pixels', 'iOS10', '四核心 A10 + M10', '3GB', '128GB', 'nano-SIM', '無', '700 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、NFC', '158.2 x 77.9 x 7.3 mm', '188g', '2900 mAh', NULL, NULL, NULL, NULL),
(3, 1, 'iPhone 6s Plus', '太空灰', '5.5 吋', '1920x1080 pixels', 'iOS 9', '雙核心 A9 + M9', '2GB', '64GB', 'nano-SIM', '無', '500 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB 2.0、NFC、3.5mm 耳機孔、MIMO 技術', '158.2x77.9x7.3 mm', '192g', '2750 mAh', NULL, NULL, NULL, NULL),
(4, 1, 'iPhone 6', '金色', '4.7 吋', '1334 x 750 pixels', 'iOS8', '雙核心 64 位元 A8 晶片與 M8 協同處理器', '1GB', '32GB', 'nano-SIM', '無', '120 萬畫素', '800 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800', 'Wi-Fi、藍牙、GPS、USB 2.0、NFC、3.5mm 耳機孔、iBeacon 微型定位服務', '138.1 x 67 x 6.9 mm', '129g', '1810 mAh', NULL, NULL, NULL, NULL),
(5, 1, 'iPhone 6s', '太空灰', '4.7 吋', '1334x750 pixels', 'iOS9', '雙核心 A9 + M9', '2GB', '128GB', 'nano-SIM', '無', '500 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB 2.0、NFC、3.5mm 耳機孔、MIMO 技術', '138.3 x 67.1 x7.1 mm', '143g', '1715 mAh', NULL, NULL, NULL, NULL),
(6, 1, 'iPhone 8', '太空灰', '4.7 吋', '1334 x 750 pixels', 'iOS11', '六核心 64 位元 A11 + M11 協同處理器', '2GB', '64GB', 'nano-SIM', '無', '700 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、Wi-Fi MIMO、VoLTE、A-GPS', '138.4 x 67.3 x 7.3 mm', '148g', '1821 mAh?', NULL, NULL, NULL, NULL),
(7, 1, 'iPhone 8', '金', '4.7 吋', '1334 x 750 pixels', 'iOS11', '六核心 64 位元 A11 + M11 協同處理器', '2GB', '256GB', 'nano-SIM', '無', '700 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、Wi-Fi MIMO、VoLTE、A-GPS', '138.4 x 67.3 x 7.3 mm', '148g', '1821 mAh', NULL, NULL, NULL, NULL),
(8, 1, 'iPhone X', '黑', '5.8 吋', '2436 x 1125 pixels', 'iOS11', '六核心 64 位元 A11 + M11 協同處理器', '3GB', '256GB', 'nano-SIM', '無', '700 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、Wi-Fi MIMO、VoLTE、A-GPS', '143.6 x 70.9 x 7.7 mm', '174g', '2716 mAh', NULL, NULL, NULL, NULL),
(9, 1, 'iPhone X', '銀', '5.8 吋', '2437 x 1125 pixels', 'iOS11', '六核心 64 位元 A11 + M11 協同處理器', '3GB', '64GB', 'nano-SIM', '無', '700 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、Wi-Fi MIMO、VoLTE、A-GPS', '143.6 x 70.9 x 7.7 mm', '174g', '2716 mAh', NULL, NULL, NULL, NULL),
(10, 2, 'Samsung Galaxy S8+', '流沙金', '6.2 吋', '2960 x 1440 pixels', 'Android 7.0', '八核心 Exynos 8895 2.3GHz + 1.7GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大擴充至 256GB', '800 萬畫素', '1,200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', '藍牙、NFC、GPS、3.5mm 耳機孔、Wi-Fi、USB', '159.5 x 73.4 x 8.1 mm', '173g', '3500 mAh', NULL, NULL, NULL, NULL),
(11, 2, 'Samsung Galaxy S8', '薰紫灰', '5.8 吋', '2960 x 1440 pixels', 'Android 7.0', '八核心 Exynos 8895 2.3GHz + 1.7GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '800 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '148.9 x 68.1 x 8 mm', '155g', '3000 mAh', NULL, NULL, NULL, NULL),
(12, 2, 'Samsung Galaxy S7', '瑪瑙黑', '5.1 吋', '2560×1440 pixel', 'Android 6.0', '八核心 Samsung Exynos 8890 2.3GHz + 1.6GHz', '4GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 20GB', '500萬像素', '1200萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', '藍牙、NFC、GPS、Wi-Fi、USB 2.0、3.5mm 耳機孔、LTE Cat. 9、3CA', '142.4 x 69.6 x 7.9 mm', '152g', '3000 mAh', NULL, NULL, NULL, NULL),
(13, 2, 'Samsung Galaxy S7 Edge', '炫燦金', '5.5 吋', '2560 x 1440 pixels', 'Android 6.0', '八核心 Samsung Exynos 8890 2.3GHz + 1.6GHz', '4GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 200GB', '500 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB 2.0、NFC、3.5mm耳機孔、LTECat.9、3CA', '150.9 x 72.6 x 7.7 mm', '157g', '3600 mAh', NULL, NULL, NULL, NULL),
(14, 2, 'Samsung Galaxy J7', '粉', '5.5 吋', '1280 x 720 pixels', 'Android 6.0', '八核心 Exynos 7870 - 1.6GHz', '2GB', '16GB', 'micro-SIM(雙卡雙待)', '最大支援容量 128GB', '500 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、VoLTE、LTECat.4', '151.7 x 76 x 7.8 mm', '170g', '3300 mAh', NULL, NULL, NULL, NULL),
(15, 2, 'Samsung Galaxy Note 5', '瑰鉑粉', '5.7 吋', '2560 x 1440 pixels', 'Android 5.1', '八核心 Exynos 7420 (4x2.1 GHz + 4x1.5 GHz)', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '無', '500 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB 2.0、NFC、3.5mm 耳機孔', '153.2 x 76.1 x 7.6 mm', '171g', '3000 mAh', NULL, NULL, NULL, NULL),
(16, 2, 'Samsung Galaxy Note 8', '粉紅', '6.3 吋', '2960 x 1440 pixels', 'Android 7.0', '八核心 Exynos 8895 2.3GHz + 1.7GHz', '6GB', '64GB?', 'nano-SIM', '最大支援容量 256GB', '800 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '162.5 x 74.8 x 8.6 mm', '195g', '3300 mAh', NULL, NULL, NULL, NULL),
(17, 2, 'Samsung Galaxy A8+', '放閃金', '6 吋', '1080 x 2220 pixels', 'Android 7.1', '八核心 Samsung Exynos 7885 (雙核 2.2GHz + 六核 1.6GHz)', '6GB?', '64GB', 'nano-SIM', '最大支援容量 256GB', '1600 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、USB Type-C', '159.9 x 75.7 x 8.3 mm', '191g', '3500 mAh', NULL, NULL, NULL, NULL),
(18, 2, 'Samsung Galaxy A8', '紫', '5.6 吋', '1080 x 2220 pixels', 'Android 7.1', '八核心 Samsung Exynos 7885 (雙核 2.2GHz + 六核 1.6GHz)', '4GB', '64GB', 'nano-SIM', '最大支援容量 256GB', '1600 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、USB Type-C', '149.2 x 70.6 x 8.4 mm', '172g', '3000 mAh', NULL, NULL, NULL, NULL),
(19, 3, 'HTC U Ultra', '彩妝粉', '5.7 吋', '2560 x 1140 pixels', 'Android 7.0', '四核心 Qualcomm S821 2.15GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '1600 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB3.1、NFC', '162.41 x 79.79 x 7.99 mm', '170g', '3000 mAh', NULL, NULL, NULL, NULL),
(20, 3, 'HTC 10', '夕光紅', '5.2 吋', '2560 x 1440 pixels', 'Android 6.0', '四核心 Qualcomm S820 2.2GHz', '4GB', '32GB', 'nano-SIM', '最大支援容量 2TB', '500 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB3.1、NFC、3.5mm耳機孔、USBTypeC', '145.9 x 71.9 x 9 mm', '161g', '3000 mAh', NULL, NULL, NULL, NULL),
(21, 3, 'HTC Butterfly 3', '白', '5.2 吋', '2560 x 1440 pixels', 'Android 5.0', '八核心 Qualcomm S810 MSM8994 2.0GHz + 1.5GHz', '3GB', '32GB', 'nano-SIM', '最大支援容量 2TB', '1300 萬畫素', '2020 萬畫素', '2G GSM 四頻、3G WCDMA 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、MHL', '150.99 x 72.99 x 9.99 mm', '161g', '2700 mAh', NULL, NULL, NULL, NULL),
(22, 3, 'HTC One A9', '黃晶金', '5 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 Qualcomm Snapdragon 617 1.5GHz + 1.2GHz', '3GB', '32GB', 'nano-SIM', '最大支援容量 2TB', '400 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB 2.0、3.5mm 耳機孔', '145.75 x 70.8 x 7.26 mm', '143g', '2150 mAh', NULL, NULL, NULL, NULL),
(23, 3, 'HTC U11+', '炫藍銀', '6 吋', '2880 x 1440 pixels', 'Android 8.0', '八核心 Qualcomm Snapdragon 835 八核 2.45 Ghz', '6GB', '128GB', 'nano-SIM', '最大支援容量 2TB', '800 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC', '158.5 x 74.9 x 8.5 mm', '188g', '3930mAh', NULL, NULL, NULL, NULL),
(24, 3, 'HTC U11', '寶石藍', '5.5 吋', '2560 x 1440 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 835 八核 2.45 Ghz', '4GB', '64GB', 'nano-SIM', '最大支援容量 2TB', '1600 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC', '153.9 x 75.9 x 7.9 mm', '169g', '3000 mAh', NULL, NULL, NULL, NULL),
(25, 4, 'SONY Xperia XZ', '澗水藍', '5.2 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm Snapdragon 820', '3GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '1300 萬畫素', '2300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔', '146 x 72 x 8.1 mm', '162g', '2900 mAh', NULL, NULL, NULL, NULL),
(26, 4, 'SONY Xperia XA Ultra', '天使白', '6 吋', '1080 x 1920 pixels', 'Android 6.0', '八核心 MT6755 (Helio P10)', '3GB', '16GB', 'nano-SIM', '最大支援容量 2TB', '1600 萬畫素', '2100 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm耳機孔、LTECat.4', '164.2 x 79.4 x 8.4 mm', '190g', '2700 mAh', NULL, NULL, NULL, NULL),
(27, 4, 'SONY Xperia XA', '石墨黑', '5 吋', '1280 x 720 pixels', 'Android 6.0', '八核心 MTK Helio P10 (MT6755)', '2GB', '16GB', 'nano-SIM', '最大支援容量 200GB', '800 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm耳機孔、LTECat.4', '143.6 x 66.8 x 7.9 mm', '137.4g', '2300 mAh', NULL, NULL, NULL, NULL),
(28, 4, 'SONY Xperia Z5 Premium', '玫瑰石英粉', '5.5 吋', '3840 x 2160 pixels', 'Android 5.1', '八核心 Snapdragon 810 MSM8994', '3GB', '32GB', 'nano-SIM', '最大支援容量 200 GB', '500 萬畫素', '2300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm耳機孔、MHL 3.0、WiFiMIMO', '154.4 x 76.0 x 7.8 mm', '180g', '3430 mAh', NULL, NULL, NULL, NULL),
(29, 4, 'SONY Xperia XZ1', '晨曦銀', '5.2 吋', '1920 x 1080 pixels', 'Android 8.0', '八核心 Qualcomm Snapdragon 835', '4GB', '64GB', 'nano-SIM', '最大支援容量 256GB', '1300 萬像素', '1900 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '148 x 73 x 7.4 mm', '156g', '2700 mAh', NULL, NULL, NULL, NULL),
(30, 4, 'SONY Xperia XZs', '冰河藍', '5.2 吋', '1920 x 1080 pixels', 'Android 7.0', '四核心 Qualcomm Snapdragon 820', '4GB', '64GB', 'nano-SIM', '最大支援容量 256GB', '1300 萬畫素', '1900 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '146.4 x 72 x 8.1 mm', '161g', '2900 mAh', NULL, NULL, NULL, NULL),
(31, 5, 'LG G6', '星爵黑', '5.7 吋', '2880 x 1440 pixels', 'Android 7.0', '四核心 Qualcomm Snapdragon 821 2.35GHz + 1.6GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '500 萬像素', '1300 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、USB OTG', '148.9 x 71.9 x 7.9 mm', '163g', '3300 mAh', NULL, NULL, NULL, NULL),
(32, 5, 'LG G5', '歡樂粉', '5.3 吋', '2560 x 1440 pixels', 'Android 6.0', '四核心 Qualcomm Snapdragon 820', '4GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '800 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB3.0、NFC、3.5mm 耳機孔、USBTypeC、Cat.6、VoLTE', '149.4 x 73.9 x 7.7 mm', '159g', '2800 mAh', NULL, NULL, NULL, NULL),
(33, 5, 'LG V20', '鈦黑色', '5.7 吋', '2560 x 1440 pixels', 'Android 7.0', '四核心 Qualcomm Snapdragon 820', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '500 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '159.7 x 78.1 x 7.6 mm', '174g', '3200 mAh', NULL, NULL, NULL, NULL),
(34, 5, 'LG V10', '雅致米', '5.7 吋', '2560 x 1440 pixels', 'Android 5.1', '六核心 Qualcomm S808 1.8GHz + 1.44 GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '500 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、Cat.6、VoLTE', '159.6 x 79.3 x 8.6 mm', '192g', '3000 mAh', NULL, NULL, NULL, NULL),
(35, 5, 'LG V30+', '異想紫', '6 吋', '2880 x 1140 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 835', '4GB', '128GB', 'nano-SIM', '最大支援容量 2TB', '500 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '151.7 x 75.4 x 7.3 mm', '158g', '3300 mAh', NULL, NULL, NULL, NULL),
(36, 6, 'ASUS ZenFone 3 Deluxe', '閃耀金', '5.7 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm S820 2.15GHz', '6GB', '64GB', 'micro-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '2300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB3.0、NFC、3.5mm 耳機孔、USBTypeC3.0', '156.4 x 77.4 x 7.5 mm', '170g', '3000 mAh', NULL, NULL, NULL, NULL),
(37, 6, 'ASUS ZenFone 3', '藍寶黑', '5.2 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 Qualcomm S625 2.0GHz', '3GB', '32GB', 'micro-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USBTypeC2.0', '146.87 x 73.98 x 7.69 mm', '144g', '2650 mAh', NULL, NULL, NULL, NULL),
(38, 6, 'ASUS ZenFone 3 Ultra', '玫瑰金', '6.8 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 Qualcomm S652 1.8GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '2300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USBTypeC2.0', '186.4 x 93.9 x 6.8 mm', '233g', '4600 mAh', NULL, NULL, NULL, NULL),
(39, 6, 'ASUS ZenFone Zoom', '白', '5.5 吋', '1920 x 1080 pixels', 'Android 5.0', '四核心 Intel Atom Z3590 2.5 GHz', '4GB', '128GB', 'nano-SIM', '最大支援容量 128GB', '500 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔', '158.9 x 78.84 x 11.95 mm', '185g', '3000 mAh', NULL, NULL, NULL, NULL),
(40, 6, 'ASUS ZenFone 4 Pro', '月光白', '5.5 吋', '1920 x 1080 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 835', '6GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '800 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、VoLTE、4CA、USB Type-C', '156.9 x 75.6 x 7.6 mm', '175g', '3600 mAh', NULL, NULL, NULL, NULL),
(41, 6, 'ASUS ZenFone 4', '薄荷綠', '5.5 吋', '1920 x 1080 pixels', 'Android 7.0', '八核心 Qualcomm Snapdragon 660', '6GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 2TB', '800 萬像素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、4G+3G 雙卡雙待', '155.4 x 75.2 x 7.5 mm', '165g', '3300 mAh', NULL, NULL, NULL, NULL),
(42, 6, 'ASUS ZenFone 3 Max', '鈦空灰', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 Qualcomm Snapdragon 430', '2GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、3.5mm 耳機孔、Wi-Fi direct', '151.4 x 76.24 x 8.3 mm', '175g', '4100 mAh', NULL, NULL, NULL, NULL),
(43, 7, 'Nokia 6', '黑', '5.5 吋', '1920 x 1080 pixels', 'Android 7.0', '八核心 Qualcomm Snapdragon 430', '4GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔', '154 x 75.8 x 7.85 mm', '169g', '3000 mAh', NULL, NULL, NULL, NULL),
(44, 7, 'Nokia 5', '寧靜藍', '5.2 吋', '1280 x 720 pixels', 'Android 7.1', '四核心 Qualcomm Snapdragon 430', '2GB', '16GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1300 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、4G+3G 雙卡雙待', '149.7 x 72.5 x 8.05 mm', '161g', '3000 mAh', NULL, NULL, NULL, NULL),
(45, 7, 'Nokia 8', '光箔銅', '5.3 吋', '2560 x 1440 pixels', 'Android 7.1', '八核心 Qualcomm S835', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '1300 萬像素', '1300 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、LTE Cat.9、3CA', '151.5 x 73.7 x 7.9 mm', '160g', '3090 mAh', NULL, NULL, NULL, NULL),
(46, 8, 'HUAWEI P10 Plus', '藍', '5.5 吋', '2560 x 1440 pixels', 'Android 7.0', '八核心 HiSilicon Kirin 960 (4 x 2.4GHz Cortex-A73 & 4 x 1.8GHz Cortex-A53', '6GB', '128GB', 'nano-SIM', '最大支援容量 256GB', '800 萬像素', '2000 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100', 'Wi-Fi、藍牙、GPS、USB3.1、NFC、3.5mm 耳機孔', '153.3 x 74.2 x 7 mm', '165g', '3750 mAh', NULL, NULL, NULL, NULL),
(47, 8, 'HUAWEI Mate 9 Pro', '銀鑽灰', '5.5 吋', '2560 x 1440 pixels', 'Android 7.0', '八核心 Kirin 960 2.4GHz + 1.8GHz', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '800 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、USBTypeC', '152 x 75 x 7.5 mm', '169g', '4000 mAh', NULL, NULL, NULL, NULL),
(48, 8, 'HUAWEI P9 Plus', '白', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 Kirin 955 2.5GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、LTECat.6', '152.3 x 75.3 x 6.98 mm', '162g', '3400 mAh', NULL, NULL, NULL, NULL),
(49, 8, 'HUAWEI nova lite', '金', '5.2 吋', '1920 x 1080 pixels', 'Android 7.0', '八核心 Kirin 655 2.1GHz + 1.7GHz', '3GB', '16GB', 'nano-SIM(雙卡雙待)', '無', '800 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔', '147.2 x 72.94 x 7.6 mm', '147g', '3000 mAh', NULL, NULL, NULL, NULL),
(50, 8, 'HUAWEI P8', '煙雲灰', '5.2 吋', '1920 x 1080 pixels', 'Android 5.0', '八核心 HiSilicon Kirin 930 2.0GHz + 1.5GHz', '3GB', '16GB', 'nano-SIM', '最大支援容量 128GB', '800 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、BT4.1+LE、OTG', '144.9 x 72.1 x 6.4 mm', '144g', '2600 mAh', NULL, NULL, NULL, NULL),
(51, 8, 'HUAWEI Mate 8', '蒼穹灰', '6 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 HiSilicon Kirin 950 2.3GHz + 1.8GHz', '3GB', '32GB', 'nano-SIM', '最大支援容量 128GB', '800 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、LTECat.6', '157.1 × 80.6 × 7.9 mm', '185g', '4000 mAh', NULL, NULL, NULL, NULL),
(52, 8, 'HUAWEI Mate 10 Pro', '摩卡金', '6 吋', '2160 x 1080 pixels', 'Android 8.0', '八核心 KIRIN 970', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '800 萬像素', '?2000 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、雙卡雙待雙 LTE、LTE Cat.18', '154.2 x 74.5 x 7.9 mm', '178g', '4000 mAh?', NULL, NULL, NULL, NULL),
(53, 8, 'HUAWEI Mate 10', '亮黑', '5.9 吋', '2560 x 1440 pixels', 'Android 8.0', '八核心 KIRIN 970', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '800 萬像素', '?2000 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、雙卡雙待雙 LTE、LTE Cat.18', '150.5 x 77.8 x 8.2 mm', '186g', '4000 mAh', NULL, NULL, NULL, NULL),
(54, 9, '小米 5s Plus', '玫瑰金', '5.7 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm S821 2.35GHz', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '400 萬像素', '1300 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm耳機孔、USBType-C、3CA', '154.6 x 77.7 x 7.95 mm', '168g', '3800 mAh', NULL, NULL, NULL, NULL),
(55, 9, '小米 Note 2 全球版', '亮黑', '5.7 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm Snapdragon S821 2.35GHz', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '800 萬畫素', '2256 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔', '156.2 x 77.3 x 7.6 mm', '166g', '4070 mAh', NULL, NULL, NULL, NULL),
(56, 9, '小米 4i', '黑', '5 吋', '1920 x 1080 pixels', 'Android 5.0', '八核心 Qualcomm S615 (1.7 GHz + 1.1 GHz Cortex-A53)', '2GB', '32GB', 'micro-SIM(雙卡雙待)', '無', '500 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USBOTG', '138 x 69.6 x 7.8 mm', '131g', '3120 mAh', NULL, NULL, NULL, NULL),
(57, 9, '紅米 Note 4 高配版', '灰', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '十核心 MTK Helio X20 2.1GHz', '3GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '500 萬畫素', '1300 萬畫素', '2G GSM 三頻、3G WCDMA 850 + 900 + 2100 4G LTE 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、AGPS、Beidou', '151 x 76 x 8.35 mm', '175g', '4100 mAh', NULL, NULL, NULL, NULL),
(58, 9, '小米 6', '黑', '5.15 吋', '1920 x 1080 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 835 (4 x 2.45GHz Kryo & 4 x 1.9GHz Kryo)', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '800 萬畫素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC', '145.17 x 70.49 x 7.45 mm', '168g', '3350 mAh', NULL, NULL, NULL, NULL),
(59, 9, '小米 5', '白', '5.15 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm Snapdragon 820 1.8GHz', '3GB', '32GB', 'nano-SIM(雙卡雙待)', '無', '400 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、USBType-C、3CA、VoLTE', '144.55 x 69.2 x 7.25 mm', '129g', '3000 mAh', NULL, NULL, NULL, NULL),
(60, 9, '小米 MIX 2', '黑', '5.9 吋', '2160 x 1080 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 835', '6GB', '128GB', 'nano-SIM(雙卡雙待)', '無', '500 萬像素', '1200 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC', '151.8 x 75.5 x 7.7 mm', '185g', '3400 mAh', NULL, NULL, NULL, NULL),
(61, 10, 'OPPO R9s Plus', '玫瑰金色', '6 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 高通 Snapdragon 653 MSM8976 Pro 1.95GHz', '6GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、VoLTE、CA', '163.63 x 80.8 x 7.35 mm', '185g', '4000 mAh', NULL, NULL, NULL, NULL),
(62, 10, 'OPPO F1s', '玫瑰金', '5.5 吋', '1280 x 720 pixels', 'Android 5.1', '八核心 MediaTek MT6750 1.5GHz', '3GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB3.0、3.5mm 耳機孔', '154.5 x 76 x 7.38 mm', '160g', '3075 mAh', NULL, NULL, NULL, NULL),
(63, 10, 'OPPO R9s', '黑色', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 高通 Snapdragon 625 MSM8953 2.0GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、VoLTE、CA', '153 x 74.3 x 6.58 mm', '145g', '3010 mAh', NULL, NULL, NULL, NULL),
(64, 10, 'OPPO R5', '銀', '5.2 吋', '1920x1080 pixels', 'Android 4.4', '八核心 Qualcomm Snapdragon 615 1.5GHz', '2GB', '16GB', 'micro-SIM', '無', '500 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、USBOTG', '148.9 × 74.5 × 4.85 mm', '155g', '2000 mAh', NULL, NULL, NULL, NULL),
(65, 10, 'OPPO A57', '金', '5.2 吋', '1280 x 720 pixels', 'Android 6.0', '八核心 Qualcomm Snapdragon 435 1.4GHz', '3GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 2100 4G LTE 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、VoLTE、USBOTG', '149.1 x 72.9 x 7.65 mm', '147g', '2900 mAh', NULL, NULL, NULL, NULL),
(66, 10, 'OPPO R9', '玫瑰金', '5.5 吋', '1920x1080 pixels', 'Android 5.1', '八核心 MTK MK6755 2.0GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔', '151.8 x 74.3 x 6.6 mm', '145g', '2850 mAh', NULL, NULL, NULL, NULL),
(67, 10, 'OPPO A75s', '香檳色', '6 吋', '2160 x 1080 pixels', 'Android 7.1', '八核心 MTK Helio P23 2.5GHz', '4GB', '64GB', 'nano-SIM', '最大支援容量 256GB', '2000 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、雙卡雙待4G+3G', '156.5 x 76 x 7.5 mm', '152g', '3200 mAh', NULL, NULL, NULL, NULL),
(68, 10, 'OPPO A75', '黑色', '6 吋', '2160 x 1080 pixels', 'Android 7.1', '八核心 MTK Helio P23 2.5GHz', '4GB', '32GB', 'nano-SIM', '最大支援容量 256GB', '2000 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、雙卡雙待4G+3G', '156.5 x 76 x 7.5 mm', '152g', '3200 mAh', NULL, NULL, NULL, NULL),
(69, 10, 'OPPO A77', '玫瑰金', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '八核心 MediaTek MT6750T 1.5GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1600 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 2100、4G LTE 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、雙卡雙待4G+3G', '153.3 x 75.2 x 7.3 mm', '153g', '3200 mAh', NULL, NULL, NULL, NULL),
(70, 10, 'OPPO R11s', '香檳色', '6 吋', '2160 x 1080 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 660 2.2GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '2000 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、雙卡雙待4G+3G、OTG 數據傳輸', '155.1 x 75.5 x 7.1 mm', '153g', '3205 mAh?', NULL, NULL, NULL, NULL),
(71, 10, 'OPPO R11s Plus', '黑色', '6.4 吋', '2160 x 1080 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 660 2.2GHz', '6GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 256GB', '2000 萬像素', '1600 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、雙卡雙待4G+3G、OTG 數據傳輸', '164.8 x 80.2 x 7.3 mm', '182g', '4000 mAh', NULL, NULL, NULL, NULL),
(72, 11, 'InFocus M812', '太空灰', '5.5 吋', '1920 x 1080 pixels', 'Android 5.0', '四核心 高通 S801 MSM8974AC, 2.5GHz', '3GB', '16GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、USB-OTG', '157.6 x 77.1 x 7.38 mm', '186g', '2900 mAh', NULL, NULL, NULL, NULL),
(73, 11, 'InFocus M680', '復刻金', '5.5 吋', '1920 x 1080 pixels', 'Android 5.1', '八核心 MTK MT6753 1.3GHz', '2GB', '16GB', 'nano-SIM(雙卡雙待)', '最大支援容量 64GB', '1300 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USB-OTG', '156 x 76.8 x 7.25 mm', '158g', '2600 mAh', NULL, NULL, NULL, NULL),
(74, 11, 'InFocus M530', '紫羅蘭', '5.5 吋', '1280 x 720 pixels', 'Android 4.4', '八核心 MTK MT6595 2GHz + 1.7GHz', '2GB', '16GB', 'micro-SIM(雙卡雙待)', '最大支援容量 64GB', '1300 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔', '157 x 77 x 9.1 mm', '176g', '3100 mAh', NULL, NULL, NULL, NULL),
(75, 11, 'InFocus M808', '玫瑰金', '5.2 吋', '1920 x 1080 pixels', 'Android 5.1', '八核心 聯發科 MT6753 1.3GHz', '2GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '500 萬畫素', '1300 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USB-OTG', '147.7 x 73.2 x 7.56 mm', '156g', '2450 mAh', NULL, NULL, NULL, NULL),
(76, 11, 'InFocus M5s', '耀岩灰', '5.2 吋', '1280 x 720 pixels', 'Android 7.0', '四核心 MTK MT6737 1.25 GHz', '3GB', '32GB', 'nano-SIM', '最大支援容量 32GB', '800 萬畫素', '1300 萬像素', '2G GSM 三頻、3G WCDMA 850 + 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USB OTG、VoLTE', '148 x 73 x 8.8 mm', '152g', '4000 mAh', NULL, NULL, NULL, NULL),
(77, 11, 'InFocus InFocus A3', '曜石黑', '5.2 吋', '1280 x 720 pixels', 'Android 7.0', '四核心 MediaTek MT6737W 1.3GHz', '2GB?', '16GB', 'nano-SIM', '最大支援容量 128GB', '800 萬畫素', '1300 萬像素', '2G GSM 三頻、3G WCDMA 900 + 2100、4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、OTG、VoLTE', '150.2 x 74.5 x 8.3 mm', '162g', '3050 mAh', NULL, NULL, NULL, NULL),
(78, 12, 'SHARP Z3', '香檳金', '5.7 吋', '2560 x 1440 pixels', 'Android 7.0', '八核心 Qualcomm Snapdragon 652 1.8GHz + 1.4GHz', '4GB', '64GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '1300 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPSUSB2.0、3.5mm 耳機孔', '157.9 x 78.5 x 7.78 mm', '185g', '3100 mAh', NULL, NULL, NULL, NULL),
(79, 12, 'SHARP Z2', '洗鍊金', '5.5 吋', '1920 x 1080 pixels', 'Android 6.0', '十核心 MTK X20 MT6797 2.3GHz + 2.0GHz + 1.4GHz', '4GB', '32GB', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1600 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB2.0、3.5mm 耳機孔、USBType-C', '153 x 75 x 8.4 mm', '160g', '3000 mAh', NULL, NULL, NULL, NULL),
(80, 12, 'SHARP P1', '櫻花粉', '5.3 吋', '1920 x 1080 pixels', 'Android 6.0', '四核心 Qualcomm Snapdragon 820 2.2GHz', '3GB', '32GB', 'nano-SIM', '最大支援容量 200GB', '500 萬畫素', '2260 萬畫素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 900 + 1800', 'Wi-Fi、藍牙、GPS、USB2.0、NFC、3.5mm 耳機孔、CA、VoLTE', '149 x 73 x 7.6 mm', '155g', '3000 mAh', NULL, NULL, NULL, NULL),
(81, 12, 'SHARP AQUOS S2', '白', '5.5 吋', '1080 x 2040 pixels', 'Android 7.1', '八核心 Qualcomm Snapdragon 660 2.2GHz', '6GB', '128GB?', 'nano-SIM(雙卡雙待)', '最大支援容量 128GB', '800 萬畫素', '1200 萬像素', '2G GSM 四頻、3G WCDMA 850 + 900 + 2100 4G LTE 700 + 900 + 1800 + FDD 2600 + TDD 2600', 'Wi-Fi、藍牙、GPS、USB、NFC、3.5mm 耳機孔、USB OTG、USB type C', '141.8 x 72.04 x 7.9 mm', '140g', '3020 mAh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
