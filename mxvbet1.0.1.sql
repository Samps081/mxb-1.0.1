-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14/04/2024 às 04:11
-- Versão do servidor: 8.0.35-0ubuntu0.22.04.1
-- Versão do PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `yourbetdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `inviter` int UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT '0.00',
  `commission_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposited` tinyint DEFAULT '0',
  `deposited_amount` decimal(10,2) DEFAULT '0.00',
  `losses` bigint DEFAULT '0',
  `losses_amount` decimal(10,2) DEFAULT '0.00',
  `commission_paid` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(12, NULL, '01HN3AKDHVEN6TQ36QF8B0RD5G.png', 'home', '...', '2024-01-26 13:45:43', '2024-01-26 13:45:43'),
(13, NULL, '01HN3AM094CHA78JMNA1WFJQ48.png', 'home', '....', '2024-01-26 13:46:03', '2024-01-26 13:46:03'),
(8, '#', '01HTQM5GCD8AXK1YG2AQEJR8HH.webp', 'carousel', '...', '2024-01-13 18:41:09', '2024-04-05 14:16:11'),
(14, NULL, '01HN3ANKG0HVN2Z6XKN93Z4ZH9.png', 'home', '...', '2024-01-26 13:46:55', '2024-01-26 13:46:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Todos', 'All Games', 'CqzJJUxuBxOpzWr3LBUhTkyIQIbKj8-metacmtQZDJIQlFKeXBtV1Z3YllBSUtUaGFCQnBNMmljLW1ldGFZM0poYzJndE1pNXpkbWM9LS5zdmc=-.svg', 'todos', '2023-11-13 14:59:07', '2023-12-24 12:13:59'),
(17, 'Slots', 'Slots', 'gMgeoD5NSZ6gcKS98j9TEu8UpFfiaP-metac2xvdHMuc3Zn-.svg', 'slots', '2023-12-24 12:06:46', '2024-01-29 11:22:25'),
(18, 'Cartas', 'Cartas', '1oF9CBh8saCE5H5fLa5tcV5SDAK92i-metaY2FydGFzLnN2Zw==-.svg', 'cartas', '2023-12-24 12:10:01', '2023-12-24 12:10:01'),
(19, 'Ao vivo', 'Cassino ao vivo', 'YpXl5K6fg1qFTtSEOAACvVvRIocx7X-metaY3JvdXBpZXItc3ZncmVwby1jb20uc3Zn-.svg', 'ao-vivo', '2023-12-24 12:12:36', '2023-12-24 12:13:44'),
(20, 'Popular', 'Popular', 'BhF20LnYA2fnh6vapB0WAGz0KtjM0C-metaZmlyZS5zdmc=-.svg', 'popular', '2023-12-24 12:19:42', '2024-01-29 11:22:41'),
(21, 'Roletas', 'Roletas', 'FNqp04pyxloiEZ1bkKR9jLBM8UykEu-metaY2FzaW5vLXJvdWxldHRlLXN2Z3JlcG8tY29tLnN2Zw==-.svg', 'roletas', '2023-12-24 20:03:48', '2023-12-24 20:03:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `category_game`
--

INSERT INTO `category_game` (`category_id`, `game_id`) VALUES
(1, 631),
(17, 631),
(1, 634),
(17, 632),
(1, 632),
(17, 633),
(17, 634),
(1, 633),
(17, 635),
(1, 635),
(17, 636),
(1, 636),
(17, 637),
(1, 637),
(17, 638),
(1, 638),
(17, 639),
(17, 640),
(1, 640),
(17, 641),
(1, 641),
(1, 639),
(17, 642),
(1, 642),
(19, 1520),
(19, 1457),
(19, 1444),
(19, 1449),
(19, 1514),
(17, 1380),
(20, 6709),
(1, 6709),
(19, 6925),
(19, 7300),
(17, 8680),
(17, 12035),
(17, 8728),
(17, 8738),
(19, 8931),
(19, 10395),
(19, 10396),
(19, 10397),
(19, 10398),
(19, 10399),
(19, 10400),
(19, 10401),
(19, 10402),
(19, 10403),
(19, 10404);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secundary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#24262B',
  `carousel_banners` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '#1E2024',
  `sidebar_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navtop_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_menu_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_primary_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_radius` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.25rem',
  `custom_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whastapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#1da639', '#03ad4022', '#0db849', '#3b3b3b', '#c9c9c9', '#676767', '#191A1E', '#ffffff', '#98A7B5', '#656E78', '#4D565E', '#24262B', '#e8e8e8', '#24262B', '#bdbdbd', '#1E2024', '#ffffff', '#191A1E', '#d8d8de', '#24262B', '#828282', '#24262B', '#dedede', '#1E2024', '#919191', '#1E2024', '#ababab', '#1E2024', '.25rem', NULL, NULL, NULL, NULL, '2024-01-01 14:36:03', '2024-03-30 22:29:45', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `withdrawal_id` int UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int UNSIGNED NOT NULL,
  `game_server_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `technology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_lobby` tinyint NOT NULL DEFAULT '0',
  `is_mobile` tinyint NOT NULL DEFAULT '0',
  `has_freespins` tinyint NOT NULL DEFAULT '0',
  `has_tables` tinyint NOT NULL DEFAULT '0',
  `only_demo` tinyint DEFAULT '0',
  `rtp` bigint NOT NULL COMMENT 'Controle de RTP em porcentagem',
  `distribution` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'O nome do provedor',
  `views` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `show_home` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(4627, 21, NULL, 'bgtv-lg-baccarat', 'Baccarat', 'bgtv-lg-baccarat', 'default', NULL, '01HQJSSF07HGATNNJ5F8TK75GC.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 1, '2024-02-04 12:07:09', '2024-03-16 13:04:45'),
(4622, 35, NULL, 'pgs-cruiseroyale', 'Cruise Royale', 'pgs-cruiseroyale', 'default', NULL, 'salsa/Cruise Royale.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4623, 35, NULL, 'pgs-ultimatestriker', 'Ultimate Striker', 'pgs-ultimatestriker', 'default', NULL, 'salsa/Ultimate Striker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4620, 34, NULL, 'pgs-slot-fruitycandy', 'Fruity Candy', 'pgs-slot-fruitycandy', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-03-25 21:19:08'),
(4618, 35, NULL, 'pgs-slot-luckycloverlady', 'Lucky Clover Lady', 'pgs-slot-luckycloverlady', 'default', NULL, 'salsa/Lucky Clover Lady.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4617, 35, NULL, 'pgs-slot-supergolfdrive', 'Super Golf Drive', 'pgs-slot-supergolfdrive', 'default', NULL, 'salsa/Super Golf Drive.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4616, 35, NULL, 'pgs-slot-mysticalspirits', 'Mystical Spirits', 'pgs-slot-mysticalspirits', 'default', NULL, 'salsa/Mystical Spirits.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4615, 35, NULL, 'pgs-slot-luckypiggyv2', 'Lucky Piggy', 'pgs-slot-luckypiggyv2', 'default', NULL, 'salsa/Lucky Piggy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4614, 35, NULL, 'pgs-slot-SongkranSplash', 'Songkran Splash', 'pgs-slot-SongkranSplash', 'default', NULL, 'salsa/Songkran Splash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4613, 35, NULL, 'pgs-slot-BakeryBonanza', 'Bakery Bonanza', 'pgs-slot-BakeryBonanza', 'default', NULL, 'salsa/Bakery Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4612, 35, NULL, 'pgs-slot-HawaiianTiki', 'Hawaiian Tiki', 'pgs-slot-HawaiianTiki', 'default', NULL, 'salsa/Hawaiian Tiki.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4610, 29, NULL, 'pgs-slot-FortuneRabbit', 'Fortune Rabbit', 'pgs-slot-FortuneRabbit', 'default', NULL, '01HQKA30WWPC6AX03P9PJDD6NR.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 111, 1, 0, '2024-02-04 12:07:08', '2024-04-13 20:51:53'),
(4611, 35, NULL, 'pgs-slot-RavePartyFever', 'Rave Party Fever', 'pgs-slot-RavePartyFever', 'default', NULL, 'salsa/Rave Party Fever.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4609, 35, NULL, 'pgs-slot-MidasFortune', 'Midas Fortune', 'pgs-slot-MidasFortune', 'default', NULL, 'salsa/Midas Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4608, 35, NULL, 'pgs-slot-AsgardianRising', 'Asgardian Rising', 'pgs-slot-AsgardianRising', 'default', NULL, 'salsa/Asgardian Rising.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4607, 35, NULL, 'pgs-slot-DinerDelights', 'Diner Delights', 'pgs-slot-DinerDelights', 'default', NULL, 'salsa/Diner Delights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4605, 35, NULL, 'pgs-slot-LegendOfPerseus', 'Legend of Perseus', 'pgs-slot-LegendOfPerseus', 'default', NULL, 'salsa/Legend of Perseus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4606, 35, NULL, 'pgs-slot-WildCoaster', 'Wild Coaster', 'pgs-slot-WildCoaster', 'default', NULL, 'salsa/Wild Coaster.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4604, 35, NULL, 'pgs-slot-AlchemyGold', 'Alchemy Gold', 'pgs-slot-AlchemyGold', 'default', NULL, 'salsa/Alchemy Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4603, 35, NULL, 'pgs-slot-TotemWonders', 'Totem Wonders', 'pgs-slot-TotemWonders', 'default', NULL, 'salsa/Totem Wonders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4602, 35, NULL, 'pgs-slot-wildbountyS', 'Wild Bounty Showdown', 'pgs-slot-wildbountyS', 'default', NULL, 'salsa/Wild Bounty Showdown.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4600, 35, NULL, 'pgs-slot-winwinFishPC', 'Win Win Fish Prawn Crab', 'pgs-slot-winwinFishPC', 'default', NULL, 'salsa/Win Win Fish Prawn Crab.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4601, 35, NULL, 'pgs-slot-prosperityfortuneT', 'Prosperity Fortune Tree', 'pgs-slot-prosperityfortuneT', 'default', NULL, 'salsa/Prosperity Fortune Tree.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4599, 35, NULL, 'pgs-slot-battlegroundRoyale', 'Battleground Royale', 'pgs-slot-battlegroundRoyale', 'default', NULL, 'salsa/Battleground Royale.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4598, 35, NULL, 'pgs-slot-roosterRumble', 'Rooster Rumble', 'pgs-slot-roosterRumble', 'default', NULL, 'salsa/Rooster Rumble.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4597, 35, NULL, 'pgs-slot-butterflyBlossom', 'Butterfly Blossom', 'pgs-slot-butterflyBlossom', 'default', NULL, 'salsa/Butterfly Blossom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4593, 35, NULL, 'pgs-slot-orientalprosperity', 'Oriental Prosperity', 'pgs-slot-orientalprosperity', 'default', NULL, 'salsa/Oriental Prosperity.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4594, 35, NULL, 'pgs-slot-garudaGems', 'Garuda Gems', 'pgs-slot-garudaGems', 'default', NULL, 'salsa/Garuda Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4592, 35, NULL, 'pgs-slot-maskCarnival', 'Mask Carnival', 'pgs-slot-maskCarnival', 'default', NULL, 'salsa/Mask Carnival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4591, 35, NULL, 'pgs-slot-cocktailnite', 'Cocktail Nights', 'pgs-slot-cocktailnite', 'default', NULL, 'salsa/Cocktail Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4590, 35, NULL, 'pgs-slot-emojiriches', 'Emoji Riches', 'pgs-slot-emojiriches', 'default', NULL, 'salsa/Emoji Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4588, 35, NULL, 'pgs-slot-lMonkeyKing', 'Legendary Monkey King', 'pgs-slot-lMonkeyKing', 'default', NULL, 'salsa/Legendary Monkey King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4589, 35, NULL, 'pgs-slot-spiritedWonders', 'Spirited Wonders', 'pgs-slot-spiritedWonders', 'default', NULL, 'salsa/Spirited Wonders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4587, 35, NULL, 'pgs-slot-buffaloWin', 'Buffalo Win', 'pgs-slot-buffaloWin', 'default', NULL, 'salsa/Buffalo Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4586, 35, NULL, 'pgs-slot-supermarketSpree', 'Supermarket Spree', 'pgs-slot-supermarketSpree', 'default', NULL, 'salsa/Supermarket Spree.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4584, 35, NULL, 'pgs-slot-mermaidRiches', 'Mermaid Riches', 'pgs-slot-mermaidRiches', 'default', NULL, 'salsa/Mermaid Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4579, 35, NULL, 'pgs-slot-cryptoGold', 'Crypto Gold', 'pgs-slot-cryptoGold', 'default', NULL, 'salsa/Crypto Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4583, 35, NULL, 'pgs-slot-jurassicKingdom', 'Jurassic Kingdom', 'pgs-slot-jurassicKingdom', 'default', NULL, 'salsa/Jurassic Kingdom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4577, 35, NULL, 'pgs-slot-wildBandito', 'Wild Bandito', 'pgs-slot-wildBandito', 'default', NULL, 'salsa/Wild Bandito.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4576, 35, NULL, 'pgs-slot-majesticTreasures', 'Majestic Treasures', 'pgs-slot-majesticTreasures', 'default', NULL, 'salsa/Majestic Treasures.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4575, 35, NULL, 'pgs-slot-candyBonanza', 'Candy Bonanza', 'pgs-slot-candyBonanza', 'default', NULL, 'salsa/Candy Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4574, 35, NULL, 'pgs-slot-baliVacation', 'Bali Vacation', 'pgs-slot-baliVacation', 'default', NULL, 'salsa/Bali Vacation.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4572, 35, NULL, 'pgs-slot-operaDynasty', 'Opera Dynasty', 'pgs-slot-operaDynasty', 'default', NULL, 'salsa/Opera Dynasty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4573, 29, NULL, 'pgs-slot-fortuneOx', 'Fortune Ox', 'pgs-slot-fortuneOx', 'default', NULL, '01HQK9ZQNZSZMDQ9645F7HGAYP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 14, 1, 0, '2024-02-04 12:07:08', '2024-04-12 18:57:49'),
(4569, 35, NULL, 'pgs-slot-luckyNeko', 'Lucky Neko', 'pgs-slot-luckyNeko', 'default', NULL, 'salsa/Lucky Neko.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4566, 35, NULL, 'pgs-slot-muayThaiChampion', 'Muay Thai Champion', 'pgs-slot-muayThaiChampion', 'default', NULL, 'salsa/Muay Thai Champion.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4564, 35, NULL, 'pgs-slot-thaiRiverWonders', 'Thai River Wonders', 'pgs-slot-thaiRiverWonders', 'default', NULL, 'salsa/Thai River Wonders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4563, 35, NULL, 'pgs-slot-circusDelight', 'Circus Delight', 'pgs-slot-circusDelight', 'default', NULL, 'salsa/Circus Delight.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4559, 35, NULL, 'pgs-slot-wildfFireworks', 'Wild Fireworks', 'pgs-slot-wildfFireworks', 'default', NULL, 'salsa/Wild Fireworks.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4558, 35, NULL, 'pgs-slot-dreamsmacau', 'Dreams of Macau', 'pgs-slot-dreamsmacau', 'default', NULL, 'salsa/Dreams of Macau.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4557, 35, NULL, 'pgs-slot-phoenixrises', 'Phoenix Rises', 'pgs-slot-phoenixrises', 'default', NULL, 'salsa/Phoenix Rises.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4554, 35, NULL, 'pgs-slot-ganeshafortune', 'Ganesha Fortune', 'pgs-slot-ganeshafortune', 'default', NULL, 'salsa/Ganesha Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4556, 35, NULL, 'pgs-slot-mahjongways2', 'Mahjong Ways 2', 'pgs-slot-mahjongways2', 'default', NULL, 'salsa/Mahjong Ways 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4553, 35, NULL, 'pgs-slot-bikiniparadise', 'Bikini Paradise', 'pgs-slot-bikiniparadise', 'default', NULL, 'salsa/Bikini Paradise.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4551, 35, NULL, 'pgs-slot-shaolinsoccer', 'Shaolin Soccer', 'pgs-slot-shaolinsoccer', 'default', NULL, 'salsa/Shaolin Soccer.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4550, 35, NULL, 'pgs-slot-gemsaviourconquest', 'Gem Saviour Conquest', 'pgs-slot-gemsaviourconquest', 'default', NULL, 'salsa/Gem Saviour Conquest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4549, 35, NULL, 'pgs-slot-reelLove', 'Reel Love', 'pgs-slot-reelLove', 'default', NULL, 'salsa/Reel Love.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4548, 29, NULL, 'pgs-slot-fortuneMouse', 'Fortune Mouse', 'pgs-slot-fortuneMouse', 'default', NULL, '01HQK9Y9G7TS7E1RD48KKZJ2EC.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 9, 1, 0, '2024-02-04 12:07:08', '2024-04-09 17:26:56'),
(4546, 35, NULL, 'pgs-slot-mahjongWays', 'Mahjong Ways', 'pgs-slot-mahjongWays', 'default', NULL, 'salsa/Mahjong Ways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4547, 35, NULL, 'pgs-slot-dragonHatch', 'Dragon Hatch', 'pgs-slot-dragonHatch', 'default', NULL, 'salsa/Dragon Hatch.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 13:10:08'),
(4545, 35, NULL, 'pgs-slot-dragonTigerLuck', 'Dragon Tiger Luck', 'pgs-slot-dragonTigerLuck', 'default', NULL, 'salsa/Dragon Tiger Luck.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 12:48:29'),
(4543, 29, NULL, 'pgs-slot-flirtingScholar', 'Flirting Scholar', 'pgs-slot-flirtingScholar', 'default', NULL, '01HQK92H6G14FF0C9QETXXGVYT.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 15:10:03'),
(4541, 29, NULL, 'pgs-slot-ganeshaGold', 'Ganesha Gold', 'pgs-slot-ganeshaGold', 'default', NULL, '01HQK747X9HYBBBQ8A1ES2H15C.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-03-05 22:10:02'),
(4538, 29, NULL, 'pgs-slot-DoubleFortune', 'Double Fortune', 'pgs-slot-DoubleFortune', 'default', NULL, '01HQK8NS01QJCTHJC4X99B6XJ0.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 7, 1, 0, '2024-02-04 12:07:08', '2024-04-12 18:59:27'),
(4537, 35, NULL, 'pgs-slot-JungleDelight', 'Jungle Delight', 'pgs-slot-JungleDelight', 'default', NULL, 'salsa/Jungle Delight.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4534, 29, NULL, 'pgs-slot-PiggyGold', 'Piggy Gold', 'pgs-slot-PiggyGold', 'default', NULL, '01HQK72QJ74G4K76JFE21K595V.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-03-23 01:29:15'),
(4533, 35, NULL, 'pgs-slot-GemSaviourSword', 'Gem Saviour Sword', 'pgs-slot-GemSaviourSword', 'default', NULL, 'salsa/Gem Saviour Sword.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4529, 35, NULL, 'pgs-slot-ProsperityLion', 'Prosperity Lion', 'pgs-slot-ProsperityLion', 'default', NULL, 'salsa/Prosperity Lion.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4530, 35, NULL, 'pgs-slot-HipHopPanda', 'Hip Hop Panda', 'pgs-slot-HipHopPanda', 'default', NULL, 'salsa/Hip Hop Panda.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4526, 35, NULL, 'pgs-slot-DragonLegend', 'Dragon Legend', 'pgs-slot-DragonLegend', 'default', NULL, 'salsa/Dragon Legend.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 12:48:35'),
(4524, 35, NULL, 'pgs-slot-HoodvsWolf', 'Hood vs Wolf', 'pgs-slot-HoodvsWolf', 'default', NULL, 'salsa/Hood vs Wolf.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4522, 29, NULL, 'pgs-slot-GemSaviour', 'Gem Saviour', 'pgs-slot-GemSaviour', 'default', NULL, '01HQK71NP2CBM9MBT35SBSTJ4T.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 4, 1, 0, '2024-02-04 12:07:08', '2024-04-09 16:03:48'),
(4520, 35, NULL, 'pgs-slot-Medusa', 'Medusa', 'pgs-slot-Medusa', 'default', NULL, 'salsa/Medusa.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4521, 35, NULL, 'pgs-slot-PlushieFrenzy', 'Plushie Frenzy', 'pgs-slot-PlushieFrenzy', 'default', NULL, 'salsa/Plushie Frenzy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:18'),
(4517, 35, NULL, 'pgs-slot-MedusaII', 'Medusa II', 'pgs-slot-MedusaII', 'default', NULL, 'salsa/Medusa II.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4516, 35, NULL, 'pgs-slot-WinWinWon', 'Win Win Won', 'pgs-slot-WinWinWon', 'default', NULL, 'salsa/Win Win Won.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4515, 35, NULL, 'pgs-slot-FortuneGods', 'Fortune Gods', 'pgs-slot-FortuneGods', 'default', NULL, 'salsa/Fortune Gods.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4514, 35, NULL, 'pgs-slot-honeyTrapOfDiaoChan', 'Honey Trap of Diao Chan', 'pgs-slot-honeyTrapOfDiaoChan', 'default', NULL, 'salsa/Honey Trap of Diao Chan.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4513, 35, NULL, 'pgs-slot-candyburst', 'Candy Burst', 'pgs-slot-candyburst', 'default', NULL, 'salsa/Candy Burst.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4512, 35, NULL, 'pgs-slot-leprechaunRiches', 'Leprechaun Riches', 'pgs-slot-leprechaunRiches', 'default', NULL, 'salsa/Leprechaun Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4391, 35, NULL, 'boo-slot-winnersCup', 'Winners Cup', 'boo-slot-winnersCup', 'default', NULL, '01HQJS35V3GAYBAX5D7KYD3BWP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:19:00'),
(4511, 29, NULL, 'pgs-slot-FortuneTiger', 'Fortune Tiger', 'pgs-slot-FortuneTiger', 'slot', NULL, '01HQK62QBA7HDK946GR548W22F.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 95, 1, 0, '2024-02-04 12:07:08', '2024-04-13 07:36:39'),
(4367, 26, NULL, 'boo-slot-rudolphsRide', 'Rudophs Ride', 'boo-slot-rudolphsRide', 'default', NULL, '01HQJSD80E65P3RP7VPJ5EX6Y9.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:24:30'),
(4348, 35, NULL, 'gaming7777-tb-money-tree', 'Money Tree', 'gaming7777-tb-money-tree', 'default', NULL, 'salsa/Money Tree.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4306, 35, NULL, 'gaming7777-tb-european-roulette', 'European Roulette', 'gaming7777-tb-european-roulette', 'default', NULL, 'salsa/European Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4273, 35, NULL, '3o-slot-bookOfSunMultichance', 'Book of Sun: Multichance', '3o-slot-bookOfSunMultichance', 'default', NULL, '01HQJRA16S5RBT6DCPZGGA1KGN.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:05:16'),
(4272, 35, NULL, '3o-slot-scarabRiches', 'Scarab Riches', '3o-slot-scarabRiches', 'default', NULL, 'salsa/Scarab Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4266, 35, NULL, '3o-slot-moonSisters', 'Moon Sisters', '3o-slot-moonSisters', 'default', NULL, 'salsa/Moon Sisters.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4267, 35, NULL, '3o-slot-bookOfSunChoice', 'Book of Sun: Choice', '3o-slot-bookOfSunChoice', 'default', NULL, '01HQJR8XQED8FMRPZFN5DWZ0SJ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:04:40'),
(4265, 35, NULL, '3o-slot-aztecSun', 'Aztec Sun', '3o-slot-aztecSun', 'default', NULL, 'salsa/Aztec Sun.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4263, 35, NULL, '3o-slot-buddhaFortune', 'Buddha Fortune', '3o-slot-buddhaFortune', 'default', NULL, 'salsa/Buddha Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4264, 35, NULL, '3o-slot-superMarble', 'Super Marble', '3o-slot-superMarble', 'default', NULL, 'salsa/Super Marble.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4262, 35, NULL, '3o-slot-15dragonPearls', '15 Dragon Pearls', '3o-slot-15dragonPearls', 'default', NULL, 'salsa/15 Dragon Pearls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 13:06:46'),
(4260, 22, NULL, '3o-slot-scarabTemple', 'Scarab Temple', '3o-slot-scarabTemple', 'default', NULL, 'salsa/Scarab Temple.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 12:52:36'),
(4261, 35, NULL, '3o-slot-thunderOfOlympus', 'Thunder of Olympus', '3o-slot-thunderOfOlympus', 'default', NULL, 'salsa/Thunder of Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4259, 35, NULL, '3o-slot-sunOfEgypt2', 'Sun of Egypt 2', '3o-slot-sunOfEgypt2', 'default', NULL, 'salsa/Sun of Egypt 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4257, 35, NULL, '3o-slot-3coins', '3 Coins', '3o-slot-3coins', 'default', NULL, 'salsa/3 Coins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4258, 35, NULL, '3o-slot-tigerStone', 'Eye of Gold', '3o-slot-tigerStone', 'default', NULL, 'salsa/Eye of Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4256, 35, NULL, '3o-slot-wolfSaga', 'Wolf Saga', '3o-slot-wolfSaga', 'default', NULL, 'salsa/Wolf Saga.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4253, 22, NULL, '3o-slot-magicBallMultichance', 'Magic Ball: Multichance', '3o-slot-magicBallMultichance', 'default', NULL, '01HQJS8AHBSMMVY0DAQJQ0FB37.webp', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-03-26 07:26:22'),
(4254, 35, NULL, '3o-slot-magicApple', 'Magic Apple', '3o-slot-magicApple', 'default', NULL, 'salsa/Magic Apple.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4251, 35, NULL, '3o-slot-hitTheGold', 'Hit the Gold!', '3o-slot-hitTheGold', 'default', NULL, 'salsa/Hit the Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4249, 35, NULL, '3o-slot-wukong', 'Wukong', '3o-slot-wukong', 'default', NULL, 'salsa/Wukong.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4250, 35, NULL, '3o-slot-scarabBoost', 'Scarab Boost', '3o-slot-scarabBoost', 'default', NULL, 'salsa/Scarab Boost.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4248, 35, NULL, '3o-slot-pearlDiver', 'Pearl Diver', '3o-slot-pearlDiver', 'default', NULL, 'salsa/Pearl Diver.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4246, 35, NULL, '3o-slot-wolfNight', 'Wolf Night', '3o-slot-wolfNight', 'default', NULL, 'salsa/Wolf Night.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4247, 35, NULL, '3o-slot-3coinsEgypt', '3 Coins: Egypt', '3o-slot-3coinsEgypt', 'default', NULL, '01HQJS620T5GMEWBHN62G2JCA9.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:20:34'),
(4245, 35, NULL, '3o-slot-tigerJungle', 'Tiger Jungle', '3o-slot-tigerJungle', 'default', NULL, 'salsa/Tiger Jungle.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4243, 35, NULL, '3o-slot-lordFortune2', 'Lord Fortune 2', '3o-slot-lordFortune2', 'default', NULL, 'salsa/Lord Fortune 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4244, 35, NULL, '3o-slot-bookOfWizard', 'Book of Wizard', '3o-slot-bookOfWizard', 'default', NULL, 'salsa/Book of Wizard.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4242, 35, NULL, '3o-slot-goldExpress', 'Gold Express', '3o-slot-goldExpress', 'default', NULL, 'salsa/Gold Express.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4241, 35, NULL, '3o-slot-candyBoom', 'Candy Boom', '3o-slot-candyBoom', 'default', NULL, 'salsa/Candy Boom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4240, 35, NULL, '3o-slot-blackWolf', 'Black Wolf', '3o-slot-blackWolf', 'default', NULL, 'salsa/Black Wolf.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4238, 35, NULL, '3o-slot-bookOfWizardCrystalChance', 'Book of Wizard: Crystal Chance', '3o-slot-bookOfWizardCrystalChance', 'default', NULL, '01HQJR7K23DKZTZKYQFS4A8ZHH.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 10:03:56'),
(4234, 35, NULL, '3o-slot-sunOfEgypt3', 'Sun of Egypt 3', '3o-slot-sunOfEgypt3', 'default', NULL, 'salsa/Sun of Egypt 3.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4232, 35, NULL, '3o-slot-magicApple2', 'Magic Apple 2', '3o-slot-magicApple2', 'default', NULL, 'salsa/Magic Apple 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4233, 35, NULL, '3o-slot-caishenWealth', 'Caishen Wealth', '3o-slot-caishenWealth', 'default', NULL, 'salsa/Caishen Wealth.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4231, 35, NULL, '3o-slot-eggsOfGold', 'Eggs of Gold', '3o-slot-eggsOfGold', 'default', NULL, 'salsa/Eggs of Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4230, 35, NULL, '3o-slot-lotusCharm', 'Lotus Charm', '3o-slot-lotusCharm', 'default', NULL, 'salsa/Lotus Charm.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4228, 35, NULL, '3o-slot-bigHeist', 'Big Heist', '3o-slot-bigHeist', 'default', NULL, 'salsa/Big Heist.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4229, 35, NULL, '3o-slot-aztecFire', 'Aztec Fire', '3o-slot-aztecFire', 'default', NULL, 'salsa/Aztec Fire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4227, 35, NULL, '3o-slot-greenChilli', 'Green Chilli', '3o-slot-greenChilli', 'default', NULL, 'salsa/Green Chilli.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4226, 35, NULL, '3o-slot-stickyPiggy', 'Sticky Piggy', '3o-slot-stickyPiggy', 'default', NULL, 'salsa/Sticky Piggy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4225, 35, NULL, '3o-slot-hitMoreGold', 'Hit more Gold!', '3o-slot-hitMoreGold', 'default', NULL, 'salsa/Hit more Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:16'),
(4224, 35, NULL, '3o-slot-rioGems', 'Rio Gems', '3o-slot-rioGems', 'default', NULL, 'salsa/Rio Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4223, 35, NULL, '3o-slot-goddessOfEgypt', 'Goddess of Egypt', '3o-slot-goddessOfEgypt', 'default', NULL, 'salsa/Goddess of Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4222, 35, NULL, '3o-slot-sunlightPrincess', 'Sunlight Princess', '3o-slot-sunlightPrincess', 'default', NULL, 'salsa/Sunlight Princess.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4221, 35, NULL, '3o-slot-dragonWealth', 'Dragon Wealth', '3o-slot-dragonWealth', 'default', NULL, 'salsa/Dragon Wealth.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:47:56'),
(4220, 35, NULL, '3o-slot-boomBoomGold', 'Boom! Boom! Gold!', '3o-slot-boomBoomGold', 'default', NULL, 'salsa/Boom! Boom! Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4218, 35, NULL, '3o-slot-yoHoGold', 'Yo-Ho Gold!', '3o-slot-yoHoGold', 'default', NULL, 'salsa/Yo-Ho Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4219, 35, NULL, '3o-slot-mayaSun', 'Maya Sun', '3o-slot-mayaSun', 'default', NULL, 'salsa/Maya Sun.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4217, 35, NULL, '3o-slot-egyptFire', 'Egypt Fire', '3o-slot-egyptFire', 'default', NULL, 'salsa/Egypt Fire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4215, 35, NULL, '3o-slot-grabTheGold', 'Grab the Gold!', '3o-slot-grabTheGold', 'default', NULL, 'salsa/Grab the Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4214, 35, NULL, '3o-slot-tigerGems', 'Tiger Gems', '3o-slot-tigerGems', 'default', NULL, 'salsa/Tiger Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4213, 35, NULL, '3o-slot-mummyPower', 'Mummy Power', '3o-slot-mummyPower', 'default', NULL, 'salsa/Mummy Power.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4211, 35, NULL, '3o-slot-forestSpirit', 'Forest Spirit', '3o-slot-forestSpirit', 'default', NULL, 'salsa/Forest Spirit.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4212, 35, NULL, '3o-slot-ladyFortune', 'Lady Fortune', '3o-slot-ladyFortune', 'default', NULL, 'salsa/Lady Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4210, 35, NULL, '3o-slot-greenChilli2', 'Green Chilli 2', '3o-slot-greenChilli2', 'default', NULL, 'salsa/Green Chilli 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4209, 35, NULL, '3o-slot-littleFarm', 'Little Farm', '3o-slot-littleFarm', 'default', NULL, 'salsa/Little Farm.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4208, 35, NULL, '3o-slot-blackWolf2', 'Black Wolf 2', '3o-slot-blackWolf2', 'default', NULL, 'salsa/Black Wolf 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4206, 35, NULL, '3o-slot-3hotChillies', '3 Hot Chillies', '3o-slot-3hotChillies', 'default', NULL, 'salsa/3 Hot Chillies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4207, 35, NULL, '3o-slot-777coins', '777 Coins', '3o-slot-777coins', 'default', NULL, 'salsa/777 Coins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4205, 35, NULL, '3o-slot-grabMoreGold', 'Grab more Gold!', '3o-slot-grabMoreGold', 'default', NULL, 'salsa/Grab more Gold!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4203, 35, NULL, '3o-slot-coinVolcano', 'Coin Volcano', '3o-slot-coinVolcano', 'default', NULL, 'salsa/Coin Volcano.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4196, 35, NULL, 'bs-slot-HotLucky7s', 'Hot Lucky 7', 'bs-slot-HotLucky7s', 'default', NULL, '01HQJS1G74RC3F48KBFXFSHARJ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:18:05'),
(4194, 25, NULL, 'bs-slot-MrVegas2BigMoneyTower', 'Mr. Vegas 2: Big Money Tower', 'bs-slot-MrVegas2BigMoneyTower', 'default', NULL, '01HQJRY8QNSYZ85GNYMMEBY1A6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:16:19'),
(4187, 25, NULL, 'bs-slot-captainsQuest-TIsland', 'Captains Quest: Treasure Island', 'bs-slot-captainsQuest-TIsland', 'default', NULL, '01HQJRRX45YWYG19W8JC4VQG3N.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:13:39'),
(4178, 35, NULL, 'bs-slot-alkemors', 'Alkemors Elementrs', 'bs-slot-alkemors', 'default', NULL, '01HQJS09JKFB5KZKSASB2RPB3Y.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:17:25'),
(4155, 35, NULL, 'bs-slot-faerieSpells', 'Faerie Spells', 'bs-slot-faerieSpells', 'default', NULL, 'salsa/Faerie Spells.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4147, 35, NULL, 'bs-tb-american-blackjack', 'American Blackjack', 'bs-tb-american-blackjack', 'default', NULL, 'salsa/American Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4127, 35, NULL, 'bs-slot-monster-pop', 'Monster Pop', 'bs-slot-monster-pop', 'default', NULL, 'salsa/Monster Pop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4135, 35, NULL, 'bs-tb-baccarat', 'Baccarat', 'bs-tb-baccarat', 'default', NULL, 'salsa/Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4104, 25, NULL, 'bs-slot-tigers-claw', 'Tigers Claw', 'bs-slot-tigers-claw', 'default', NULL, '01HQJKGD74DCEJKXAYDEPC3BGX.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:07:07', '2024-02-26 08:41:22'),
(4070, 25, NULL, 'bs-slot-more-gold-diggin', 'More Gold Digginl', 'bs-slot-more-gold-diggin', 'default', NULL, '01HQJRPH0TG7N2KBZC2K2BZ17T.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:12:05'),
(3999, 35, NULL, 'sms-slot-apollo', 'Apollo', 'sms-slot-apollo', 'default', NULL, 'salsa/Apollo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(4056, 25, NULL, 'bs-slot-rooks-revenge', 'Rook', 'bs-slot-rooks-revenge', 'default', NULL, '01HQJRCHMC5ZZ565NMBPT4FHYC.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:06:38'),
(3993, 31, NULL, 'sms-slot-bookofwin', 'BookOfWin', 'sms-slot-bookofwin', 'default', NULL, '01HQJR400TDEH07W4BXH9Q9NWM.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:01:58'),
(3973, 35, NULL, 'prag-BigBassHalloween', 'Big Bass Halloween', 'prag-BigBassHalloween', 'default', NULL, 'salsa/Big Bass Halloween.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3972, 35, NULL, 'prag-TwilightPrincess', 'Twilight Princess', 'prag-TwilightPrincess', 'default', NULL, 'salsa/Twilight Princess.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3970, 35, NULL, 'prag-GravityBonanza', 'Gravity Bonanza', 'prag-GravityBonanza', 'default', NULL, 'salsa/Gravity Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:07', '2024-03-26 04:51:03'),
(3971, 35, NULL, 'prag-DemonPots', 'Demon Pots', 'prag-DemonPots', 'default', NULL, 'salsa/Demon Pots.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3968, 35, NULL, 'prag-RainbowReels', 'Rainbow Reels', 'prag-RainbowReels', 'default', NULL, 'salsa/Rainbow Reels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3967, 35, NULL, 'prag-GoldOasis', 'Gold Oasis', 'prag-GoldOasis', 'default', NULL, 'salsa/Gold Oasis.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:03:00'),
(3960, 35, NULL, 'prag-FortunesofAztec', 'Fortunes of Aztec', 'prag-FortunesofAztec', 'default', NULL, 'salsa/Fortunes of Aztec.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3959, 35, NULL, 'prag-8GoldenDragonChallenge', '8 Golden Dragon Challenge', 'prag-8GoldenDragonChallenge', 'default', NULL, 'salsa/8 Golden Dragon Challenge.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:09:09'),
(3957, 35, NULL, 'prag-FrozenTropics', 'Frozen Tropics', 'prag-FrozenTropics', 'default', NULL, 'salsa/Frozen Tropics.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:01:56'),
(3958, 35, NULL, 'prag-CyclopsSmash', 'Cyclops Smash', 'prag-CyclopsSmash', 'default', NULL, 'salsa/Cyclops Smash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3956, 35, NULL, 'prag-BookTutMegaways', 'Book of Tut Megaways', 'prag-BookTutMegaways', 'default', NULL, 'salsa/Book of Tut Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3955, 35, NULL, 'prag-BigBassHoldSpinnerMegaways', 'Big Bass Hold & Spinner Megaways', 'prag-BigBassHoldSpinnerMegaways', 'default', NULL, 'salsa/Big Bass Hold & Spinner Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3954, 35, NULL, 'prag-CandyBlitz', 'Candy Blitz', 'prag-CandyBlitz', 'default', NULL, 'salsa/Candy Blitz.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3953, 35, NULL, 'prag-slot-ForgeofOlympus', 'Forge of Olympus', 'prag-slot-ForgeofOlympus', 'default', NULL, 'salsa/Forge of Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:02:17'),
(3952, 35, NULL, 'prag-slot-MustangTrail', 'Mustang Trail', 'prag-slot-MustangTrail', 'default', NULL, 'salsa/Mustang Trail.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3951, 35, NULL, 'prag-slot-PubKings', 'Pub Kings', 'prag-slot-PubKings', 'default', NULL, 'salsa/Pub Kings.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3950, 35, NULL, 'prag-slot-WisdomofAthena', 'Wisdom of Athena', 'prag-slot-WisdomofAthena', 'default', NULL, 'salsa/Wisdom of Athena.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:02:19'),
(3948, 35, NULL, 'prag-slot-DiamondCascade', 'Diamond Cascade', 'prag-slot-DiamondCascade', 'default', NULL, 'salsa/Diamond Cascade.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3947, 35, NULL, 'prag-slot-RocketBlastMegaways', 'Rocket Blast Megaways', 'prag-slot-RocketBlastMegaways', 'default', NULL, 'salsa/Rocket Blast Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3946, 35, NULL, 'prag-slot-PiggyBankers', 'Piggy Bankers', 'prag-slot-PiggyBankers', 'default', NULL, 'salsa/Piggy Bankers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3945, 35, NULL, 'prag-slot-TheHandofMidas', 'The Hand of Midas', 'prag-slot-TheHandofMidas', 'default', NULL, 'salsa/The Hand of Midas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:02:15'),
(3944, 35, NULL, 'prag-slot-BuffaloKingMegaways', 'Buffalo King Megaways', 'prag-slot-BuffaloKingMegaways', 'default', NULL, 'salsa/Buffalo King Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:02:14'),
(3943, 35, NULL, 'prag-slot-PowerofThorMegaways', 'Power of Thor Megaways', 'prag-slot-PowerofThorMegaways', 'default', NULL, 'salsa/Power of Thor Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3942, 35, NULL, 'prag-slot-GatesofOlympus', 'Gates of Olympus', 'prag-slot-GatesofOlympus', 'default', NULL, 'salsa/Gates of Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:01:45'),
(3940, 35, NULL, 'prag-slot-3BuzzingWilds', '3 Buzzing Wilds', 'prag-slot-3BuzzingWilds', 'default', NULL, '01HQJR0P2XJXC6NHGJ8S669ZMB.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 10:00:10'),
(3938, 35, NULL, 'prag-slot-BigBassAmazonXtreme', 'Big Bass Amazon Xtreme', 'prag-slot-BigBassAmazonXtreme', 'default', NULL, 'salsa/Big Bass Amazon Xtreme.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:01:59'),
(3937, 35, NULL, 'prag-slot-FloatingDragonDragonBoatFesti va', 'Floating Dragon - Dragon Boat Festival', 'prag-slot-FloatingDragonDragonBoatFesti va', 'default', NULL, '01HQJQZ89P9YS08GA7DWYYE31H.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:48:05'),
(3934, 35, NULL, 'prag-slot-BookoftheFallen', 'Book of the Fallen', 'prag-slot-BookoftheFallen', 'default', NULL, 'salsa/Book of the Fallen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3933, 35, NULL, 'prag-slot-BigBassBonanza', 'Big Bass Bonanza', 'prag-slot-BigBassBonanza', 'default', NULL, 'salsa/Big Bass Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 13:02:00'),
(3932, 35, NULL, 'prag-slot-JohnHunterandtheBookofTut', 'John Hunter and the Book of Tut', 'prag-slot-JohnHunterandtheBookofTut', 'default', NULL, 'salsa/John Hunter and the Book of Tut.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3930, 35, NULL, 'prag-slot-cashbox', 'Cash Box', 'prag-slot-cashbox', 'default', NULL, 'salsa/Cash Box.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3931, 35, NULL, 'prag-slot-Spellbinding-Mystery', 'Spellbinding Mystery', 'prag-slot-Spellbinding-Mystery', 'default', NULL, 'salsa/Spellbinding Mystery.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3929, 35, NULL, 'prag-slot-Power-of-Merlin-Megaways', 'Power of Merlin Megaways', 'prag-slot-Power-of-Merlin-Megaways', 'default', NULL, 'salsa/Power of Merlin Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3928, 35, NULL, 'prag-slot-Hellvis-Wild', 'Hellvis Wild', 'prag-slot-Hellvis-Wild', 'default', NULL, 'salsa/Hellvis Wild.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3923, 35, NULL, 'prag-slot-fat-panda', 'Fat Panda', 'prag-slot-fat-panda', 'default', NULL, 'salsa/Fat Panda.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3921, 35, NULL, 'prag-slot-floating-dragon-dragon-boat-festival', 'Floating Dragon - Dragon Boat Festival', 'prag-slot-floating-dragon-dragon-boat-festival', 'default', NULL, 'salsa/Floating Dragon - Dragon Boat Festival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:48:12'),
(3920, 35, NULL, 'prag-slot-pirates-pub', 'Pirates Pub', 'prag-slot-pirates-pub', 'default', NULL, 'salsa/Pirates Pub.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3919, 35, NULL, 'prag-slot-sticky-bees', 'Sticky Bees', 'prag-slot-sticky-bees', 'default', NULL, 'salsa/Sticky Bees.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3918, 35, NULL, 'prag-slot-zeus-vs-hades-gods-of-war', 'Zeus vs Hades - Gods of War', 'prag-slot-zeus-vs-hades-gods-of-war', 'default', NULL, 'salsa/Zeus vs Hades - Gods of War.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3917, 35, NULL, 'prag-slot-jewel-rush', 'Jewel Rush', 'prag-slot-jewel-rush', 'default', NULL, 'salsa/Jewel Rush.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3916, 35, NULL, 'prag-slot-knight-hot-spotz', 'Knight Hot Spotz', 'prag-slot-knight-hot-spotz', 'default', NULL, 'salsa/Knight Hot Spotz.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3915, 35, NULL, 'prag-slot-wild-bison-charge', 'Wild Bison Charge', 'prag-slot-wild-bison-charge', 'default', NULL, 'salsa/Wild Bison Charge.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3914, 35, NULL, 'prag-slot-Excalibur-unleashed', 'Excalibur Unleashed', 'prag-slot-Excalibur-unleashed', 'default', NULL, 'salsa/Excalibur Unleashed.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3912, 35, NULL, 'prag-slot-jane-hunter-and-the-mask-of-montezuma', 'Jane Hunter and the Mask of Montezuma', 'prag-slot-jane-hunter-and-the-mask-of-montezuma', 'default', NULL, 'salsa/Jane Hunter and the Mask of Montezuma.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3911, 35, NULL, 'prag-slot-3-dancing-monkeys', '3 Dancing Monkeys', 'prag-slot-3-dancing-monkeys', 'default', NULL, '01HQJQY5CT9D2G7D7FH3FAG620.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 09:58:47'),
(3910, 35, NULL, 'prag-slot-african-elephant', 'African Elephant', 'prag-slot-african-elephant', 'default', NULL, 'salsa/African Elephant.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3906, 35, NULL, 'prag-slot-jasmine-dreams', 'Jasmine Dreams', 'prag-slot-jasmine-dreams', 'default', NULL, 'salsa/Jasmine Dreams.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3909, 35, NULL, 'prag-slot-gods-of-giza', 'Gods of Giza', 'prag-slot-gods-of-giza', 'default', NULL, 'salsa/Gods of Giza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3905, 35, NULL, 'prag-slot-mochimon', 'Mochimon', 'prag-slot-mochimon', 'default', NULL, 'salsa/Mochimon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3903, 35, NULL, 'prag-slot-the-dog-house-multihold', 'The Dog House Multihold', 'prag-slot-the-dog-house-multihold', 'default', NULL, 'salsa/The Dog House Multihold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3902, 35, NULL, 'prag-slot-wild-west-duels', 'Wild West Duels', 'prag-slot-wild-west-duels', 'default', NULL, 'salsa/Wild West Duels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3901, 35, NULL, 'prag-slot-mystery-of-the-orient', 'Mystery of the Orient', 'prag-slot-mystery-of-the-orient', 'default', NULL, 'salsa/Mystery of the Orient.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3900, 35, NULL, 'prag-slot-wild-wild-riches-megaways', 'Wild Wild Riches Megaways', 'prag-slot-wild-wild-riches-megaways', 'default', NULL, 'salsa/Wild Wild Riches Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3899, 35, NULL, 'prag-slot-peak-power', 'Peak Power', 'prag-slot-peak-power', 'default', NULL, 'salsa/Peak Power.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3898, 35, NULL, 'prag-slot-club-tropicana', 'Club Tropicana', 'prag-slot-club-tropicana', 'default', NULL, 'salsa/Club Tropicana.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3897, 35, NULL, 'prag-slot-fire-archer', 'Fire Arche', 'prag-slot-fire-archer', 'default', NULL, '01HQJQW1VYRMYV44RP4HPECQ0D.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 09:57:52'),
(3896, 35, NULL, 'prag-slot-monster-superlanche', 'Monster Superlanche', 'prag-slot-monster-superlanche', 'default', NULL, 'salsa/Monster Superlanche.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3895, 35, NULL, 'prag-slot-fish-eye', 'Fish Eye', 'prag-slot-fish-eye', 'default', NULL, 'salsa/Fish Eye.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(3894, 35, NULL, 'prag-slot-mammoth-gold-megaways', 'Mammoth Gold Megaways', 'prag-slot-mammoth-gold-megaways', 'default', NULL, 'salsa/Mammoth Gold Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3893, 35, NULL, 'prag-slot-secret-city-gold', 'Secret City Gold', 'prag-slot-secret-city-gold', 'default', NULL, 'salsa/Secret City Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3890, 35, NULL, 'prag-slot-Sweet-bonanza-dice', 'Sweet Bonanza Dice', 'prag-slot-Sweet-bonanza-dice', 'default', NULL, 'salsa/Sweet Bonanza Dice.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3892, 35, NULL, 'prag-slot-the-dog-house-diceshow', 'The Dog House Dice Show', 'prag-slot-the-dog-house-diceshow', 'default', NULL, 'salsa/The Dog House Dice Show.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3889, 35, NULL, 'prag-slot-dragon-hero', 'Dragon Hero', 'prag-slot-dragon-hero', 'default', NULL, 'salsa/Dragon Hero.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:48:21'),
(3888, 15, NULL, 'prag-slot-pizza', 'PIZZA! PIZZA? PIZZA!', 'prag-slot-pizza', 'default', NULL, 'salsa/mscodex.webp', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-03-25 21:19:56'),
(3882, 35, NULL, 'prag-slot-candy-stars', 'Candy Stars', 'prag-slot-candy-stars', 'default', NULL, 'salsa/Candy Stars.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3878, 35, NULL, 'prag-slot-aztec-blaze', 'Aztec Blaze', 'prag-slot-aztec-blaze', 'default', NULL, 'salsa/Aztec Blaze.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3876, 35, NULL, 'prag-slot-crown-of-fire', 'Crown of Fire', 'prag-slot-crown-of-fire', 'default', NULL, 'salsa/Crown of Fire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3875, 35, NULL, 'prag-slot-book-of-golden-sands', 'Book of Golden Sands', 'prag-slot-book-of-golden-sands', 'default', NULL, 'salsa/Book of Golden Sands.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3874, 35, NULL, 'prag-slot-striking-hot-5', 'Striking Hot 5', 'prag-slot-striking-hot-5', 'default', NULL, 'salsa/Striking Hot 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3872, 35, NULL, 'prag-slot-octobeer-fortunes', 'Octobeer Fortunes', 'prag-slot-octobeer-fortunes', 'default', NULL, 'salsa/Octobeer Fortunes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3871, 35, NULL, 'prag-slot-fire-hot-100', 'Fire Hot 100', 'prag-slot-fire-hot-100', 'default', NULL, 'salsa/Fire Hot 100.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3870, 35, NULL, 'prag-slot-fire-hot-40', 'Fire Hot 40', 'prag-slot-fire-hot-40', 'default', NULL, 'salsa/Fire Hot 40.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3868, 35, NULL, 'prag-slot-fire-hot-5', 'Fire Hot 5', 'prag-slot-fire-hot-5', 'default', NULL, 'salsa/Fire Hot 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3869, 35, NULL, 'prag-slot-fire-hot-20', 'Fire Hot 20', 'prag-slot-fire-hot-20', 'default', NULL, 'salsa/Fire Hot 20.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3867, 35, NULL, 'prag-slot-down-the-rails', 'Down the Rails', 'prag-slot-down-the-rails', 'default', NULL, 'salsa/Down the Rails.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3865, 35, NULL, 'prag-slot-black-bull', 'Black Bull', 'prag-slot-black-bull', 'default', NULL, 'salsa/Black Bull.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3864, 35, NULL, 'prag-slot-gorilla-mayhem', 'Gorilla Mayhem', 'prag-slot-gorilla-mayhem', 'default', NULL, 'salsa/Gorilla Mayhem.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3863, 35, NULL, 'prag-slot-magic-money-maze', 'Magic Money Maze', 'prag-slot-magic-money-maze', 'default', NULL, 'salsa/Magic Money Maze.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3862, 35, NULL, 'prag-slot-shining-hot-100', 'Shining Hot 100', 'prag-slot-shining-hot-100', 'default', NULL, 'salsa/Shining Hot 100.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3861, 35, NULL, 'prag-slot-shining-hot-40', 'Shining Hot 40', 'prag-slot-shining-hot-40', 'default', NULL, 'salsa/Shining Hot 40.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3860, 35, NULL, 'prag-slot-shining-hot-20', 'Shining Hot 20', 'prag-slot-shining-hot-20', 'default', NULL, 'salsa/Shining Hot 20.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3859, 35, NULL, 'prag-slot-shining-hot-5', 'Shining Hot 5', 'prag-slot-shining-hot-5', 'default', NULL, 'salsa/Shining Hot 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3858, 35, NULL, 'prag-slot-bomb-bonanza', 'Bomb Bonanza', 'prag-slot-bomb-bonanza', 'default', NULL, 'salsa/Bomb Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3857, 35, NULL, 'prag-slot-big-bass-splash', 'Big Bass Splash', 'prag-slot-big-bass-splash', 'default', NULL, 'salsa/Big Bass Splash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3856, 35, NULL, 'prag-slot-cash-patrol', 'Cash Patrol', 'prag-slot-cash-patrol', 'default', NULL, 'salsa/Cash Patrol.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3854, 35, NULL, 'prag-slot-zombie-carnival', 'Zombie Carnival', 'prag-slot-zombie-carnival', 'default', NULL, 'salsa/Zombie Carnival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3853, 35, NULL, 'prag-slot-LampOfInfinity', 'Lamp Of Infinity', 'prag-slot-LampOfInfinity', 'default', NULL, 'salsa/Lamp Of Infinity.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3849, 35, NULL, 'prag-slot-RabbitGarden', 'Rabbit Garden', 'prag-slot-RabbitGarden', 'default', NULL, 'salsa/Rabbit Garden.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3852, 35, NULL, 'prag-slot-DiamondsofEgypt', 'Diamonds of Egypt', 'prag-slot-DiamondsofEgypt', 'default', NULL, 'salsa/Diamonds of Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3847, 35, NULL, 'prag-slot-SwordofAres', 'Sword of Ares', 'prag-slot-SwordofAres', 'default', NULL, 'salsa/Sword of Ares.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3846, 35, NULL, 'prag-slot-WildWBananas', 'Wild Wild Bananas', 'prag-slot-WildWBananas', 'default', NULL, 'salsa/Wild Wild Bananas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3845, 35, NULL, 'prag-slot-PinupGirls', 'Pinup Girls', 'prag-slot-PinupGirls', 'default', NULL, 'salsa/Pinup Girls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3837, 35, NULL, 'prag-slot-shieldofsparta', 'Shield of Sparta', 'prag-slot-shieldofsparta', 'default', NULL, 'salsa/Shield of Sparta.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3833, 35, NULL, 'prag-slot-GreedyWolf', 'Greedy Wolf', 'prag-slot-GreedyWolf', 'default', NULL, 'salsa/Greedy Wolf.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3831, 35, NULL, 'prag-slot-queenGods', 'Queen of Gods', 'prag-slot-queenGods', 'default', NULL, 'salsa/Queen of Gods.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3829, 35, NULL, 'prag-slot-cleoeye', 'Eye of Cleopatra', 'prag-slot-cleoeye', 'default', NULL, 'salsa/Eye of Cleopatra.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3828, 35, NULL, 'prag-slot-mustanggld2', 'Clover Gold', 'prag-slot-mustanggld2', 'default', NULL, 'salsa/Clover Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3827, 35, NULL, 'prag-slot-spiritadv', 'Spirit of Adventure', 'prag-slot-spiritadv', 'default', NULL, 'salsa/Spirit of Adventure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3826, 35, NULL, 'prag-slot-northgard', 'North Guardians', 'prag-slot-northgard', 'default', NULL, 'salsa/North Guardians.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3825, 35, NULL, 'prag-slot-firestrike2', 'Fire Strike 2', 'prag-slot-firestrike2', 'default', NULL, 'salsa/Fire Strike 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3822, 35, NULL, 'prag-slot-queenie', 'Queenie', 'prag-slot-queenie', 'default', NULL, 'salsa/Queenie.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3821, 35, NULL, 'prag-slot-bchprty', 'Wild Beach Party', 'prag-slot-bchprty', 'default', NULL, 'salsa/Wild Beach Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3819, 35, NULL, 'prag-slot-tictac', 'Tic Tac Take', 'prag-slot-tictac', 'default', NULL, 'salsa/Tic Tac Take.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3820, 35, NULL, 'prag-slot-rainbowg', 'Rainbow Gold', 'prag-slot-rainbowg', 'default', NULL, 'salsa/Rainbow Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3818, 35, NULL, 'prag-slot-ultim5', 'The Ultimate 5', 'prag-slot-ultim5', 'default', NULL, 'salsa/The Ultimate 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3816, 35, NULL, 'prag-slot-12bbb', 'Bigger Bass Bonanza', 'prag-slot-12bbb', 'default', NULL, 'salsa/Bigger Bass Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3817, 35, NULL, 'prag-slot-20santawonder', 'Santa\'s Wonderland', 'prag-slot-20santawonder', 'default', NULL, '01HQJQTS2TQYMS7ZZK9ZMW573N.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:56:56'),
(3815, 35, NULL, 'prag-slot-luckcharm', 'Lucky Grace And Charm', 'prag-slot-luckcharm', 'default', NULL, 'salsa/Lucky Grace And Charm.webp', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-03-22 13:36:33'),
(3814, 35, NULL, 'prag-slot-20emptybank', 'Empty the Bank', 'prag-slot-20emptybank', 'default', NULL, 'salsa/Empty the Bank.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3813, 35, NULL, 'prag-slot-40pirgold', 'Pirate Gold Deluxe', 'prag-slot-40pirgold', 'default', NULL, 'salsa/Pirate Gold Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3812, 35, NULL, 'prag-slot-20terrorv', 'Cash Elevator', 'prag-slot-20terrorv', 'default', NULL, 'salsa/Cash Elevator.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3811, 35, NULL, 'prag-slot-25pyramid', 'Pyramid King', 'prag-slot-25pyramid', 'default', NULL, '01HQJQS29SZRQD3M852VYSFQ4N.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:56:00'),
(3803, 35, NULL, 'prag-slot-cleocatra', 'Cleocatra', 'prag-slot-cleocatra', 'default', NULL, 'salsa/Cleocatra.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:14'),
(3802, 35, NULL, 'prag-slot-wayswildwest', 'Wild West Gold Megaways', 'prag-slot-wayswildwest', 'default', NULL, 'salsa/Wild West Gold Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:16'),
(3800, 35, NULL, 'prag-slot-barn-festival', 'Barn Festival', 'prag-slot-barn-festival', 'default', NULL, 'salsa/Barn Festival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3786, 34, NULL, 'prag-slot-superX', 'SuperX', 'prag-slot-superX', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-03-25 21:19:09'),
(3797, 35, NULL, 'prag-slot-elementalGemsM', 'Elemental Gems Megaways', 'prag-slot-elementalGemsM', 'default', NULL, 'salsa/Elemental Gems Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3784, 35, NULL, 'prag-slot-bountyGold', 'Bounty Gold', 'prag-slot-bountyGold', 'default', NULL, 'salsa/Bounty Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3783, 35, NULL, 'prag-slot-bigJuan', 'Big Juan', 'prag-slot-bigJuan', 'default', NULL, 'salsa/Big Juan.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3781, 35, NULL, 'prag-slot-starPiratesCode', 'Star Pirates Code', 'prag-slot-starPiratesCode', 'default', NULL, 'salsa/Star Pirates Code.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3780, 35, NULL, 'prag-slot-dayofDead', 'Day of Dead', 'prag-slot-dayofDead', 'default', NULL, 'salsa/Day of Dead.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3779, 35, NULL, 'prag-slot-cashBonanza', 'Cash Bonanza', 'prag-slot-cashBonanza', 'default', NULL, 'salsa/Cash Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3778, 35, NULL, 'prag-slot-piggyBankBills', 'Piggy Bank Bills', 'prag-slot-piggyBankBills', 'default', NULL, 'salsa/Piggy Bank Bills.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3777, 35, NULL, 'prag-slot-mysticChief', 'Mystic Chief', 'prag-slot-mysticChief', 'default', NULL, 'salsa/Mystic Chief.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3776, 35, NULL, 'prag-slot-starlightPrincess', 'Starlight Princess', 'prag-slot-starlightPrincess', 'default', NULL, 'salsa/Starlight Princess.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:19'),
(3775, 35, NULL, 'prag-slot-treasureWild', 'Treasure Wild', 'prag-slot-treasureWild', 'default', NULL, 'salsa/Treasure Wild.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3774, 35, NULL, 'prag-slot-yumYumPowerways', 'Yum Yum Powerways', 'prag-slot-yumYumPowerways', 'default', NULL, 'salsa/Yum Yum Powerways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3773, 35, NULL, 'prag-slot-chilliHeatMegaways', 'Chilli Heat Megaways', 'prag-slot-chilliHeatMegaways', 'default', NULL, 'salsa/Chilli Heat Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3771, 35, NULL, 'prag-slot-fruitParty2', 'Fruit Party2', 'prag-slot-fruitParty2', 'default', NULL, '01HQJQQFF9V4V0P4K74WVQK19R.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:55:08'),
(3770, 35, NULL, 'prag-slot-chickenDrop', 'Chicken Drop', 'prag-slot-chickenDrop', 'default', NULL, 'salsa/Chicken Drop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3766, 35, NULL, 'prag-slot-luckyLightning', 'Lucky Lightning', 'prag-slot-luckyLightning', 'default', NULL, 'salsa/Lucky Lightning.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3768, 35, NULL, 'prag-slot-5LionsMega', '5 Lions Mega', 'prag-slot-5LionsMega', 'default', NULL, '01HQJQ019W9H82A0B2XEXYDZ7P.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:21'),
(3764, 35, NULL, 'prag-slot-pandasFortune2', 'Pandas Fortune2', 'prag-slot-pandasFortune2', 'default', NULL, '01HQJQKRHS7Z8HCXQS2RZR0GTZ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:53:06'),
(3762, 35, NULL, 'prag-slot-phoenixForge', 'Phoenix Forge', 'prag-slot-phoenixForge', 'default', NULL, 'salsa/Phoenix Forge.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:15'),
(3757, 35, NULL, 'prag-slot-wildBooster', 'Wild Booster', 'prag-slot-wildBooster', 'default', NULL, 'salsa/Wild Booster.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3755, 35, NULL, 'prag-slot-temujinTreasures', 'Temujin Treasures', 'prag-slot-temujinTreasures', 'default', NULL, '01HQJQH5KJVFHPNWB1E4DTFM4D.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:51:41'),
(3754, 35, NULL, 'prag-slot-juicyFruits', 'Juicy Fruits', 'prag-slot-juicyFruits', 'default', NULL, 'salsa/Juicy Fruits.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:24'),
(3753, 35, NULL, 'prag-slot-fishinReels', 'Fishin Reels', 'prag-slot-fishinReels', 'default', NULL, 'salsa/Fishin Reels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3743, 35, NULL, 'prag-slot-jokerKing', 'Joker King', 'prag-slot-jokerKing', 'default', NULL, 'salsa/Joker King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3747, 35, NULL, 'prag-slot-cowboysGold', 'Cowboys Gold', 'prag-slot-cowboysGold', 'default', NULL, 'salsa/Cowboys Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3741, 35, NULL, 'prag-slot-madameDestinyMegaways', 'Madame Destiny Megaways', 'prag-slot-madameDestinyMegaways', 'default', NULL, 'salsa/Madame Destiny Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:05:26'),
(3740, 35, NULL, 'prag-slot-congoCash', 'Congo Cash', 'prag-slot-congoCash', 'default', NULL, 'salsa/Congo Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3738, 35, NULL, 'prag-slot-mysteriousEgypt', 'Mysterious Egypt', 'prag-slot-mysteriousEgypt', 'default', NULL, 'salsa/Mysterious Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3734, 35, NULL, 'prag-slot-theCatfatherPartII', 'The Cat father Part II', 'prag-slot-theCatfatherPartII', 'default', NULL, '01HQJQFXF0V8W8STY8XHMA7S5D.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:51:00'),
(3737, 35, NULL, 'prag-slot-voodooMagic', 'Voodoo Magic', 'prag-slot-voodooMagic', 'default', NULL, 'salsa/Voodoo Magic.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3731, 35, NULL, 'prag-slot-theChampions', 'The Champions', 'prag-slot-theChampions', 'default', NULL, 'salsa/The Champions.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3730, 35, NULL, 'prag-slot-queenofAtlantis', 'Queen of Atlantis', 'prag-slot-queenofAtlantis', 'default', NULL, 'salsa/Queen of Atlantis.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3727, 35, NULL, 'prag-slot-herculesSonofZeus', 'Hercules Son of Zeus', 'prag-slot-herculesSonofZeus', 'default', NULL, 'salsa/Hercules Son of Zeus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3725, 35, NULL, 'prag-slot-safariKing', 'Safari King', 'prag-slot-safariKing', 'default', NULL, 'salsa/Safari King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3726, 35, NULL, 'prag-slot-pantherQueen', 'Panther Queen', 'prag-slot-pantherQueen', 'default', NULL, 'salsa/Panther Queen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3724, 35, NULL, 'prag-slot-magicCrystals', 'Magic Crystals', 'prag-slot-magicCrystals', 'default', NULL, 'salsa/Magic Crystals.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3723, 35, NULL, 'prag-slot-jurassicGiants', 'Jurassic Giants', 'prag-slot-jurassicGiants', 'default', NULL, 'salsa/Jurassic Giants.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3720, 35, NULL, 'prag-slot-leprechaunSong', 'Leprechaun Song', 'prag-slot-leprechaunSong', 'default', NULL, 'salsa/Leprechaun Song.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3717, 35, NULL, 'prag-slot-wildGladiator', 'Wild Gladiator', 'prag-slot-wildGladiator', 'default', NULL, 'salsa/Wild Gladiator.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3716, 35, NULL, 'prag-slot-santa', 'Santa', 'prag-slot-santa', 'default', NULL, 'salsa/Santa.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3715, 35, NULL, 'prag-slot-jadeButterfly', 'Jade Butterfly', 'prag-slot-jadeButterfly', 'default', NULL, 'salsa/Jade Butterfly.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3714, 35, NULL, 'prag-slot-vegasNights', 'Vegas Nights', 'prag-slot-vegasNights', 'default', NULL, 'salsa/Vegas Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3713, 35, NULL, 'prag-slot-3GenieWishes', '3Genie Wishes', 'prag-slot-3GenieWishes', 'default', NULL, '01HQJQE4EG8DBH47QH7163DMRQ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:50:09'),
(3712, 35, NULL, 'prag-slot-queenofGold', 'Queen of Gold', 'prag-slot-queenofGold', 'default', NULL, 'salsa/Queen of Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3711, 35, NULL, 'prag-slot-wildPixies', 'Wild Pixies', 'prag-slot-wildPixies', 'default', NULL, 'salsa/Wild Pixies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3710, 35, NULL, 'prag-slot-leprechaunCarol', 'Leprechaun Carol', 'prag-slot-leprechaunCarol', 'default', NULL, 'salsa/Leprechaun Carol.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3708, 35, NULL, 'prag-slot-beowulf', 'Beowulf', 'prag-slot-beowulf', 'default', NULL, 'salsa/Beowulf.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3709, 35, NULL, 'prag-slot-ancientEgypt', 'Ancient Egypt', 'prag-slot-ancientEgypt', 'default', NULL, 'salsa/Ancient Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3706, 35, NULL, 'prag-slot-greatReef', 'Great Reef', 'prag-slot-greatReef', 'default', NULL, 'salsa/Great Reef.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3705, 35, NULL, 'prag-slot-dwarvenGoldDeluxe', 'Dwarven Gold Deluxe', 'prag-slot-dwarvenGoldDeluxe', 'default', NULL, 'salsa/Dwarven Gold Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3704, 35, NULL, 'prag-slot-fairytaleFortune', 'Fairytale Fortune', 'prag-slot-fairytaleFortune', 'default', NULL, 'salsa/Fairytale Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3703, 35, NULL, 'prag-slot-7Piggies', '7Piggies', 'prag-slot-7Piggies', 'default', NULL, '01HQJQAFCABGRXKFHRQR9CWQP0.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:48:02'),
(3702, 35, NULL, 'prag-slot-tripleJokers', 'Triple Jokers', 'prag-slot-tripleJokers', 'default', NULL, 'salsa/Triple Jokers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3701, 35, NULL, 'prag-slot-madameDestiny', 'Madame Destiny', 'prag-slot-madameDestiny', 'default', NULL, 'salsa/Madame Destiny.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3700, 35, NULL, 'prag-slot-sugarRush', 'Sugar Rush', 'prag-slot-sugarRush', 'default', NULL, 'salsa/Sugar Rush.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3699, 35, NULL, 'prag-slot-7Monkeys', '7Monkeys', 'prag-slot-7Monkeys', 'default', NULL, '01HQJQ8FGG6W4NYC9HAQWGNMHY.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:46:57'),
(3698, 35, NULL, 'prag-slot-pixieWings', 'Pixie Wings', 'prag-slot-pixieWings', 'default', NULL, 'salsa/Pixie Wings.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3696, 35, NULL, 'prag-slot-luckyDragons', 'Lucky Dragons', 'prag-slot-luckyDragons', 'default', NULL, 'salsa/Lucky Dragons.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:11:20'),
(3694, 35, NULL, 'prag-slot-pekingLuck', 'Peking Luck', 'prag-slot-pekingLuck', 'default', NULL, 'salsa/Peking Luck.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3695, 35, NULL, 'prag-slot-fruitRainbow', 'Fruit Rainbow', 'prag-slot-fruitRainbow', 'default', NULL, 'salsa/Fruit Rainbow.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3692, 35, NULL, 'prag-slot-magicJourney', 'Magic Journey', 'prag-slot-magicJourney', 'default', NULL, 'salsa/Magic Journey.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3693, 35, NULL, 'prag-slot-herculesandPegasus', 'Hercules and Pegasus', 'prag-slot-herculesandPegasus', 'default', NULL, 'salsa/Hercules and Pegasus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3691, 35, NULL, 'prag-slot-streetRacer', 'Street Racer', 'prag-slot-streetRacer', 'default', NULL, 'salsa/Street Racer.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3690, 35, NULL, 'prag-slot-starzMegaways', 'Starz Megaways', 'prag-slot-starzMegaways', 'default', NULL, 'salsa/Starz Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3689, 35, NULL, 'prag-slot-honeyHoneyHoney', 'Honey Honey Honey', 'prag-slot-honeyHoneyHoney', 'default', NULL, 'salsa/Honey Honey Honey.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3688, 35, NULL, 'prag-slot-greekGods', 'Greek Gods', 'prag-slot-greekGods', 'default', NULL, 'salsa/Greek Gods.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3686, 35, NULL, 'prag-slot-wildWildRiches', 'Wild Wild Riches', 'prag-slot-wildWildRiches', 'default', NULL, 'salsa/Wild Wild Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:56'),
(3685, 35, NULL, 'prag-slot-wildWalker', 'Wild Walker', 'prag-slot-wildWalker', 'default', NULL, 'salsa/Wild Walker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3684, 35, NULL, 'prag-slot-ultraHoldandSpin', 'Ultra Hold and Spin', 'prag-slot-ultraHoldandSpin', 'default', NULL, 'salsa/Ultra Hold and Spin.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3683, 35, NULL, 'prag-slot-theWildMachine', 'The Wild Machine', 'prag-slot-theWildMachine', 'default', NULL, 'salsa/The Wild Machine.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3682, 35, NULL, 'prag-slot-theDragonTiger', 'The Dragon Tiger', 'prag-slot-theDragonTiger', 'default', NULL, 'salsa/The Dragon Tiger.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:10:50'),
(3681, 35, NULL, 'prag-slot-theDogHouseMegaways', 'The Dog House Megaways', 'prag-slot-theDogHouseMegaways', 'default', NULL, 'salsa/The Dog House Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3680, 35, NULL, 'prag-slot-starBounty', 'Star Bounty', 'prag-slot-starBounty', 'default', NULL, 'salsa/Star Bounty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3679, 35, NULL, 'prag-slot-returnoftheDead', 'Return of the Dead', 'prag-slot-returnoftheDead', 'default', NULL, 'salsa/Return of the Dead.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3678, 35, NULL, 'prag-slot-jungleGorilla', 'Jungle Gorilla', 'prag-slot-jungleGorilla', 'default', NULL, 'salsa/Jungle Gorilla.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3676, 35, NULL, 'prag-slot-gemsBonanza', 'Gems Bonanza', 'prag-slot-gemsBonanza', 'default', NULL, 'salsa/Gems Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3677, 35, NULL, 'prag-slot-greatRhinoDeluxe', 'Great Rhino Deluxe', 'prag-slot-greatRhinoDeluxe', 'default', NULL, 'salsa/Great Rhino Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3675, 35, NULL, 'prag-slot-emeraldKing', 'Emerald King', 'prag-slot-emeraldKing', 'default', NULL, 'salsa/Emerald King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3674, 35, NULL, 'prag-slot-curseoftheWerewolfMegaways', 'Curse of the Werewolf Megaways', 'prag-slot-curseoftheWerewolfMegaways', 'default', NULL, 'salsa/Curse of the Werewolf Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3672, 35, NULL, 'prag-slot-aztecGemsDeluxe', 'Aztec Gems Deluxe', 'prag-slot-aztecGemsDeluxe', 'default', NULL, 'salsa/Aztec Gems Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3671, 35, NULL, 'prag-slot-5LionsDance', '5Lions Dance', 'prag-slot-5LionsDance', 'default', NULL, '01HQJPZ0GXBD1M2X51WAP64Y2D.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:41:46'),
(3669, 35, NULL, 'prag-slot-hotSafari', 'Hot Safari', 'prag-slot-hotSafari', 'default', NULL, 'salsa/Hot Safari.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3668, 35, NULL, 'prag-slot-theGreatChickenEscape', 'The Great Chicken Escape', 'prag-slot-theGreatChickenEscape', 'default', NULL, 'salsa/The Great Chicken Escape.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3666, 35, NULL, 'prag-slot-hotChilli', 'Hot Chilli', 'prag-slot-hotChilli', 'default', NULL, 'salsa/Hot Chilli.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3667, 35, NULL, 'prag-slot-asgard', 'Asgard', 'prag-slot-asgard', 'default', NULL, 'salsa/Asgard.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3665, 35, NULL, 'prag-slot-mightyKong', 'Mighty Kong', 'prag-slot-mightyKong', 'default', NULL, 'salsa/Mighty Kong.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3664, 35, NULL, 'prag-slot-tripleDragons', 'Triple Dragons', 'prag-slot-tripleDragons', 'default', NULL, 'salsa/Triple Dragons.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:10:28'),
(3663, 35, NULL, 'prag-slot-dragonKingdom', 'Dragon Kingdom', 'prag-slot-dragonKingdom', 'default', NULL, 'salsa/Dragon Kingdom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:47:05'),
(3662, 35, NULL, 'prag-slot-goldTrain', 'Gold Train', 'prag-slot-goldTrain', 'default', NULL, 'salsa/Gold Train.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3661, 35, NULL, 'prag-slot-egyptianFortunes', 'Egyptian Fortunes', 'prag-slot-egyptianFortunes', 'default', NULL, 'salsa/Egyptian Fortunes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3660, 35, NULL, 'prag-slot-goldRush', 'Gold Rush', 'prag-slot-goldRush', 'default', NULL, 'salsa/Gold Rush.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3659, 35, NULL, 'prag-slot-wildSpells', 'Wild Spells', 'prag-slot-wildSpells', 'default', NULL, 'salsa/Wild Spells.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3658, 35, NULL, 'prag-slot-mysterious', 'Mysterious', 'prag-slot-mysterious', 'default', NULL, 'salsa/Mysterious.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3655, 35, NULL, 'prag-slot-ladyGodiva', 'Lady Godiva', 'prag-slot-ladyGodiva', 'default', NULL, 'salsa/Lady Godiva.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3656, 35, NULL, 'prag-slot-treasureHorse', 'Treasure Horse', 'prag-slot-treasureHorse', 'default', NULL, 'salsa/Treasure Horse.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3654, 35, NULL, 'prag-slot-chilliHeat', 'Chilli Heat', 'prag-slot-chilliHeat', 'default', NULL, 'salsa/Chilli Heat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3653, 35, NULL, 'prag-slot-journeytotheWest', 'Journey to the West', 'prag-slot-journeytotheWest', 'default', NULL, 'salsa/Journey to the West.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3652, 35, NULL, 'prag-slot-vegasMagic', 'Vegas Magic', 'prag-slot-vegasMagic', 'default', NULL, 'salsa/Vegas Magic.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3651, 35, NULL, 'prag-slot-pirateGold', 'Pirate Gold', 'prag-slot-pirateGold', 'default', NULL, 'salsa/Pirate Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3650, 35, NULL, 'prag-slot-buffaloKing', 'Buffalo King', 'prag-slot-buffaloKing', 'default', NULL, 'salsa/Buffalo King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:15'),
(3649, 35, NULL, 'prag-slot-monkeyWarrior', 'Monkey Warrior', 'prag-slot-monkeyWarrior', 'default', NULL, 'salsa/Monkey Warrior.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3648, 35, NULL, 'prag-slot-superJoker', 'Super Joker', 'prag-slot-superJoker', 'default', NULL, 'salsa/Super Joker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3647, 35, NULL, 'prag-slot-luckyNewYear', 'Lucky New Year', 'prag-slot-luckyNewYear', 'default', NULL, 'salsa/Lucky New Year.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3646, 35, NULL, 'prag-slot-goldenBeauty', 'Golden Beauty', 'prag-slot-goldenBeauty', 'default', NULL, 'salsa/Golden Beauty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3645, 35, NULL, 'prag-slot-aztecBonanza', 'Aztec Bonanza', 'prag-slot-aztecBonanza', 'default', NULL, 'salsa/Aztec Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:19'),
(3644, 35, NULL, 'prag-slot-ancientEgyptClassic', 'Ancient Egypt Classic', 'prag-slot-ancientEgyptClassic', 'default', NULL, 'salsa/Ancient Egypt Classic.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3642, 35, NULL, 'prag-slot-super7s', 'Super 7s', 'prag-slot-super7s', 'default', NULL, 'salsa/Super 7s.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3641, 35, NULL, 'prag-slot-tripleTigers', 'Triple Tigers', 'prag-slot-tripleTigers', 'default', NULL, 'salsa/Triple Tigers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3640, 35, NULL, 'prag-slot-5Lions', '5Lions', 'prag-slot-5Lions', 'default', NULL, '01HQJPY258C33G47E0H8ZNJ7ZM.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:41:15'),
(3638, 35, NULL, 'prag-slot-releasetheKraken', 'Release the Kraken', 'prag-slot-releasetheKraken', 'default', NULL, 'salsa/Release the Kraken.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3637, 35, NULL, 'prag-slot-mustangGold', 'Mustang Gold', 'prag-slot-mustangGold', 'default', NULL, 'salsa/Mustang Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:24'),
(3636, 35, NULL, 'prag-slot-johnHunterandtheTomboftheScarabQueen', 'John Hunter and the Tomb of the Scarab Queen', 'prag-slot-johnHunterandtheTomboftheScarabQueen', 'default', NULL, 'salsa/John Hunter and the Tomb of the Scarab Queen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:22'),
(3635, 35, NULL, 'prag-slot-moneyMouse', 'Money Mouse', 'prag-slot-moneyMouse', 'default', NULL, 'salsa/Money Mouse.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3634, 35, NULL, 'prag-slot-888Gold', '888Gold', 'prag-slot-888Gold', 'default', NULL, '01HQJQ5DPB7HAXANEEP666R6JR.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 09:45:16'),
(3633, 35, NULL, 'prag-slot-monkeyMadness', 'Monkey Madness', 'prag-slot-monkeyMadness', 'default', NULL, 'salsa/Monkey Madness.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3632, 35, NULL, 'prag-slot-sweetBonanzaXmas', 'Sweet Bonanza Xmas', 'prag-slot-sweetBonanzaXmas', 'default', NULL, 'salsa/Sweet Bonanza Xmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3631, 35, NULL, 'prag-slot-8Dragons', '8Dragons', 'prag-slot-8Dragons', 'default', NULL, '01HQJQ3WHMG9F7KNV9NSW1636W.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:47:50'),
(3629, 35, NULL, 'prag-slot-wolfGold', 'Wolf Gold', 'prag-slot-wolfGold', 'default', NULL, 'salsa/Wolf Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:26'),
(3628, 35, NULL, 'prag-slot-5LionsGold', '5 Lions Gold', 'prag-slot-5LionsGold', 'default', NULL, '01HQJQ13XSW85Q6222JX7V9ZV8.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 0, '2024-02-04 12:07:06', '2024-02-26 11:12:47'),
(3627, 35, NULL, 'prag-slot-masterJoker', 'Master Joker', 'prag-slot-masterJoker', 'default', NULL, 'salsa/Master Joker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3626, 35, NULL, 'prag-slot-theDogHouse', 'The Dog House', 'prag-slot-theDogHouse', 'default', NULL, 'salsa/The Dog House.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:29'),
(3624, 35, NULL, 'prag-slot-treeofRiches', 'Tree of Riches', 'prag-slot-treeofRiches', 'default', NULL, 'salsa/Tree of Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3625, 35, NULL, 'prag-slot-danceParty', 'Dance Party', 'prag-slot-danceParty', 'default', NULL, 'salsa/Dance Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:30'),
(3623, 35, NULL, 'prag-slot-diamondStrike', 'Diamond Strike', 'prag-slot-diamondStrike', 'default', NULL, 'salsa/Diamond Strike.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3622, 35, NULL, 'prag-slot-ultraBurn', 'Ultra Burn', 'prag-slot-ultraBurn', 'default', NULL, 'salsa/Ultra Burn.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3621, 35, NULL, 'prag-slot-wildWestGold', 'Wild West Gold', 'prag-slot-wildWestGold', 'default', NULL, 'salsa/Wild West Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:32'),
(3620, 35, NULL, 'prag-slot-fireStrike', 'Fire Strike', 'prag-slot-fireStrike', 'default', NULL, 'salsa/Fire Strike.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3619, 35, NULL, 'prag-slot-fire88', 'Fire 88', 'prag-slot-fire88', 'default', NULL, 'salsa/Fire 88.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:49:12'),
(3618, 35, NULL, 'prag-slot-threeStarFortune', 'Three Star Fortune', 'prag-slot-threeStarFortune', 'default', NULL, 'salsa/Three Star Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3615, 35, NULL, 'prag-slot-broncoSpirit', 'Bronco Spirit', 'prag-slot-broncoSpirit', 'default', NULL, 'salsa/Bronco Spirit.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3617, 35, NULL, 'prag-slot-greatRhino', 'Great Rhino', 'prag-slot-greatRhino', 'default', NULL, 'salsa/Great Rhino.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:35'),
(3613, 35, NULL, 'prag-slot-greatRhinoMegaways', 'Great Rhino Megaways', 'prag-slot-greatRhinoMegaways', 'default', NULL, 'salsa/Great Rhino Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3611, 35, NULL, 'prag-slot-sweetBonanza', 'Sweet Bonanza', 'prag-slot-sweetBonanza', 'default', NULL, 'salsa/Sweet Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:04:36'),
(3609, 35, NULL, 'prag-slot-aztecGems', 'Aztec Gems', 'prag-slot-aztecGems', 'default', NULL, 'salsa/Aztec Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3608, 35, NULL, 'prag-slot-pyramidKing', 'Pyramid King', 'prag-slot-pyramidKing', 'default', NULL, 'salsa/Pyramid King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3597, 33, NULL, 'prag-tb-LobbyTopGames', 'Lobby Top Games', 'prag-tb-LobbyTopGames', 'default', NULL, '01HQJPBGCXRRK48XG227ZGAX8V.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:08:14'),
(3514, 33, NULL, 'prag-tb-blackjack-56-azure', 'Blackjack 56 - Azure', 'prag-tb-blackjack-56-azure', 'default', NULL, '01HQJT5W00P8AG2SBJZWGCCYFQ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 4, 0, 1, '2024-02-04 12:07:06', '2024-03-15 03:57:00'),
(3507, 33, NULL, 'prag-tb-one-blackjack-5-flemish', 'ONE Blackjack 5 - Flemish', 'prag-tb-one-blackjack-5-flemish', 'default', NULL, '01HQJT0GGVMX045JNA8DJRGZMY.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:30'),
(3462, 33, NULL, 'prag-tb-r221', 'Live Casino - Ruby Roulette', 'prag-tb-r221', 'default', NULL, '01HQJP5DH2VSDTQR8GB02VG443.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:32'),
(3461, 33, NULL, 'prag-tb-swb', 'Live Casino - Sweet Bonanza', 'prag-tb-swb', 'default', NULL, '01HQJPCVZ2940D1D5DGQXS24CJ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:33'),
(3460, 33, NULL, 'prag-tb-bj105', 'Live Casino - Ruby One Blackjack', 'prag-tb-bj105', 'default', NULL, '01HQJNW91FD1HZH9KMVBNDY59V.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:34'),
(3459, 33, NULL, 'prag-tb-r141', 'Live Casino - The Club Roulette', 'prag-tb-r141', 'default', NULL, '01HQJNMKM959F9E44ZXQAWXJWA.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:36'),
(3458, 33, NULL, 'prag-tb-r161', 'Live Casino - Indian Roulette', 'prag-tb-r161', 'default', NULL, '01HQJNHJ9D52JVNH43SSDAH6MQ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:37'),
(3457, 33, NULL, 'prag-tb-bj', 'Live Casino - BlackJack', 'prag-tb-bj', 'default', NULL, '01HQJNCZNKC5CA8RECDPJE5P3K.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:08:16'),
(3456, 33, NULL, 'prag-tb-abh161', 'Live Casino - Andar Bahar', 'prag-tb-abh161', 'default', NULL, '01HQJN8BB6524NJ48DD3E6JJYD.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:28'),
(3455, 33, NULL, 'prag-tb-dt', 'Live Casino - Dragon Tiger', 'prag-tb-dt', 'default', NULL, '01HQJN2YKEDBGJPP87XNC11RFJ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 5, 0, 1, '2024-02-04 12:07:06', '2024-03-28 19:48:42'),
(3454, 33, NULL, 'prag-tb-onebj', 'Live Casino - One Blackjack', 'prag-tb-onebj', 'default', NULL, '01HQJMV0N7QW33MY7ZCRKZRXXK.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:08:17'),
(3453, 33, NULL, 'prag-tb-mr', 'Live Casino - Mega Roulette', 'prag-tb-mr', 'default', NULL, '01HQJMQ9CPP9ZGQ2E0YPFPBMHM.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:41'),
(3452, 33, NULL, 'prag-tb-mw', 'Live Casino - Mega Wheel', 'prag-tb-mw', 'default', NULL, '01HQJN46G0HPHG5NV6P87AQ9ES.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:42'),
(3451, 33, NULL, 'prag-tb-sicbo', 'Live Casino - Mega Sic Bo', 'prag-tb-sicbo', 'default', NULL, '01HQJN50DCBCYPDPNWP9YBY8MA.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:08:17'),
(3449, 33, NULL, 'prag-tb-roulette225', 'Live Casino - Auto Roulette', 'prag-tb-roulette225', 'default', NULL, '01HQJM0SB52RASVCRYPXS5XSHY.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 7, 0, 1, '2024-02-04 12:07:06', '2024-03-05 21:15:32'),
(3448, 33, NULL, 'prag-tb-roulette203', 'Live Casino - Speed Roulette', 'prag-tb-roulette203', 'default', NULL, '01HQJKYK0QVXTGXDNWAMTRVJTC.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:45'),
(3447, 33, NULL, 'prag-tb-roulette201', 'Live Casino - Roulette', 'prag-tb-roulette201', 'default', NULL, '01HQJKQWZ8CR86BXCH9SSWZ01E.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 1, '2024-02-04 12:07:06', '2024-03-27 14:41:30'),
(3446, 33, NULL, 'prag-tb-baccarat-402', 'Live Cassino - Speed Baccarat', 'prag-tb-baccarat-402', 'default', NULL, '01HQJJG16C1R4D2K80AVVM9R4M.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:44:38'),
(3440, 35, NULL, '3o-slot-olympianGods', 'Olympian Gods', '3o-slot-olympianGods', 'default', NULL, 'salsa/Olympian Gods.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3442, 35, NULL, '3o-slot-bookOfSun', 'Book of Sun', '3o-slot-bookOfSun', 'default', NULL, 'salsa/Book of Sun.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3438, 31, NULL, 'sms-tb-jetx', 'jetX', 'sms-tb-jetx', 'default', NULL, '01HQJK274J8R1FHPZTS7JARQWY.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:07:05', '2024-02-26 08:33:37'),
(3435, 35, NULL, 'prag-slot-fruitParty', 'Fruit Party', 'prag-slot-fruitParty', 'default', NULL, 'salsa/Fruit Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:05', '2024-02-26 13:05:35'),
(3434, 33, NULL, 'prag-slot-spaceman', 'Spaceman', 'prag-slot-spaceman', 'crash', NULL, '01HQJDDRC81NZVTY48YF6CTY06.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:05', '2024-02-26 15:18:13');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(3427, 34, NULL, 'melcochita', 'Melcochita', 'melcochita', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:59', '2024-03-25 21:19:09'),
(3426, 34, NULL, 'cucasSwamp', 'Cucas Swamp', 'cucasSwamp', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:57', '2024-03-25 21:19:10'),
(3425, 34, NULL, 'crystalMonster', 'Crystal Monster', 'crystalMonster', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:56', '2024-03-25 21:19:11'),
(3424, 34, NULL, 'halloweenGrooveBingo', 'Halloween Groove Bingo', 'halloweenGrooveBingo', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:56', '2024-03-25 21:19:11'),
(3422, 34, NULL, 'superPachinkoPlus', 'Super Pachinko Plus', 'superPachinkoPlus', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:06:54', '2024-03-25 21:19:12'),
(3423, 34, NULL, 'jogoDosBichosPraia', 'Jogo dos Bichos Praia', 'jogoDosBichosPraia', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:55', '2024-03-25 21:19:11'),
(3421, 34, NULL, 'candy3d', 'Candy 3D', 'candy3d', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:06:53', '2024-03-25 21:19:13'),
(3419, 34, NULL, 'farm', 'Farm', 'farm', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:51', '2024-03-25 21:19:15'),
(3420, 34, NULL, 'pachinko3', 'Pachinko 3', 'pachinko3', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:52', '2024-03-25 21:19:14'),
(3418, 34, NULL, 'pirate', 'Pirate', 'pirate', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:50', '2024-03-25 21:19:15'),
(3416, 34, NULL, 'candy', 'Candy', 'candy', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:49', '2024-03-25 21:19:17'),
(3417, 34, NULL, 'goal', 'Goal', 'goal', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:50', '2024-03-25 21:19:16'),
(3414, 34, NULL, 'zodiac', 'Zodiac', 'zodiac', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:48', '2024-03-25 21:19:18'),
(3415, 34, NULL, 'flex', 'Flex', 'flex', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:06:48', '2024-03-25 21:19:18'),
(3413, 34, NULL, 'superPachinko', 'Super Pachinko', 'superPachinko', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:47', '2024-03-25 21:19:19'),
(3412, 34, NULL, 'superHotBingo', 'Super Hot Bingo', 'superHotBingo', 'default', NULL, 'default/mscodex.jpeg', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:06:46', '2024-03-25 21:19:20'),
(4631, 21, NULL, 'bgtv-lg-speedy-7', 'Speedy 7', 'bgtv-lg-speedy-7', 'default', NULL, 'salsa/Speedy 7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:56'),
(4632, 21, NULL, 'bgtv-lg-6-poker', '6+ Poker', 'bgtv-lg-6-poker', 'default', NULL, 'salsa/6+ Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:51'),
(4630, 21, NULL, 'bgtv-lg-dice-duel', 'Dice Duel', 'bgtv-lg-dice-duel', 'default', NULL, 'salsa/Dice Duel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:55'),
(4629, 21, NULL, 'bgtv-lg-lucky-6', 'Lucky 6', 'bgtv-lg-lucky-6', 'default', NULL, 'salsa/Lucky 6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:48'),
(4626, 21, NULL, 'bgtv-lg-bet-on-poker', 'Bet On Poker', 'bgtv-lg-bet-on-poker', 'default', NULL, 'salsa/Bet On Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-03-07 11:55:43'),
(4628, 21, NULL, 'bgtv-lg-war-of-bets', 'War Of Bets', 'bgtv-lg-war-of-bets', 'default', NULL, 'salsa/War Of Bets.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:51'),
(4625, 21, NULL, 'bgtv-lg-lucky-5', 'Lucky 5', 'bgtv-lg-lucky-5', 'default', NULL, 'salsa/Lucky 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:09', '2024-02-26 11:36:53'),
(4621, 35, NULL, 'pgs-ninjaraccoonfrenzy', 'Ninja Raccoon Frenzy', 'pgs-ninjaraccoonfrenzy', 'default', NULL, 'salsa/Ninja Raccoon Frenzy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 15:12:28'),
(4596, 29, NULL, 'pgs-slot-queensBanquet', 'The Queens Banquet', 'pgs-slot-queensBanquet', 'default', NULL, '01HQK6DZWGKEYW9J1K5QGV7QSH.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:12:06'),
(4595, 29, NULL, 'pgs-slot-destinySunMoon', 'Destiny of Sun and Moon', 'pgs-slot-destinySunMoon', 'default', NULL, '01HQK6093G88D1SHFN8MW2E39S.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:04:36'),
(4585, 35, NULL, 'pgs-slot-cryptFortune', 'Raider Janes Crypt of Fortune', 'pgs-slot-cryptFortune', 'default', NULL, 'salsa/Raider Janes Crypt of Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 15:12:16'),
(4582, 35, NULL, 'pgs-slot-sushiOishi', 'Sushi Oishi', 'pgs-slot-sushiOishi', 'default', NULL, 'salsa/Sushi Oishi.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:06:09'),
(4581, 29, NULL, 'pgs-slot-riseofApollo', 'Rise Of Apollo', 'pgs-slot-riseofApollo', 'default', NULL, '01HQK8HQ86QBRFCRMFC05T4PWQ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-04-09 16:47:32'),
(4578, 29, NULL, 'pgs-slot-heistStakes', 'Heist Stakes', 'pgs-slot-heistStakes', 'default', NULL, '01HQK93N2H1FWH7G4HPJWG1Y48.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:58:53'),
(4580, 29, NULL, 'pgs-slot-waysQilin', 'Ways Of Qilin', 'pgs-slot-waysQilin', 'default', NULL, '01HQK7AD9S8Q8CM6TNG2P4DRQG.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 1, 0, '2024-02-04 12:07:08', '2024-03-23 01:43:39'),
(4571, 29, NULL, 'pgs-slot-gdnIceFire', 'Guardian of Ice and Fire', 'pgs-slot-gdnIceFire', 'default', NULL, '01HQK6NDSY46S7M1J42EN5HS5Q.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-04-12 20:35:21'),
(4570, 29, NULL, 'pgs-slot-jackFrosts', 'Jack Frosts', 'pgs-slot-jackFrosts', 'default', NULL, '01HQK70PTCA4E0TYD6AYZ384CZ.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:26:22'),
(4568, 35, NULL, 'pgs-slot-jewelsProsper', 'Jewels Prosper', 'pgs-slot-jewelsProsper', 'default', NULL, 'salsa/Jewels Prosper.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 14:50:38'),
(4567, 29, NULL, 'pgs-slot-queenBounty', 'Queen Bounty', 'pgs-slot-queenBounty', 'default', NULL, '01HQK8JP6JFPCDCDQJGXMDV3PE.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:49:37'),
(4565, 29, NULL, 'pgs-slot-secretsOfCleopatra', 'Secrets Of Cleopatra', 'pgs-slot-secretsOfCleopatra', 'default', NULL, '01HQK9A18J4CKP58FWP728DV77.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 15:02:22'),
(4562, 29, NULL, 'pgs-slot-vampiresCharm', 'Vampires Charm', 'pgs-slot-vampiresCharm', 'default', NULL, '01HQK94FF4EHNGGA9CP5KY4M18.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-04-12 17:57:25'),
(4561, 29, NULL, 'pgs-slot-treasuresAztec', 'Treasures Aztec', 'pgs-slot-treasuresAztec', 'default', NULL, '01HQK83SNM0RMS4BNTRY9YTQ78.webp', '0', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-03-26 08:00:51'),
(4560, 29, NULL, 'pgs-slot-genies3Wishes', 'Genies 3 Wishes', 'pgs-slot-genies3Wishes', 'default', NULL, '01HQK8XVB4YMJZBKRNRDKBK2C6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:55:43'),
(4555, 29, NULL, 'pgs-slot-egyptsbookmystery', 'Egypts Book Mystery', 'pgs-slot-egyptsbookmystery', 'default', NULL, '01HQK7V56P2PNE3X3H3Q0CKQ2R.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:15:15'),
(4552, 29, NULL, 'pgs-slot-caishenwins', 'Cai Shen Wins', 'pgs-slot-caishenwins', 'default', NULL, '01HQK7MJM2VN8GHAK386X0TB1V.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 1, 0, '2024-02-04 12:07:08', '2024-04-09 17:06:27'),
(4544, 29, NULL, 'pgs-slot-ninjaVsSamurai', 'Ninja Vs Samurai', 'pgs-slot-ninjaVsSamurai', 'default', NULL, '01HQK7K4MQA0KXSS3RRJ93VE59.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-04-09 16:52:56'),
(4542, 29, NULL, 'pgs-slot-captainsBounty', 'Captains Bounty', 'pgs-slot-captainsBounty', 'default', NULL, '01HQK7NV4V66YB9H5XFXKWJA9X.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 14:33:52'),
(4540, 29, NULL, 'pgs-slot-JourneyToTheWealth', 'Journey To The Wealth', 'pgs-slot-JourneyToTheWealth', 'default', NULL, '01HQK9E7FZ2581QG7JR2NS118R.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 1, 0, '2024-02-04 12:07:08', '2024-03-23 02:51:26'),
(4539, 29, NULL, 'pgs-slot-TheGreatIcescape', 'The Great Ice Scape', 'pgs-slot-TheGreatIcescape', 'default', NULL, '01HQK6ZJ0JBMAF5714HTFCKRVP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 1, 0, '2024-02-04 12:07:08', '2024-04-09 17:30:20'),
(4536, 29, NULL, 'pgs-slot-EmperorsFavour', 'Emperors Favour', 'pgs-slot-EmperorsFavour', 'default', NULL, '01HQK91P1VRZM6W7JX0FWXTQ57.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:14:46'),
(4535, 29, NULL, 'pgs-slot-SymbolsOfEgypt', 'Symbols Of Egypt', 'pgs-slot-SymbolsOfEgypt', 'default', NULL, '01HQK9D1BZJNQD553GY8FHDT4E.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 1, 0, '2024-02-04 12:07:08', '2024-02-26 15:04:00'),
(4532, 35, NULL, 'pgs-tb-BaccaratDeluxe', 'Baccarat Deluxe', 'pgs-tb-BaccaratDeluxe', 'default', NULL, 'salsa/Baccarat Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-03-26 02:11:08'),
(4528, 35, NULL, 'pgs-slot-LegendOfHouYi', 'Legend Of Hou Yi', 'pgs-slot-LegendOfHouYi', 'default', NULL, 'salsa/Legend Of Hou Yi.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:08:52'),
(4531, 29, NULL, 'pgs-slot-SantasGiftRush', 'Santas Gift Rush', 'pgs-slot-SantasGiftRush', 'default', NULL, '01HQK7HP7KABTSK7EAYR1S652E.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 4, 1, 0, '2024-02-04 12:07:08', '2024-03-06 11:08:17'),
(4527, 29, NULL, 'pgs-slot-MrHallowWin', 'Mr Hallow Win', 'pgs-slot-MrHallowWin', 'default', NULL, '01HQK77K30V8RRFRKY4Z9MR0HH.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 46, 1, 0, '2024-02-04 12:07:08', '2024-04-10 21:42:12'),
(4523, 35, NULL, 'pgs-slot-SummonConquer', 'Summon Conquer', 'pgs-slot-SummonConquer', 'default', NULL, 'salsa/Summon Conquer.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:11:45'),
(4525, 29, NULL, 'pgs-slot-Hotpot', 'Hot Pot', 'pgs-slot-Hotpot', 'default', NULL, '01HQK96VTNGJEKF2MA6B560ZNA.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:14:52'),
(4519, 35, NULL, 'pgs-tb-JokerWild', 'Joker Wild', 'pgs-tb-JokerWild', 'default', NULL, 'salsa/Joker Wild.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 15:08:08'),
(4518, 29, NULL, 'pgs-slot-TreeOfFortune', 'Tree Of Fortune', 'pgs-slot-TreeOfFortune', 'default', NULL, '01HQK8ZBV3KP7BKQY51BT5JKA0.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 4, 1, 0, '2024-02-04 12:07:08', '2024-04-12 19:03:14'),
(4510, 26, NULL, 'boo-MoneyInc', 'Money Inc', 'boo-MoneyInc', 'default', NULL, 'salsa/Money Inc.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:30'),
(4508, 26, NULL, 'boo-MammothTundra', 'Mammoth Tundra', 'boo-MammothTundra', 'default', NULL, 'salsa/Mammoth Tundra.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:29'),
(4506, 26, NULL, 'boo-TheWildWingsofPhoenix', 'The Wild Wings of Phoenix', 'boo-TheWildWingsofPhoenix', 'default', NULL, 'salsa/The Wild Wings of Phoenix.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:42:09'),
(4507, 26, NULL, 'boo-StickyBombs', 'Sticky Bombs', 'boo-StickyBombs', 'default', NULL, 'salsa/Sticky Bombs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:29'),
(4504, 26, NULL, 'boo-BambooWilds', 'Bamboo Wilds', 'boo-BambooWilds', 'default', NULL, 'salsa/Bamboo Wilds.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:43:27'),
(4505, 26, NULL, 'boo-CracktheBankHoldandWin', 'Crack the Bank Hold and Win', 'boo-CracktheBankHoldandWin', 'default', NULL, 'salsa/Crack the Bank Hold and Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:30'),
(4503, 26, NULL, 'boo-KingCobra', 'King Cobra', 'boo-KingCobra', 'default', NULL, 'salsa/King Cobra.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:05'),
(4501, 26, NULL, 'boo-PiñataWildz', 'Piñata Wildz', 'boo-PiñataWildz', 'default', NULL, 'salsa/Piñata Wildz.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:21'),
(4502, 26, NULL, 'boo-GoldGoldGold', 'Gold Gold Gold', 'boo-GoldGoldGold', 'default', NULL, 'salsa/Gold Gold Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:06'),
(4500, 26, NULL, 'boo-PowerofOlympus', 'Power of Olympus', 'boo-PowerofOlympus', 'default', NULL, 'salsa/Power of Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:42:41'),
(4499, 26, NULL, 'boo-TheMightyToro', 'The Mighty Toro', 'boo-TheMightyToro', 'default', NULL, 'salsa/The Mighty Toro.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:27'),
(4498, 26, NULL, 'boo-slot-DogSquad', 'Dog Squad', 'boo-slot-DogSquad', 'default', NULL, 'salsa/Dog Squad.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:42:13'),
(4497, 26, NULL, 'boo-slot-GoBananza', 'Go Bananza', 'boo-slot-GoBananza', 'default', NULL, 'salsa/Go Bananza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:26'),
(4496, 26, NULL, 'boo-slot-DiceDiceBaby', 'Dice Dice Baby', 'boo-slot-DiceDiceBaby', 'default', NULL, 'salsa/Dice Dice Baby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:25'),
(4495, 26, NULL, 'boo-slot-TheRodfatherMys', 'The Rodfather Megaways', 'boo-slot-TheRodfatherMys', 'default', NULL, 'salsa/The Rodfather Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:23'),
(4494, 26, NULL, 'boo-slot-TNTBonanza', 'TNT Bonanza', 'boo-slot-TNTBonanza', 'default', NULL, 'salsa/TNT Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:08', '2024-03-19 14:58:50'),
(4493, 26, NULL, 'boo-slot-GoldenStrawberries', 'Golden Strawberries', 'boo-slot-GoldenStrawberries', 'default', NULL, 'salsa/Golden Strawberries.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:21'),
(4491, 26, NULL, 'boo-slot-RollTheDice', 'Roll the Dice', 'boo-slot-RollTheDice', 'default', NULL, 'salsa/Roll the Dice.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:09'),
(4492, 26, NULL, 'boo-slot-TreasureVault', 'Treasure Vault', 'boo-slot-TreasureVault', 'default', NULL, 'salsa/Treasure Vault.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:08'),
(4490, 26, NULL, 'boo-slot-TheJungleEmpire', 'The Jungle Empire', 'boo-slot-TheJungleEmpire', 'default', NULL, 'salsa/The Jungle Empire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:09'),
(4489, 26, NULL, 'boo-slot-letitspin', 'Let it Spin', 'boo-slot-letitspin', 'default', NULL, 'salsa/Let it Spin.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:11'),
(4488, 26, NULL, 'boo-slot-StarlightRiches', 'Starlight Riches', 'boo-slot-StarlightRiches', 'default', NULL, 'salsa/Starlight Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:11'),
(4487, 26, NULL, 'boo-slot-burningClassicsGW', 'Burning Classics Go Wild', 'boo-slot-burningClassicsGW', 'default', NULL, 'salsa/Burning Classics Go Wild.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:12'),
(4485, 26, NULL, 'boo-slot-monsterTMadness', 'Monster Truck Madness', 'boo-slot-monsterTMadness', 'default', NULL, 'salsa/Monster Truck Madness.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:14'),
(4486, 26, NULL, 'boo-slot-legDiamonds', 'Legendary Diamonds', 'boo-slot-legDiamonds', 'default', NULL, 'salsa/Legendary Diamonds.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:13'),
(4484, 26, NULL, 'boo-slot-BlockchainM', 'Blockchain Megaways', 'boo-slot-BlockchainM', 'default', NULL, 'salsa/Blockchain Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:14'),
(4483, 26, NULL, 'boo-slot-GambleliciousHW', 'Gamblelicious Hold and Win', 'boo-slot-GambleliciousHW', 'default', NULL, 'salsa/Gamblelicious Hold and Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:15'),
(4482, 26, NULL, 'boo-slot-flamingChilies', 'Flaming Chilies', 'boo-slot-flamingChilies', 'default', NULL, 'salsa/Flaming Chilies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:16'),
(4480, 26, NULL, 'boo-slot-oceanDrive', 'Ocean Drive', 'boo-slot-oceanDrive', 'default', NULL, 'salsa/Ocean Drive.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:17'),
(4481, 26, NULL, 'boo-slot-HowlingWolvesMega', 'Howling Wolves Megaways', 'boo-slot-HowlingWolvesMega', 'default', NULL, 'salsa/Howling Wolves Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:16'),
(4479, 26, NULL, 'boo-slot-moneyMoose', 'Money Moose', 'boo-slot-moneyMoose', 'default', NULL, 'salsa/Money Moose.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:18'),
(4478, 26, NULL, 'boo-slot-mightyGorilla', 'Mighty Gorilla', 'boo-slot-mightyGorilla', 'default', NULL, 'salsa/Mighty Gorilla.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:19'),
(4477, 26, NULL, 'boo-slot-wildBonusReSpins', 'Wild Bonus Re-Spins', 'boo-slot-wildBonusReSpins', 'default', NULL, 'salsa/Wild Bonus Re-Spins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:19'),
(4475, 26, NULL, 'boo-slot-redHotVolcano', 'Red Hot Volcano', 'boo-slot-redHotVolcano', 'default', NULL, 'salsa/Red Hot Volcano.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:20'),
(4476, 26, NULL, 'boo-slot-rhinoHoldWin', 'Rhino Hold and Win', 'boo-slot-rhinoHoldWin', 'default', NULL, 'salsa/Rhino Hold and Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:20'),
(4474, 26, NULL, 'boo-slot-crystal', 'Crystal Classics', 'boo-slot-crystal', 'default', NULL, 'salsa/Crystal Classics.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:07:56'),
(4473, 26, NULL, 'boo-slot-greekLegends', 'Greek Legends', 'boo-slot-greekLegends', 'default', NULL, 'salsa/Greek Legends.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:20'),
(4472, 26, NULL, 'boo-slot-wildVegas', 'Wild Wild Vegas', 'boo-slot-wildVegas', 'default', NULL, 'salsa/Wild Wild Vegas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:21'),
(4471, 26, NULL, 'boo-slot-bangBang', 'Bang Bang', 'boo-slot-bangBang', 'default', NULL, 'salsa/Bang Bang.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:42:20'),
(4470, 26, NULL, 'boo-slot-goldHunter', 'Gold Hunter', 'boo-slot-goldHunter', 'default', NULL, 'salsa/Gold Hunter.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:43:38'),
(4469, 26, NULL, 'boo-slot-majesticSafari', 'Majestic Safari', 'boo-slot-majesticSafari', 'default', NULL, 'salsa/Majestic Safari.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:19'),
(4468, 26, NULL, 'boo-slot-diamondRiches', 'Diamond Riches', 'boo-slot-diamondRiches', 'default', NULL, 'salsa/Diamond Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:17'),
(4467, 26, NULL, 'boo-slot-wizardingWins', 'Wizarding Wins', 'boo-slot-wizardingWins', 'default', NULL, 'salsa/Wizarding Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:17'),
(4465, 26, NULL, 'boo-slot-cashPig', 'Cash Pig', 'boo-slot-cashPig', 'default', NULL, 'salsa/Cash Pig.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:43:40'),
(4466, 26, NULL, 'boo-slot-sphinxFortune', 'Sphinx Fortune', 'boo-slot-sphinxFortune', 'default', NULL, 'salsa/Sphinx Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:16'),
(4464, 26, NULL, 'boo-slot-bookofTombs', 'Book of Tombs', 'boo-slot-bookofTombs', 'default', NULL, 'salsa/Book of Tombs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:43:42'),
(4463, 26, NULL, 'boo-slot-freezingClassics', 'Freezing Classics', 'boo-slot-freezingClassics', 'default', NULL, 'salsa/Freezing Classics.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:13'),
(4462, 26, NULL, 'boo-slot-jestersJoy', 'Jesters Joy', 'boo-slot-jestersJoy', 'default', NULL, 'salsa/Jesters Joy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:13'),
(4461, 26, NULL, 'boo-slot-wombaroo', 'Wombaroo', 'boo-slot-wombaroo', 'default', NULL, 'salsa/Wombaroo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:12'),
(4460, 26, NULL, 'boo-slot-horrorHouse', 'Horror House', 'boo-slot-horrorHouse', 'default', NULL, 'salsa/Horror House.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:12'),
(4458, 26, NULL, 'boo-slot-tikiWins', 'Tiki Wins', 'boo-slot-tikiWins', 'default', NULL, 'salsa/Tiki Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:10'),
(4459, 26, NULL, 'boo-slot-luckyScarabs', 'Lucky Scarabs', 'boo-slot-luckyScarabs', 'default', NULL, 'salsa/Lucky Scarabs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:12'),
(4457, 26, NULL, 'boo-slot-howlingWolves', 'Howling Wolves', 'boo-slot-howlingWolves', 'default', NULL, 'salsa/Howling Wolves.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:10'),
(4456, 26, NULL, 'boo-slot-burningClassics', 'Burning Classics', 'boo-slot-burningClassics', 'default', NULL, 'salsa/Burning Classics.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:43:43'),
(4455, 26, NULL, 'boo-slot-showMaster', 'Show Master', 'boo-slot-showMaster', 'default', NULL, 'salsa/Show Master.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:09'),
(4454, 26, NULL, 'boo-slot-dangerZone', 'Danger Zone', 'boo-slot-dangerZone', 'default', NULL, 'salsa/Danger Zone.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:42:54'),
(4453, 26, NULL, 'boo-slot-gunspinner', 'Gunspinner', 'boo-slot-gunspinner', 'default', NULL, 'salsa/Gunspinner.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:08'),
(4452, 26, NULL, 'boo-slot-spinosaurus', 'Spinosaurus', 'boo-slot-spinosaurus', 'default', NULL, 'salsa/Spinosaurus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:08'),
(4451, 26, NULL, 'boo-slot-arabianSpins', 'Arabian Spins', 'boo-slot-arabianSpins', 'default', NULL, 'salsa/Arabian Spins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:06'),
(4450, 26, NULL, 'boo-slot-gladiatorArena', 'Gladiator Arena', 'boo-slot-gladiatorArena', 'default', NULL, 'salsa/Gladiator Arena.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:05'),
(4449, 26, NULL, 'boo-slot-wildEnergy', 'Wild Energy', 'boo-slot-wildEnergy', 'default', NULL, 'salsa/Wild Energy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:43:47'),
(4448, 26, NULL, 'boo-slot-hooked', 'Hooked', 'boo-slot-hooked', 'default', NULL, 'salsa/Hooked.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:03'),
(4447, 26, NULL, 'boo-slot-chickenParty', 'Chicken Party', 'boo-slot-chickenParty', 'default', NULL, 'salsa/Chicken Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:03'),
(4446, 26, NULL, 'boo-slot-dragonsChest', 'Dragons Chest', 'boo-slot-dragonsChest', 'default', NULL, 'salsa/Dragons Chest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:03'),
(4445, 26, NULL, 'boo-slot-snailRace', 'Snail Race', 'boo-slot-snailRace', 'default', NULL, 'salsa/Snail Race.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:02'),
(4444, 26, NULL, 'boo-slot-witchesWildBrew', 'Witches Wild Brew', 'boo-slot-witchesWildBrew', 'default', NULL, 'salsa/Witches Wild Brew.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:00'),
(4443, 26, NULL, 'boo-slot-colossalFruitSmash', 'Colossal Fruit Smash', 'boo-slot-colossalFruitSmash', 'default', NULL, 'salsa/Colossal Fruit Smash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:00'),
(4442, 26, NULL, 'boo-slot-aztecPalace', 'Aztec Palace', 'boo-slot-aztecPalace', 'default', NULL, 'salsa/Aztec Palace.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:07:59'),
(4440, 26, NULL, 'boo-slot-surfinReels', 'Surfin Reels', 'boo-slot-surfinReels', 'default', NULL, 'salsa/Surfin Reels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:07:59'),
(4441, 26, NULL, 'boo-slot-colossalVikings', 'Colossal Vikings', 'boo-slot-colossalVikings', 'default', NULL, 'salsa/Colossal Vikings.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:07:59'),
(4438, 26, NULL, 'boo-slot-boomingCircus', 'Booming Circus', 'boo-slot-boomingCircus', 'default', NULL, 'salsa/Booming Circus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:40'),
(4439, 26, NULL, 'boo-slot-leprechaunsLuckyBarrel', 'Leprechauns Lucky Barrel', 'boo-slot-leprechaunsLuckyBarrel', 'default', NULL, 'salsa/Leprechauns Lucky Barrel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:07:57'),
(4437, 26, NULL, 'boo-slot-pirateBooty', 'Pirate Booty', 'boo-slot-pirateBooty', 'default', NULL, 'salsa/Pirate Booty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:42'),
(4436, 26, NULL, 'boo-slot-goldVein', 'Gold Vein', 'boo-slot-goldVein', 'default', NULL, 'salsa/Gold Vein.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:42'),
(4435, 26, NULL, 'boo-slot-wildOcean', 'Wild Ocean', 'boo-slot-wildOcean', 'default', NULL, 'salsa/Wild Ocean.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:43'),
(4434, 26, NULL, 'boo-slot-superBoom', 'Super Boom', 'boo-slot-superBoom', 'default', NULL, 'salsa/Super Boom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:43'),
(4433, 26, NULL, 'boo-slot-goldenLuckyPigs', 'Golden Lucky Pigs', 'boo-slot-goldenLuckyPigs', 'default', NULL, 'salsa/Golden Lucky Pigs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:43'),
(4432, 26, NULL, 'boo-slot-stellarSpins', 'Stellar Spins', 'boo-slot-stellarSpins', 'default', NULL, 'salsa/Stellar Spins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:44'),
(4431, 26, NULL, 'boo-slot-cheekyMonkeys', 'Cheeky Monkeys', 'boo-slot-cheekyMonkeys', 'default', NULL, 'salsa/Cheeky Monkeys.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:44'),
(4430, 26, NULL, 'boo-slot-showMeTheMummy', 'Show me the Mummy', 'boo-slot-showMeTheMummy', 'default', NULL, 'salsa/Show me the Mummy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:46'),
(4429, 26, NULL, 'boo-slot-boomshakalaka', 'Boomshakalaka', 'boo-slot-boomshakalaka', 'default', NULL, 'salsa/Boomshakalaka.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:46'),
(4428, 26, NULL, 'boo-slot-5x-astroPandas', 'Astro Pandas', 'boo-slot-5x-astroPandas', 'default', NULL, 'salsa/Astro Pandas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:09:33'),
(4427, 26, NULL, 'boo-slot-boomingGold', 'Booming Gold', 'boo-slot-boomingGold', 'default', NULL, 'salsa/Booming Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:47'),
(4426, 26, NULL, 'boo-slot-miamiNights', 'Miami Nights', 'boo-slot-miamiNights', 'default', NULL, 'salsa/Miami Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:48'),
(4425, 26, NULL, 'boo-slot-tailgating', 'Tailgating', 'boo-slot-tailgating', 'default', NULL, 'salsa/Tailgating.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:50'),
(4424, 26, NULL, 'boo-slot-ohCatrina', 'Oh Catrina!', 'boo-slot-ohCatrina', 'default', NULL, 'salsa/Oh Catrina!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:50'),
(4423, 26, NULL, 'boo-slot-monsterMunchies', 'Monster Munchies', 'boo-slot-monsterMunchies', 'default', NULL, 'salsa/Monster Munchies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:51'),
(4422, 26, NULL, 'boo-slot-legendofQuYuan', 'Legend of Qu Yuan', 'boo-slot-legendofQuYuan', 'default', NULL, 'salsa/Legend of Qu Yuan.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:51'),
(4421, 26, NULL, 'boo-slot-laRomantica', 'La romantica', 'boo-slot-laRomantica', 'default', NULL, 'salsa/La romantica.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:53'),
(4420, 26, NULL, 'boo-slot-chicagoNights', 'Chicago Nights', 'boo-slot-chicagoNights', 'default', NULL, 'salsa/Chicago Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 07:08:53'),
(4419, 26, NULL, 'boo-slot-revolution', 'Revolution', 'boo-slot-revolution', 'default', NULL, 'salsa/Revolution.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 1, '2024-02-04 12:07:08', '2024-03-05 22:09:47'),
(4418, 26, NULL, 'boo-slot-gangsterGamblers', 'Gangster Gamblers', 'boo-slot-gangsterGamblers', 'default', NULL, 'salsa/Gangster Gamblers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4417, 26, NULL, 'boo-slot-octoberfest', 'Octoberfest', 'boo-slot-octoberfest', 'default', NULL, 'salsa/Octoberfest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4416, 26, NULL, 'boo-slot-jingleJingle', 'Jingle Jingle', 'boo-slot-jingleJingle', 'default', NULL, 'salsa/Jingle Jingle.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4415, 26, NULL, 'boo-slot-coldCash', 'Cold Cash', 'boo-slot-coldCash', 'default', NULL, 'salsa/Cold Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4414, 26, NULL, 'boo-slot-desertDrag', 'Desert Drag', 'boo-slot-desertDrag', 'default', NULL, 'salsa/Desert Drag.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4413, 26, NULL, 'boo-slot-genieWishes', 'Genie Wishes', 'boo-slot-genieWishes', 'default', NULL, 'salsa/Genie Wishes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4412, 26, NULL, 'boo-slot-wildCherries', 'Wild Cherries', 'boo-slot-wildCherries', 'default', NULL, 'salsa/Wild Cherries.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4411, 26, NULL, 'boo-slot-sharkMeet', 'Shark Meet', 'boo-slot-sharkMeet', 'default', NULL, 'salsa/Shark Meet.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4410, 26, NULL, 'boo-slot-goal', 'Goal!!!', 'boo-slot-goal', 'default', NULL, 'salsa/Goal!!!.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4409, 26, NULL, 'boo-slot-exoticFruitDeluxe', 'Exotic Fruit Deluxe', 'boo-slot-exoticFruitDeluxe', 'default', NULL, 'salsa/Exotic Fruit Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4408, 26, NULL, 'boo-slot-freemasonsFortune', 'Freemasons Fortune', 'boo-slot-freemasonsFortune', 'default', NULL, 'salsa/Freemasons Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4407, 26, NULL, 'boo-slot-theKingPanda', 'The King Panda', 'boo-slot-theKingPanda', 'default', NULL, 'salsa/The King Panda.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4406, 26, NULL, 'boo-slot-cherryBombDeluxe', 'Cherry Bomb Deluxe', 'boo-slot-cherryBombDeluxe', 'default', NULL, 'salsa/Cherry Bomb Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4405, 26, NULL, 'boo-slot-boomingBars', 'Booming Bars', 'boo-slot-boomingBars', 'default', NULL, 'salsa/Booming Bars.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4404, 26, NULL, 'boo-slot-dolphinsLuck2', 'Dolphin ́s Luck 2', 'boo-slot-dolphinsLuck2', 'default', NULL, 'salsa/Dolphin ́s Luck 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4403, 26, NULL, 'boo-slot-boomingSeven', 'Booming Seven', 'boo-slot-boomingSeven', 'default', NULL, 'salsa/Booming Seven.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4402, 26, NULL, 'boo-slot-romeo', 'Romeo', 'boo-slot-romeo', 'default', NULL, 'salsa/Romeo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4401, 26, NULL, 'boo-slot-wildJester', 'Wild Jester', 'boo-slot-wildJester', 'default', NULL, 'salsa/Wild Jester.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4400, 26, NULL, 'boo-slot-doublinGold', 'Dublin Gold', 'boo-slot-doublinGold', 'default', NULL, 'salsa/Dublin Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4399, 26, NULL, 'boo-slot-DevilsHeat', 'Devil ́s Heart', 'boo-slot-DevilsHeat', 'default', NULL, 'salsa/Devil ́s Heart.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4397, 26, NULL, 'boo-slot-wunderfest', 'Wunderfest', 'boo-slot-wunderfest', 'default', NULL, 'salsa/Wunderfest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4398, 26, NULL, 'boo-slot-boomerangBonanza', 'Boomerang Bonanza', 'boo-slot-boomerangBonanza', 'default', NULL, 'salsa/Boomerang Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4396, 26, NULL, 'boo-slot-santasKiss', 'Santa ́s Kiss', 'boo-slot-santasKiss', 'default', NULL, 'salsa/Santa ́s Kiss.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4395, 26, NULL, 'boo-slot-harvestFest', 'Harvest Fest', 'boo-slot-harvestFest', 'default', NULL, 'salsa/Harvest Fest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4394, 26, NULL, 'boo-slot-lotusLove', 'Lotus Love', 'boo-slot-lotusLove', 'default', NULL, 'salsa/Lotus Love.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4393, 26, NULL, 'boo-slot-babyBloomers', 'Baby Bloomers', 'boo-slot-babyBloomers', 'default', NULL, 'salsa/Baby Bloomers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4389, 26, NULL, 'boo-slot-classico', 'Classico', 'boo-slot-classico', 'default', NULL, 'salsa/Classico.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4392, 26, NULL, 'boo-slot-exoticFruit', 'Exotic Fruit', 'boo-slot-exoticFruit', 'default', NULL, 'salsa/Exotic Fruit.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4388, 26, NULL, 'boo-slot-asiaWins', 'Asia Wins', 'boo-slot-asiaWins', 'default', NULL, 'salsa/Asia Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4387, 26, NULL, 'boo-slot-goldenGirls', 'Golden Girls', 'boo-slot-goldenGirls', 'default', NULL, 'salsa/Golden Girls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4386, 26, NULL, 'boo-slot-goldenProfits', 'Golden Profits', 'boo-slot-goldenProfits', 'default', NULL, 'salsa/Golden Profits.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4384, 26, NULL, 'boo-slot-royalWins', 'Royal Wins', 'boo-slot-royalWins', 'default', NULL, 'salsa/Royal Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4385, 26, NULL, 'boo-slot-bacheloretteParty', 'Bachelorette Party', 'boo-slot-bacheloretteParty', 'default', NULL, 'salsa/Bachelorette Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4383, 26, NULL, 'boo-slot-valleyOfPharaohs', 'Valley of Pharaohs', 'boo-slot-valleyOfPharaohs', 'default', NULL, 'salsa/Valley of Pharaohs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4382, 26, NULL, 'boo-slot-vegasWins', 'Vegas Wins', 'boo-slot-vegasWins', 'default', NULL, 'salsa/Vegas Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4380, 26, NULL, 'boo-slot-wildPride', 'Wild Pride', 'boo-slot-wildPride', 'default', NULL, 'salsa/Wild Pride.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4381, 26, NULL, 'boo-slot-mexicoWins', 'Mexico Wins', 'boo-slot-mexicoWins', 'default', NULL, 'salsa/Mexico Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4379, 26, NULL, 'boo-slot-discoBar7s', 'Disco Bar 7s', 'boo-slot-discoBar7s', 'default', NULL, 'salsa/Disco Bar 7s.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4378, 26, NULL, 'boo-slot-parisNights', 'Paris Nights', 'boo-slot-parisNights', 'default', NULL, 'salsa/Paris Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4377, 26, NULL, 'boo-slot-vegasVIPGold', 'Vegas VIP Gold', 'boo-slot-vegasVIPGold', 'default', NULL, 'salsa/Vegas VIP Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4376, 26, NULL, 'boo-slot-cubaCaliente', 'Cuba Caliente', 'boo-slot-cubaCaliente', 'default', NULL, 'salsa/Cuba Caliente.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4375, 26, NULL, 'boo-slot-boomingSevenDeluxe', 'Booming Seven Deluxe', 'boo-slot-boomingSevenDeluxe', 'default', NULL, 'salsa/Booming Seven Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4374, 26, NULL, 'boo-slot-lavaLoca', 'Lava Loca', 'boo-slot-lavaLoca', 'default', NULL, 'salsa/Lava Loca.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4373, 26, NULL, 'boo-slot-wildDiamond7x', 'Wild Diamond x7', 'boo-slot-wildDiamond7x', 'default', NULL, 'salsa/Wild Diamond x7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4372, 26, NULL, 'boo-slot-bigAppleWins', 'Big Apple Wins', 'boo-slot-bigAppleWins', 'default', NULL, 'salsa/Big Apple Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4370, 26, NULL, 'boo-slot-fengShuiKitties', 'Feng Shui Kitties', 'boo-slot-fengShuiKitties', 'default', NULL, 'salsa/Feng Shui Kitties.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4371, 26, NULL, 'boo-slot-wunderfestDeluxe', 'Wunderfest Deluxe', 'boo-slot-wunderfestDeluxe', 'default', NULL, 'salsa/Wunderfest Deluxe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4369, 26, NULL, 'boo-slot-sugarSkulls', 'Sugar Skulls', 'boo-slot-sugarSkulls', 'default', NULL, 'salsa/Sugar Skulls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4368, 26, NULL, 'boo-slot-vipFilthyRiches', 'VIP Filthy Riches', 'boo-slot-vipFilthyRiches', 'default', NULL, 'salsa/VIP Filthy Riches.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4366, 26, NULL, 'boo-slot-barnyardTwister', 'Barnyard Twister', 'boo-slot-barnyardTwister', 'default', NULL, 'salsa/Barnyard Twister.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4365, 23, NULL, 'gaming7777-slot-super-7777-christmas', 'Super 7777 Christmas', 'gaming7777-slot-super-7777-christmas', 'default', NULL, 'salsa/Super 7777 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-04-10 21:46:34'),
(4364, 23, NULL, 'gaming7777-slot-super-7777', 'Super 7777', 'gaming7777-slot-super-7777', 'default', NULL, 'salsa/Super 7777.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4363, 23, NULL, 'gaming7777-slot-star-signs', 'Star Signs', 'gaming7777-slot-star-signs', 'default', NULL, 'salsa/Star Signs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:54'),
(4362, 23, NULL, 'gaming7777-slot-speed-race', 'Speed Race', 'gaming7777-slot-speed-race', 'default', NULL, 'salsa/Speed Race.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4361, 23, NULL, 'gaming7777-slot-silver-and-gold-slot', 'Silver & Gold Slot', 'gaming7777-slot-silver-and-gold-slot', 'default', NULL, 'salsa/Silver & Gold Slot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:55'),
(4360, 23, NULL, 'gaming7777-inst-silver-and-gold', 'Silver & Gold', 'gaming7777-inst-silver-and-gold', 'default', NULL, 'salsa/Silver & Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4359, 23, NULL, 'gaming7777-inst-sea-of-treasures-christmas', 'Sea of Treasures Christmas', 'gaming7777-inst-sea-of-treasures-christmas', 'default', NULL, 'salsa/Sea of Treasures Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:57'),
(4358, 23, NULL, 'gaming7777-inst-sea-of-treasures-8-march', 'Sea of Treasures 8 March', 'gaming7777-inst-sea-of-treasures-8-march', 'default', NULL, 'salsa/Sea of Treasures 8 March.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4357, 23, NULL, 'gaming7777-inst-sea-of-treasures', 'Sea of Treasures', 'gaming7777-inst-sea-of-treasures', 'default', NULL, 'salsa/Sea of Treasures.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:58'),
(4356, 23, NULL, 'gaming7777-slot-samurai-fortunes-2', 'Samurai Fortunes II', 'gaming7777-slot-samurai-fortunes-2', 'default', NULL, 'salsa/Samurai Fortunes II.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:53'),
(4355, 23, NULL, 'gaming7777-slot-samurai-fortunes', 'Samurai Fortunes', 'gaming7777-slot-samurai-fortunes', 'default', NULL, 'salsa/Samurai Fortunes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:59'),
(4354, 23, NULL, 'gaming7777-tb-roulette-7', 'Roulette 7', 'gaming7777-tb-roulette-7', 'default', NULL, 'salsa/Roulette 7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:38:27'),
(4353, 23, NULL, 'gaming7777-slot-pearl-of-egypt-kingdom', 'Pearl of Egypt Kingdom', 'gaming7777-slot-pearl-of-egypt-kingdom', 'default', NULL, 'salsa/Pearl of Egypt Kingdom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:52'),
(4352, 23, NULL, 'gaming7777-tb-mystery-of-ra-kenooo', 'Mystery of Ra Kenooo', 'gaming7777-tb-mystery-of-ra-kenooo', 'default', NULL, 'salsa/Mystery of Ra Kenooo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4350, 23, NULL, 'gaming7777-inst-multi-wins', 'Multi Wins', 'gaming7777-inst-multi-wins', 'default', NULL, 'salsa/Multi Wins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4349, 23, NULL, 'gaming7777-slot-most-wanted', 'Most Wanted', 'gaming7777-slot-most-wanted', 'default', NULL, 'salsa/Most Wanted.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4347, 23, NULL, 'gaming7777-slot-mega-jackpots-disco', 'Mega Jackpots Disco', 'gaming7777-slot-mega-jackpots-disco', 'default', NULL, 'salsa/Mega Jackpots Disco.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4346, 23, NULL, 'gaming7777-inst-mayan-gold', 'Mayan Gold', 'gaming7777-inst-mayan-gold', 'default', NULL, 'salsa/Mayan Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:07'),
(4345, 23, NULL, 'gaming7777-slot-lucky-submarine', 'Lucky Submarine', 'gaming7777-slot-lucky-submarine', 'default', NULL, 'salsa/Lucky Submarine.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:09'),
(4344, 23, NULL, 'gaming7777-inst-lucky-clovers-christmas', 'Lucky Clovers Christmas', 'gaming7777-inst-lucky-clovers-christmas', 'default', NULL, 'salsa/Lucky Clovers Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:09'),
(4343, 23, NULL, 'gaming7777-inst-lucky-clovers', 'Lucky Clovers', 'gaming7777-inst-lucky-clovers', 'default', NULL, 'salsa/Lucky Clovers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:11'),
(4342, 23, NULL, 'gaming7777-inst-lucky-7777-christmas', 'Lucky 7777 Christmas', 'gaming7777-inst-lucky-7777-christmas', 'default', NULL, 'salsa/Lucky 7777 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:37');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(4341, 23, NULL, 'gaming7777-inst-lucky-7777', 'Lucky 7777', 'gaming7777-inst-lucky-7777', 'default', NULL, 'salsa/Lucky 7777.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:38:11'),
(4340, 23, NULL, 'gaming7777-slot-knights-and-magic', 'Knights and Magic', 'gaming7777-slot-knights-and-magic', 'default', NULL, 'salsa/Knights and Magic.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:29'),
(4339, 23, NULL, 'gaming7777-tb-kenooo-jackpots', 'Kenooo Jackpots', 'gaming7777-tb-kenooo-jackpots', 'default', NULL, 'salsa/Kenooo Jackpots.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4337, 23, NULL, 'gaming7777-slot-jinn-spring-oasis', 'Jinn Spring Oasis', 'gaming7777-slot-jinn-spring-oasis', 'default', NULL, 'salsa/Jinn Spring Oasis.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4338, 23, NULL, 'gaming7777-inst-jungle-conquest', 'Jungle Conquest', 'gaming7777-inst-jungle-conquest', 'default', NULL, 'salsa/Jungle Conquest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:38:14'),
(4336, 23, NULL, 'gaming7777-slot-jinn', 'Jinn', 'gaming7777-slot-jinn', 'default', NULL, 'salsa/Jinn.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:34'),
(4335, 23, NULL, 'gaming7777-tb-jelly-kenooo', 'Jelly Kenooo', 'gaming7777-tb-jelly-kenooo', 'default', NULL, 'salsa/Jelly Kenooo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4334, 23, NULL, 'gaming7777-slot-jack-and-the-beans', 'Jack and the Beans', 'gaming7777-slot-jack-and-the-beans', 'default', NULL, 'salsa/Jack and the Beans.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:36'),
(4333, 23, NULL, 'gaming7777-inst-i-love-cash-valentine', 'I Love Cash Valentine', 'gaming7777-inst-i-love-cash-valentine', 'default', NULL, 'salsa/I Love Cash Valentine.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4332, 23, NULL, 'gaming7777-inst-i-love-cash-christmas', 'I Love Cash Christmas', 'gaming7777-inst-i-love-cash-christmas', 'default', NULL, 'salsa/I Love Cash Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4331, 23, NULL, 'gaming7777-inst-i-love-cash', 'I Love Cash', 'gaming7777-inst-i-love-cash', 'default', NULL, 'salsa/I Love Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:27'),
(4330, 23, NULL, 'gaming7777-slot-hot-ball', 'Hot Ball', 'gaming7777-slot-hot-ball', 'default', NULL, 'salsa/Hot Ball.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:38:17'),
(4329, 23, NULL, 'gaming7777-inst-honey-of-gold', 'Honey of Gold', 'gaming7777-inst-honey-of-gold', 'default', NULL, 'salsa/Honey of Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4328, 23, NULL, 'gaming7777-inst-hit-the-pinata', 'Hit the Pinata', 'gaming7777-inst-hit-the-pinata', 'default', NULL, 'salsa/Hit the Pinata.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:44'),
(4327, 23, NULL, 'gaming7777-inst-hawaii', 'Hawaii', 'gaming7777-inst-hawaii', 'default', NULL, 'salsa/Hawaii.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:44'),
(4326, 23, NULL, 'gaming7777-inst-halloween', 'Halloween', 'gaming7777-inst-halloween', 'default', NULL, 'salsa/Halloween.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:43'),
(4325, 24, NULL, 'gaming7777-slot-greenhats-megawins', 'Greenhats Megawins', 'gaming7777-slot-greenhats-megawins', 'default', NULL, 'salsa/Greenhats Megawins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4323, 24, NULL, 'gaming7777-inst-greenhats-jackpot', 'Greenhats Jackpot', 'gaming7777-inst-greenhats-jackpot', 'default', NULL, 'salsa/Greenhats Jackpot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4322, 23, NULL, 'gaming7777-slot-golden-scarab', 'Golden Scarab', 'gaming7777-slot-golden-scarab', 'default', NULL, 'salsa/Golden Scarab.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:41'),
(4321, 23, NULL, 'gaming7777-inst-golden-pyramids', 'Golden Pyramids', 'gaming7777-inst-golden-pyramids', 'default', NULL, 'salsa/Golden Pyramids.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4320, 23, NULL, 'gaming7777-inst-golden-7-spring', 'Golden 7 Spring', 'gaming7777-inst-golden-7-spring', 'default', NULL, 'salsa/Golden 7 Spring.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4319, 23, NULL, 'gaming7777-inst-golden-7-christmas', 'Golden 7 Christmas', 'gaming7777-inst-golden-7-christmas', 'default', NULL, 'salsa/Golden 7 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:19:40'),
(4318, 23, NULL, 'gaming7777-inst-golden-7', 'Golden 7', 'gaming7777-inst-golden-7', 'default', NULL, 'salsa/Golden 7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4317, 23, NULL, 'gaming7777-slot-gingers-and-gems', 'Gingers and Gems', 'gaming7777-slot-gingers-and-gems', 'default', NULL, 'salsa/Gingers and Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:00'),
(4316, 23, NULL, 'gaming7777-inst-geisha', 'Geisha', 'gaming7777-inst-geisha', 'default', NULL, 'salsa/Geisha.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:30'),
(4315, 23, NULL, 'gaming7777-slot-galaxy-fortune', 'Galaxy Fortune', 'gaming7777-slot-galaxy-fortune', 'default', NULL, 'salsa/Galaxy Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4313, 23, NULL, 'gaming7777-inst-funfair-2x', 'FunFair 2x', 'gaming7777-inst-funfair-2x', 'default', NULL, 'salsa/FunFair 2x.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4314, 23, NULL, 'gaming7777-inst-funfair-2x-christmas', 'FunFair 2x Christmas', 'gaming7777-inst-funfair-2x-christmas', 'default', NULL, 'salsa/FunFair 2x Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:35'),
(4312, 23, NULL, 'gaming7777-slot-fruits', 'Fruits', 'gaming7777-slot-fruits', 'default', NULL, 'salsa/Fruits.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4311, 23, NULL, 'gaming7777-inst-fruit-cash', 'Fruit Cash', 'gaming7777-inst-fruit-cash', 'default', NULL, 'salsa/Fruit Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4310, 23, NULL, 'gaming7777-slot-fortunes-of- rome', 'Fortunes of Rome', 'gaming7777-slot-fortunes-of- rome', 'default', NULL, 'salsa/Fortunes of Rome.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4309, 23, NULL, 'gaming7777-inst-football-stars', 'Football Stars', 'gaming7777-inst-football-stars', 'default', NULL, 'salsa/Football Stars.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4308, 23, NULL, 'gaming7777-inst-fast-lap', 'Fast Lap', 'gaming7777-inst-fast-lap', 'default', NULL, 'salsa/Fast Lap.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:38:41'),
(4307, 23, NULL, 'gaming7777-inst-fast-50-100-1000', 'Fast 50 100 1000', 'gaming7777-inst-fast-50-100-1000', 'default', NULL, 'salsa/Fast 50 100 1000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4305, 23, NULL, 'gaming7777-inst-egyptian-treasure-2', 'Egyptian Treasure II', 'gaming7777-inst-egyptian-treasure-2', 'default', NULL, 'salsa/Egyptian Treasure II.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-04-10 21:47:52'),
(4304, 23, NULL, 'gaming7777-inst-egyptian-treasure', 'Egyptian Treasure', 'gaming7777-inst-egyptian-treasure', 'default', NULL, 'salsa/Egyptian Treasure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4303, 23, NULL, 'gaming7777-inst-easter-cash', 'Easter Cash', 'gaming7777-inst-easter-cash', 'default', NULL, 'salsa/Easter Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4302, 23, NULL, 'gaming7777-inst-dream-ride', 'Dream Ride', 'gaming7777-inst-dream-ride', 'default', NULL, 'salsa/Dream Ride.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:08', '2024-03-05 22:03:39'),
(4300, 23, NULL, 'gaming7777-inst-double-coffee', 'Double Coffee', 'gaming7777-inst-double-coffee', 'default', NULL, 'salsa/Double Coffee.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4298, 23, NULL, 'gaming7777-tb-dice-2', 'Dice 2', 'gaming7777-tb-dice-2', 'default', NULL, 'salsa/Dice 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4299, 23, NULL, 'gaming7777-tb-dice-5', 'Dice 5', 'gaming7777-tb-dice-5', 'default', NULL, 'salsa/Dice 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4297, 23, NULL, 'gaming7777-inst-diamonds-of-majesty-valentine', 'Diamonds of Majesty Valentine', 'gaming7777-inst-diamonds-of-majesty-valentine', 'default', NULL, 'salsa/Diamonds of Majesty Valentine.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4296, 23, NULL, 'gaming7777-inst-diamonds-of-majesty', 'Diamonds of Majesty', 'gaming7777-inst-diamonds-of-majesty', 'default', NULL, 'salsa/Diamonds of Majesty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4295, 23, NULL, 'gaming7777-slot-crystal-palace-joker', 'Crystal Palace Joker', 'gaming7777-slot-crystal-palace-joker', 'default', NULL, 'salsa/Crystal Palace Joker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:35'),
(4294, 23, NULL, 'gaming7777-slot-club-mr-luck', 'Club Mr. Luck', 'gaming7777-slot-club-mr-luck', 'default', NULL, 'salsa/Club Mr. Luck.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4293, 23, NULL, 'gaming7777-inst-chocolate', 'Chocolate', 'gaming7777-inst-chocolate', 'default', NULL, 'salsa/Chocolate.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4292, 23, NULL, 'gaming7777-inst-cash-puzzle', 'Cash Puzzle', 'gaming7777-inst-cash-puzzle', 'default', NULL, 'salsa/Cash Puzzle.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4291, 23, NULL, 'gaming7777-slot-cash-5-christmas', 'Cash 5 Christmas', 'gaming7777-slot-cash-5-christmas', 'default', NULL, 'salsa/Cash 5 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:13'),
(4290, 23, NULL, 'gaming7777-slot-cash-5', 'Cash 5', 'gaming7777-slot-cash-5', 'default', NULL, 'salsa/Cash 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4289, 23, NULL, 'gaming7777-slot-cash-40-christmas', 'Cash 40 Christmas', 'gaming7777-slot-cash-40-christmas', 'default', NULL, 'salsa/Cash 40 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:14'),
(4288, 23, NULL, 'gaming7777-slot-cash-40', 'Cash 40', 'gaming7777-slot-cash-40', 'default', NULL, 'salsa/Cash 40.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:27'),
(4287, 23, NULL, 'gaming7777-inst-cash-20x-chistmas', 'Cash 20x Christmas', 'gaming7777-inst-cash-20x-chistmas', 'default', NULL, 'salsa/Cash 20x Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4286, 23, NULL, 'gaming7777-inst-cash-20x', 'Cash 20x', 'gaming7777-inst-cash-20x', 'default', NULL, 'salsa/Cash 20x.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:26'),
(4284, 23, NULL, 'gaming7777-slot-cash-20', 'Cash 20', 'gaming7777-slot-cash-20', 'default', NULL, 'salsa/Cash 20.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:29'),
(4285, 23, NULL, 'gaming7777-slot-cash-20-christmas', 'Cash 20 Christmas', 'gaming7777-slot-cash-20-christmas', 'default', NULL, 'salsa/Cash 20 Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4283, 23, NULL, 'gaming7777-slot-cash-100-easter', 'Cash 100 Easter', 'gaming7777-slot-cash-100-easter', 'default', NULL, 'salsa/Cash 100 Easter.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:10'),
(4282, 23, NULL, 'gaming7777-slot-cash-100', 'Cash 100', 'gaming7777-slot-cash-100', 'default', NULL, 'salsa/Cash 100.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:31'),
(4281, 23, NULL, 'gaming7777-tb-caribbean-stud-poker-jackpot', 'Caribbean Stud Poker - Jackpot', 'gaming7777-tb-caribbean-stud-poker-jackpot', 'default', NULL, 'salsa/Caribbean Stud Poker - Jackpot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:22'),
(4280, 23, NULL, 'gaming7777-tb-caribbean-stud-poker', 'Caribbean Stud Poker', 'gaming7777-tb-caribbean-stud-poker', 'default', NULL, 'salsa/Caribbean Stud Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4279, 23, NULL, 'gaming7777-inst-bucks-detective', 'Bucks Detective', 'gaming7777-inst-bucks-detective', 'default', NULL, 'salsa/Bucks Detective.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4278, 23, NULL, 'gaming7777-inst-break-the-vault-now', 'Break The Vault Now', 'gaming7777-inst-break-the-vault-now', 'default', NULL, 'salsa/Break The Vault Now.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4277, 23, NULL, 'gaming7777-tb-booster-roulette', 'Booster Roulette', 'gaming7777-tb-booster-roulette', 'default', NULL, 'salsa/Booster Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4276, 23, NULL, 'gaming7777-tb-blackjack', 'Blackjack', 'gaming7777-tb-blackjack', 'default', NULL, 'salsa/Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4275, 23, NULL, 'gaming7777-slot-beach-hunt', 'Beach Hunt', 'gaming7777-slot-beach-hunt', 'default', NULL, 'salsa/Beach Hunt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-04 13:13:17'),
(4274, 23, NULL, 'gaming7777-inst-agent-7', 'Agent 7', 'gaming7777-inst-agent-7', 'default', NULL, 'salsa/Agent 7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:20:33'),
(4271, 22, NULL, '3o-slot-sunOfEgypt', 'Sun of Egypt', '3o-slot-sunOfEgypt', 'default', NULL, 'salsa/Sun of Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:34'),
(4270, 22, NULL, '3o-slot-777gemsRespin', '777 Gems Respin', '3o-slot-777gemsRespin', 'default', NULL, 'salsa/777 Gems Respin.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:33'),
(4269, 22, NULL, '3o-slot-tigersGold', 'Tigers Gold', '3o-slot-tigersGold', 'default', NULL, 'salsa/Tigers Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:08', '2024-03-16 21:15:06'),
(4268, 22, NULL, '3o-slot-greatPanda', 'Great Panda', '3o-slot-greatPanda', 'default', NULL, 'salsa/Great Panda.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:32'),
(4255, 22, NULL, '3o-slot-superRichGod', 'Super Rich GOD', '3o-slot-superRichGod', 'default', NULL, 'salsa/Super Rich GOD.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:28'),
(4252, 22, NULL, '3o-slot-aztecPyramid', 'Aztec Pyramid', '3o-slot-aztecPyramid', 'default', NULL, 'salsa/Aztec Pyramid.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:27'),
(4237, 22, NULL, '3o-slot-queenOfTheSun', 'Queen of the Sun', '3o-slot-queenOfTheSun', 'default', NULL, 'salsa/Queen of the Sun.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:25'),
(4239, 22, NULL, '3o-slot-buddhaMegaways', 'Buddha Megaways', '3o-slot-buddhaMegaways', 'default', NULL, 'salsa/Buddha Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:08', '2024-02-26 11:37:30'),
(4236, 22, NULL, '3o-slot-fishReef', 'Fish Reef', '3o-slot-fishReef', 'default', NULL, 'salsa/Fish Reef.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:08', '2024-02-26 11:18:51'),
(4216, 22, NULL, '3o-slot-moreMagicApple', 'More Magic Apple', '3o-slot-moreMagicApple', 'default', NULL, 'salsa/More Magic Apple.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:37:37'),
(4204, 22, NULL, '3o-slot-aztecFire2', 'Aztec Fire 2', '3o-slot-aztecFire2', 'default', NULL, 'salsa/Aztec Fire 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:37:36'),
(4202, 25, NULL, 'bs-SuperGoldenDragonInferno', 'Super Golden Dragon InfernoTM', 'bs-SuperGoldenDragonInferno', 'default', NULL, 'salsa/Super Golden Dragon InfernoTM.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4201, 25, NULL, 'bs-slot-FruitMojo', 'Fruit Mojo', 'bs-slot-FruitMojo', 'default', NULL, 'salsa/Fruit Mojo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4200, 25, NULL, 'bs-slot-72Fortunes', '72 Fortunes', 'bs-slot-72Fortunes', 'default', NULL, 'salsa/72 Fortunes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4199, 25, NULL, 'bs-slot-AprilFuryAndTheChamberOfScarabs', 'April Fury And The Chamber Of Scarabs', 'bs-slot-AprilFuryAndTheChamberOfScarabs', 'default', NULL, 'salsa/April Fury And The Chamber Of Scarabs.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:41:21'),
(4198, 25, NULL, 'bs-slot-WishGranted', 'Wish Granted', 'bs-slot-WishGranted', 'default', NULL, 'salsa/Wish Granted.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4197, 25, NULL, 'bs-slot-PhoSho', 'Pho Sho', 'bs-slot-PhoSho', 'default', NULL, 'salsa/Pho Sho.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:07:07', '2024-04-09 14:36:14'),
(4195, 25, NULL, 'bs-tb-SUPREME777JACKPOTS', 'SUPREME 777 JACKPOTS', 'bs-tb-SUPREME777JACKPOTS', 'default', NULL, 'salsa/SUPREME 777 JACKPOTS.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4193, 25, NULL, 'bs-slot-CharmsandTreasures', 'Charms and Treasures', 'bs-slot-CharmsandTreasures', 'default', NULL, 'salsa/Charms and Treasures.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4192, 25, NULL, 'bs-crash-TripleCrash', 'Triple Cash or Crash', 'bs-crash-TripleCrash', 'default', NULL, 'salsa/Triple Cash or Crash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4191, 25, NULL, 'bs-slot-Expansion', 'Expansion', 'bs-slot-Expansion', 'default', NULL, 'salsa/Expansion.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4190, 25, NULL, 'bs-slot-HEARTSDESIRE', 'HEARTS DESIRE', 'bs-slot-HEARTSDESIRE', 'default', NULL, 'salsa/HEARTS DESIRE.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:25'),
(4189, 25, NULL, 'bs-slot-BOUNDINGLUCK', 'BOUNDING LUCK', 'bs-slot-BOUNDINGLUCK', 'default', NULL, 'salsa/BOUNDING LUCK.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:25'),
(4186, 25, NULL, 'bs-slot-Sleighin', 'Sleighin It', 'bs-slot-Sleighin', 'default', NULL, 'salsa/Sleighin It.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:27'),
(4188, 25, NULL, 'bs-slot-RagstoWitchesNJP', 'Rags to Witches NJP', 'bs-slot-RagstoWitchesNJP', 'default', NULL, 'salsa/Rags to Witches NJP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:27'),
(4185, 25, NULL, 'bs-slot-woodlanders', 'Woodlanders', 'bs-slot-woodlanders', 'default', NULL, 'salsa/Woodlanders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:27'),
(4184, 25, NULL, 'bs-slot-trinintyReels', 'Trininty Reels', 'bs-slot-trinintyReels', 'default', NULL, 'salsa/Trininty Reels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:24'),
(4183, 25, NULL, 'bs-slot-windsofWealth', 'Winds of Wealth', 'bs-slot-windsofWealth', 'default', NULL, 'salsa/Winds of Wealth.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4182, 25, NULL, 'bs-slot-wildsofFortune', 'Wilds of Fortune', 'bs-slot-wildsofFortune', 'default', NULL, 'salsa/Wilds of Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:28'),
(4181, 25, NULL, 'bs-slot-bookofHelios', 'Book of Helios', 'bs-slot-bookofHelios', 'default', NULL, 'salsa/Book of Helios.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:29'),
(4180, 25, NULL, 'bs-slot-geminiJoker', 'Gemini Joker', 'bs-slot-geminiJoker', 'default', NULL, 'salsa/Gemini Joker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:28'),
(4179, 25, NULL, 'bs-slot-kenseiBlades', 'Kensei Blades', 'bs-slot-kenseiBlades', 'default', NULL, 'salsa/Kensei Blades.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4177, 25, NULL, 'bs-slot-primalWilderness', 'Primal Wilderness', 'bs-slot-primalWilderness', 'default', NULL, 'salsa/Primal Wilderness.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4176, 25, NULL, 'bs-slot-lostMysteryChests', 'Lost Mystery Chests', 'bs-slot-lostMysteryChests', 'default', NULL, 'salsa/Lost Mystery Chests.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4175, 25, NULL, 'bs-slot-tripleJuicyDrops', 'Triple Juicy Drops', 'bs-slot-tripleJuicyDrops', 'default', NULL, 'salsa/Triple Juicy Drops.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4174, 25, NULL, 'bs-slot-goldTigerAscent', 'Gold Tiger Ascent', 'bs-slot-goldTigerAscent', 'default', NULL, 'salsa/Gold Tiger Ascent.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4173, 25, NULL, 'bs-slot-taketheKingdom', 'Take the Kingdom', 'bs-slot-taketheKingdom', 'default', NULL, 'salsa/Take the Kingdom.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4172, 25, NULL, 'bs-slot-stayFrosty', 'Stay Frosty', 'bs-slot-stayFrosty', 'default', NULL, 'salsa/Stay Frosty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4171, 25, NULL, 'bs-slot-thaiBlossoms', 'Thai Blossoms', 'bs-slot-thaiBlossoms', 'default', NULL, 'salsa/Thai Blossoms.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4170, 25, NULL, 'bs-slot-returntoParis', 'Return to Paris', 'bs-slot-returntoParis', 'default', NULL, 'salsa/Return to Paris.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4169, 25, NULL, 'bs-slot-towerofFortuna', 'Tower of Fortuna', 'bs-slot-towerofFortuna', 'default', NULL, 'salsa/Tower of Fortuna.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4168, 25, NULL, 'bs-slot-7fortuneFrenzy', '7 Fortune Frenzy', 'bs-slot-7fortuneFrenzy', 'default', NULL, 'salsa/7 Fortune Frenzy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4167, 25, NULL, 'bs-slot-88fortune', '88 Frenzy Fortune', 'bs-slot-88fortune', 'default', NULL, 'salsa/88 Frenzy Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4166, 25, NULL, 'bs-slot-wildDrops', 'Wild Drops', 'bs-slot-wildDrops', 'default', NULL, 'salsa/Wild Drops.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4165, 25, NULL, 'bs-slot-jungleStripes', 'Jungle Stripes', 'bs-slot-jungleStripes', 'default', NULL, 'salsa/Jungle Stripes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4164, 25, NULL, 'bs-slot-mrMacau', 'Mr. Macau', 'bs-slot-mrMacau', 'default', NULL, 'salsa/Mr. Macau.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4163, 25, NULL, 'bs-slot-hatTrickHero', 'Hat Trick Hero', 'bs-slot-hatTrickHero', 'default', NULL, 'salsa/Hat Trick Hero.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4161, 25, NULL, 'bs-slot-safariSam2', 'Safari Sam 2', 'bs-slot-safariSam2', 'default', NULL, 'salsa/Safari Sam 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4162, 25, NULL, 'bs-slot-lavaGold', 'Lava Gold', 'bs-slot-lavaGold', 'default', NULL, 'salsa/Lava Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:40:07'),
(4160, 25, NULL, 'bs-slot-takeOlympus', 'Take Olympus', 'bs-slot-takeOlympus', 'default', NULL, 'salsa/Take Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4159, 25, NULL, 'bs-slot-stacked', 'Stacked', 'bs-slot-stacked', 'default', NULL, 'salsa/Stacked.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4158, 25, NULL, 'bs-slot-primalHunt', 'Primal Hunt', 'bs-slot-primalHunt', 'default', NULL, 'salsa/Primal Hunt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:50'),
(4157, 25, NULL, 'bs-slot-goldenHorns', 'Golden Horns', 'bs-slot-goldenHorns', 'default', NULL, 'salsa/Golden Horns.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:44'),
(4156, 25, NULL, 'bs-slot-dimSumPrize', 'Dim Sum Prize', 'bs-slot-dimSumPrize', 'default', NULL, 'salsa/Dim Sum Prize.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:21'),
(4154, 25, NULL, 'bs-slot-takeSantasShop', 'Take Santas Shop', 'bs-slot-takeSantasShop', 'default', NULL, 'salsa/Take Santas Shop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:21'),
(4153, 25, NULL, 'bs-slot-milesBellhouseandGears', 'Miles Bellhouse and the Gears of Time', 'bs-slot-milesBellhouseandGears', 'default', NULL, 'salsa/Miles Bellhouse and the Gears of Time.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:19'),
(4152, 25, NULL, 'bs-tb-deuces-wild', 'Deuces Wild', 'bs-tb-deuces-wild', 'default', NULL, 'salsa/Deuces Wild.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:19'),
(4151, 25, NULL, 'bs-tb-three-card-rummy', 'Three Card Rummy', 'bs-tb-three-card-rummy', 'default', NULL, 'salsa/Three Card Rummy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:18'),
(4150, 25, NULL, 'bs-tb-oasis-poker', 'Oasis Poker', 'bs-tb-oasis-poker', 'default', NULL, 'salsa/Oasis Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:18'),
(4149, 25, NULL, 'bs-tb-vip-american-roulette', 'Vip American Roulette', 'bs-tb-vip-american-roulette', 'default', NULL, 'salsa/Vip American Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:18'),
(4148, 25, NULL, 'bs-tb-vip-european-roulette', 'Vip European Roulette', 'bs-tb-vip-european-roulette', 'default', NULL, 'salsa/Vip European Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:17'),
(4146, 25, NULL, 'bs-tb-european-blackjack', 'European Blackjack', 'bs-tb-european-blackjack', 'default', NULL, 'salsa/European Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:17'),
(4144, 25, NULL, 'bs-tb-red-dog', 'Red Dog', 'bs-tb-red-dog', 'default', NULL, 'salsa/Red Dog.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:13'),
(4145, 25, NULL, 'bs-tb-triple-edge-poker', 'Triple Edge Poker', 'bs-tb-triple-edge-poker', 'default', NULL, 'salsa/Triple Edge Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:15'),
(4143, 25, NULL, 'bs-tb-pirate-21', 'Pirate 21', 'bs-tb-pirate-21', 'default', NULL, 'salsa/Pirate 21.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:13'),
(4142, 25, NULL, 'bs-tb-pontoon', 'Pontoon', 'bs-tb-pontoon', 'default', NULL, 'salsa/Pontoon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:12'),
(4141, 25, NULL, 'bs-tb-european-roulette', 'European Roulette', 'bs-tb-european-roulette', 'default', NULL, 'salsa/European Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:12'),
(4140, 25, NULL, 'bs-tb-draw-hi-lo', 'Draw Hi-Lo', 'bs-tb-draw-hi-lo', 'default', NULL, 'salsa/Draw Hi-Lo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:10'),
(4139, 25, NULL, 'bs-tb-21-burn-blackjack', '21 Burn Blackjack', 'bs-tb-21-burn-blackjack', 'default', NULL, 'salsa/21 Burn Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:10'),
(4138, 25, NULL, 'bs-tb-single-deck-blackjack', 'Single Deck Blackjack', 'bs-tb-single-deck-blackjack', 'default', NULL, 'salsa/Single Deck Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:09'),
(4137, 25, NULL, 'bs-tb-top-card-trumps', 'Top Card Trumps', 'bs-tb-top-card-trumps', 'default', NULL, 'salsa/Top Card Trumps.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:07'),
(4136, 25, NULL, 'bs-tb-super-7-blackjack', 'Super 7 Blackjack', 'bs-tb-super-7-blackjack', 'default', NULL, 'salsa/Super 7 Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:06'),
(4134, 25, NULL, 'bs-tb-caribbean-poker', 'Caribbean Poker', 'bs-tb-caribbean-poker', 'default', NULL, 'salsa/Caribbean Poker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:06'),
(4133, 25, NULL, 'bs-tb-pai-gow', 'Pai Gow', 'bs-tb-pai-gow', 'default', NULL, 'salsa/Pai Gow.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:06'),
(4132, 25, NULL, 'bs-tb-american-roulette', 'American Roulette', 'bs-tb-american-roulette', 'default', NULL, '01HQJG2NVJM8S5ZS29D801N0V6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:41:32'),
(4130, 25, NULL, 'bs-slot-the-hive', 'The Hive', 'bs-slot-the-hive', 'default', NULL, 'salsa/The Hive.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:04'),
(4131, 25, NULL, 'bs-slot-mystic-hive', 'Mystic Hive', 'bs-slot-mystic-hive', 'default', NULL, 'salsa/Mystic Hive.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:52'),
(4129, 25, NULL, 'bs-slot-book-of-shadows', 'Book of Darkness', 'bs-slot-book-of-shadows', 'default', NULL, 'salsa/Book of Darkness.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:03'),
(4128, 25, NULL, 'bs-slot-quest-to-the-west', 'Quest To The West', 'bs-slot-quest-to-the-west', 'default', NULL, 'salsa/Quest To The West.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:54'),
(4126, 25, NULL, 'bs-slot-total-overdrive', 'Total Overdrive', 'bs-slot-total-overdrive', 'default', NULL, 'salsa/Total Overdrive.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:01'),
(4125, 25, NULL, 'bs-slot-back-to-venus', 'Back To Venus', 'bs-slot-back-to-venus', 'default', NULL, 'salsa/Back To Venus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:01'),
(4124, 25, NULL, 'bs-slot-spring-tails', 'Spring Tails', 'bs-slot-spring-tails', 'default', NULL, 'salsa/Spring Tails.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:01'),
(4123, 25, NULL, 'bs-slot-super-sweets', 'Super Sweets', 'bs-slot-super-sweets', 'default', NULL, 'salsa/Super Sweets.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:00'),
(4122, 25, NULL, 'bs-slot-dragon-and-phoenix', 'Dragon & Phoenix', 'bs-slot-dragon-and-phoenix', 'default', NULL, 'salsa/Dragon & Phoenix.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:00'),
(4121, 25, NULL, 'bs-slot-take-the-bank', 'Take The Bank', 'bs-slot-take-the-bank', 'default', NULL, 'salsa/Take The Bank.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:58'),
(4119, 25, NULL, 'bs-slot-gemmed', 'Gemmed', 'bs-slot-gemmed', 'default', NULL, 'salsa/Gemmed.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:57'),
(4120, 25, NULL, 'bs-slot-caishens-arrival', 'Caishens Arrival', 'bs-slot-caishens-arrival', 'default', NULL, 'salsa/Caishens Arrival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:58'),
(4118, 25, NULL, 'bs-slot-wolf-moon-rising', 'Wolf Moon Rising', 'bs-slot-wolf-moon-rising', 'default', NULL, 'salsa/Wolf Moon Rising.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:57'),
(4117, 25, NULL, 'bs-slot-gold-canyon', 'Gold Canyon', 'bs-slot-gold-canyon', 'default', NULL, 'salsa/Gold Canyon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:40:00'),
(4116, 25, NULL, 'bs-slot-spinfinity-man', 'Spinfinity Man', 'bs-slot-spinfinity-man', 'default', NULL, 'salsa/Spinfinity Man.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:40:06'),
(4115, 25, NULL, 'bs-slot-bamboo-rush', 'Bamboo Rush', 'bs-slot-bamboo-rush', 'default', NULL, 'salsa/Bamboo Rush.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:54'),
(4114, 25, NULL, 'bs-slot-viking-voyage', 'Viking Voyage', 'bs-slot-viking-voyage', 'default', NULL, 'salsa/Viking Voyage.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:53'),
(4113, 25, NULL, 'bs-slot-fruitbat-crazy', 'Fruit bat Crazy', 'bs-slot-fruitbat-crazy', 'default', NULL, 'salsa/Fruit bat Crazy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:09:51'),
(4112, 25, NULL, 'bs-slot-carnaval-forever', 'Carnaval Forever', 'bs-slot-carnaval-forever', 'default', NULL, 'salsa/Carnaval Forever.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:42'),
(4111, 25, NULL, 'bs-slot-yak-yeti-and-roll', 'Yak, Yeti & Roll', 'bs-slot-yak-yeti-and-roll', 'default', NULL, 'salsa/Yak, Yeti & Roll.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:44'),
(4110, 25, NULL, 'bs-slot-chilli-pop', 'Chilli Pop', 'bs-slot-chilli-pop', 'default', NULL, 'salsa/Chilli Pop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:44'),
(4109, 25, NULL, 'bs-slot-faerie-spells', 'Faerie Spells', 'bs-slot-faerie-spells', 'default', NULL, 'salsa/Faerie Spells.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:45'),
(4108, 25, NULL, 'bs-slot-dragon-kings', 'Dragon Kings', 'bs-slot-dragon-kings', 'default', NULL, 'salsa/Dragon Kings.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:45'),
(4107, 25, NULL, 'bs-slot-the-golden-owl-of-athena', 'The Golden Owl of Athena', 'bs-slot-the-golden-owl-of-athena', 'default', NULL, 'salsa/The Golden Owl of Athena.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:45'),
(4106, 25, NULL, 'bs-slot-ogre-empire', 'Ogre Empire', 'bs-slot-ogre-empire', 'default', NULL, 'salsa/Ogre Empire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:45'),
(4105, 25, NULL, 'bs-slot-reels-of-wealth', 'Reels Of Wealth', 'bs-slot-reels-of-wealth', 'default', NULL, 'salsa/Reels Of Wealth.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:46'),
(4103, 25, NULL, 'bs-slot-giovannis-gems', 'Giovannis Gems', 'bs-slot-giovannis-gems', 'default', NULL, 'salsa/Giovannis Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:48'),
(4102, 25, NULL, 'bs-slot-sugar-pop-2', 'Sugar Pop 2', 'bs-slot-sugar-pop-2', 'default', NULL, 'salsa/Sugar Pop 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:48'),
(4101, 25, NULL, 'bs-slot-legend-of-the-nile', 'Legend Of The Nile', 'bs-slot-legend-of-the-nile', 'default', NULL, 'salsa/Legend Of The Nile.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:48'),
(4100, 25, NULL, 'bs-slot-stampede', 'Stampede', 'bs-slot-stampede', 'default', NULL, 'salsa/Stampede.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:40:53'),
(4099, 25, NULL, 'bs-slot-jumbo-joker', 'Jumbo Joker', 'bs-slot-jumbo-joker', 'default', NULL, 'salsa/Jumbo Joker.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:49'),
(4098, 25, NULL, 'bs-slot-blood-eternal', 'Blood Eternal', 'bs-slot-blood-eternal', 'default', NULL, 'salsa/Blood Eternal.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:54'),
(4097, 25, NULL, 'bs-slot-fire-and-steel', 'Fire & Steel', 'bs-slot-fire-and-steel', 'default', NULL, 'salsa/Fire & Steel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:51'),
(4096, 25, NULL, 'bs-slot-magic-shoppe', 'Magic Shoppe', 'bs-slot-magic-shoppe', 'default', NULL, 'salsa/Magic Shoppe.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:52'),
(4095, 25, NULL, 'bs-slot-the-angler', 'The Angler', 'bs-slot-the-angler', 'default', NULL, 'salsa/The Angler.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:54'),
(4094, 25, NULL, 'bs-slot-kawaii-kitty', 'Kawaii Kitty', 'bs-slot-kawaii-kitty', 'default', NULL, 'salsa/Kawaii Kitty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:56'),
(4093, 25, NULL, 'bs-slot-sin-city-nights', 'Sin City Nights', 'bs-slot-sin-city-nights', 'default', NULL, 'salsa/Sin City Nights.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:58'),
(4092, 25, NULL, 'bs-slot-slotfather-2', 'Slotfather 2', 'bs-slot-slotfather-2', 'default', NULL, 'salsa/Slotfather 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:58'),
(4091, 25, NULL, 'bs-slot-great-88', 'Great 88', 'bs-slot-great-88', 'default', NULL, 'salsa/Great 88.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:10:59'),
(4090, 25, NULL, 'bs-slot-fa-fa-twins', 'Fa-Fa Twins', 'bs-slot-fa-fa-twins', 'default', NULL, 'salsa/Fa-Fa Twins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4089, 25, NULL, 'bs-slot-charms-and-clovers', 'Charms And Clovers', 'bs-slot-charms-and-clovers', 'default', NULL, 'salsa/Charms And Clovers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4088, 25, NULL, 'bs-slot-birds', 'Birds', 'bs-slot-birds', 'default', NULL, 'salsa/Birds.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4087, 25, NULL, 'bs-slot-frankenslots-monster', 'Frankenslots Monster', 'bs-slot-frankenslots-monster', 'default', NULL, 'salsa/Frankenslots Monster.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4086, 25, NULL, 'bs-slot-4-seasons', '4 Seasons', 'bs-slot-4-seasons', 'default', NULL, 'salsa/4 Seasons.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4085, 25, NULL, 'bs-slot-a-christmas-carol', 'A Christmas Carol', 'bs-slot-a-christmas-carol', 'default', NULL, 'salsa/A Christmas Carol.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4084, 25, NULL, 'bs-slot-the-tipsy-tourist', 'The Tipsy Tourist', 'bs-slot-the-tipsy-tourist', 'default', NULL, 'salsa/The Tipsy Tourist.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4083, 25, NULL, 'bs-slot-weekend-in-vegas', 'Weekend In Vegas', 'bs-slot-weekend-in-vegas', 'default', NULL, 'salsa/Weekend In Vegas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4082, 25, NULL, 'bs-slot-mega-glam-life-jp', 'Mega Glam Life JP', 'bs-slot-mega-glam-life-jp', 'default', NULL, 'salsa/Mega Glam Life JP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4081, 25, NULL, 'bs-slot-alkemors-tower', 'Alkemors Tower', 'bs-slot-alkemors-tower', 'default', NULL, 'salsa/Alkemors Tower.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4080, 25, NULL, 'bs-slot-event-horizon', 'Event Horizon', 'bs-slot-event-horizon', 'default', NULL, 'salsa/Event Horizon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4079, 25, NULL, 'bs-slot-mega-gems', 'Mega Gems', 'bs-slot-mega-gems', 'default', NULL, 'salsa/Mega Gems.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4078, 25, NULL, 'bs-slot-pinocchio', 'Pinocchio', 'bs-slot-pinocchio', 'default', NULL, 'salsa/Pinocchio.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4077, 25, NULL, 'bs-slot-fruit-zen', 'Fruit Zen', 'bs-slot-fruit-zen', 'default', NULL, 'salsa/Fruit Zen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4076, 25, NULL, 'bs-slot-it-came-from-venus-jp-plus', 'It Came From Venus JP Plus', 'bs-slot-it-came-from-venus-jp-plus', 'default', NULL, 'salsa/It Came From Venus JP Plus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4075, 25, NULL, 'bs-slot-dr-jekyll-and-mr-hyde', 'Dr Jekyll and Mr Hyde', 'bs-slot-dr-jekyll-and-mr-hyde', 'default', NULL, 'salsa/Dr Jekyll and Mr Hyde.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4073, 25, NULL, 'bs-slot-gypsy-rose', 'Gypsy Rose', 'bs-slot-gypsy-rose', 'default', NULL, 'salsa/Gypsy Rose.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4074, 25, NULL, 'bs-slot-puppy-love-plus', 'Puppy Love Plus', 'bs-slot-puppy-love-plus', 'default', NULL, 'salsa/Puppy Love Plus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4072, 25, NULL, 'bs-slot-tycoons-plus', 'Tycoons Plus', 'bs-slot-tycoons-plus', 'default', NULL, 'salsa/Tycoons Plus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4069, 25, NULL, 'bs-slot-good-girl-bad-girl', 'Good Girl, Bad Girl', 'bs-slot-good-girl-bad-girl', 'default', NULL, 'salsa/Good Girl, Bad Girl.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4071, 25, NULL, 'bs-slot-the-curious-machine-plus', 'The Curious Machine Plus', 'bs-slot-the-curious-machine-plus', 'default', NULL, 'salsa/The Curious Machine Plus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4068, 25, NULL, 'bs-slot-sugar-pop', 'Sugar Pop', 'bs-slot-sugar-pop', 'default', NULL, 'salsa/Sugar Pop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4067, 25, NULL, 'bs-slot-the-true-sheriff', 'The True Sheriff', 'bs-slot-the-true-sheriff', 'default', NULL, 'salsa/The True Sheriff.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4065, 25, NULL, 'bs-slot-enchanted-jp', 'Enchanted JP', 'bs-slot-enchanted-jp', 'default', NULL, 'salsa/Enchanted JP.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4066, 25, NULL, 'bs-slot-a-night-in-paris-jp', 'A Night in Paris jp', 'bs-slot-a-night-in-paris-jp', 'default', NULL, 'salsa/A Night in Paris jp.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4064, 25, NULL, 'bs-slot-slotfather-jp', 'Slot Father jp', 'bs-slot-slotfather-jp', 'default', NULL, 'salsa/Slot Father jp.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4063, 25, NULL, 'bs-slot-greedy-goblins', 'Greedy Goblins', 'bs-slot-greedy-goblins', 'default', NULL, 'salsa/Greedy Goblins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4061, 25, NULL, 'bs-slot-under-the-bed', 'Under the Bed', 'bs-slot-under-the-bed', 'default', NULL, 'salsa/Under the Bed.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4062, 25, NULL, 'bs-slot-boomanji', 'Boomanji', 'bs-slot-boomanji', 'default', NULL, 'salsa/Boomanji.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4060, 25, NULL, 'bs-slot-at-the-copa', 'At The Copa', 'bs-slot-at-the-copa', 'default', NULL, 'salsa/At The Copa.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4059, 25, NULL, 'bs-slot-after-night-falls', 'After Night Falls', 'bs-slot-after-night-falls', 'default', NULL, 'salsa/After Night Falls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4058, 25, NULL, 'bs-slot-sushi-bar', 'Sushi Bar', 'bs-slot-sushi-bar', 'default', NULL, 'salsa/Sushi Bar.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4057, 25, NULL, 'bs-slot-safari-sam', 'Safari Sam', 'bs-slot-safari-sam', 'default', NULL, 'salsa/Safari Sam.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4054, 25, NULL, 'bs-slot-the-exterminator', 'The Exterminator', 'bs-slot-the-exterminator', 'default', NULL, 'salsa/The Exterminator.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4055, 25, NULL, 'bs-slot-at-the-movies', 'At the Movies', 'bs-slot-at-the-movies', 'default', NULL, 'salsa/At the Movies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(4053, 25, NULL, 'bs-slot-under-the-sea', 'Under the Sea', 'bs-slot-under-the-sea', 'default', NULL, 'salsa/Under the Sea.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4052, 25, NULL, 'bs-slot-slots-angels', 'Slots Angels', 'bs-slot-slots-angels', 'default', NULL, 'salsa/Slots Angels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4051, 25, NULL, 'bs-slot-black-gold', 'Black Gold', 'bs-slot-black-gold', 'default', NULL, 'salsa/Black Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4050, 25, NULL, 'bs-slot-lost', 'Lost', 'bs-slot-lost', 'default', NULL, 'salsa/Lost.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4049, 25, NULL, 'bs-slot-madder-scientist', 'Madder Scientist', 'bs-slot-madder-scientist', 'default', NULL, 'salsa/Madder Scientist.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4047, 25, NULL, 'bs-slot-true-illusions', 'True Illusions', 'bs-slot-true-illusions', 'default', NULL, 'salsa/True Illusions.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4048, 25, NULL, 'bs-slot-mamma-mia', 'Mamma Mia', 'bs-slot-mamma-mia', 'default', NULL, 'salsa/Mamma Mia.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4046, 25, NULL, 'bs-slot-7th-heaven', '7th Heaven', 'bs-slot-7th-heaven', 'default', NULL, 'salsa/7th Heaven.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4045, 25, NULL, 'bs-slot-viking-age', 'Viking Age', 'bs-slot-viking-age', 'default', NULL, 'salsa/Viking Age.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4044, 25, NULL, 'bs-slot-arrival', 'Arrival', 'bs-slot-arrival', 'default', NULL, 'salsa/Arrival.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4043, 25, NULL, 'bs-slot-paco-and-the-popping-peppers', 'Paco and the Popping Peppers', 'bs-slot-paco-and-the-popping-peppers', 'default', NULL, 'salsa/Paco and the Popping Peppers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4042, 25, NULL, 'bs-slot-2-million-bc', '2 Million B.C.', 'bs-slot-2-million-bc', 'default', NULL, 'salsa/2 Million B.C..webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4040, 25, NULL, 'bs-slot-house-of-fun', 'House of Fun', 'bs-slot-house-of-fun', 'default', NULL, 'salsa/House of Fun.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4041, 25, NULL, 'bs-slot-gold-diggers', 'Gold Diggers', 'bs-slot-gold-diggers', 'default', NULL, 'salsa/Gold Diggers.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4039, 25, NULL, 'bs-slot-rockstar', 'RockStar', 'bs-slot-rockstar', 'default', NULL, 'salsa/RockStar.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4038, 25, NULL, 'bs-slot-mr-vegas', 'Mr. Vegas', 'bs-slot-mr-vegas', 'default', NULL, 'salsa/Mr. Vegas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4037, 25, NULL, 'bs-slot-barbary-coast', 'Barbary Coast', 'bs-slot-barbary-coast', 'default', NULL, 'salsa/Barbary Coast.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4035, 25, NULL, 'bs-slot-heist', 'Heist', 'bs-slot-heist', 'default', NULL, 'salsa/Heist.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4036, 25, NULL, 'bs-slot-once-upon-a-time', 'Once Upon A Time', 'bs-slot-once-upon-a-time', 'default', NULL, 'salsa/Once Upon A Time.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4034, 25, NULL, 'bs-slot-gladiator', 'Gladiator', 'bs-slot-gladiator', 'default', NULL, 'salsa/Gladiator.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4033, 25, NULL, 'bs-slot-genies-fortune', 'Genies Fortune', 'bs-slot-genies-fortune', 'default', NULL, 'salsa/Genies Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4032, 25, NULL, 'bs-slot-glam-life', 'Glam Life', 'bs-slot-glam-life', 'default', NULL, 'salsa/Glam Life.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4030, 31, NULL, 'sms-crash-jokerbuybonus', 'Jokers 4 Bonuses', 'sms-crash-jokerbuybonus', 'default', NULL, 'salsa/Jokers 4 Bonuses.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:40'),
(4031, 25, NULL, 'bs-slot-lucky-seven', 'Lucky Seven', 'bs-slot-lucky-seven', 'default', NULL, 'salsa/Lucky Seven.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:16'),
(4029, 31, NULL, 'sms-crash-multihotways', 'Multi Hot Ways', 'sms-crash-multihotways', 'default', NULL, 'salsa/Multi Hot Ways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:40'),
(4028, 31, NULL, 'sms-crash-slicerx', 'Slicer X', 'sms-crash-slicerx', 'default', NULL, 'salsa/Slicer X.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:39'),
(4026, 31, NULL, 'sms-slot-babylon', 'Babylon', 'sms-slot-babylon', 'default', NULL, 'salsa/Babylon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:38'),
(4027, 31, NULL, 'sms-crash-towerx', 'Tower X', 'sms-crash-towerx', 'default', NULL, 'salsa/Tower X.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:38'),
(4025, 31, NULL, 'sms-slot-zombies', 'Zombies', 'sms-slot-zombies', 'default', NULL, 'salsa/Zombies.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:37'),
(4024, 31, NULL, 'sms-slot-paradice10', 'Para Dice 10', 'sms-slot-paradice10', 'default', NULL, 'salsa/Para Dice 10.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:36'),
(4022, 31, NULL, 'sms-tb-plinkox', 'PlinkoX', 'sms-tb-plinkox', 'default', NULL, 'salsa/PlinkoX.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:33'),
(4023, 31, NULL, 'sms-tb-footballx', 'FootballX', 'sms-tb-footballx', 'default', NULL, 'salsa/FootballX.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:34'),
(4021, 31, NULL, 'sms-tb-vipkeno', 'VIP Keno', 'sms-tb-vipkeno', 'default', NULL, 'salsa/VIP Keno.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:32'),
(4020, 31, NULL, 'sms-tb-russiankeno', 'Russian Keno', 'sms-tb-russiankeno', 'default', NULL, 'salsa/Russian Keno.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:23'),
(4019, 31, NULL, 'sms-tb-classickeno', 'French Keno', 'sms-tb-classickeno', 'default', NULL, 'salsa/French Keno.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:31'),
(4018, 31, NULL, 'sms-tb-virtualclassicroulette', 'Virtual Classic Roulette', 'sms-tb-virtualclassicroulette', 'default', NULL, 'salsa/Virtual Classic Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:30'),
(4017, 31, NULL, 'sms-tb-animationroulette', 'Personal Roulette', 'sms-tb-animationroulette', 'default', NULL, 'salsa/Personal Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:29'),
(4016, 31, NULL, 'sms-tb-bonusroulette', 'Bonus Roulette', 'sms-tb-bonusroulette', 'default', NULL, 'salsa/Bonus Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:29'),
(4015, 31, NULL, 'sms-tb-virtualburningroulette', 'Virtual Burning Roulette', 'sms-tb-virtualburningroulette', 'default', NULL, 'salsa/Virtual Burning Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:28'),
(4014, 31, NULL, 'sms-tb-virtualroulette', 'Virtual Roulette', 'sms-tb-virtualroulette', 'default', NULL, 'salsa/Virtual Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:28'),
(4012, 31, NULL, 'sms-slot-multihot5', 'Multi Hot5', 'sms-slot-multihot5', 'default', NULL, 'salsa/Multi Hot5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:27'),
(4013, 31, NULL, 'sms-slot-elves', 'The Kingdom of the Elves', 'sms-slot-elves', 'default', NULL, 'salsa/The Kingdom of the Elves.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:27'),
(4011, 31, NULL, 'sms-slot-vampires', 'Vampires', 'sms-slot-vampires', 'default', NULL, 'salsa/Vampires.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:26'),
(4010, 31, NULL, 'sms-slot-dark100', 'Dark 100', 'sms-slot-dark100', 'default', NULL, 'salsa/Dark 100.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:26'),
(4008, 31, NULL, 'sms-slot-ww2', 'World War II', 'sms-slot-ww2', 'default', NULL, 'salsa/World War II.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:45:40'),
(4009, 31, NULL, 'sms-slot-summercocktail', 'Summer Cocktail', 'sms-slot-summercocktail', 'default', NULL, 'salsa/Summer Cocktail.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:24'),
(4007, 31, NULL, 'sms-slot-dark', 'Dark', 'sms-slot-dark', 'default', NULL, 'salsa/Dark.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:41'),
(4005, 31, NULL, 'sms-slot-blazinghot40', 'Burning Ice 40', 'sms-slot-blazinghot40', 'default', NULL, 'salsa/Burning Ice 40.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:09'),
(4006, 31, NULL, 'sms-slot-fruit40', 'Magic Garden 40', 'sms-slot-fruit40', 'default', NULL, 'salsa/Magic Garden 40.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:09'),
(4004, 31, NULL, 'sms-slot-fruit10', 'Magic Garden 10', 'sms-slot-fruit10', 'default', NULL, 'salsa/Magic Garden 10.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:08'),
(4003, 31, NULL, 'sms-slot-blazinghot10', 'Burning Ice 10', 'sms-slot-blazinghot10', 'default', NULL, 'salsa/Burning Ice 10.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:07'),
(4002, 31, NULL, 'sms-slot-fruit5', 'Magic Garden', 'sms-slot-fruit5', 'default', NULL, 'salsa/Magic Garden.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:05'),
(4001, 31, NULL, 'sms-slot-evolution', 'Evolution', 'sms-slot-evolution', 'default', NULL, 'salsa/Evolution.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:04'),
(4000, 31, NULL, 'sms-slot-blazinghot', 'Burning Ice', 'sms-slot-blazinghot', 'default', NULL, 'salsa/Burning Ice.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:03'),
(3997, 31, NULL, 'sms-slot-argo', 'Argo', 'sms-slot-argo', 'default', NULL, 'salsa/Argo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:02'),
(3998, 31, NULL, 'sms-slot-moonstone', 'MoonStone', 'sms-slot-moonstone', 'default', NULL, 'salsa/MoonStone.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:03'),
(3996, 31, NULL, 'sms-slot-samurai', 'Samurai', 'sms-slot-samurai', 'default', NULL, 'salsa/Samurai.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:01'),
(3995, 31, NULL, 'sms-slot-funfruit', 'Fun Fruit', 'sms-slot-funfruit', 'default', NULL, 'salsa/Fun Fruit.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:58:00'),
(3992, 31, NULL, 'sms-slot-cowboy', 'Cowboy', 'sms-slot-cowboy', 'default', NULL, 'salsa/Cowboy.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:58'),
(3994, 31, NULL, 'sms-slot-christmas', 'Christmas Eve', 'sms-slot-christmas', 'default', NULL, 'salsa/Christmas Eve.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:59'),
(3991, 31, NULL, 'sms-slot-cityslot', 'City Slot', 'sms-slot-cityslot', 'default', NULL, 'salsa/City Slot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:58'),
(3990, 31, NULL, 'sms-slot-aztec', 'Aztec', 'sms-slot-aztec', 'default', NULL, 'salsa/Aztec.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:57'),
(3988, 31, NULL, 'sms-tb-cricketx', 'CricketX', 'sms-tb-cricketx', 'default', NULL, 'salsa/CricketX.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:54'),
(3989, 31, NULL, 'sms-slot-viking', 'Viking', 'sms-slot-viking', 'default', NULL, 'salsa/Viking.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:56'),
(3987, 31, NULL, 'sms-tb-jetx3', 'JetX3', 'sms-tb-jetx3', 'default', NULL, 'salsa/JetX3.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:46:53'),
(3985, 35, NULL, 'prag-tb-roulette', 'Roulette', 'prag-tb-roulette', 'default', NULL, 'salsa/Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:26:26'),
(3986, 31, NULL, 'sms-tb-spinx', 'SpinX', 'sms-tb-spinx', 'default', NULL, 'salsa/SpinX.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 06:57:46'),
(3984, 25, NULL, 'prag-tb-baccarat', 'Baccarat', 'prag-tb-baccarat', 'default', NULL, 'salsa/Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-04 13:13:15'),
(3983, 35, NULL, 'prag-sc-7Piggies', '7 Piggies 5,000', 'prag-sc-7Piggies', 'default', NULL, 'salsa/7 Piggies 5,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:25:46'),
(3982, 35, NULL, 'prag-sc-DiamondStrike', 'Diamond Strike 100,000', 'prag-sc-DiamondStrike', 'default', NULL, 'salsa/Diamond Strike 100,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:26:57'),
(3981, 35, NULL, 'prag-sc-GoldRush', 'Gold Rush 250,000', 'prag-sc-GoldRush', 'default', NULL, 'salsa/Gold Rush 250,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:17'),
(3979, 35, NULL, 'prag-sc-PandaGold', 'Panda Gold 10,000', 'prag-sc-PandaGold', 'default', NULL, 'salsa/Panda Gold 10,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:29'),
(3980, 35, NULL, 'prag-sc-HotSafari', 'Hot Safari 50,000', 'prag-sc-HotSafari', 'default', NULL, 'salsa/Hot Safari 50,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:24'),
(3978, 35, NULL, 'prag-sc-wolfGold1Million', 'Wolf Gold 1,000,000', 'prag-sc-wolfGold1Million', 'default', NULL, 'salsa/Wolf Gold 1,000,000.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:35'),
(3977, 17, NULL, 'prag-tb-dragonTiger', 'Dragon Tiger', 'prag-tb-dragonTiger', 'default', NULL, 'salsa/Dragon Tiger.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 1, '2024-02-04 12:07:07', '2024-04-10 21:48:51'),
(3976, 35, NULL, 'prag-tb-americanBlackjack', 'American Blackjack', 'prag-tb-americanBlackjack', 'default', NULL, 'salsa/American Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:43'),
(3975, 35, NULL, 'prag-tb-multihandBlackjack', 'Multihand Blackjack', 'prag-tb-multihandBlackjack', 'default', NULL, 'salsa/Multihand Blackjack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:48'),
(3974, 35, NULL, 'prag-slot-peakyBlinders', 'Peaky Blinders', 'prag-slot-peakyBlinders', 'default', NULL, 'salsa/Peaky Blinders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 13:02:43'),
(3969, 35, NULL, 'prag-BigBassCrash', 'Big Bass Crash', 'prag-BigBassCrash', 'default', NULL, 'salsa/Big Bass Crash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 13:02:44'),
(3965, 36, NULL, 'prag-HorseRacing', 'Horse Racing', 'prag-HorseRacing', 'default', NULL, 'salsa/Horse Racing.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:15'),
(3966, 36, NULL, 'prag-PenaltyShootout', 'Penalty Shootout', 'prag-PenaltyShootout', 'default', NULL, 'salsa/Penalty Shootout.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:14'),
(3964, 36, NULL, 'prag-GreyhoundRacing', 'Greyhound Racing', 'prag-GreyhoundRacing', 'default', NULL, 'salsa/Greyhound Racing.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:16'),
(3962, 36, NULL, 'prag-Force1', 'Force 1', 'prag-Force1', 'default', NULL, 'salsa/Force 1.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:17'),
(3963, 36, NULL, 'prag-FantasticLeague', 'Fantastic League', 'prag-FantasticLeague', 'default', NULL, 'salsa/Fantastic League.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:16'),
(3961, 36, NULL, 'prag-Steeplechase', 'Steeplechase', 'prag-Steeplechase', 'default', NULL, 'salsa/Steeplechase.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 0, '2024-02-04 12:07:07', '2024-03-06 08:32:18'),
(3949, 35, NULL, 'prag-SkyBount', 'Sky Bount', 'prag-SkyBount', 'default', NULL, 'salsa/Sky Bount.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:27:54'),
(3941, 35, NULL, 'prag-slot-LobsterBobsCrazyCrabShack', 'Lobster Bob’s Crazy Crab Shack', 'prag-slot-LobsterBobsCrazyCrabShack', 'default', NULL, 'salsa/Lobster Bob’s Crazy Crab Shack.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:01'),
(3939, 35, NULL, 'prag-slot-HeistfortheGoldenNugget', 'Heist for the Golden Nugget', 'prag-slot-HeistfortheGoldenNugget', 'default', NULL, 'salsa/Heist for the Golden Nugget.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:08'),
(3936, 35, NULL, 'prag-slot-BigBassBonanzaMegaways', 'Big Bass Bonanza Megaways', 'prag-slot-BigBassBonanzaMegaways', 'default', NULL, 'salsa/Big Bass Bonanza Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:15'),
(3935, 35, NULL, 'prag-slot-BigBassKeepingitReel', 'Big Bass - Keeping it Reel', 'prag-slot-BigBassKeepingitReel', 'default', NULL, 'salsa/Big Bass - Keeping it Reel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:22'),
(3927, 21, NULL, 'bgtv-lg-lucky-7', 'Lucky 7', 'bgtv-lg-lucky-7', 'default', NULL, 'salsa/Lucky 7.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:14'),
(3925, 21, NULL, 'bgtv-lg-wheel-of-fortune', 'Wheel Of Fortune', 'bgtv-lg-wheel-of-fortune', 'default', NULL, 'salsa/Wheel Of Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:16'),
(3926, 21, NULL, 'bgtv-lg-classic-wheel', 'Classic Wheel', 'bgtv-lg-classic-wheel', 'default', NULL, 'salsa/Classic Wheel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:39:15'),
(3924, 35, NULL, 'prag-slot-big-bass-amazon-xtrem', 'Big Bass Amazon Xtrem', 'prag-slot-big-bass-amazon-xtrem', 'default', NULL, 'salsa/Big Bass Amazon Xtrem.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 12:28:31'),
(3922, 35, NULL, 'prag-slot-country-farming', 'Country Farming', 'prag-slot-country-farming', 'default', NULL, 'salsa/Country Farming.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:38'),
(3913, 35, NULL, 'prag-slot-kingdom-of-the-dead', 'Kingdom of The Dead', 'prag-slot-kingdom-of-the-dead', 'default', NULL, 'salsa/Kingdom of The Dead.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:46'),
(3908, 35, NULL, 'prag-slot-big-bass-hold-spinner', 'Big Bass - Hold & Spinner', 'prag-slot-big-bass-hold-spinner', 'default', NULL, 'salsa/Big Bass - Hold & Spinner.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 12:28:53'),
(3907, 35, NULL, 'prag-slot-the-knight-king', 'The Knight King', 'prag-slot-the-knight-king', 'default', NULL, 'salsa/The Knight King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:24:18'),
(3904, 35, NULL, 'prag-slot-cowboy-coins', 'Cowboy Coins', 'prag-slot-cowboy-coins', 'default', NULL, 'salsa/Cowboy Coins.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:25:38'),
(3891, 35, NULL, 'prag-slot-jokers-jewels-dice', 'Jokers Jewels Dice', 'prag-slot-jokers-jewels-dice', 'default', NULL, 'salsa/Jokers Jewels Dice.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:24:10'),
(3887, 35, NULL, 'prag-slot-reel-banks', 'Reel Banks', 'prag-slot-reel-banks', 'default', NULL, 'salsa/Reel Banks.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:28:59'),
(3886, 35, NULL, 'prag-slot-snakes-ladders-2-snake-eyes', 'Snakes & Ladders 2 - Snake Eyes', 'prag-slot-snakes-ladders-2-snake-eyes', 'default', NULL, 'salsa/Snakes & Ladders 2 - Snake Eyes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:24:05'),
(3885, 35, NULL, 'prag-slot-gems-of-serengeti', 'Gems of Serengeti', 'prag-slot-gems-of-serengeti', 'default', NULL, 'salsa/Gems of Serengeti.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:58'),
(3884, 35, NULL, 'prag-slot-towering-fortunes', 'Towering Fortunes', 'prag-slot-towering-fortunes', 'default', NULL, 'salsa/Towering Fortunes.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:51'),
(3883, 35, NULL, 'prag-slot-release-the-kraken-2', 'Release the Kraken 2', 'prag-slot-release-the-kraken-2', 'default', NULL, 'salsa/Release the Kraken 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:45'),
(3881, 35, NULL, 'prag-slot-firebird-spirit', 'Firebird Spirit', 'prag-slot-firebird-spirit', 'default', NULL, 'salsa/Firebird Spirit.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:35'),
(3880, 35, NULL, 'prag-slot-pirate-golden-age', 'Pirate Golden Age', 'prag-slot-pirate-golden-age', 'default', NULL, 'salsa/Pirate Golden Age.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:27'),
(3879, 35, NULL, 'prag-slot-john-hunter-and-the-book-of-tut-respin', 'John Hunter and the Book of Tut Respin', 'prag-slot-john-hunter-and-the-book-of-tut-respin', 'default', NULL, 'salsa/John Hunter and the Book of Tut Respin.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 07:53:08'),
(3877, 35, NULL, 'prag-slot-floating-dragon-megaways', 'Floating Dragon Megaways', 'prag-slot-floating-dragon-megaways', 'default', NULL, 'salsa/Floating Dragon Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:21'),
(3873, 35, NULL, 'prag-slot-happy-hooves', 'Happy Hooves', 'prag-slot-happy-hooves', 'default', NULL, 'salsa/Happy Hooves.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:14'),
(3866, 35, NULL, 'prag-slot-hot-to-burn-extreme', 'Hot to Burn Extreme', 'prag-slot-hot-to-burn-extreme', 'default', NULL, 'salsa/Hot to Burn Extreme.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:08'),
(3855, 35, NULL, 'prag-slot-fortune-of-giza', 'Fortune of Giza', 'prag-slot-fortune-of-giza', 'default', NULL, 'salsa/Fortune of Giza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:23:01'),
(3851, 35, NULL, 'prag-slot-WildCelebretyBusM', 'Wild Celebrety Bus Megaways', 'prag-slot-WildCelebretyBusM', 'default', NULL, 'salsa/Wild Celebrety Bus Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 13:02:50'),
(3850, 35, NULL, 'prag-slot-TheRedQueen', 'The Red Queen', 'prag-slot-TheRedQueen', 'default', NULL, 'salsa/The Red Queen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:53'),
(3848, 35, NULL, 'prag-slot-WildHopDrop', 'Wild Hop & Drop', 'prag-slot-WildHopDrop', 'default', NULL, 'salsa/Wild Hop & Drop.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:47'),
(3844, 35, NULL, 'prag-slot-SantasGreatGift', 'Santas great gift', 'prag-slot-SantasGreatGift', 'default', NULL, 'salsa/Santas great gift.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:36'),
(3843, 35, NULL, 'prag-slot-Sweetpowernudge', 'Sweet powernudge', 'prag-slot-Sweetpowernudge', 'default', NULL, 'salsa/Sweet powernudge.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:29'),
(3842, 35, NULL, 'prag-slot-StarlightChristmas', 'Starlight Christmas', 'prag-slot-StarlightChristmas', 'default', NULL, 'salsa/Starlight Christmas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:22'),
(3841, 35, NULL, 'prag-slot-HotPepper', 'Hot Pepper', 'prag-slot-HotPepper', 'default', NULL, 'salsa/Hot Pepper.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:15'),
(3840, 35, NULL, 'prag-slot-GatesofBetmotion', 'Gates of Betmotion', 'prag-slot-GatesofBetmotion', 'default', NULL, 'salsa/Gates of Betmotion.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:07', '2024-02-26 11:34:20'),
(3839, 35, NULL, 'prag-slot-furyodin', 'Fury of Odin Megaways', 'prag-slot-furyodin', 'default', NULL, 'salsa/Fury of Odin Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:22:06'),
(3838, 35, NULL, 'prag-slot-biggerbass', 'Bigger Bass Blizzard Christmas Catch', 'prag-slot-biggerbass', 'default', NULL, 'salsa/Bigger Bass Blizzard Christmas Catch.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:21:55'),
(3836, 35, NULL, 'prag-slot-spinescore', 'Spin e Score', 'prag-slot-spinescore', 'default', NULL, 'salsa/Spin e Score.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:07', '2024-02-26 12:21:46'),
(3835, 35, NULL, 'prag-slot-bigbassreel', 'Big Bass Keeping it Reel', 'prag-slot-bigbassreel', 'default', NULL, 'salsa/Big Bass Keeping it Reel.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 5, 0, 1, '2024-02-04 12:07:07', '2024-03-27 20:43:13'),
(3834, 35, NULL, 'prag-slot-MuertosMultiplier', 'Muertos Multiplier', 'prag-slot-MuertosMultiplier', 'default', NULL, 'salsa/Muertos Multiplier.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:13:00'),
(3832, 35, NULL, 'prag-slot-tropicalTiki', 'Tropical TIKI', 'prag-slot-tropicalTiki', 'default', NULL, 'salsa/Tropical TIKI.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:28'),
(3830, 35, NULL, 'prag-slot-chkchase', 'Chicken Chase - Caccia alla Gallina', 'prag-slot-chkchase', 'default', NULL, 'salsa/Chicken Chase - Caccia alla Gallina.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:13:13'),
(3824, 35, NULL, 'prag-slot-gobnudge', 'Goblin Heist', 'prag-slot-gobnudge', 'default', NULL, 'salsa/Goblin Heist.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:29'),
(3823, 35, NULL, 'prag-slot-waysxjuicy', 'Extra Juicy Megaways', 'prag-slot-waysxjuicy', 'default', NULL, 'salsa/Extra Juicy Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:13:22'),
(3810, 35, NULL, 'prag-slot-5hotburn', 'Hot to Burn', 'prag-slot-5hotburn', 'default', NULL, 'salsa/Hot to Burn.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:13:28'),
(3809, 35, NULL, 'prag-slot-7776secrets', 'John Hunter and the Aztec Treasure', 'prag-slot-7776secrets', 'default', NULL, 'salsa/John Hunter and the Aztec Treasure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:53:38'),
(3808, 35, NULL, 'prag-slot-doghousejp', 'The Dog House Jackpot', 'prag-slot-doghousejp', 'default', NULL, 'salsa/The Dog House Jackpot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 13:03:32'),
(3807, 35, NULL, 'prag-slot-madamejp', 'Madame Destiny Jackpot', 'prag-slot-madamejp', 'default', NULL, 'salsa/Madame Destiny Jackpot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:35'),
(3806, 35, NULL, 'prag-slot-asgardjp', 'Asgard Jackpot', 'prag-slot-asgardjp', 'default', NULL, 'salsa/Asgard Jackpot.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:37'),
(3805, 35, NULL, 'prag-slot-stickysymbol', 'The Great Stick-Up', 'prag-slot-stickysymbol', 'default', NULL, 'salsa/The Great Stick-Up.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:14:43'),
(3804, 35, NULL, 'prag-slot-littlegem', 'Little Gem', 'prag-slot-littlegem', 'default', NULL, 'salsa/Little Gem.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:52'),
(3801, 35, NULL, 'prag-slot-drillthatgold', 'Drill that Gold', 'prag-slot-drillthatgold', 'default', NULL, 'salsa/Drill that Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:51'),
(3799, 35, NULL, 'prag-slot-snakeladd', 'Snake and Ladders', 'prag-slot-snakeladd', 'default', NULL, 'salsa/Snake and Ladders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:17:36'),
(3798, 35, NULL, 'prag-slot-mightRa', 'Might Ra', 'prag-slot-mightRa', 'default', NULL, 'salsa/Might Ra.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:05'),
(3796, 35, NULL, 'prag-slot-colossalCashZ', 'Colossal Cash Z', 'prag-slot-colossalCashZ', 'default', NULL, 'salsa/Colossal Cash Z.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:14'),
(3795, 35, NULL, 'prag-slot-gatesValhalla', 'Gates Valhalla', 'prag-slot-gatesValhalla', 'default', NULL, 'salsa/Gates Valhalla.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:22'),
(3794, 35, NULL, 'prag-slot-rockVegas', 'Rock Vegas', 'prag-slot-rockVegas', 'default', NULL, 'salsa/Rock Vegas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:29'),
(3793, 35, NULL, 'prag-slot-goldparty', 'Gold Party', 'prag-slot-goldparty', 'default', NULL, 'salsa/Gold Party.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:36'),
(3792, 35, NULL, 'prag-slot-wildDepths', 'Wild Depths', 'prag-slot-wildDepths', 'default', NULL, 'salsa/Wild Depths.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:54'),
(3791, 35, NULL, 'prag-slot-magiciansSecrets', 'Magicians Secrets', 'prag-slot-magiciansSecrets', 'default', NULL, 'salsa/Magicians Secrets.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:53'),
(3790, 35, NULL, 'prag-slot-crystalCavernsM', 'Crystal Caverns Megaways', 'prag-slot-crystalCavernsM', 'default', NULL, 'salsa/Crystal Caverns Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:15:59'),
(3789, 35, NULL, 'prag-slot-smugglersCove', 'Smugglers Cove', 'prag-slot-smugglersCove', 'default', NULL, 'salsa/Smugglers Cove.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:53'),
(3788, 35, NULL, 'prag-slot-xmasbonanza', 'Xmas Bonanza', 'prag-slot-xmasbonanza', 'default', NULL, 'salsa/Xmas Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:06:21'),
(3787, 35, NULL, 'prag-slot-bookofFallen', 'Book of Fallen', 'prag-slot-bookofFallen', 'default', NULL, 'salsa/Book of Fallen.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:16:05'),
(3785, 35, NULL, 'prag-slot-bbbMegaways', 'BBB Megaways', 'prag-slot-bbbMegaways', 'default', NULL, 'salsa/BBB Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:16:12'),
(3782, 35, NULL, 'prag-slot-bermuda', 'Bermuda', 'prag-slot-bermuda', 'default', NULL, 'salsa/Bermuda.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:45'),
(3772, 35, NULL, 'prag-slot-riseofGizaPowerNudge', 'Rise of Giza Power Nudge', 'prag-slot-riseofGizaPowerNudge', 'default', NULL, 'salsa/Rise of Giza Power Nudge.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:16:35'),
(3769, 35, NULL, 'prag-slot-bookofVikings', 'Book of Vikings', 'prag-slot-bookofVikings', 'default', NULL, 'salsa/Book of Vikings.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:14:15'),
(3767, 35, NULL, 'prag-slot-dragonHotHS', 'Dragon Hot HS', 'prag-slot-dragonHotHS', 'default', NULL, 'salsa/Dragon Hot HS.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:29:44'),
(3765, 35, NULL, 'prag-slot-heartRio', 'Heart Rio', 'prag-slot-heartRio', 'default', NULL, 'salsa/Heart Rio.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:29:50'),
(3763, 35, NULL, 'prag-slot-magicCauldron', 'Magic Cauldron', 'prag-slot-magicCauldron', 'default', NULL, 'salsa/Magic Cauldron.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:20:56'),
(3761, 35, NULL, 'prag-slot-amazingMoney', 'Amazing Money', 'prag-slot-amazingMoney', 'default', NULL, 'salsa/Amazing Money.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:20:46'),
(3760, 35, NULL, 'prag-slot-buffaloMega', 'Buffalo Mega', 'prag-slot-buffaloMega', 'default', NULL, 'salsa/Buffalo Mega.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:20:37'),
(3759, 35, NULL, 'prag-slot-hotFiesta', 'Hot Fiesta', 'prag-slot-hotFiesta', 'default', NULL, 'salsa/Hot Fiesta.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:20:25'),
(3758, 35, NULL, 'prag-slot-floatingDragonHS', 'Floating Dragon HS', 'prag-slot-floatingDragonHS', 'default', NULL, 'salsa/Floating Dragon HS.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:36'),
(3756, 35, NULL, 'prag-slot-powerThorMega', 'Power Thor Mega', 'prag-slot-powerThorMega', 'default', NULL, 'salsa/Power Thor Mega.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:31'),
(3752, 35, NULL, 'prag-slot-burnHoldWin', 'Burn Hold Win', 'prag-slot-burnHoldWin', 'default', NULL, 'salsa/Burn Hold Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:25'),
(3751, 35, NULL, 'prag-slot-carolMegaways', 'Carol Megaways', 'prag-slot-carolMegaways', 'default', NULL, 'salsa/Carol Megaways.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:19'),
(3750, 35, NULL, 'prag-slot-bigBass', 'Big Bass', 'prag-slot-bigBass', 'default', NULL, 'salsa/Big Bass.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:35:59'),
(3749, 35, NULL, 'prag-slot-spartaKing', 'Sparta King', 'prag-slot-spartaKing', 'default', NULL, 'salsa/Sparta King.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:13'),
(3748, 35, NULL, 'prag-slot-mayanGods', 'Mayan Gods', 'prag-slot-mayanGods', 'default', NULL, 'salsa/Mayan Gods.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:06'),
(3746, 35, NULL, 'prag-slot-dragonKingdomEyesFire', 'Dragon Kingdom Eyes Fire', 'prag-slot-dragonKingdomEyesFire', 'default', NULL, 'salsa/Dragon Kingdom Eyes Fire.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:19:01'),
(3744, 35, NULL, 'prag-slot-handMidas', 'Hand Midas', 'prag-slot-handMidas', 'default', NULL, 'salsa/Hand Midas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:32:45'),
(3745, 35, NULL, 'prag-slot-eyeStorm', 'Eye Storm', 'prag-slot-eyeStorm', 'default', NULL, 'salsa/Eye Storm.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:44'),
(3742, 35, NULL, 'prag-slot-gatesOlympus', 'Gates Olympus', 'prag-slot-gatesOlympus', 'default', NULL, 'salsa/Gates Olympus.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:33:33'),
(3739, 35, NULL, 'prag-slot-meraldKingRainbowRoad', 'Merald King Rainbow Road', 'prag-slot-meraldKingRainbowRoad', 'default', NULL, 'salsa/Merald King Rainbow Road.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:36'),
(3736, 35, NULL, 'prag-slot-johnandBookofTut', 'John and Book of Tut', 'prag-slot-johnandBookofTut', 'default', NULL, 'salsa/John and Book of Tut.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:53:25'),
(3735, 35, NULL, 'prag-slot-hockeyLeagueWildMatch P', 'Hockey League Wild Match', 'prag-slot-hockeyLeagueWildMatch P', 'default', NULL, 'salsa/Hockey League Wild Match.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:21'),
(3733, 35, NULL, 'prag-slot-theCatfather', 'The Cat Father', 'prag-slot-theCatfather', 'default', NULL, 'salsa/The Cat Father.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:13'),
(3732, 35, NULL, 'prag-slot-romeoandJuliet', 'Romeo and Juliet', 'prag-slot-romeoandJuliet', 'default', NULL, 'salsa/Romeo and Juliet.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:11:18'),
(3729, 35, NULL, 'prag-slot-hockeyLeague', 'Hockey League', 'prag-slot-hockeyLeague', 'default', NULL, 'salsa/Hockey League.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:11:10'),
(3728, 35, NULL, 'prag-slot-talesofEgypt', 'Tales of Egypt', 'prag-slot-talesofEgypt', 'default', NULL, 'salsa/Tales of Egypt.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:10:58'),
(3722, 35, NULL, 'prag-slot-dwarvenGold', 'Dwarven Gold', 'prag-slot-dwarvenGold', 'default', NULL, 'salsa/Dwarven Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:10:46'),
(3721, 35, NULL, 'prag-slot-aladdinandtheSorcerer', 'Aladdin and the Sorcerer', 'prag-slot-aladdinandtheSorcerer', 'default', NULL, 'salsa/Aladdin and the Sorcerer.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:10:33'),
(3719, 35, NULL, 'prag-slot-gloriousRome', 'Glorious Rome', 'prag-slot-gloriousRome', 'default', NULL, 'salsa/Glorious Rome.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:10:23'),
(3718, 35, NULL, 'prag-slot-ladyoftheMoon', 'Lady of the Moon', 'prag-slot-ladyoftheMoon', 'default', NULL, 'salsa/Lady of the Moon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:10:08'),
(3707, 35, NULL, 'prag-slot-daVincisTreasure', 'Da Vincis Treasure', 'prag-slot-daVincisTreasure', 'default', NULL, 'salsa/Da Vincis Treasure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:54:32'),
(3697, 35, NULL, 'prag-slot-aladdinsTreasure', 'Aladdins Treasure', 'prag-slot-aladdinsTreasure', 'default', NULL, 'salsa/Aladdins Treasure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:09:59'),
(3687, 35, NULL, 'prag-slot-diamondsareForever3Lines', 'Diamonds are Forever Lines', 'prag-slot-diamondsareForever3Lines', 'default', NULL, 'salsa/Diamonds are Forever Lines.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:09:51'),
(3673, 35, NULL, 'prag-slot-bookOfKingdoms', 'Book Of Kingdoms', 'prag-slot-bookOfKingdoms', 'default', NULL, 'salsa/Book Of Kingdoms.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:12:04'),
(3670, 35, NULL, 'prag-slot-irishCharms', 'Irish Charms', 'prag-slot-irishCharms', 'default', NULL, 'salsa/Irish Charms.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:09:25'),
(3657, 35, NULL, 'prag-slot-masterChensFortune', 'Master Chens Fortune', 'prag-slot-masterChensFortune', 'default', NULL, 'salsa/Master Chens Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:07'),
(3643, 35, NULL, 'prag-slot-pandasFortune', 'Pandas Fortune', 'prag-slot-pandasFortune', 'default', NULL, 'salsa/Pandas Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:09'),
(3639, 35, NULL, 'prag-slot-caishensGold', 'Caishens Gold', 'prag-slot-caishensGold', 'default', NULL, 'salsa/Caishens Gold.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:09'),
(3630, 35, NULL, 'prag-slot-caishensCash', 'Caishens Cash', 'prag-slot-caishensCash', 'default', NULL, 'salsa/Caishens Cash.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:13'),
(3616, 35, NULL, 'prag-slot-hottoBurn', 'Hotto Burn', 'prag-slot-hottoBurn', 'default', NULL, 'salsa/Hotto Burn.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:11'),
(3614, 35, NULL, 'prag-slot-drago-JewelsofFortune', 'Drago Jewels of Fortune', 'prag-slot-drago-JewelsofFortune', 'default', NULL, 'salsa/Drago Jewels of Fortune.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:03:11'),
(3612, 35, NULL, 'prag-slot-888Dragons', '888Dragons', 'prag-slot-888Dragons', 'default', NULL, 'salsa/888Dragons.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:42:42'),
(3610, 35, NULL, 'prag-slot-jokersJewels', 'Jokers Jewels', 'prag-slot-jokersJewels', 'default', NULL, 'salsa/Jokers Jewels.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 12:08:56'),
(3607, 17, NULL, 'prag-BrazilianRoulette', 'Brazilian Roulette', 'prag-BrazilianRoulette', 'default', NULL, 'salsa/Brazilian Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:54:35'),
(3606, 17, NULL, 'prag-tb-SpeedBJ24Emerald', 'Speed Blackjack 24 - Emerald', 'prag-tb-SpeedBJ24Emerald', 'default', NULL, 'salsa/Speed Blackjack 24 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:06:22'),
(3605, 17, NULL, 'prag-tb-SpeedBJ25Emerald', 'Speed Blackjack 25 - Emerald', 'prag-tb-SpeedBJ25Emerald', 'default', NULL, 'salsa/Speed Blackjack 25 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:38'),
(3604, 17, NULL, 'prag-tb-SpeedBJ26Emerald', 'Speed Blackjack 26 - Emerald', 'prag-tb-SpeedBJ26Emerald', 'default', NULL, 'salsa/Speed Blackjack 26 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:38'),
(3603, 17, NULL, 'prag-tb-SpeedBJ27Emerald', 'Speed Blackjack 27 - Emerald', 'prag-tb-SpeedBJ27Emerald', 'default', NULL, 'salsa/Speed Blackjack 27 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:39'),
(3602, 17, NULL, 'prag-tb-SpeedBJ28Emerald', 'Speed Blackjack 28 - Emerald', 'prag-tb-SpeedBJ28Emerald', 'default', NULL, 'salsa/Speed Blackjack 28 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:39'),
(3601, 17, NULL, 'prag-tb-SpeedBJ29Emerald', 'Speed Blackjack 29 - Emerald', 'prag-tb-SpeedBJ29Emerald', 'default', NULL, 'salsa/Speed Blackjack 29 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:54:39'),
(3600, 17, NULL, 'prag-tb-SpeedBJ30Emerald', 'Speed Blackjack 30 - Emerald', 'prag-tb-SpeedBJ30Emerald', 'default', NULL, 'salsa/Speed Blackjack 30 - Emerald.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:41'),
(3599, 17, NULL, 'prag-tb-vegasballbonanza', 'Vegas Ball Bonanza', 'prag-tb-vegasballbonanza', 'default', NULL, 'salsa/Vegas Ball Bonanza.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:11:29'),
(3598, 17, NULL, 'prag-tb-automegaroulette', 'Auto Mega Roulette', 'prag-tb-automegaroulette', 'default', NULL, 'salsa/Auto Mega Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:06:25'),
(3596, 17, NULL, 'prag-tb-speed-baccarat-2-korean', 'Speed Baccarat 2 - Korean', 'prag-tb-speed-baccarat-2-korean', 'default', NULL, 'salsa/Speed Baccarat 2 - Korean.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:10'),
(3595, 17, NULL, 'prag-tb-speed-baccarat-1-korean', 'Speed Baccarat 1 - Korean', 'prag-tb-speed-baccarat-1-korean', 'default', NULL, 'salsa/Speed Baccarat 1 - Korean.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:56'),
(3594, 17, NULL, 'prag-tb-no-comm-speed-baccarat-2', 'No Comm Speed Baccarat 2', 'prag-tb-no-comm-speed-baccarat-2', 'default', NULL, 'salsa/No Comm Speed Baccarat 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:09'),
(3593, 17, NULL, 'prag-tb-no-comm-speed-baccarat-1', 'No Comm Speed Baccarat 1', 'prag-tb-no-comm-speed-baccarat-1', 'default', NULL, 'salsa/No Comm Speed Baccarat 1.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 11:56:16'),
(3592, 17, NULL, 'prag-tb-speed-baccarat-15', 'Speed Baccarat 15', 'prag-tb-speed-baccarat-15', 'default', NULL, 'salsa/Speed Baccarat 15.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:18'),
(3591, 17, NULL, 'prag-tb-speed-baccarat-14', 'Speed Baccarat 14', 'prag-tb-speed-baccarat-14', 'default', NULL, 'salsa/Speed Baccarat 14.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:54:45'),
(3590, 17, NULL, 'prag-tb-speed-baccarat-13', 'Speed Baccarat 13', 'prag-tb-speed-baccarat-13', 'default', NULL, 'salsa/Speed Baccarat 13.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:22'),
(3589, 17, NULL, 'prag-tb-speed-baccarat-12', 'Speed Baccarat 12', 'prag-tb-speed-baccarat-12', 'default', NULL, 'salsa/Speed Baccarat 12.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:20'),
(3588, 17, NULL, 'prag-tb-speed-baccarat-11', 'Speed Baccarat 11', 'prag-tb-speed-baccarat-11', 'default', NULL, 'salsa/Speed Baccarat 11.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:01'),
(3587, 17, NULL, 'prag-tb-speed-baccarat-10', 'Speed Baccarat 10', 'prag-tb-speed-baccarat-10', 'default', NULL, 'salsa/Speed Baccarat 10.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:01');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(3586, 17, NULL, 'prag-tb-speed-baccarat-6', 'Speed Baccarat 6', 'prag-tb-speed-baccarat-6', 'default', NULL, 'salsa/Speed Baccarat 6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:02'),
(3585, 17, NULL, 'prag-tb-speed-baccarat-5', 'Speed Baccarat 5', 'prag-tb-speed-baccarat-5', 'default', NULL, 'salsa/Speed Baccarat 5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:02'),
(3584, 17, NULL, 'prag-tb-speed-baccarat-3', 'Speed Baccarat 3', 'prag-tb-speed-baccarat-3', 'default', NULL, 'salsa/Speed Baccarat 3.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:14'),
(3583, 17, NULL, 'prag-tb-no-comm-baccarat-1', 'No Comm Baccarat 1', 'prag-tb-no-comm-baccarat-1', 'default', NULL, 'salsa/No Comm Baccarat 1.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:26'),
(3582, 17, NULL, 'prag-tb-speed-baccarat-2', 'Speed Baccarat 2', 'prag-tb-speed-baccarat-2', 'default', NULL, 'salsa/Speed Baccarat 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:07'),
(3581, 17, NULL, 'prag-tb-baccarat-8', 'Baccarat-8', 'prag-tb-baccarat-8', 'default', NULL, 'salsa/Baccarat-8.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:30'),
(3580, 17, NULL, 'prag-tb-baccarat-6', 'Baccarat-6', 'prag-tb-baccarat-6', 'default', NULL, 'salsa/Baccarat-6.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:29'),
(3578, 17, NULL, 'prag-tb-baccarat-3', 'Baccarat-3', 'prag-tb-baccarat-3', 'default', NULL, 'salsa/Baccarat-3.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:09'),
(3579, 17, NULL, 'prag-tb-baccarat-5', 'Baccarat-5', 'prag-tb-baccarat-5', 'default', NULL, 'salsa/Baccarat-5.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:09'),
(3577, 17, NULL, 'prag-tb-baccarat-2', 'Baccarat-2', 'prag-tb-baccarat-2', 'default', NULL, 'salsa/Baccarat-2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:57:32'),
(3576, 17, NULL, 'prag-tb-roulette-16-swedish', 'Roulette 16 - Swedish', 'prag-tb-roulette-16-swedish', 'default', NULL, 'salsa/Roulette 16 - Swedish.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:14'),
(3575, 17, NULL, 'prag-tb-roulette-15-flemish', 'Roulette 15 - Flemish', 'prag-tb-roulette-15-flemish', 'default', NULL, 'salsa/Roulette 15 - Flemish.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:15'),
(3574, 17, NULL, 'prag-tb-roulette-12-romanian', 'Roulette 12 - Romanian', 'prag-tb-roulette-12-romanian', 'default', NULL, 'salsa/Roulette 12 - Romanian.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:15'),
(3573, 17, NULL, 'prag-tb-roulette-11-dutch', 'Roulette 11 - Dutch', 'prag-tb-roulette-11-dutch', 'default', NULL, 'salsa/Roulette 11 - Dutch.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:18:45'),
(3572, 17, NULL, 'prag-tb-roulette-6-turkish', 'Roulette 6 - Turkish', 'prag-tb-roulette-6-turkish', 'default', NULL, 'salsa/Roulette 6 - Turkish.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:17'),
(3571, 17, NULL, 'prag-tb-roulette-7-italian', 'Roulette 7 - Italian', 'prag-tb-roulette-7-italian', 'default', NULL, 'salsa/Roulette 7 - Italian.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:17'),
(3570, 17, NULL, 'prag-tb-roulette-5-german', 'Roulette 5 - German', 'prag-tb-roulette-5-german', 'default', NULL, 'salsa/Roulette 5 - German.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:18'),
(3568, 17, NULL, 'prag-tb-roulette-3-macao', 'Roulette 3 - Macao', 'prag-tb-roulette-3-macao', 'default', NULL, 'salsa/Roulette 3 - Macao.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:21'),
(3569, 17, NULL, 'prag-tb-roulette-4-russian', 'Roulette 4 - Russian', 'prag-tb-roulette-4-russian', 'default', NULL, 'salsa/Roulette 4 - Russian.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:19'),
(3567, 17, NULL, 'prag-tb-roulette-lobby', 'Roulette Lobby', 'prag-tb-roulette-lobby', 'default', NULL, 'salsa/Roulette Lobby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:21'),
(3566, 17, NULL, 'prag-tb-blackjack-15', 'Blackjack 15 (Green Studio)', 'prag-tb-blackjack-15', 'default', NULL, 'salsa/Blackjack 15 (Green Studio).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:22'),
(3565, 17, NULL, 'prag-tb-blackjack-11', 'Blackjack 11 (Green Studio)', 'prag-tb-blackjack-11', 'default', NULL, 'salsa/Blackjack 11 (Green Studio).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:23'),
(3564, 17, NULL, 'prag-tb-blackjack-18-azure', 'Blackjack 18 - Azure (Azure Studio II)', 'prag-tb-blackjack-18-azure', 'default', NULL, 'salsa/Blackjack 18 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:25'),
(3563, 17, NULL, 'prag-tb-blackjack-19-azure', 'Blackjack 19 - Azure (Azure Studio II)', 'prag-tb-blackjack-19-azure', 'default', NULL, 'salsa/Blackjack 19 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:26'),
(3562, 17, NULL, 'prag-tb-blackjack-20-azure', 'Blackjack 20 - Azure (Azure Studio II)', 'prag-tb-blackjack-20-azure', 'default', NULL, 'salsa/Blackjack 20 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:27'),
(3561, 17, NULL, 'prag-tb-blackjack-21-azure', 'Blackjack 21 - Azure (Azure Studio II)', 'prag-tb-blackjack-21-azure', 'default', NULL, 'salsa/Blackjack 21 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:27'),
(3560, 17, NULL, 'prag-tb-blackjack-22-azure', 'Blackjack 22 - Azure (Azure Studio II)', 'prag-tb-blackjack-22-azure', 'default', NULL, 'salsa/Blackjack 22 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:04:29'),
(3559, 17, NULL, 'prag-tb-blackjack-23-azure', 'Blackjack 23 - Azure (Azure Studio II)', 'prag-tb-blackjack-23-azure', 'default', NULL, 'salsa/Blackjack 23 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:44'),
(3558, 17, NULL, 'prag-tb-blackjack-24-azure', 'Blackjack 24 - Azure (Azure Studio II)', 'prag-tb-blackjack-24-azure', 'default', NULL, 'salsa/Blackjack 24 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:43'),
(3557, 17, NULL, 'prag-tb-blackjack-25-azure', 'Blackjack 25 - Azure (Azure Studio II)', 'prag-tb-blackjack-25-azure', 'default', NULL, 'salsa/Blackjack 25 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:46'),
(3556, 17, NULL, 'prag-tb-blackjack-26-azure', 'Blackjack 26 - Azure (Azure Studio II)', 'prag-tb-blackjack-26-azure', 'default', NULL, 'salsa/Blackjack 26 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:40'),
(3555, 17, NULL, 'prag-tb-blackjack-27-azure', 'Blackjack 27 - Azure (Azure Studio II)', 'prag-tb-blackjack-27-azure', 'default', NULL, 'salsa/Blackjack 27 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:39'),
(3554, 17, NULL, 'prag-tb-blackjack-28-azure', 'Blackjack 28 - Azure (Azure Studio II)', 'prag-tb-blackjack-28-azure', 'default', NULL, 'salsa/Blackjack 28 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:55:07'),
(3553, 17, NULL, 'prag-tb-blackjack-29-azure', 'Blackjack 29 - Azure (Azure Studio II)', 'prag-tb-blackjack-29-azure', 'default', NULL, 'salsa/Blackjack 29 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:38'),
(3552, 17, NULL, 'prag-tb-blackjack-30-azure', 'Blackjack 30 - Azure (Azure Studio II)', 'prag-tb-blackjack-30-azure', 'default', NULL, 'salsa/Blackjack 30 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:38'),
(3551, 17, NULL, 'prag-tb-blackjack-31-azure', 'Blackjack 31 - Azure (Azure Studio II)', 'prag-tb-blackjack-31-azure', 'default', NULL, 'salsa/Blackjack 31 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:36'),
(3550, 17, NULL, 'prag-tb-blackjack-32-azure', 'Blackjack 32 - Azure (Azure Studio II)', 'prag-tb-blackjack-32-azure', 'default', NULL, 'salsa/Blackjack 32 - Azure (Azure Studio II).webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:36'),
(3549, 17, NULL, 'prag-tb-blackjack-33-the-club', 'Blackjack 33 - The Club', 'prag-tb-blackjack-33-the-club', 'default', NULL, 'salsa/Blackjack 33 - The Club.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:35'),
(3548, 17, NULL, 'prag-tb-blackjack-34-the-club', 'Blackjack 34 - The Club', 'prag-tb-blackjack-34-the-club', 'default', NULL, 'salsa/Blackjack 34 - The Club.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:33'),
(3547, 17, NULL, 'prag-tb-blackjack-35-the-club', 'Blackjack 35 - The Club', 'prag-tb-blackjack-35-the-club', 'default', NULL, 'salsa/Blackjack 35 - The Club.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:33'),
(3546, 17, NULL, 'prag-tb-blackjack-36-the-club', 'Blackjack 36 - The Club', 'prag-tb-blackjack-36-the-club', 'default', NULL, 'salsa/Blackjack 36 - The Club.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:32'),
(3545, 17, NULL, 'prag-tb-blackjack-37-ruby', 'Blackjack 37 - Ruby', 'prag-tb-blackjack-37-ruby', 'default', NULL, 'salsa/Blackjack 37 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:32'),
(3544, 17, NULL, 'prag-tb-blackjack-38-ruby', 'Blackjack 38 - Ruby', 'prag-tb-blackjack-38-ruby', 'default', NULL, 'salsa/Blackjack 38 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:31'),
(3543, 17, NULL, 'prag-tb-blackjack-39-ruby', 'Blackjack 39 - Ruby', 'prag-tb-blackjack-39-ruby', 'default', NULL, 'salsa/Blackjack 39 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:29'),
(3542, 17, NULL, 'prag-tb-blackjack-40-ruby', 'Blackjack 40 - Ruby', 'prag-tb-blackjack-40-ruby', 'default', NULL, 'salsa/Blackjack 40 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:29'),
(3541, 17, NULL, 'prag-tb-blackjack-41-ruby', 'Blackjack 41 - Ruby', 'prag-tb-blackjack-41-ruby', 'default', NULL, 'salsa/Blackjack 41 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:27'),
(3540, 17, NULL, 'prag-tb-blackjack-42-ruby', 'Blackjack 42 - Ruby', 'prag-tb-blackjack-42-ruby', 'default', NULL, 'salsa/Blackjack 42 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:27'),
(3539, 17, NULL, 'prag-tb-blackjack-43-ruby', 'Blackjack 43 - Ruby', 'prag-tb-blackjack-43-ruby', 'default', NULL, 'salsa/Blackjack 43 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:26'),
(3538, 17, NULL, 'prag-tb-blackjack-44-ruby', 'Blackjack 44 - Ruby', 'prag-tb-blackjack-44-ruby', 'default', NULL, 'salsa/Blackjack 44 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:26'),
(3537, 17, NULL, 'prag-tb-blackjack-45-ruby', 'Blackjack 45 - Ruby', 'prag-tb-blackjack-45-ruby', 'default', NULL, 'salsa/Blackjack 45 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:25'),
(3536, 17, NULL, 'prag-tb-blackjack-46-ruby', 'Blackjack 46 - Ruby', 'prag-tb-blackjack-46-ruby', 'default', NULL, 'salsa/Blackjack 46 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:25'),
(3535, 17, NULL, 'prag-tb-blackjack-47-ruby', 'Blackjack 47 - Ruby', 'prag-tb-blackjack-47-ruby', 'default', NULL, 'salsa/Blackjack 47 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:25'),
(3534, 17, NULL, 'prag-tb-blackjack-48-ruby', 'Blackjack 48 - Ruby', 'prag-tb-blackjack-48-ruby', 'default', NULL, 'salsa/Blackjack 48 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:23'),
(3533, 17, NULL, 'prag-tb-blackjack-49-ruby', 'Blackjack 49 - Ruby', 'prag-tb-blackjack-49-ruby', 'default', NULL, 'salsa/Blackjack 49 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:23'),
(3532, 17, NULL, 'prag-tb-blackjack-74-ruby', 'Blackjack 74 - Ruby', 'prag-tb-blackjack-74-ruby', 'default', NULL, 'salsa/Blackjack 74 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:22'),
(3531, 17, NULL, 'prag-tb-blackjack-73-ruby', 'Blackjack 73 - Ruby', 'prag-tb-blackjack-73-ruby', 'default', NULL, 'salsa/Blackjack 73 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:22'),
(3530, 17, NULL, 'prag-tb-blackjack-72-ruby', 'Blackjack 72 - Ruby', 'prag-tb-blackjack-72-ruby', 'default', NULL, 'salsa/Blackjack 72 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:21'),
(3529, 17, NULL, 'prag-tb-blackjack-71-ruby', 'Blackjack 71 - Ruby', 'prag-tb-blackjack-71-ruby', 'default', NULL, 'salsa/Blackjack 71 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:21'),
(3528, 17, NULL, 'prag-tb-blackjack-70-ruby', 'Blackjack 70 - Ruby', 'prag-tb-blackjack-70-ruby', 'default', NULL, 'salsa/Blackjack 70 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:19'),
(3527, 17, NULL, 'prag-tb-blackjack-69-ruby', 'Blackjack 69 - Ruby', 'prag-tb-blackjack-69-ruby', 'default', NULL, 'salsa/Blackjack 69 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:17'),
(3526, 17, NULL, 'prag-tb-blackjack-68-ruby', 'Blackjack 68 - Ruby', 'prag-tb-blackjack-68-ruby', 'default', NULL, 'salsa/Blackjack 68 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:16'),
(3525, 17, NULL, 'prag-tb-blackjack-67-ruby', 'Blackjack 67 - Ruby', 'prag-tb-blackjack-67-ruby', 'default', NULL, 'salsa/Blackjack 67 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:16'),
(3524, 17, NULL, 'prag-tb-blackjack-66-ruby', 'Blackjack 66 - Ruby', 'prag-tb-blackjack-66-ruby', 'default', NULL, 'salsa/Blackjack 66 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:16'),
(3523, 17, NULL, 'prag-tb-blackjack-65-ruby', 'Blackjack 65 - Ruby', 'prag-tb-blackjack-65-ruby', 'default', NULL, 'salsa/Blackjack 65 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:15'),
(3522, 17, NULL, 'prag-tb-blackjack-64-ruby', 'Blackjack 64 - Ruby', 'prag-tb-blackjack-64-ruby', 'default', NULL, 'salsa/Blackjack 64 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:15'),
(3521, 17, NULL, 'prag-tb-blackjack-63-azure', 'Blackjack 63 - Azure', 'prag-tb-blackjack-63-azure', 'default', NULL, 'salsa/Blackjack 63 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:13'),
(3520, 17, NULL, 'prag-tb-blackjack-62-azure', 'Blackjack 62 - Azure', 'prag-tb-blackjack-62-azure', 'default', NULL, 'salsa/Blackjack 62 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:12'),
(3519, 17, NULL, 'prag-tb-blackjack-61-azure', 'Blackjack 61 - Azure', 'prag-tb-blackjack-61-azure', 'default', NULL, 'salsa/Blackjack 61 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:05'),
(3518, 17, NULL, 'prag-tb-blackjack-60-azure', 'Blackjack 60 - Azure', 'prag-tb-blackjack-60-azure', 'default', NULL, 'salsa/Blackjack 60 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:05'),
(3517, 17, NULL, 'prag-tb-blackjack-59-azure', 'Blackjack 59 - Azure', 'prag-tb-blackjack-59-azure', 'default', NULL, 'salsa/Blackjack 59 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:04'),
(3516, 17, NULL, 'prag-tb-blackjack-58-azure', 'Blackjack 58 - Azure', 'prag-tb-blackjack-58-azure', 'default', NULL, 'salsa/Blackjack 58 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:04'),
(3515, 17, NULL, 'prag-tb-blackjack-57-azure', 'Blackjack 57 - Azure', 'prag-tb-blackjack-57-azure', 'default', NULL, 'salsa/Blackjack 57 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:03'),
(3513, 17, NULL, 'prag-tb-blackjack-55-ruby', 'Blackjack 55 - Ruby', 'prag-tb-blackjack-55-ruby', 'default', NULL, 'salsa/Blackjack 55 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:01'),
(3512, 17, NULL, 'prag-tb-blackjack-54-ruby', 'Blackjack 54 - Ruby', 'prag-tb-blackjack-54-ruby', 'default', NULL, 'salsa/Blackjack 54 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:01'),
(3511, 17, NULL, 'prag-tb-blackjack-53-ruby', 'Blackjack 53 - Ruby', 'prag-tb-blackjack-53-ruby', 'default', NULL, 'salsa/Blackjack 53 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:03:00'),
(3510, 17, NULL, 'prag-tb-blackjack-52-ruby', 'Blackjack 52 - Ruby', 'prag-tb-blackjack-52-ruby', 'default', NULL, 'salsa/Blackjack 52 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:59'),
(3509, 17, NULL, 'prag-tb-blackjack-51-ruby', 'Blackjack 51 - Ruby', 'prag-tb-blackjack-51-ruby', 'default', NULL, 'salsa/Blackjack 51 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:02:57'),
(3508, 17, NULL, 'prag-tb-blackjack-50-ruby', 'Blackjack 50 - Ruby', 'prag-tb-blackjack-50-ruby', 'default', NULL, 'salsa/Blackjack 50 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3506, 17, NULL, 'prag-tb-one-blackjack-4-flemish', 'ONE Blackjack 4 - Flemish', 'prag-tb-one-blackjack-4-flemish', 'default', NULL, 'salsa/ONE Blackjack 4 - Flemish.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 1, '2024-02-04 12:07:06', '2024-03-15 03:56:07'),
(3505, 17, NULL, 'prag-tb-vip-blackjack-5-ruby', 'VIP Blackjack 5 - Ruby', 'prag-tb-vip-blackjack-5-ruby', 'default', NULL, 'salsa/VIP Blackjack 5 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3504, 17, NULL, 'prag-tb-vip-blackjack-4-ruby', 'VIP Blackjack 4 - Ruby', 'prag-tb-vip-blackjack-4-ruby', 'default', NULL, 'salsa/VIP Blackjack 4 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3503, 17, NULL, 'prag-tb-vip-blackjack-3-ruby', 'VIP Blackjack 3 - Ruby', 'prag-tb-vip-blackjack-3-ruby', 'default', NULL, 'salsa/VIP Blackjack 3 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3502, 17, NULL, 'prag-tb-vip-blackjack-2-ruby', 'VIP Blackjack 2 - Ruby', 'prag-tb-vip-blackjack-2-ruby', 'default', NULL, 'salsa/VIP Blackjack 2 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3501, 17, NULL, 'prag-tb-vip-blackjack-1-ruby', 'VIP Blackjack 1 - Ruby', 'prag-tb-vip-blackjack-1-ruby', 'default', NULL, 'salsa/VIP Blackjack 1 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3500, 17, NULL, 'prag-tb-speed-blackjack-18-ruby', 'Speed Blackjack - 18 Ruby', 'prag-tb-speed-blackjack-18-ruby', 'default', NULL, 'salsa/Speed Blackjack - 18 Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3499, 17, NULL, 'prag-tb-speed-blackjack-17-ruby', 'Speed Blackjack - 17 Ruby', 'prag-tb-speed-blackjack-17-ruby', 'default', NULL, 'salsa/Speed Blackjack - 17 Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3498, 17, NULL, 'prag-tb-speed-blackjack-16-ruby', 'Speed Blackjack - 16 Ruby', 'prag-tb-speed-blackjack-16-ruby', 'default', NULL, 'salsa/Speed Blackjack - 16 Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3497, 17, NULL, 'prag-tb-speed-blackjack-15-ruby', 'Speed Blackjack - 15 Ruby', 'prag-tb-speed-blackjack-15-ruby', 'default', NULL, 'salsa/Speed Blackjack - 15 Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3496, 17, NULL, 'prag-tb-speed-blackjack-14-  azure', 'Speed Blackjack 14 - Azure', 'prag-tb-speed-blackjack-14-  azure', 'default', NULL, 'salsa/Speed Blackjack 14 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3495, 17, NULL, 'prag-tb-speed-blackjack-12-  azure', 'Speed Blackjack 12 - Azure', 'prag-tb-speed-blackjack-12-  azure', 'default', NULL, 'salsa/Speed Blackjack 12 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3494, 17, NULL, 'prag-tb-speed-blackjack-11-  azure', 'Speed Blackjack 11 - Azure', 'prag-tb-speed-blackjack-11-  azure', 'default', NULL, 'salsa/Speed Blackjack 11 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3493, 17, NULL, 'prag-tb-speed-blackjack-10-ruby', 'Speed Blackjack 10 - Ruby', 'prag-tb-speed-blackjack-10-ruby', 'default', NULL, 'salsa/Speed Blackjack 10 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3492, 17, NULL, 'prag-tb-speed-blackjack-8-ruby', 'Speed Blackjack 8 - Ruby', 'prag-tb-speed-blackjack-8-ruby', 'default', NULL, 'salsa/Speed Blackjack 8 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3491, 17, NULL, 'prag-tb-speed-blackjack-7-ruby', 'Speed Blackjack 7 - Ruby', 'prag-tb-speed-blackjack-7-ruby', 'default', NULL, 'salsa/Speed Blackjack 7 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3490, 17, NULL, 'prag-tb-speed-blackjack-6-ruby', 'Speed Blackjack 6 - Ruby', 'prag-tb-speed-blackjack-6-ruby', 'default', NULL, 'salsa/Speed Blackjack 6 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3489, 17, NULL, 'prag-tb-speed-blackjack-5-ruby', 'Speed Blackjack 5 - Ruby', 'prag-tb-speed-blackjack-5-ruby', 'default', NULL, 'salsa/Speed Blackjack 5 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:14'),
(3488, 17, NULL, 'prag-tb-speed-blackjack-4-ruby', 'Speed Blackjack 4 - Ruby', 'prag-tb-speed-blackjack-4-ruby', 'default', NULL, 'salsa/Speed Blackjack 4 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3487, 17, NULL, 'prag-tb-speed-blackjack-3-ruby', 'Speed Blackjack 3 - Ruby', 'prag-tb-speed-blackjack-3-ruby', 'default', NULL, 'salsa/Speed Blackjack 3 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3486, 17, NULL, 'prag-tb-speed-blackjack-2-ruby', 'Speed Blackjack 2 - Ruby', 'prag-tb-speed-blackjack-2-ruby', 'default', NULL, 'salsa/Speed Blackjack 2 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3485, 17, NULL, 'prag-tb-speed-blackjack-1-ruby', 'Speed Blackjack 1 - Ruby', 'prag-tb-speed-blackjack-1-ruby', 'default', NULL, 'salsa/Speed Blackjack 1 - Ruby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3484, 17, NULL, 'prag-tb-blackjack-lobby', 'Blackjack Lobby', 'prag-tb-blackjack-lobby', 'default', NULL, 'salsa/Blackjack Lobby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3483, 17, NULL, 'prag-tb-super-8-baccarat', 'Super 8 Baccarat', 'prag-tb-super-8-baccarat', 'default', NULL, 'salsa/Super 8 Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-02-04 12:07:06', '2024-02-27 12:08:23'),
(3482, 17, NULL, 'prag-tb-baccarat-lobby', 'Baccarat Lobby', 'prag-tb-baccarat-lobby', 'default', NULL, 'salsa/Baccarat Lobby.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3481, 17, NULL, 'prag-tb-fortune-6-baccarat', 'Fortune 6 Baccarat', 'prag-tb-fortune-6-baccarat', 'default', NULL, 'salsa/Fortune 6 Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3480, 17, NULL, 'prag-tb-SpeedAutoRoulette', 'Speed Auto Roulette', 'prag-tb-SpeedAutoRoulette', 'default', NULL, 'salsa/Speed Auto Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 12:16:59'),
(3479, 17, NULL, 'prag-tb-SnakesandLadders', 'Snakes and Ladders', 'prag-tb-SnakesandLadders', 'default', NULL, 'salsa/Snakes and Ladders.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3478, 17, NULL, 'prag-tb-oneblack3', 'One Blackjack 3', 'prag-tb-oneblack3', 'default', NULL, 'salsa/One Blackjack 3.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3477, 17, NULL, 'prag-tb-roulette205', 'Speed Roulette 2', 'prag-tb-roulette205', 'default', NULL, 'salsa/Speed Roulette 2.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3476, 17, NULL, 'prag-tb-PowerUpRoulette', 'Power Up Roulette', 'prag-tb-PowerUpRoulette', 'default', NULL, 'salsa/Power Up Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3475, 17, NULL, 'prag-slot-roulette14-spanish', 'Roulette 14 - Spanish', 'prag-slot-roulette14-spanish', 'default', NULL, 'salsa/Roulette 14 - Spanish.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3474, 17, NULL, 'prag-tb-boomCity', 'Boom City', 'prag-tb-boomCity', 'default', NULL, 'salsa/Boom City.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 13:15:49'),
(3473, 17, NULL, 'prag-tb-roulette1Azure', 'Roulette 1 Azure', 'prag-tb-roulette1Azure', 'default', NULL, 'salsa/Roulette 1 Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3472, 17, NULL, 'prag-tb-bj10', 'Blackjack 10 - Azure', 'prag-tb-bj10', 'default', NULL, 'salsa/Blackjack 10 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3471, 17, NULL, 'prag-tb-bj9', 'Blackjack 9 - Azure', 'prag-tb-bj9', 'default', NULL, 'salsa/Blackjack 9 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3470, 17, NULL, 'prag-tb-bj8', 'Blackjack 8 - Azure', 'prag-tb-bj8', 'default', NULL, 'salsa/Blackjack 8 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3469, 17, NULL, 'prag-tb-bj7', 'Blackjack 7 - Azure', 'prag-tb-bj7', 'default', NULL, 'salsa/Blackjack 7 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3468, 17, NULL, 'prag-tb-bj6', 'Blackjack 6 - Azure', 'prag-tb-bj6', 'default', NULL, 'salsa/Blackjack 6 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3466, 17, NULL, 'prag-tb-bj4', 'Blackjack 4 - Azure', 'prag-tb-bj4', 'default', NULL, 'salsa/Blackjack 4 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3467, 17, NULL, 'prag-tb-bj5', 'Blackjack 5 - Azure', 'prag-tb-bj5', 'default', NULL, 'salsa/Blackjack 5 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3465, 17, NULL, 'prag-tb-bj2', 'Blackjack 2 - Azure', 'prag-tb-bj2', 'default', NULL, 'salsa/Blackjack 2 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3464, 17, NULL, 'prag-tb-bj1', 'Blackjack 1 - Azure', 'prag-tb-bj1', 'default', NULL, 'salsa/Blackjack 1 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3463, 17, NULL, 'prag-tb-bj3', 'Blackjack 3 - Azure', 'prag-tb-bj3', 'default', NULL, 'salsa/Blackjack 3 - Azure.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-04 13:13:13'),
(3450, 17, NULL, 'prag-tb-baccarat-401', 'Live Casino - Baccarat', 'prag-tb-baccarat-401', 'default', NULL, 'salsa/Live Casino - Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 6, 0, 1, '2024-02-04 12:07:06', '2024-03-16 13:05:18'),
(3445, 26, NULL, 'boo-slot-3x-boomingBananas', 'Booming Bananas', 'boo-slot-3x-boomingBananas', 'default', NULL, 'salsa/Booming Bananas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:09:02'),
(3444, 26, NULL, 'boo-slot-crazyBananas', 'Crazy Bananas', 'boo-slot-crazyBananas', 'default', NULL, 'salsa/Crazy Bananas.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:09:03'),
(3443, 26, NULL, 'boo-slot-buffaloHold', 'Buffalo Hold and Win', 'boo-slot-buffaloHold', 'default', NULL, 'salsa/Buffalo Hold and Win.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 07:09:25'),
(3439, 31, NULL, 'sms-tb-cappadocia', 'Cappadocia', 'sms-tb-cappadocia', 'default', NULL, 'salsa/Cappadocia.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:06', '2024-02-26 06:58:12'),
(3441, 22, NULL, '3o-slot-dragonPearls', 'Dragon Pearls', '3o-slot-dragonPearls', 'default', NULL, 'salsa/Dragon Pearls.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:06', '2024-02-26 11:37:38'),
(3437, 31, NULL, 'sms-tb-balloon', 'Balloon', 'sms-tb-balloon', 'default', NULL, 'salsa/Balloon.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:05', '2024-02-26 06:58:36'),
(3436, 17, NULL, 'prag-tb-mega-baccarat', 'Mega Baccarat', 'prag-tb-mega-baccarat', 'default', NULL, 'salsa/Mega Baccarat.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:05', '2024-02-26 11:57:37'),
(3433, 23, NULL, 'gaming7777-tb-the-american-bingo', 'The American Bingo', 'gaming7777-tb-the-american-bingo', 'default', NULL, 'salsa/The American Bingo.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:05', '2024-02-04 13:13:13'),
(3432, 23, NULL, 'gaming7777-slot-wizard-of-plenty', 'Wizard of Plenty', 'gaming7777-slot-wizard-of-plenty', 'default', NULL, 'salsa/Wizard of Plenty.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:07:04', '2024-02-26 11:38:50'),
(3431, 23, NULL, 'gaming7777-inst-zeus-quest', 'Zeus Quest', 'gaming7777-inst-zeus-quest', 'default', NULL, 'salsa/Zeus Quest.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:03', '2024-02-04 13:13:13'),
(3430, 25, NULL, 'bs-slot-treasure-room', 'Treasure Room', 'bs-slot-treasure-room', 'default', NULL, 'salsa/Treasure Room.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:02', '2024-02-04 13:13:13'),
(3429, 25, NULL, 'bs-tb-zoom-roulette', 'Zoom Roulette', 'bs-tb-zoom-roulette', 'default', NULL, 'salsa/Zoom Roulette.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 0, '2024-02-04 12:07:01', '2024-02-04 13:13:13'),
(3428, 25, NULL, 'bs-slot-goldenDragonInferno', 'Golden Dragon Inferno', 'bs-slot-goldenDragonInferno', 'default', NULL, 'salsa/Golden Dragon Inferno.webp', '1', 'HTML5', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-02-04 12:06:59', '2024-02-26 11:41:16'),
(10394, 29, NULL, 'pgs-fortunedragon', 'Fortune Dragon', 'pgs-fortunedragon', 'slot', NULL, '01HTQM674BNY1593MQAP9GP57M.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'venix', 5, 1, 0, '2024-03-26 07:45:35', '2024-04-12 19:01:44'),
(10395, 16, NULL, 'evo-oss-xs-bac-bo', 'Bac Bo', 'evo-oss-xs-bac-bo', 'casino', NULL, '01HV3JSGDS6E5S256P28348VM1.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'venix', 11, 0, 1, '2024-04-10 05:43:02', '2024-04-13 04:34:03'),
(10396, 16, NULL, 'evo-oss-xs-football-studio', 'Football Studio', 'evo-oss-xs-football-studio', 'casino', NULL, '01HV3NFZYVDZQ1F7QJ5EZX96VF.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 2, 0, 1, '2024-04-10 06:30:16', '2024-04-13 04:33:50'),
(10397, 16, NULL, 'evo-oss-xs-dragon-tiger', 'Dragon Tiger', 'evo-oss-xs-dragon-tiger', 'casino', NULL, '01HVB5WVSBMNH0S81PB9N1GV80.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 3, 0, 1, '2024-04-13 04:31:36', '2024-04-13 20:50:22'),
(10398, 16, NULL, 'evo-oss-xs-fan-tan', 'Fan Tan', 'evo-oss-xs-fan-tan', 'casino', NULL, '01HVB69RDM0JPNZJ2H9X6YRRR8.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-04-13 04:38:39', '2024-04-13 04:43:57'),
(10399, 16, NULL, 'evo-oss-xs-baccarat-a', 'Baccarat A', 'evo-oss-xs-baccarat-a', 'casino', NULL, '01HVB6HJVJ5778HCJZRF6B94VC.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-04-13 04:42:55', '2024-04-13 04:44:27'),
(10400, 16, NULL, 'evo-oss-xs-lightning-baccarat', 'Lightning Baccarat', 'evo-oss-xs-lightning-baccarat', 'casino', NULL, '01HVB6QS2AH1NKWDZX6AAWPCG4.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-04-13 04:46:18', '2024-04-13 04:46:44'),
(10401, 16, NULL, 'evo-oss-xs-immersive-roulette', 'Immersive Roulette', 'evo-oss-xs-immersive-roulette', 'casino', NULL, '01HVB6Z9JWBA3JMFR87Y945Q8B.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-04-13 04:50:25', '2024-04-13 04:50:29'),
(10402, 16, NULL, 'evo-oss-xs-dream-catcher-', 'Dream Catcher', 'evo-oss-xs-dream-catcher-', 'casino', NULL, '01HVB72RAT158VPK5P1BVFSVEC.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-04-13 04:52:18', '2024-04-13 04:52:31'),
(10403, 16, NULL, 'evo-oss-xs-power-blackjack', 'Power Blackjack', 'evo-oss-xs-power-blackjack', 'casino', NULL, '01HVB76XWDXTAB3WMRCFK9H79C.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 1, 0, 1, '2024-04-13 04:54:35', '2024-04-13 04:54:52'),
(10404, 16, NULL, 'evo-oss-xs-xxxtreme-lightning-roulette', 'XXXtreme Lightning Roulette', 'evo-oss-xs-xxxtreme-lightning-roulette', 'casino', NULL, '01HVB7G1ZWVMBFATS2MN84KWSV.webp', '1', 'HTML', 0, 0, 0, 0, 0, 90, 'venix', 0, 0, 1, '2024-04-13 04:59:34', '2024-04-13 05:02:09'),
(631, 9, NULL, 'fortunetiger', 'Fortune Tiger', 'fortunetiger', NULL, 'Fortune Tiger', '01HQK62QBA7HDK946GR548W22F.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 40, 'source', 1671, 0, 0, '2024-01-20 15:23:04', '2024-04-13 12:19:19'),
(632, 9, NULL, 'fortuneox', 'Fortune OX', 'fortuneox', NULL, 'Fortune OX', '01HQK9ZQNZSZMDQ9645F7HGAYP.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 448, 0, 0, '2024-01-20 15:25:43', '2024-04-13 11:58:37'),
(633, 9, NULL, 'fortunemouse', 'Fortune Mouse', 'fortunemouse', NULL, 'Fortune Mouse', '01HQK9Y9G7TS7E1RD48KKZJ2EC.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 356, 0, 0, '2024-01-20 15:27:59', '2024-04-13 11:58:38'),
(634, 9, NULL, 'fortunepanda', 'Fortune Panda', 'fortunepanda', 'slot', 'Fortune Panda', '01HVBRXZ1TN4R4ZBF9TPY6D3N6.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 558, 0, 0, '2024-01-20 15:35:44', '2024-04-13 11:58:33'),
(635, 9, NULL, 'phoenixrises', 'Phoenix Rises', 'phoenixrises', 'slot', 'Phoenix Rises', '01HVBRX9YMKYPX13DH0KCR215Y.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 789, 0, 0, '2024-01-20 15:36:43', '2024-04-13 11:58:33'),
(636, 9, NULL, 'queenofbounty', 'Queen of Bounty', 'queenofbounty', 'slot', 'Queen of Bounty', '01HVBRWM7W42F2Z50SMWA14BJF.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 1000, 0, 0, '2024-01-20 16:07:07', '2024-04-13 11:58:31'),
(637, 9, NULL, 'treasuresofaztec', 'Treasures of Aztec', 'treasuresofaztec', 'slot', 'Treasures of Aztec', '01HVBRVS4G4PQ31Q7P43WH73R5.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 523, 0, 0, '2024-01-20 16:11:51', '2024-04-13 11:58:35'),
(638, 9, NULL, 'bikiniparadise', 'Bikini Paradise', 'bikiniparadise', 'slot', 'Bikini Paradise', '01HVBRV51HG51MEAF4BQ74A10Y.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 859, 0, 0, '2024-01-20 16:12:37', '2024-04-13 11:58:32'),
(639, 9, NULL, 'hoodvswoolf', 'Hood VS Wolf', 'hoodvswoolf', 'slot', 'Hood VS Wolf', '01HVBRTG8ABG0Y9NWVQNGGFPND.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 556, 0, 0, '2024-01-20 16:13:32', '2024-04-13 11:58:34'),
(640, 9, NULL, 'jackfrost', 'Jack Frost´s', 'jackfrost', 'slot', 'Jack Frost´s', '01HVBRS2YVDWFH4TKTSC5MBWER.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 481, 0, 0, '2024-01-20 16:14:13', '2024-04-13 11:58:36'),
(641, 9, NULL, 'songkranparty', 'Song Kran Party', 'songkranparty', 'slot', 'Song Kran Party', '01HVBRQF10GBZ1A6EA5RMK4JBA.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 969, 0, 0, '2024-01-20 16:19:13', '2024-04-13 11:58:31'),
(642, 9, NULL, 'fortunerabbit', 'Fortune Rabbit', 'fortunerabbit', 'slot', 'Fortune Rabbit', '01HVBRPMM0181F5T43C3JCA8S3.webp', '1', 'HTML5', 0, 0, 0, 0, 1, 90, 'source', 143, 0, 0, '2024-01-20 16:40:33', '2024-04-13 11:58:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `merchant_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_base_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_pn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salsa_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vibra_site_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vibra_game_mode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_agent_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worldslot_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://api.worldslotgame.com/api/v2/',
  `games2_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_agent_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `games2_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'api.games2api.xyz',
  `evergame_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evergame_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evergame_api_endpoint` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venix_agent_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_hall` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `play_gaming_login` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pig_agent_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `merchant_url`, `merchant_id`, `merchant_key`, `agent_code`, `agent_token`, `agent_secret_key`, `api_endpoint`, `salsa_base_uri`, `salsa_pn`, `salsa_key`, `created_at`, `updated_at`, `vibra_site_id`, `vibra_game_mode`, `worldslot_agent_code`, `worldslot_agent_token`, `worldslot_agent_secret_key`, `worldslot_api_endpoint`, `games2_agent_code`, `games2_agent_token`, `games2_agent_secret_key`, `games2_api_endpoint`, `evergame_agent_code`, `evergame_agent_token`, `evergame_api_endpoint`, `venix_agent_code`, `venix_agent_token`, `venix_agent_secret`, `play_gaming_hall`, `play_gaming_key`, `play_gaming_login`, `pig_agent_code`, `pig_agent_token`, `pig_agent_secret`) VALUES
(1, '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2023-11-30 18:03:08', '2024-04-05 14:15:24', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_production` tinyint DEFAULT '0',
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_webhook_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 21:05:51', '2024-04-05 14:20:05', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint UNSIGNED NOT NULL,
  `prizes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '2024-01-11 20:52:59', '2024-01-14 17:07:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `possibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aggregator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `liked_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `challenge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `challenge_total` bigint NOT NULL DEFAULT '1',
  `challenge_currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `challenge_provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challenge_gameid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mission_id` int UNSIGNED NOT NULL,
  `rounds` bigint DEFAULT '0',
  `rewards` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `providers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refunded` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `round_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `rtp` bigint DEFAULT '90',
  `views` bigint DEFAULT '1',
  `distribution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(18, '', 'Salsa Studio', 'SPRIBE', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(17, '', 'Salsa Studio', 'PRAGMATIC LIVE', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(16, '', 'Salsa Studio', 'EVOLUTION', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(21, '', 'Salsa Studio', 'BETGAMES', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(22, '', 'Salsa Studio', '3OAKS', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(23, '', 'Salsa Studio', '7777GAMINGS', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(24, '', 'Salsa Studio', '1GAMEHUB', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(25, '', 'Salsa Studio', 'BETSOFT', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(26, '', 'Salsa Studio', 'BOOMING', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(27, '', 'Salsa Studio', 'EZUGI', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(28, '', 'Salsa Studio', 'NETENT BRANDED', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(29, '', 'Salsa Studio', 'PGSOFT', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-03-05 22:33:31'),
(30, '', 'Salsa Studio', 'RED TIGER BRANDED', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(31, '', 'Salsa Studio', 'SMARTSOFT', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(32, '', 'Salsa Studio', 'SALSA STUDIO', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(33, '', 'Salsa Studio', 'CASINO LIVE', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(34, '', 'Salsa Studio', 'Salsa Original', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(35, '', 'Salsa Studio', 'SLOTS', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(36, '', 'Salsa Studio', 'VIRTUAL SPORTS', 1, 90, 1, 'venix', '2024-02-23 21:06:35', '2024-02-23 21:06:35'),
(9, '', 'FONTE', 'PGSoft', 1, 90, 1, 'source', '2024-04-13 21:06:35', '2024-04-13 21:06:35');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `software_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_white` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_logo_black` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint DEFAULT '20',
  `ngr_percent` bigint DEFAULT '20',
  `soccer_percentage` bigint DEFAULT '30',
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint DEFAULT '0',
  `min_deposit` decimal(10,2) DEFAULT '20.00',
  `max_deposit` decimal(10,2) DEFAULT '0.00',
  `min_withdrawal` decimal(10,2) DEFAULT '20.00',
  `max_withdrawal` decimal(10,2) DEFAULT '0.00',
  `rollover` bigint DEFAULT '10',
  `rollover_deposit` bigint DEFAULT '1',
  `suitpay_is_enable` tinyint DEFAULT '1',
  `stripe_is_enable` tinyint DEFAULT '1',
  `bspay_is_enable` tinyint DEFAULT '0',
  `sharkpay_is_enable` tinyint DEFAULT '1',
  `turn_on_football` tinyint DEFAULT '1',
  `revshare_reverse` tinyint(1) DEFAULT '1',
  `bonus_vip` bigint DEFAULT '100',
  `activate_vip_bonus` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint DEFAULT '0',
  `withdrawal_limit` bigint DEFAULT NULL,
  `withdrawal_period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT '0',
  `perc_sub_lv1` bigint NOT NULL DEFAULT '4',
  `perc_sub_lv2` bigint NOT NULL DEFAULT '2',
  `perc_sub_lv3` bigint NOT NULL DEFAULT '3',
  `disable_rollover` tinyint DEFAULT '0',
  `rollover_protection` bigint NOT NULL DEFAULT '1',
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `mercadopago_is_enable` tinyint DEFAULT '0',
  `digitopay_is_enable` tinyint NOT NULL DEFAULT '0',
  `default_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'digitopay'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`) VALUES
(1, 'MXVBET', 'Maior plataforma de Cassino Online.', 'uploads/5VY7frCFDEgEzBHUYMfh8UeK30pxUXx4yPCT6kZS.png', 'uploads/A1D5E5pAImQfyLcpA3j0AUjbHpVLLiz2wrVeC4Hv.png', 'uploads/qzMKW68ViE3NI0YX1L2XkBDf3pT6c3AyLq332e1y.png', '[]', 'BRL', 'dot', 'left', 50, 0, 30, 'R$', 'local', 0, 20.00, 50000.00, 20.00, 50000.00, 10, 2, 1, 0, 1, 0, 0, 1, 0, 0, '2024-04-12 21:28:38', 0, 300, 'daily', 1, 10, 5, 1, 0, 5, 50.00, 10.00, 0, 0, 'suitpay');

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint UNSIGNED NOT NULL,
  `affiliate_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `label` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT '0.000000000000',
  `balance_min` decimal(27,12) NOT NULL DEFAULT '10000.100000000000',
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT '45.00',
  `mode` enum('balance_min','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logged_in` tinyint NOT NULL DEFAULT '0',
  `banned` tinyint NOT NULL DEFAULT '0',
  `inviter` int DEFAULT NULL,
  `inviter_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_revenue_share` bigint NOT NULL DEFAULT '15',
  `affiliate_revenue_share_fake` bigint DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT '10.00',
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT '50.00',
  `is_demo_agent` tinyint NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pt_BR',
  `role_id` int DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`) VALUES
(1, 'admin', 'admin@demo.com', NULL, '$2y$10$8VbXuN0cKpYubyCMGAMA/.1iweFqyCwB4s.eYGmmvaMnTGfOTpse6', NULL, '2024-04-13 03:38:44', '2024-04-13 23:11:15', NULL, NULL, NULL, NULL, NULL, '84996249982', 0, 0, NULL, '3QQ4PSS5ZI', 50, NULL, 10.00, 50.00, 0, 'active', 'pt_BR', 3),
(7, 'Jose Soares', 'admin@gmail.com', NULL, '$2y$10$jZGkz1UBIFFcYKZCM0Zhm.k1FgpGNXnWK.AP/unYmbjYzNjbvHrli', NULL, '2024-04-13 23:08:22', '2024-04-13 23:08:22', NULL, NULL, NULL, NULL, NULL, '84996249982', 0, 0, NULL, NULL, 50, NULL, 10.00, 50.00, 0, 'active', 'pt_BR', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bet_level` bigint NOT NULL DEFAULT '1',
  `bet_required` bigint DEFAULT NULL,
  `bet_period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bet_bonus` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `vip_id` int UNSIGNED NOT NULL,
  `level` bigint NOT NULL,
  `points` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_bonus_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_deposit_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_withdrawal` decimal(10,2) DEFAULT '0.00',
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `balance_demo` decimal(20,8) DEFAULT '1000.00000000',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide_balance` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_won` bigint NOT NULL DEFAULT '0',
  `total_lose` bigint NOT NULL DEFAULT '0',
  `last_won` bigint NOT NULL DEFAULT '0',
  `last_lose` bigint NOT NULL DEFAULT '0',
  `vip_level` bigint DEFAULT '0',
  `vip_points` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(1, 1, 'BRL', 'R$', 0.00, 0.00, 0.00, 1000.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-04-13 03:38:44', '2024-04-13 19:00:59', 0.00, 0, 0, 0, 0, 0, 0),
(7, 7, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-04-13 23:08:22', '2024-04-13 23:08:22', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_roi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_entry` decimal(20,2) NOT NULL DEFAULT '0.00',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_index` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `games_provider_id_index` (`provider_id`) USING BTREE,
  ADD KEY `games_game_code_index` (`game_code`) USING BTREE;

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10406;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
