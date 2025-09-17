-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.4.3 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- tablo yapısı dökülüyor tumevakfi.ads_campaigns
CREATE TABLE IF NOT EXISTS `ads_campaigns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gad_campaignid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.ads_campaigns: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.api_keys
CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `youtube_channel_id` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret_key` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.api_keys: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `api_keys` (`id`, `youtube_channel_id`, `recaptcha_site_key`, `recaptcha_secret_key`, `created_at`, `updated_at`) VALUES
	(1, NULL, NULL, NULL, '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.auction_counters
CREATE TABLE IF NOT EXISTS `auction_counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `form` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.auction_counters: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.blades
CREATE TABLE IF NOT EXISTS `blades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.blades: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `blades` (`id`, `name`, `file`, `created_at`, `updated_at`) VALUES
	(1, 'İletişim', 'iletisim', '2025-09-17 00:15:31', '2025-09-17 00:15:31');

-- tablo yapısı dökülüyor tumevakfi.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.brands: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `brands` (`id`, `name`, `image`, `link`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'Dost Tarım Teknolojileri', 'dost-tarim-teknolojileri.png', NULL, NULL, '2025-09-16 19:44:58', '2025-09-16 19:44:58'),
	(2, 'Afara', 'afara.png', NULL, NULL, '2025-09-16 19:45:11', '2025-09-16 19:45:11'),
	(3, 'Agrovisio', 'agrovisio.png', NULL, NULL, '2025-09-16 19:45:25', '2025-09-16 19:45:25'),
	(4, 'Cowelthy', 'cowelthy.png', NULL, NULL, '2025-09-16 20:01:20', '2025-09-16 20:01:20'),
	(5, 'Dost Foods', 'dost-foods.png', NULL, NULL, '2025-09-16 20:01:38', '2025-09-16 20:01:38'),
	(6, 'Eys', 'eys.png', NULL, NULL, '2025-09-16 20:01:46', '2025-09-16 20:01:46'),
	(7, 'Itech', 'itech.png', NULL, NULL, '2025-09-16 20:01:54', '2025-09-16 20:01:54'),
	(8, 'Mat', 'mat.png', NULL, NULL, '2025-09-16 20:02:08', '2025-09-16 20:02:08'),
	(9, 'Livzym', 'livzym.png', NULL, NULL, '2025-09-16 20:02:19', '2025-09-16 20:02:19'),
	(10, 'Liyo Life', 'liyo-life.png', NULL, NULL, '2025-09-16 20:02:33', '2025-09-16 20:02:34'),
	(11, 'MamaMix', 'mamamix.png', NULL, NULL, '2025-09-16 20:02:43', '2025-09-16 20:02:43'),
	(13, 'Tempa', 'tempa.png', NULL, NULL, '2025-09-16 20:17:41', '2025-09-16 20:17:41');

-- tablo yapısı dökülüyor tumevakfi.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.cache: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel_cache_apiKeys', 'O:18:"App\\Models\\ApiKeys":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:8:"api_keys";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:6:{s:2:"id";i:1;s:18:"youtube_channel_id";N;s:18:"recaptcha_site_key";N;s:20:"recaptcha_secret_key";N;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-16 20:38:30";}s:11:"\0*\0original";a:6:{s:2:"id";i:1;s:18:"youtube_channel_id";N;s:18:"recaptcha_site_key";N;s:20:"recaptcha_secret_key";N;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-16 20:38:30";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:3:{i:0;s:18:"youtube_channel_id";i:1;s:18:"recaptcha_site_key";i:2;s:20:"recaptcha_secret_key";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}', 1758154572),
	('laravel_cache_blades', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:16:"App\\Models\\Blade":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"blades";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:5:{s:2:"id";i:1;s:4:"name";s:10:"İletişim";s:4:"file";s:8:"iletisim";s:10:"created_at";s:19:"2025-09-17 03:15:31";s:10:"updated_at";s:19:"2025-09-17 03:15:31";}s:11:"\0*\0original";a:5:{s:2:"id";i:1;s:4:"name";s:10:"İletişim";s:4:"file";s:8:"iletisim";s:10:"created_at";s:19:"2025-09-17 03:15:31";s:10:"updated_at";s:19:"2025-09-17 03:15:31";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:2:{i:0;s:4:"name";i:1;s:4:"file";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154531),
	('laravel_cache_brands', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:12:{i:0;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:4:"name";s:25:"Dost Tarım Teknolojileri";s:5:"image";s:28:"dost-tarim-teknolojileri.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:44:58";s:10:"updated_at";s:19:"2025-09-16 22:44:58";}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:4:"name";s:25:"Dost Tarım Teknolojileri";s:5:"image";s:28:"dost-tarim-teknolojileri.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:44:58";s:10:"updated_at";s:19:"2025-09-16 22:44:58";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:1;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:4:"name";s:5:"Afara";s:5:"image";s:9:"afara.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:45:11";s:10:"updated_at";s:19:"2025-09-16 22:45:11";}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:4:"name";s:5:"Afara";s:5:"image";s:9:"afara.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:45:11";s:10:"updated_at";s:19:"2025-09-16 22:45:11";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:2;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:4:"name";s:9:"Agrovisio";s:5:"image";s:13:"agrovisio.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:45:25";s:10:"updated_at";s:19:"2025-09-16 22:45:25";}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:4:"name";s:9:"Agrovisio";s:5:"image";s:13:"agrovisio.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 22:45:25";s:10:"updated_at";s:19:"2025-09-16 22:45:25";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:3;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:4;s:4:"name";s:8:"Cowelthy";s:5:"image";s:12:"cowelthy.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:20";s:10:"updated_at";s:19:"2025-09-16 23:01:20";}s:11:"\0*\0original";a:7:{s:2:"id";i:4;s:4:"name";s:8:"Cowelthy";s:5:"image";s:12:"cowelthy.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:20";s:10:"updated_at";s:19:"2025-09-16 23:01:20";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:4;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:5;s:4:"name";s:10:"Dost Foods";s:5:"image";s:14:"dost-foods.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:38";s:10:"updated_at";s:19:"2025-09-16 23:01:38";}s:11:"\0*\0original";a:7:{s:2:"id";i:5;s:4:"name";s:10:"Dost Foods";s:5:"image";s:14:"dost-foods.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:38";s:10:"updated_at";s:19:"2025-09-16 23:01:38";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:5;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:6;s:4:"name";s:3:"Eys";s:5:"image";s:7:"eys.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:46";s:10:"updated_at";s:19:"2025-09-16 23:01:46";}s:11:"\0*\0original";a:7:{s:2:"id";i:6;s:4:"name";s:3:"Eys";s:5:"image";s:7:"eys.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:46";s:10:"updated_at";s:19:"2025-09-16 23:01:46";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:6;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:7;s:4:"name";s:5:"Itech";s:5:"image";s:9:"itech.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:54";s:10:"updated_at";s:19:"2025-09-16 23:01:54";}s:11:"\0*\0original";a:7:{s:2:"id";i:7;s:4:"name";s:5:"Itech";s:5:"image";s:9:"itech.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:01:54";s:10:"updated_at";s:19:"2025-09-16 23:01:54";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:7;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:8;s:4:"name";s:3:"Mat";s:5:"image";s:7:"mat.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:08";s:10:"updated_at";s:19:"2025-09-16 23:02:08";}s:11:"\0*\0original";a:7:{s:2:"id";i:8;s:4:"name";s:3:"Mat";s:5:"image";s:7:"mat.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:08";s:10:"updated_at";s:19:"2025-09-16 23:02:08";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:8;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:9;s:4:"name";s:6:"Livzym";s:5:"image";s:10:"livzym.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:19";s:10:"updated_at";s:19:"2025-09-16 23:02:19";}s:11:"\0*\0original";a:7:{s:2:"id";i:9;s:4:"name";s:6:"Livzym";s:5:"image";s:10:"livzym.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:19";s:10:"updated_at";s:19:"2025-09-16 23:02:19";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:9;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:10;s:4:"name";s:9:"Liyo Life";s:5:"image";s:13:"liyo-life.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:33";s:10:"updated_at";s:19:"2025-09-16 23:02:34";}s:11:"\0*\0original";a:7:{s:2:"id";i:10;s:4:"name";s:9:"Liyo Life";s:5:"image";s:13:"liyo-life.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:33";s:10:"updated_at";s:19:"2025-09-16 23:02:34";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:10;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:11;s:4:"name";s:7:"MamaMix";s:5:"image";s:11:"mamamix.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:43";s:10:"updated_at";s:19:"2025-09-16 23:02:43";}s:11:"\0*\0original";a:7:{s:2:"id";i:11;s:4:"name";s:7:"MamaMix";s:5:"image";s:11:"mamamix.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:02:43";s:10:"updated_at";s:19:"2025-09-16 23:02:43";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}i:11;O:17:"App\\Models\\Brands":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:6:"brands";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:7:{s:2:"id";i:13;s:4:"name";s:5:"Tempa";s:5:"image";s:9:"tempa.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:17:41";s:10:"updated_at";s:19:"2025-09-16 23:17:41";}s:11:"\0*\0original";a:7:{s:2:"id";i:13;s:4:"name";s:5:"Tempa";s:5:"image";s:9:"tempa.png";s:4:"link";N;s:7:"details";N;s:10:"created_at";s:19:"2025-09-16 23:17:41";s:10:"updated_at";s:19:"2025-09-16 23:17:41";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:4:{i:0;s:4:"name";i:1;s:5:"image";i:2;s:4:"link";i:3;s:7:"details";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758153149),
	('laravel_cache_categories', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:19:"App\\Models\\Category":34:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:10:"categories";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:15:{s:2:"id";i:1;s:4:"name";s:22:"TÜME\'nin Parçası Ol";s:4:"note";N;s:5:"image";N;s:9:"show_menu";i:0;s:13:"show_homepage";i:0;s:11:"show_footer";i:0;s:10:"show_panel";i:0;s:3:"hit";i:1;s:15:"parent_category";N;s:14:"translation_of";N;s:7:"lang_id";N;s:10:"created_at";s:19:"2025-09-17 03:12:38";s:10:"updated_at";s:19:"2025-09-17 03:12:38";s:10:"deleted_at";N;}s:11:"\0*\0original";a:15:{s:2:"id";i:1;s:4:"name";s:22:"TÜME\'nin Parçası Ol";s:4:"note";N;s:5:"image";N;s:9:"show_menu";i:0;s:13:"show_homepage";i:0;s:11:"show_footer";i:0;s:10:"show_panel";i:0;s:3:"hit";i:1;s:15:"parent_category";N;s:14:"translation_of";N;s:7:"lang_id";N;s:10:"created_at";s:19:"2025-09-17 03:12:38";s:10:"updated_at";s:19:"2025-09-17 03:12:38";s:10:"deleted_at";N;}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:10:"deleted_at";s:8:"datetime";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:11:{i:0;s:4:"name";i:1;s:4:"note";i:2;s:5:"image";i:3;s:3:"hit";i:4;s:15:"parent_category";i:5;s:14:"translation_of";i:6;s:7:"lang_id";i:7;s:9:"show_menu";i:8;s:13:"show_homepage";i:9;s:11:"show_footer";i:10;s:10:"show_panel";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154358),
	('laravel_cache_contactFormUnreadMessage', 'i:0;', 1758160960),
	('laravel_cache_contacts', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:19:"App\\Models\\Contacts":34:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:8:"contacts";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:16:{s:2:"id";i:1;s:4:"name";s:12:"Tüme Vakfı";s:5:"email";s:23:"tahaercan2749@gmail.com";s:6:"email2";N;s:5:"phone";N;s:6:"phone2";N;s:7:"address";N;s:7:"country";s:8:"Türkiye";s:4:"city";N;s:5:"state";N;s:6:"person";N;s:3:"map";N;s:3:"hit";N;s:10:"created_at";s:19:"2025-09-17 04:26:11";s:10:"updated_at";s:19:"2025-09-17 04:26:11";s:10:"deleted_at";N;}s:11:"\0*\0original";a:16:{s:2:"id";i:1;s:4:"name";s:12:"Tüme Vakfı";s:5:"email";s:23:"tahaercan2749@gmail.com";s:6:"email2";N;s:5:"phone";N;s:6:"phone2";N;s:7:"address";N;s:7:"country";s:8:"Türkiye";s:4:"city";N;s:5:"state";N;s:6:"person";N;s:3:"map";N;s:3:"hit";N;s:10:"created_at";s:19:"2025-09-17 04:26:11";s:10:"updated_at";s:19:"2025-09-17 04:26:11";s:10:"deleted_at";N;}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:10:"deleted_at";s:8:"datetime";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:12:{i:0;s:4:"name";i:1;s:5:"email";i:2;s:6:"email2";i:3;s:5:"phone";i:4;s:6:"phone2";i:5;s:7:"address";i:6;s:7:"country";i:7;s:4:"city";i:8;s:5:"state";i:9;s:6:"person";i:10;s:3:"map";i:11;s:3:"hit";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758158771),
	('laravel_cache_fastMenus', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154358),
	('laravel_cache_languages', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:19:"App\\Models\\Language":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:9:"languages";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:6:{s:2:"id";i:1;s:4:"name";s:8:"Türkçe";s:4:"code";s:2:"tr";s:6:"active";i:0;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-16 20:38:30";}s:11:"\0*\0original";a:6:{s:2:"id";i:1;s:4:"name";s:8:"Türkçe";s:4:"code";s:2:"tr";s:6:"active";i:0;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-16 20:38:30";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:3:{i:0;s:4:"name";i:1;s:4:"code";i:2;s:6:"active";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154311),
	('laravel_cache_navbarMenus', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154358),
	('laravel_cache_pages', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":2:{s:8:"\0*\0items";a:1:{i:0;O:15:"App\\Models\\Page":34:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:5:"pages";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:16:{s:2:"id";i:1;s:5:"title";s:22:"TÜME\'nin Parçası Ol";s:4:"slug";s:18:"tumenin-parcasi-ol";s:7:"content";s:216:"<p>Şirketimizin &nbsp;Tarım Teknolojileri Kümelenmesi içerisinde yer almak için yada&nbsp;Tarım Teknolojileri Kümelenmesi hakkında bilgi almak için Aşağıdaki formu doldurarak bizlere ulaşabilirsiniz.</p>";s:5:"image";N;s:16:"breadcrumb_image";N;s:7:"is_main";i:1;s:8:"blade_id";i:1;s:11:"category_id";i:1;s:14:"translation_of";N;s:11:"parent_page";N;s:7:"lang_id";N;s:9:"published";i:1;s:10:"created_at";s:19:"2025-09-17 03:14:59";s:10:"updated_at";s:19:"2025-09-17 03:15:53";s:10:"deleted_at";N;}s:11:"\0*\0original";a:16:{s:2:"id";i:1;s:5:"title";s:22:"TÜME\'nin Parçası Ol";s:4:"slug";s:18:"tumenin-parcasi-ol";s:7:"content";s:216:"<p>Şirketimizin &nbsp;Tarım Teknolojileri Kümelenmesi içerisinde yer almak için yada&nbsp;Tarım Teknolojileri Kümelenmesi hakkında bilgi almak için Aşağıdaki formu doldurarak bizlere ulaşabilirsiniz.</p>";s:5:"image";N;s:16:"breadcrumb_image";N;s:7:"is_main";i:1;s:8:"blade_id";i:1;s:11:"category_id";i:1;s:14:"translation_of";N;s:11:"parent_page";N;s:7:"lang_id";N;s:9:"published";i:1;s:10:"created_at";s:19:"2025-09-17 03:14:59";s:10:"updated_at";s:19:"2025-09-17 03:15:53";s:10:"deleted_at";N;}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:1:{s:10:"deleted_at";s:8:"datetime";}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:12:{i:0;s:5:"title";i:1;s:4:"slug";i:2;s:7:"content";i:3;s:5:"image";i:4;s:16:"breadcrumb_image";i:5;s:11:"category_id";i:6;s:11:"parent_page";i:7;s:8:"blade_id";i:8;s:14:"translation_of";i:9;s:7:"lang_id";i:10;s:9:"published";i:11;s:7:"is_main";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:16:"\0*\0forceDeleting";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 1758154554),
	('laravel_cache_siteSettings', 'O:23:"App\\Models\\SiteSettings":33:{s:13:"\0*\0connection";s:5:"mysql";s:8:"\0*\0table";s:13:"site_settings";s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:12:"incrementing";b:1;s:7:"\0*\0with";a:0:{}s:12:"\0*\0withCount";a:0:{}s:19:"preventsLazyLoading";b:0;s:10:"\0*\0perPage";i:15;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:28:"\0*\0escapeWhenCastingToString";b:0;s:13:"\0*\0attributes";a:13:{s:2:"id";i:1;s:9:"site_name";s:12:"Tüme Vakfı";s:4:"logo";s:11:"nophoto.png";s:7:"favicon";s:11:"nophoto.png";s:11:"footer_logo";s:11:"nophoto.png";s:10:"store_link";N;s:9:"seo_title";N;s:15:"seo_description";N;s:9:"head_code";N;s:11:"header_code";N;s:11:"footer_code";N;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-17 04:26:24";}s:11:"\0*\0original";a:13:{s:2:"id";i:1;s:9:"site_name";s:12:"Tüme Vakfı";s:4:"logo";s:11:"nophoto.png";s:7:"favicon";s:11:"nophoto.png";s:11:"footer_logo";s:11:"nophoto.png";s:10:"store_link";N;s:9:"seo_title";N;s:15:"seo_description";N;s:9:"head_code";N;s:11:"header_code";N;s:11:"footer_code";N;s:10:"created_at";s:19:"2025-09-16 20:38:30";s:10:"updated_at";s:19:"2025-09-17 04:26:24";}s:10:"\0*\0changes";a:0:{}s:11:"\0*\0previous";a:0:{}s:8:"\0*\0casts";a:0:{}s:17:"\0*\0classCastCache";a:0:{}s:21:"\0*\0attributeCastCache";a:0:{}s:13:"\0*\0dateFormat";N;s:10:"\0*\0appends";a:0:{}s:19:"\0*\0dispatchesEvents";a:0:{}s:14:"\0*\0observables";a:0:{}s:12:"\0*\0relations";a:0:{}s:10:"\0*\0touches";a:0:{}s:27:"\0*\0relationAutoloadCallback";N;s:26:"\0*\0relationAutoloadContext";N;s:10:"timestamps";b:1;s:13:"usesUniqueIds";b:0;s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:11:"\0*\0fillable";a:10:{i:0;s:9:"site_name";i:1;s:4:"logo";i:2;s:7:"favicon";i:3;s:11:"footer_logo";i:4;s:10:"store_link";i:5;s:9:"seo_title";i:6;s:15:"seo_description";i:7;s:9:"head_code";i:8;s:11:"header_code";i:9;s:11:"footer_code";}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}}', 1758158784);

-- tablo yapısı dökülüyor tumevakfi.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.cache_locks: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.campaign_visits
CREATE TABLE IF NOT EXISTS `campaign_visits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gad_campaignid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gbraid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.campaign_visits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `note` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` tinyint(1) DEFAULT '0',
  `show_homepage` tinyint(1) DEFAULT '0',
  `show_footer` tinyint(1) DEFAULT '0',
  `show_panel` tinyint(1) DEFAULT '0',
  `hit` int DEFAULT NULL,
  `parent_category` bigint unsigned DEFAULT NULL,
  `translation_of` bigint unsigned DEFAULT NULL,
  `lang_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_category_foreign` (`parent_category`),
  KEY `categories_translation_of_foreign` (`translation_of`),
  KEY `categories_lang_id_foreign` (`lang_id`),
  CONSTRAINT `categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_parent_category_foreign` FOREIGN KEY (`parent_category`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_translation_of_foreign` FOREIGN KEY (`translation_of`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.categories: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `categories` (`id`, `name`, `note`, `image`, `show_menu`, `show_homepage`, `show_footer`, `show_panel`, `hit`, `parent_category`, `translation_of`, `lang_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'TÜME\'nin Parçası Ol', NULL, NULL, 0, 0, 0, 0, 1, NULL, NULL, NULL, '2025-09-17 00:12:38', '2025-09-17 00:12:38', NULL);

-- tablo yapısı dökülüyor tumevakfi.certificates
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `lang_id` bigint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_lang_id_foreign` (`lang_id`),
  CONSTRAINT `certificates_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.certificates: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.contacts: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `contacts` (`id`, `name`, `email`, `email2`, `phone`, `phone2`, `address`, `country`, `city`, `state`, `person`, `map`, `hit`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Tüme Vakfı', 'tahaercan2749@gmail.com', NULL, NULL, NULL, NULL, 'Türkiye', NULL, NULL, NULL, NULL, NULL, '2025-09-17 01:26:11', '2025-09-17 01:26:11', NULL);

-- tablo yapısı dökülüyor tumevakfi.contact_forms
CREATE TABLE IF NOT EXISTS `contact_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleCompany` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyActivity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forWhat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.contact_forms: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.failed_jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_page_id_foreign` (`page_id`),
  CONSTRAINT `faqs_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.faqs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.galleries
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint unsigned NOT NULL,
  `hit` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_page_id_foreign` (`page_id`),
  CONSTRAINT `galleries_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.galleries: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.guest_reviews
CREATE TABLE IF NOT EXISTS `guest_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint DEFAULT '5',
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.guest_reviews: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.home_page_management
CREATE TABLE IF NOT EXISTS `home_page_management` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_page_management_page_id_foreign` (`page_id`),
  CONSTRAINT `home_page_management_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.home_page_management: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.jobs: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.job_batches: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.languages: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `languages` (`id`, `name`, `code`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Türkçe', 'tr', 0, '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.media_uploads
CREATE TABLE IF NOT EXISTS `media_uploads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.media_uploads: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.migrations: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_05_07_093414_create_languages_table', 1),
	(5, '2025_05_08_163844_create_blades_table', 1),
	(6, '2025_05_10_151237_create_categories_table', 1),
	(7, '2025_05_14_142951_create_pages_table', 1),
	(8, '2025_05_15_171809_create_seos_table', 1),
	(9, '2025_05_16_001851_create_site_settings_table', 1),
	(10, '2025_05_16_200028_create_contacts_table', 1),
	(11, '2025_05_17_050949_create_social_media_table', 1),
	(12, '2025_05_18_174831_create_roles_table', 1),
	(13, '2025_05_18_174931_create_role_users_table', 1),
	(14, '2025_05_20_123632_create_permissions_table', 1),
	(15, '2025_05_20_134157_create_role_permissions_table', 1),
	(16, '2025_05_20_182251_create_api_keys_table', 1),
	(17, '2025_05_21_102858_create_sliders_table', 1),
	(18, '2025_05_21_195231_create_popups_table', 1),
	(19, '2025_05_21_201618_create_references_table', 1),
	(20, '2025_05_21_205346_create_certificates_table', 1),
	(21, '2025_05_21_234315_create_press_kits_table', 1),
	(22, '2025_05_23_134319_create_galleries_table', 1),
	(23, '2025_06_20_110350_create_special_categories_table', 1),
	(24, '2025_06_23_134014_create_brands_table', 1),
	(25, '2025_07_03_102915_create_ads_campaigns_table', 1),
	(26, '2025_07_03_173740_create_campaign_visits_table', 1),
	(27, '2025_07_06_152740_create_user_visits_table', 1),
	(28, '2025_07_07_170218_create_visited_user_calls_table', 1),
	(29, '2025_08_03_114601_create_media_uploads_table', 1),
	(31, '2025_08_30_224318_create_faqs_table', 1),
	(32, '2025_09_01_144333_create_auction_counters_table', 1),
	(33, '2025_09_02_144652_create_home_page_management_table', 1),
	(34, '2025_09_05_102722_create_guest_reviews_table', 1),
	(35, '2025_09_08_115411_create_reviews_images_table', 1),
	(36, '2025_09_08_120002_create_reviews_images_temps_table', 1),
	(37, '2025_08_09_224848_create_contact_forms_table', 2);

-- tablo yapısı dökülüyor tumevakfi.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `blade_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `translation_of` bigint unsigned DEFAULT NULL,
  `parent_page` bigint unsigned DEFAULT NULL,
  `lang_id` bigint unsigned DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`),
  KEY `pages_blade_id_foreign` (`blade_id`),
  KEY `pages_category_id_foreign` (`category_id`),
  KEY `pages_translation_of_foreign` (`translation_of`),
  KEY `pages_parent_page_foreign` (`parent_page`),
  KEY `pages_lang_id_foreign` (`lang_id`),
  CONSTRAINT `pages_blade_id_foreign` FOREIGN KEY (`blade_id`) REFERENCES `blades` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_parent_page_foreign` FOREIGN KEY (`parent_page`) REFERENCES `pages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_translation_of_foreign` FOREIGN KEY (`translation_of`) REFERENCES `pages` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.pages: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `image`, `breadcrumb_image`, `is_main`, `blade_id`, `category_id`, `translation_of`, `parent_page`, `lang_id`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'TÜME\'nin Parçası Ol', 'tumenin-parcasi-ol', '<p>Şirketimizin &nbsp;Tarım Teknolojileri Kümelenmesi içerisinde yer almak için yada&nbsp;Tarım Teknolojileri Kümelenmesi hakkında bilgi almak için Aşağıdaki formu doldurarak bizlere ulaşabilirsiniz.</p>', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 1, '2025-09-17 00:14:59', '2025-09-17 00:15:53', NULL);

-- tablo yapısı dökülüyor tumevakfi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.password_reset_tokens: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_label_unique` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.permissions: ~26 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
	(1, 'Özel Menüler', 'ozel-menuler', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(2, 'Kullanıcılar', 'kullanicilar', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(3, 'Roller', 'roller', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(4, 'Yetkiler', 'yetkiler', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(5, 'İzinler', 'izinler', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(6, 'Yetki İzinleri', 'yetki-izinleri', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(7, 'Ayarlar', 'ayarlar', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(8, 'Blade', 'blade', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(9, 'Dil', 'dil', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(10, 'Kategori', 'kategori', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(11, 'Sayfa', 'sayfa', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(12, 'Slider', 'slider', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(13, 'Galeri', 'galeri', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(14, 'Referanslar', 'referanslar', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(15, 'Sertifikalar', 'sertifikalar', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(16, 'Basın Kiti', 'basin-kiti', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(17, 'Popup', 'popup', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(18, 'Seo', 'seo', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(19, 'İletişim', 'iletisim', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(20, 'Medya', 'medya', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(21, 'İletişim Formları', 'iletisim-formlari', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(22, 'Markalarımız', 'markalarimiz', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(23, 'Reklam Kampanyaları', 'reklam-kampanyalari', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(24, 'Özel Menu Ayarları', 'ozel-menu-ayarlari', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(25, 'SSS', 'sss', '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(26, 'Anasayfa Yönetimi', 'anasayfa-yonetimi', '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.popups
CREATE TABLE IF NOT EXISTS `popups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.popups: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.press_kits
CREATE TABLE IF NOT EXISTS `press_kits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` bigint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `press_kits_lang_id_foreign` (`lang_id`),
  CONSTRAINT `press_kits_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.press_kits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.references
CREATE TABLE IF NOT EXISTS `references` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `lang_id` bigint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `references_lang_id_foreign` (`lang_id`),
  CONSTRAINT `references_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.references: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.reviews_images
CREATE TABLE IF NOT EXISTS `reviews_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_images_review_id_foreign` (`review_id`),
  CONSTRAINT `reviews_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `guest_reviews` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.reviews_images: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.reviews_images_temps
CREATE TABLE IF NOT EXISTS `reviews_images_temps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `temp_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.reviews_images_temps: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.roles: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'super-admin', '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.role_permissions
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `permission_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_permissions_role_id_foreign` (`role_id`),
  KEY `role_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.role_permissions: ~25 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(2, 1, 2, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(3, 1, 3, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(4, 1, 4, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(5, 1, 5, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(6, 1, 6, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(7, 1, 7, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(8, 1, 8, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(9, 1, 9, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(10, 1, 10, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(11, 1, 11, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(12, 1, 12, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(13, 1, 13, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(14, 1, 14, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(15, 1, 15, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(16, 1, 16, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(17, 1, 17, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(18, 1, 18, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(19, 1, 19, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(20, 1, 20, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(21, 1, 21, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(22, 1, 22, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(23, 1, 23, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(24, 1, 24, '2025-09-16 17:38:30', '2025-09-16 17:38:30'),
	(25, 1, 25, '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_foreign` (`user_id`),
  KEY `role_users_role_id_foreign` (`role_id`),
  CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.role_users: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.seos
CREATE TABLE IF NOT EXISTS `seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical` bigint unsigned NOT NULL,
  `page_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seos_canonical_foreign` (`canonical`),
  KEY `seos_page_id_foreign` (`page_id`),
  CONSTRAINT `seos_canonical_foreign` FOREIGN KEY (`canonical`) REFERENCES `pages` (`id`),
  CONSTRAINT `seos_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.seos: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.sessions: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('PTYPmOS4YMt28R6p7iyQmz7kXrOtCGi08FDAVP6y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.22.1 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkEwNHZLNGlNbWY2SWRRbXNZejVMRVpnYjMyM3NxekJIRktNNGhyeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vdC1tZS12YWtmLXBhbmVsLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1758067183),
	('Q36S0YLYa6pMha5WsK6MUkw0qa5SC9rysw7tA550', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUHE1Vm9wUEFIbmpVU0ZndDg3ejhycklYUHNETXdjZDQwdjVUV1dkUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vdC1tZS12YWtmLXBhbmVsLnRlc3QvY21zL2NvbnRhY3QtZm9ybXMvZGVsZXRlZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1758074562);

-- tablo yapısı dökülüyor tumevakfi.site_settings
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_code` longtext COLLATE utf8mb4_unicode_ci,
  `header_code` longtext COLLATE utf8mb4_unicode_ci,
  `footer_code` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.site_settings: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `site_settings` (`id`, `site_name`, `logo`, `favicon`, `footer_logo`, `store_link`, `seo_title`, `seo_description`, `head_code`, `header_code`, `footer_code`, `created_at`, `updated_at`) VALUES
	(1, 'Tüme Vakfı', 'nophoto.png', 'nophoto.png', 'nophoto.png', NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-16 17:38:30', '2025-09-17 01:26:24');

-- tablo yapısı dökülüyor tumevakfi.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `hit` int DEFAULT '0',
  `lang_id` bigint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_lang_id_foreign` (`lang_id`),
  CONSTRAINT `sliders_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.sliders: ~17 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `mobile_image`, `url`, `published`, `hit`, `lang_id`, `created_at`, `updated_at`) VALUES
	(6, 'Afara', 'Tarım Robotu', 'afara.png', NULL, NULL, 1, 5, NULL, '2025-09-16 21:14:32', '2025-09-16 21:19:07'),
	(7, 'Agrovisio', 'Tarımda Uzaktan Algılama', 'agrovisio.png', NULL, NULL, 1, 6, NULL, '2025-09-16 21:14:55', '2025-09-16 21:19:08'),
	(8, 'Livzym', 'Hassas Fermantasyon Biyoteknoloji', 'livzym.png', NULL, NULL, 1, 7, NULL, '2025-09-16 21:15:22', '2025-09-16 21:19:14'),
	(9, 'Cowealthy', 'Sürü Yönetim Sistemi', 'cowealthy.png', NULL, NULL, 1, 8, NULL, '2025-09-16 21:15:47', '2025-09-16 21:19:08'),
	(10, 'Tempa', 'Otonom Yem Merkezi', 'tempa.png', NULL, NULL, 1, 9, NULL, '2025-09-16 21:16:05', '2025-09-16 21:19:18'),
	(11, 'Mamamix', 'Küçükbaş Besleme Sistemi', 'mamamix.png', NULL, NULL, 1, 10, NULL, '2025-09-16 21:16:28', '2025-09-16 21:19:15'),
	(12, 'Itech', 'Otonom Yem İtme Sistemi', 'itech.png', NULL, NULL, 1, 11, NULL, '2025-09-16 21:16:45', '2025-09-16 21:19:11'),
	(13, 'Itech', 'Buzğı Besleme Sistemi', 'itech.png', NULL, NULL, 1, 12, NULL, '2025-09-16 21:17:07', '2025-09-16 21:19:14'),
	(16, 'Mat', 'Filtreleme Teknolojileri', 'mat.png', NULL, NULL, 1, 15, NULL, '2025-09-16 21:17:57', '2025-09-16 21:19:17'),
	(17, 'Most', 'Akıllı Perde', 'most.png', NULL, NULL, 1, 16, NULL, '2025-09-16 21:18:14', '2025-09-16 21:19:17'),
	(18, 'LiyoLife', 'Freeze Dryer Sistemleri', 'liyolife.png', NULL, NULL, 1, 17, NULL, '2025-09-16 21:18:31', '2025-09-16 21:19:15'),
	(19, 'Eys', 'Sıfır Atık ve Geri Dönüşüm Sistemleri', 'eys.png', NULL, NULL, 1, 14, NULL, '2025-09-16 21:20:19', '2025-09-16 21:20:22'),
	(24, 'Dost Tarım Teknolojileri', 'Hayvan Takip ve Sürü Yönetim Sistemi', 'dost-tarim-teknolojileri-9z8me.png', NULL, NULL, 1, 1, NULL, '2025-09-16 21:32:58', '2025-09-16 21:33:20'),
	(25, 'Dost Tarım Teknolojileri', 'Otonom Görüntü İşleme', 'dost-tarim-teknolojileri-fslvs.png', NULL, NULL, 1, 2, NULL, '2025-09-16 21:33:13', '2025-09-16 21:33:20'),
	(26, 'Dost Tarım Teknolojileri', 'Otonom İlaçlama Sistemi', 'dost-tarim-teknolojileri-1lior.png', NULL, NULL, 1, 3, NULL, '2025-09-16 21:33:50', '2025-09-16 21:34:36'),
	(27, 'Dost Tarım Teknolojileri', 'Otonom Hasat Sistemi', 'dost-tarim-teknolojileri-5mgxn.png', NULL, NULL, 1, 4, NULL, '2025-09-16 21:34:10', '2025-09-16 21:34:36'),
	(29, 'Dost Tarım Teknolojileri', 'Otonom Süt Sağım Robotu', 'dost-tarim-teknolojileri-nqdyw.png', NULL, NULL, 1, 13, NULL, '2025-09-16 21:35:07', '2025-09-16 21:35:10');

-- tablo yapısı dökülüyor tumevakfi.social_media
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contacts_id` bigint unsigned NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `threads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reddit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_contacts_id_foreign` (`contacts_id`),
  CONSTRAINT `social_media_contacts_id_foreign` FOREIGN KEY (`contacts_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.social_media: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.special_categories
CREATE TABLE IF NOT EXISTS `special_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `special_categories_name_unique` (`name`),
  KEY `special_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `special_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.special_categories: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor tumevakfi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.users: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Bülent ERCAN', 'info@cdrsoft.com.tr', NULL, '$2y$12$ISMEIqHADxNRwD0cNX/Nc.IU/Neb5IdiuexILWxCj6Z8MFEzfxXQ.', NULL, '2025-09-16 17:38:30', '2025-09-16 17:38:30');

-- tablo yapısı dökülüyor tumevakfi.user_visits
CREATE TABLE IF NOT EXISTS `user_visits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `visited_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_visits_ip_address_visited_date_index` (`ip_address`,`visited_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.user_visits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `user_visits` (`id`, `ip_address`, `user_agent`, `visited_date`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-16', '2025-09-16 17:38:39', '2025-09-16 17:38:39'),
	(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-09-17', '2025-09-16 21:00:44', '2025-09-16 21:00:44');

-- tablo yapısı dökülüyor tumevakfi.visited_user_calls
CREATE TABLE IF NOT EXISTS `visited_user_calls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- tumevakfi.visited_user_calls: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
