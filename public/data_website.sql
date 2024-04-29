-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 09:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

create database if not exists `data_website`;
use `data_website`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Adminstrator', 'admin@gmail.com', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', '2024-01-01 23:42:53', '2024-03-17 23:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) DEFAULT NULL,
  `a_slug` varchar(191) DEFAULT NULL,
  `a_hot` int(11) NOT NULL DEFAULT 0,
  `a_active` int(11) NOT NULL DEFAULT 1,
  `a_menu_id` varchar(191) DEFAULT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` text DEFAULT NULL,
  `a_avatar` text DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `_wysihtml5_mode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(7, 'jjj', 'jjj', 0, 1, 'KIẾN THỨC ĐỒNG HỒ', 0, 'Đang cậpjkdsfg nhật', NULL, '<p>Contentjjh,hjljlm,</p>', NULL, '2024-04-02 14:28:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) DEFAULT NULL,
  `c_slug` varchar(191) DEFAULT NULL,
  `c_cate` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `c_cate`, `created_at`, `updated_at`) VALUES
(1, 'Bàn trà', 'ban-tra', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:05:40'),
(2, 'Giường ngủ', 'giuong-ngu', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:05:49'),
(3, 'Bàn ghế ăn', 'ban-ghe-an', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:05:59'),
(4, 'Da Indonesia', 'da-indonesia', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:06:20'),
(5, 'Quyển Cleo 1.0', 'quyen-cleo-10', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:06:28'),
(6, 'Quyển NEW PHANTOM', 'quyen-new-phantom', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:06:35'),
(7, 'Quyển GAUR SKIN', 'quyen-gaur-skin', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:06:44'),
(8, 'Quyển Micofiber', 'quyen-micofiber', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:06:56'),
(9, 'Quyển SS 1501', 'quyen-ss-1501', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:07:05'),
(10, 'Da Thật Malaysia', 'da-that-malaysia', 'watch', '2024-03-21 01:25:40', '2024-04-13 03:07:14'),
(11, 'Sofa da', 'sofa-da', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:07:21'),
(12, 'Sofa vải', 'sofa-vai', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:07:28'),
(13, 'Sofa văng', 'sofa-vang', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:07:38'),
(14, 'Sofa Armchair', 'sofa-armchair', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:07:45'),
(15, 'Sofa Relax', 'sofa-relax', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:07:52'),
(16, 'Sofa góc', 'sofa-goc', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:00'),
(17, 'Sofa đơn', 'sofa-don', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:07'),
(18, 'Sofa văn phòng', 'sofa-van-phong', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:14'),
(19, 'Sofa tân cổ điển', 'sofa-tan-co-dien', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:21'),
(20, 'Sofa phòng khách', 'sofa-phong-khach', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:31'),
(21, 'Sofa nhập khẩu', 'sofa-nhap-khau', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:08:40'),
(22, 'Sofa đẹp', 'sofa-dep', 'glass', '2024-03-21 01:25:40', '2024-04-13 03:09:10'),
(23, 'Thảm trang trí Thổ, Bỉ', 'tham-trang-tri-tho-bi', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:09:51'),
(24, 'Rèm cửa', 'rem-cua', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:09:58'),
(25, 'Thảm trang trí Đức', 'tham-trang-tri-duc', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:10:06'),
(26, 'Gối trang trí', 'goi-trang-tri', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:10:13'),
(27, 'Đôn trang trí', 'don-trang-tri', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:10:19'),
(28, 'Táp sofa', 'tap-sofa', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:10:27'),
(29, 'Giường ngủ', 'giuong-ngu', 'accessories', '2024-03-21 01:25:40', '2024-04-13 03:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE `keyword` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) DEFAULT NULL,
  `k_slug` varchar(191) DEFAULT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` int(11) NOT NULL DEFAULT 0,
  `k_active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `k_active`, `created_at`, `updated_at`) VALUES
(1, 'Hot', 'hot', 'Hàng bán chạy', 0, 0, '2020-07-21 23:24:28', NULL),
(2, 'Siêu giảm giá', 'sieu-giam-gia', 'Giảm giá lên tới 20%', 0, 0, '2020-07-21 23:24:53', NULL),
(3, 'Limited', 'limited', 'Hàng hiếm', 0, 0, '2020-09-23 19:23:37', NULL),
(4, 'Hot sale', 'hot-sale', 'Hàng bán chạy nhất', 0, 0, '2020-09-23 19:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_03_205336_create_admins_table', 1),
(2, '2021_03_03_205356_create_articles_table', 1),
(3, '2021_03_03_205807_create_category_table', 1),
(4, '2021_03_03_205921_create_keyword_table', 1),
(5, '2021_03_03_210226_create_product_table', 1),
(6, '2021_03_03_210736_create_product_images_table', 1),
(7, '2021_03_03_210838_create_product_keywords_table', 1),
(8, '2021_03_03_211338_create_users_table', 1),
(9, '2021_03_03_211515_create_user_favourite_table', 1),
(10, '2022_04_02_094736_create_transaction_table', 1),
(11, '2022_04_02_094835_create_orders_table', 1),
(12, '2022_04_02_100515_create_rating_table', 1),
(13, '2022_05_15_090805_add_users_table', 2),
(14, '2022_05_15_092042_add_user_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `od_product_id` bigint(20) UNSIGNED NOT NULL,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` int(11) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(2, 2, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(3, 3, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(4, 4, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(5, 5, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(6, 5, 15, 0, 3, 24000000, '2024-03-21 01:25:40', NULL),
(7, 6, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(8, 7, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(9, 8, 46, 0, 1, 9980000, '2024-03-21 01:25:40', NULL),
(10, 8, 10, 10, 1, 7500000, '2024-03-21 01:25:40', NULL),
(11, 9, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(12, 10, 26, 0, 1, 19900000, '2024-03-21 01:25:40', NULL),
(13, 11, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(14, 12, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(15, 12, 9, 0, 3, 50000, '2024-03-21 01:25:40', NULL),
(16, 13, 8, 0, 1, 120000000, '2024-03-21 01:25:40', NULL),
(17, 14, 8, 0, 3, 120000000, '2024-03-21 01:25:40', NULL),
(18, 14, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(19, 15, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(20, 16, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(21, 17, 11, 0, 1, 4500000, '2024-03-21 01:25:40', NULL),
(22, 18, 15, 0, 1, 24000000, '2024-03-21 01:25:40', NULL),
(23, 35, 14, 0, 1, 11359000, '2024-03-21 01:25:40', NULL),
(24, 36, 7, 0, 1, 150000000, '2024-03-21 01:25:40', NULL),
(25, 37, 75, 0, 1, 6640000, NULL, NULL),
(26, 37, 15, 0, 1, 24000000, NULL, NULL),
(27, 38, 11, 0, 1, 4500000, NULL, NULL),
(28, 40, 14, 0, 1, 11359000, NULL, NULL),
(29, 40, 26, 0, 1, 19900000, NULL, NULL),
(30, 42, 217, 0, 1, 9250000, NULL, NULL),
(31, 43, 7, 0, 1, 150000000, NULL, NULL),
(32, 43, 175, 0, 1, 3450000, NULL, NULL),
(33, 44, 279, 120000, 1, 1955000, NULL, NULL),
(34, 45, 12, 0, 1, 500000000, NULL, NULL),
(35, 45, 7, 0, 3, 150000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_amount` int(11) NOT NULL DEFAULT 100,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_slug` varchar(191) DEFAULT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_category` varchar(191) DEFAULT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_favourite` int(11) NOT NULL DEFAULT 0,
  `pro_hot` int(11) NOT NULL DEFAULT 0,
  `pro_active` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` text DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `keywordseo` varchar(191) DEFAULT NULL,
  `pro_review_star` int(11) NOT NULL DEFAULT 5,
  `_wysihtml5_mode` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(6, 'Bàn kính sofa cường lực mã 105', 100, 13, 'ban-kinh-sofa-cuong-luc-ma-105', 1500000, 0, '1', '2024-04-13__ban-sofa-kinh-oval-ma-105-4.avif', 0, 1, 1, 1, 0, 'Bảo Hành:  \r\n1 Năm', '<table border=\"0\" cellpadding=\"5px\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<th>Chất liệu:</th>\r\n			<td>Gỗ tần b&igrave; (gỗ sồi)</td>\r\n		</tr>\r\n		<tr>\r\n			<th><img src=\"https://sofatoanquoc.com/design/themes/sofatoanquoc/media/images/icon-detail.png\" />Mặt b&agrave;n:</th>\r\n			<td>Mặt kính</td>\r\n		</tr>\r\n		<tr>\r\n			<th><img src=\"https://sofatoanquoc.com/design/themes/sofatoanquoc/media/images/icon-detail.png\" />Ki&ecirc;̉u dáng:</th>\r\n			<td>Hình oval</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:03:42'),
(7, 'Bàn Trà Mặt Đá Nhập Khẩu Mã 843', 96, 63, 'ban-tra-mat-da-nhap-khau-ma-843', 150000000, 0, '1', '2024-04-13__ban-tra-mat-da-to-khung-go-tu-nhien-nhap-khau-bt843.avif', 1, 1, 1, 1, 18, 'Kích Thước: Dài 1400mm, Rộng 800mm, Cao 450mm', '<p>Bảo H&agrave;nh:&nbsp;1 Năm</p>', 2, NULL, 11, '1', '2024-03-21 01:25:40', '2024-04-13 05:04:41'),
(8, 'Bàn Trà Mặt Đá 2 Ngăn Kéo Mã Bt820', 98, 13, 'ban-tra-mat-da-2-ngan-keo-ma-bt820', 120000000, 0, '1', '2024-04-13__ban-mat-da-van-go-hoa-van-sofa-ma-bt820.avif', 0, 0, 1, 1, 2, 'Kích Thước: Dài 1200mm, Rộng 600mm, Cao 450mm', '<p>Bảo H&agrave;nh:&nbsp;1 Năm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:05:06'),
(9, 'Bàn Trà Mặt Đá Đẹp Cao Cấp Mã 859', 99, 5, 'ban-tra-mat-da-dep-cao-cap-ma-859', 50000, 0, '1', '2024-04-13__ban-tra-mat-da-cao-cap-nhap-khau-bt859.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:05:35'),
(10, 'Bàn Trà Mã N46', 99, 43, 'ban-tra-ma-n46', 7500000, 10, '1', '2024-04-13__ban-ke-46.avif', 0, 1, 1, 1, 36, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:06:34'),
(11, 'Bàn Trà Mã C130', 96, 114, 'ban-tra-ma-c130', 4500000, 0, '1', '2024-04-13__ban-ke-d-c130s.avif', 1, 0, 1, 1, 6, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 2, NULL, 9, '1', '2024-03-21 01:25:40', '2024-04-13 05:06:51'),
(12, 'Bàn Trà Mã Y105', 99, 8, 'ban-tra-ma-y105', 500000000, 0, '1', '2024-04-13__ban-tra-y105s.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:07:36'),
(13, 'Bàn Trà Mã C51', 100, 9, 'ban-tra-ma-c51', 90000, 0, '1', '2024-04-13__ban-tra-c51-n.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:10:18'),
(14, 'Bàn Trà Mã U140', 96, 60, 'ban-tra-ma-u140', 11359000, 0, '1', '2024-04-13__ban-tra-u140-n.avif', 1, 1, 1, 1, 13, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:10:36'),
(15, 'Bàn Trà Mã 371', 97, 46, 'ban-tra-ma-371', 24000000, 0, '1', '2024-04-13__ban-ke-371.avif', 0, 1, 1, 1, 17, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:10:55'),
(16, 'Bàn Trà Mã A26', 100, 0, 'ban-tra-ma-a26', 3400000, 0, '1', '2024-04-13__ban-a26.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:11:14'),
(17, 'Bàn Trà Mã 2238', 100, 0, 'ban-tra-ma-2238', 9000000, 0, '1', '2024-04-13__ban-2238.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:11:55'),
(18, 'Bàn Trà Mã 2614_2617', 100, 0, 'ban-tra-ma-2614-2617', 11007000, 0, '1', '2024-04-13__ban-ke-2614-2617-n.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:12:14'),
(19, 'Bàn Trà Mã 2614_2617', 100, 0, 'ban-tra-ma-2614-2617', 11007000, 0, '1', '2024-04-13__ban-ke-2614-2617-n.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 05:17:25'),
(20, 'Bàn Trà Mã C07_2', 100, 0, 'ban-tra-ma-c07-2', 11007000, 0, '1', '2024-04-13__ban-tra-c07-2s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:35:09'),
(21, 'Bàn Trà Mã 633', 100, 0, 'ban-tra-ma-633', 12672000, 0, '1', '2024-04-13__ban-ke-633.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:35:41'),
(22, 'Bàn Trà Mã 633', 100, 0, 'ban-tra-ma-633', 12672000, 0, '1', '2024-04-13__ban-ke-633.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:44:04'),
(23, 'Bàn Trà Mã C47', 100, 15, 'ban-tra-ma-c47', 12672000, 0, '1', '2024-04-13__ban-tra-c47s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:44:17'),
(24, 'Bàn Trà Mã C49', 100, 18, 'ban-tra-ma-c49', 11007000, 0, '1', '2024-04-13__ban-tra-c49s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:44:34'),
(25, 'Bàn Trà Mã C02', 100, 0, 'ban-tra-ma-c02', 13000000, 0, '2', '2024-04-13__ban-tra-c02s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:44:50'),
(26, 'Bàn Trà Mã C112', 98, 6, 'ban-tra-ma-c112', 19900000, 0, '2', '2024-04-13__ban-tra-c112-new.avif', 0, 0, 1, 1, 2, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:00'),
(27, 'Bàn Trà Mã F26', 100, 2, 'ban-tra-ma-f26', 13000000, 0, '2', '2024-04-13__ban-ke-f26s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 1, NULL, 9, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:12'),
(28, 'Bàn Trà Mã N300', 100, 0, 'ban-tra-ma-n300', 14000000, 0, '2', '2024-04-13__ban-tra-ma-300.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:24'),
(29, 'Bàn Trà Mã 301', 100, 0, 'ban-tra-ma-301', 14000000, 0, '2', '2024-04-13__ban-tra-301.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:34'),
(30, 'Bàn Trà Mã C07', 100, 17, 'ban-tra-ma-c07', 15100000, 0, '1', '2024-04-13__ban-tra-c07s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:45'),
(31, 'Bàn Trà Mã N81', 100, 0, 'ban-tra-ma-n81', 13000000, 0, '2', '2024-04-13__ban-tra-81s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:45:57'),
(32, 'Bàn Trà Mã C15', 100, 2, 'ban-tra-ma-c15', 22800000, 0, '2', '2024-04-13__ban-ke-c15s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:46:08'),
(33, 'Bàn Trà Mã 2041', 100, 0, 'ban-tra-ma-2041', 32100000, 0, '2', '2024-04-13__ban-ke-2041s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:46:18'),
(34, 'Bàn Trà Mã C06t1', 100, 0, 'ban-tra-ma-c06t1', 56400000, 0, '2', '2024-04-13__ban-tra-c06t1s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:46:41'),
(35, 'Bàn Trà Mã C107', 100, 0, 'ban-tra-ma-c107', 15100000, 0, '2', '2024-04-13__ban-tra-c107s.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:46:55'),
(36, 'Giường Ngủ Bọc Da Mã GND100', 100, 0, 'giuong-ngu-boc-da-ma-gnd100', 36000000, 0, '2', '2024-04-13__hs-1-74.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:47:43'),
(37, 'Giường Ngủ Bọc Da Mã MG01', 100, 0, 'giuong-ngu-boc-da-ma-mg01', 36000000, 0, '2', '2024-04-13__mg01-new-2021.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:47:56'),
(38, 'Giường Ngủ Bọc Da Mã MG02', 100, 0, 'giuong-ngu-boc-da-ma-mg02', 32100000, 0, '2', '2024-04-13__mg02-new-2021.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:48:07'),
(39, 'Giường Da Tân Cổ Điển 2000mm Mã 84', 100, 0, 'giuong-da-tan-co-dien-2000mm-ma-84', 39600000, 0, '2', '2024-04-13__giuong-ngu-ma-84.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:48:19'),
(40, 'Giường Bọc Da Tân Cổ Điển Mã 71', 100, 0, 'giuong-boc-da-tan-co-dien-ma-71', 14000000, 0, '2', '2024-04-13__giuong-ngu-ma-71.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:48:33'),
(41, 'Giường Vải Màu Xanh Dương Tân Cổ Điển 2100', 100, 0, 'giuong-vai-mau-xanh-duong-tan-co-dien-2100', 32100000, 0, '2', '2024-04-13__giuong-ngu-ma-85.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:48:50'),
(42, 'Giường Ngủ Bọc Vải Mã 43', 100, 0, 'giuong-ngu-boc-vai-ma-43', 54500000, 0, '2', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-43.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:49:02'),
(43, 'Giường Ngủ Bọc Vải Mã 52', 100, 0, 'giuong-ngu-boc-vai-ma-52', 36000000, 0, '2', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-52-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:49:11'),
(44, 'Giường Ngủ Da Mã 83 Rộng 2400mm', 100, 0, 'giuong-ngu-da-ma-83-rong-2400mm', 31600000, 0, '2', '2024-04-13__giuong-ngu-ma-83.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:49:23'),
(45, 'Giường Ngủ Bọc Vải Tân Cổ Điển Mã 08', 100, 4, 'giuong-ngu-boc-vai-tan-co-dien-ma-08', 8580000, 0, '3', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-08-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:49:37'),
(46, 'Giường Ngủ Bọc Vải Mã 24', 99, 0, 'giuong-ngu-boc-vai-ma-24', 9980000, 0, '3', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-24.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:49:53'),
(47, 'Giường Ngủ Bọc Da Mã 56', 100, 3, 'giuong-ngu-boc-da-ma-56', 9180000, 0, '3', '2024-04-13__giuong-ngu-boc-ma-56-1-sofa-toan-quoc.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:50:07'),
(48, 'Giường Ngủ Bọc Vải Mã 66', 100, 0, 'giuong-ngu-boc-vai-ma-66', 7620000, 0, '3', '2024-04-13__giuong-ngu-ma-66-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:50:18'),
(49, 'Giường Ngủ Bọc Vải Mã 44', 100, 3, 'giuong-ngu-boc-vai-ma-44', 8980000, 0, '3', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-44.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:50:29'),
(50, 'Giường Ngủ Bọc Vải Mã 01', 100, 0, 'giuong-ngu-boc-vai-ma-01', 7990000, 0, '3', '2024-04-13__giuong-ngu-boc-vai-ma-01-sofa-toan-quoc.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:50:41'),
(51, 'Giường Ngủ Bọc Vải Mã 65', 100, 0, 'giuong-ngu-boc-vai-ma-65', 8390000, 0, '3', '2024-04-13__giuong-ngu-ma-65-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:50:52'),
(52, 'Mẫu Giường Ngủ Bọc Nệm Da Gỗ Sồi Mã 04', 100, 0, 'mau-giuong-ngu-boc-nem-da-go-soi-ma-04', 9180000, 0, '3', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-04-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:51:05'),
(53, 'Giường Ngủ Bọc Da Nhập Khẩu Mã 55', 100, 0, 'giuong-ngu-boc-da-nhap-khau-ma-55', 13980000, 0, '3', '2024-04-13__giuong-ngu-boc-ma-55-1-sofa-toan-quoc.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:51:16'),
(54, 'Giường Ngủ Bọc Da Mã 13', 100, 0, 'giuong-ngu-boc-da-ma-13', 8390000, 0, '3', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-13-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:51:29'),
(55, 'Giường Ngủ Bọc Vải Mã 06', 100, 2, 'giuong-ngu-boc-vai-ma-06', 3850000, 0, '4', '2024-04-13__giuong-ngu-boc-vai-ma-06-sofa-toan-quoc.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:51:40'),
(56, 'Giường Ngủ Bọc Vải Nỉ Mã 11', 100, 0, 'giuong-ngu-boc-vai-ni-ma-11', 4545000, 0, '4', '2024-04-13__giuong-ngu-boc-vai-ma-11-sofa-toan-quoc.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:51:50'),
(57, 'Giường Ngủ Bọc Vải Mã 05', 100, 0, 'giuong-ngu-boc-vai-ma-05', 2890000, 0, '4', '2024-04-13__giuong-ngu-boc-vai-ma-05.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:52:01'),
(58, 'Giường Ngủ Bọc Vải Mã 45', 100, 0, 'giuong-ngu-boc-vai-ma-45', 3575000, 0, '4', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-45-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:52:15'),
(59, 'Giường Ngủ Bọc Da Mã 15', 100, 3, 'giuong-ngu-boc-da-ma-15', 5000000, 0, '4', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-015-4.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:52:27'),
(60, 'Giường Ngủ Bọc Vải Mã 69', 100, 5, 'giuong-ngu-boc-vai-ma-69', 2890000, 0, '4', '2024-04-13__giuong-ngu-ma-69-1.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:52:39'),
(61, 'Giường Ngủ Bọc Vải Mã 48', 100, 0, 'giuong-ngu-boc-vai-ma-48', 2890000, 0, '4', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-48-1-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:52:59'),
(62, 'Giường Ngủ Bọc Vải Mã 54', 100, 0, 'giuong-ngu-boc-vai-ma-54', 4080000, 0, '4', '2024-04-13__giuong-ngu-sofa-toan-quoc-ma-54-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:53:11'),
(63, 'Quyển Cleo 1.0 SD04', 100, 0, 'quyen-cleo-10-sd04', 3575000, 0, '4', '2024-04-13__sd-indonesia-cleo10-3.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:53:52'),
(64, 'Quyển Cleo 1.0 SD01', 100, 0, 'quyen-cleo-10-sd01', 6000000, 0, '4', '2024-04-13__sd-indonesia-cleo10.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:54:03'),
(65, 'Quyển New Phantom SDNP11', 100, 0, 'quyen-new-phantom-sdnp11', 4225000, 0, '5', '2024-04-13__sd-indonesia-phantom-10.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:54:19'),
(66, 'Quyển Cleo 1.0 SD03', 100, 0, 'quyen-cleo-10-sd03', 2975000, 0, '5', '2024-04-13__sd-indonesia-cleo10-2.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:54:33'),
(67, 'Quyển Cleo 1.0 SD13', 100, 0, 'quyen-cleo-10-sd13', 2975000, 0, '5', '2024-04-13__sd-indonesia-cleo10-12.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:54:44'),
(68, 'Quyển Cleo 1.0 SD16', 100, 0, 'quyen-cleo-10-sd16', 3700000, 0, '5', '2024-04-13__sd-indonesia-cleo10-15.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:54:55'),
(69, 'Quyển Cleo 1.0 SD06', 100, 0, 'quyen-cleo-10-sd06', 1295000, 0, '5', '2024-04-13__sd-indonesia-cleo10-5.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:55:21'),
(70, 'Quyển Cleo 1.0 SD07', 100, 0, 'quyen-cleo-10-sd07', 5225000, 0, '5', '2024-04-13__sd-indonesia-cleo10-6.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:55:32'),
(71, 'Quyển Cleo 1.0 SD02', 100, 0, 'quyen-cleo-10-sd02', 11522500, 0, '5', '2024-04-13__sd-indonesia-cleo10-1.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:55:55'),
(72, 'Quyển Cleo 2.0 SDC18', 100, 0, 'quyen-cleo-20-sdc18', 5472500, 0, '5', '2024-04-13__sd-indonesia-cleo-20-18-cvw3-2z.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:56:17'),
(73, 'Quyển Cleo 2.0 SDC11', 100, 0, 'quyen-cleo-20-sdc11', 6225000, 0, '5', '2024-04-13__sd-indonesia-cleo-20-10.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:56:29'),
(74, 'Quyển Cleo 2.0 SDC12', 100, 5, 'quyen-cleo-20-sdc12', 5190000, 0, '6', '2024-04-13__sd-indonesia-cleo-20-11.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:56:40'),
(75, 'Quyển Cleo 2.0 SDC14', 99, 4, 'quyen-cleo-20-sdc14', 6640000, 0, '6', '2024-04-13__sd-indonesia-cleo-20-13.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:56:51'),
(76, 'Quyển Cleo 2.0 SDC03', 100, 2, 'quyen-cleo-20-sdc03', 2470000, 0, '6', '2024-04-13__sd-indonesia-cleo-20-7.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:57:06'),
(77, 'Quyển New Phantom SDNP13', 100, 0, 'quyen-new-phantom-sdnp13', 5770000, 0, '6', '2024-04-13__sd-indonesia-phantom-12.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:57:31'),
(78, 'Quyển New Phantom SDNP10', 100, 0, 'quyen-new-phantom-sdnp10', 5190000, 0, '6', '2024-04-13__sd-indonesia-phantom-9.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:57:42'),
(79, 'Bộ Sofa Da Thật Đẹp Mã M17', 100, 0, 'bo-sofa-da-that-dep-ma-m17', 4320000, 0, '6', '2024-04-13__m17-new-2021.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:58:30'),
(80, 'Mẫu Sofa 3 Mét 2 Bọc Da Màu Đen Cho Phòng', 100, 0, 'mau-sofa-3-met-2-boc-da-mau-den-cho-phong', 8670000, 0, '6', '2024-04-13__sofa-da-ma-m02b-01.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:58:48'),
(81, 'Mẫu Sofa Màu Cafe Đẹp Bọc Da Mã M12B', 100, 0, 'mau-sofa-mau-cafe-dep-boc-da-ma-m12b', 4320000, 0, '6', '2024-04-13__sofa-ma-m12b.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:59:03'),
(82, 'Bàn đầu giường Coastal', 100, 0, 'ban-dau-giuong-coastal', 7220000, 0, '6', '2024-04-13__ban-dau-giuong-coastal-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:59:35'),
(83, 'Bàn đầu giường Madame màu P67W', 100, 0, 'ban-dau-giuong-madame-mau-p67w', 7220000, 0, '6', '2024-04-13__ban-dau-giuong-madame-mau-p67w-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:59:46'),
(84, 'Bàn đầu giường Cabo PMA532058 F1', 100, 0, 'ban-dau-giuong-cabo-pma532058-f1', 1564000, 0, '7', '2024-04-13__ban-dau-giuong-cabo-pma532058-f1-2-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 06:59:58'),
(85, 'Bàn đầu giường Osaka', 100, 0, 'ban-dau-giuong-osaka', 1714000, 0, '7', '2024-04-13__ban-dau-giuong-osaka-3-101893-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:00:15'),
(86, 'Bàn đầu giường Skagen bên phải', 100, 0, 'ban-dau-giuong-skagen-ben-phai', 1714000, 0, '7', '2024-04-13__phong-ngu-hien-dai-thanh-lich-skagen-13522-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:00:34'),
(87, 'Bàn đầu giường Skagen bên trái', 100, 0, 'ban-dau-giuong-skagen-ben-trai', 1564000, 0, '7', '2024-04-13__phong-ngu-hien-dai-thanh-lich-skagen-13522-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:00:46'),
(88, 'Bàn đầu giường Pop - Mẫu 2', 100, 0, 'ban-dau-giuong-pop-mau-2', 1564000, 0, '7', '2024-04-13__1000-san-pham-nha-xinh-22-5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:00:56'),
(89, 'Bàn đầu giường Miami', 100, 0, 'ban-dau-giuong-miami', 1334000, 0, '7', '2024-04-13__phong-ngu-miami-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:01:25'),
(90, 'Bàn đầu giường Pio', 100, 0, 'ban-dau-giuong-pio', 1668000, 0, '7', '2024-04-13__99283-1000-300x246.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:01:36'),
(91, 'Bàn đầu giường City P94/GEW', 100, 0, 'ban-dau-giuong-city-p94gew', 1334000, 0, '7', '2024-04-13__ban-dau-giuong-city1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:01:48'),
(92, 'Bàn ĐG City P94/GXW', 100, 0, 'ban-dg-city-p94gxw', 1334000, 0, '7', '2024-04-13__ban-dg-city-p94-gxw-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:02:00'),
(93, 'Bàn đầu giường trắng Universal CS6096-4A P94', 100, 0, 'ban-dau-giuong-trang-universal-cs6096-4a-p94', 1691000, 0, '7', '2024-04-13__ban-dau-giuong-universal-hemp-p151-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:02:11'),
(94, 'Bàn đầu giường Universal CS6096-4A P14C', 100, 0, 'ban-dau-giuong-universal-cs6096-4a-p14c', 11200000, 0, '8', '2024-04-13__ban-dau-giuong-universal-hemp-p151-2-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:02:22'),
(95, 'Bàn đầu giường Universal hemp p151', 100, 0, 'ban-dau-giuong-universal-hemp-p151', 14880000, 0, '8', '2024-04-13__ban-dau-giuong-universal-hemp-p151-2-300x200-2.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:02:35'),
(96, 'Ghế ngoài trời Angela Alu ADS00', 100, 0, 'ghe-ngoai-troi-angela-alu-ads00', 12780000, 0, '8', '2024-04-13__ghe-ngoai-troi-angela-alu-ads003-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:02'),
(97, 'Ghế ngoài trời Puyi Alu H78x56x59 ADS004', 100, 0, 'ghe-ngoai-troi-puyi-alu-h78x56x59-ads004', 12830000, 0, '8', '2024-04-13__ghe-ngoai-troi-puyi-alu-h78x56x59-ads004-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:12'),
(98, 'Ghế ngoài trời Tuka vải Samoa SQB', 100, 0, 'ghe-ngoai-troi-tuka-vai-samoa-sqb', 12780000, 0, '8', '2024-04-13__103367-ghe-tuka-vai-samoa-sqb-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:21'),
(99, 'Ghế ngoài trời Fermob Facto Rosemary', 100, 0, 'ghe-ngoai-troi-fermob-facto-rosemary', 13130000, 30, '8', '2024-04-13__ghe-ngoai-troi-hien-dai-fermob-facto-xanh-300x200.png', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:32'),
(100, 'Ghế ngoài trời Fermob Facto Willow green', 100, 0, 'ghe-ngoai-troi-fermob-facto-willow-green', 11730000, 30, '8', '2024-04-13__ghe-ngoai-troi-hien-dai-fermob-facto-do-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:44'),
(101, 'Ghế ngoài trời Fermob Facto Cactus', 100, 0, 'ghe-ngoai-troi-fermob-facto-cactus', 13830000, 0, '8', '2024-04-13__ghe-ngoai-troi-hien-dai-fermob-facto-xam-300x200.png', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:03:54'),
(102, 'Ghế ngoài trời Fermob Luxembourg Willow Green', 100, 0, 'ghe-ngoai-troi-fermob-luxembourg-willow-green', 17330000, 0, '8', '2024-04-13__ghe-ngoai-troi-fermob-luxembourg-willow-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:04:04'),
(103, 'Ghế ngoài trời Fermob Luxembourg Rosemary', 100, 0, 'ghe-ngoai-troi-fermob-luxembourg-rosemary', 15750000, 0, '8', '2024-04-13__ghe-ngoai-troi-fermob-luxembourg-willow4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:04:15'),
(104, 'Ghế ngoài trời Fermob Luxembourg Cactus', 100, 0, 'ghe-ngoai-troi-fermob-luxembourg-cactus', 4990000, 0, '9', '2024-04-13__ghe-ngoai-troi-fermob-luxembourg-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:04:28'),
(105, 'Ghế ngoài trời Fermob Plein air storm grey', 100, 0, 'ghe-ngoai-troi-fermob-plein-air-storm-grey', 4990000, 0, '9', '2024-04-13__ghe-ngoai-troi-fermob-plein-air-storm-grey-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:04:39'),
(106, 'Ghế ngoài trời Fermob Plein air nutmeg', 100, 0, 'ghe-ngoai-troi-fermob-plein-air-nutmeg', 4190000, 0, '9', '2024-04-13__ghe-ngoai-troi-fermob-plein-air-ko-tay-300x200.png', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:04:51'),
(107, 'Nệm Sen Việt 1m4', 100, 0, 'nem-sen-viet-1m4', 4750000, 0, '9', '2024-04-13__sen-viet-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:05:23'),
(108, 'Nệm Sen Việt 1m6', 100, 0, 'nem-sen-viet-1m6', 2990000, 0, '9', '2024-04-13__sen-viet-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:05:36'),
(109, 'Nệm Sen Việt 1m8', 100, 0, 'nem-sen-viet-1m8', 5240000, 0, '9', '2024-04-13__sen-viet-300x200-2.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:05:46'),
(110, 'Nệm Luxury Golden Black 1m6', 100, 0, 'nem-luxury-golden-black-1m6', 4750000, 0, '9', '2024-04-13__nem-eco-ruby-col-15-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:05:59'),
(111, 'Tủ Tivi Hung King', 100, 0, 'tu-tivi-hung-king', 3370000, 0, '9', '2024-04-13__hung-king-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:06:27'),
(112, 'Tủ TV Rudo', 100, 0, 'tu-tv-rudo', 3900000, 0, '9', '2024-04-13__tu-tv-rudo-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:06:36'),
(113, 'Tủ Cabinet Coastal', 100, 0, 'tu-cabinet-coastal', 3900000, 0, '9', '2024-04-13__tu-cabinet-coastal-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:06:46'),
(114, 'Tủ tivi Elegance màu nâu', 100, 0, 'tu-tivi-elegance-mau-nau', 7980000, 0, '10', '2024-04-13__elegance-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:06:55'),
(115, 'Tủ tivi Elegance màu tự nhiên', 100, 0, 'tu-tivi-elegance-mau-tu-nhien', 11960000, 0, '10', '2024-04-13__ke-tv-elegance3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:05'),
(116, 'Tủ tivi Elegance màu đen', 100, 0, 'tu-tivi-elegance-mau-den', 13480000, 0, '10', '2024-04-13__ke-tv-elegance-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:14'),
(117, 'Tủ tivi Bridge Gỗ 1m5 - Màu nâu', 100, 0, 'tu-tivi-bridge-go-1m5-mau-nau', 9210000, 0, '10', '2024-04-13__phong-khach-bridge6-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:25'),
(118, 'Tủ tivi Bridge Gỗ 1m5 - Màu Tự nhiên', 100, 0, 'tu-tivi-bridge-go-1m5-mau-tu-nhien', 9350000, 0, '10', '2024-04-13__tu-tivi-bridge2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:37'),
(119, 'Tủ tivi Bridge Gỗ 1m8- Màu gỗ tự nhiên', 100, 0, 'tu-tivi-bridge-go-1m8-mau-go-tu-nhien', 7150000, 0, '10', '2024-04-13__tu-tivi-bridge3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:47'),
(120, 'Tủ tivi Bridge Gỗ 1m8- Màu nâu', 100, 0, 'tu-tivi-bridge-go-1m8-mau-nau', 7150000, 0, '10', '2024-04-13__phong-khach-bridge5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:07:57'),
(121, 'Tủ Tivi Miami 210004', 100, 0, 'tu-tivi-miami-210004', 8110000, 0, '10', '2024-04-13__tu-tivi-miami-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:08:07'),
(122, 'Tủ tivi Pio', 100, 0, 'tu-tivi-pio', 6810000, 0, '10', '2024-04-13__dsc03288-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:08:17'),
(123, 'Tủ Tivi Jazz', 100, 0, 'tu-tivi-jazz', 19800000, 0, '10', '2024-04-13__1000-san-pham-nha-xinh56-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:08:28'),
(124, 'Tủ tivi Mây', 100, 0, 'tu-tivi-may', 6100000, 0, '23', '2024-04-13__nhaxinh-bo-suu-tap-may-tu-tivi-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:08:38'),
(125, 'Tủ tivi Mây Mẫu 2', 100, 0, 'tu-tivi-may-mau-2', 3600000, 0, '23', '2024-04-13__100672-1000-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:08:52'),
(126, 'Thảm Cotton Vie Recycl 160X230 TAP37JB.I', 100, 0, 'tham-cotton-vie-recycl-160x230-tap37jbi', 2200000, 0, '23', '2024-04-13__tham-cotton-vie-recycl-160x230-tap37jbi-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:09:25'),
(127, 'Thảm Cotton Vie Recycle 160X230 TAP19BN.I', 100, 12, 'tham-cotton-vie-recycle-160x230-tap19bni', 1600000, 0, '23', '2024-04-13__tham-cotton-vie-recycle-160x230-tap19bni-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:09:37'),
(128, 'Thảm Curved CS7263-B màu Beige', 100, 2, 'tham-curved-cs7263-b-mau-beige', 2100000, 0, '23', '2024-04-13__tham-curved-cs7263-b-mau-beige-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:09:47'),
(129, 'Thảm Halon Ivory', 100, 0, 'tham-halon-ivory', 2200000, 0, '23', '2024-04-13__tham-halon-ivory-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:09:59'),
(130, 'Thảm Harmony 2mx2m9 Desert 610039Z', 100, 0, 'tham-harmony-2mx2m9-desert-610039z', 2100000, 0, '23', '2024-04-13__tham-harmony-2mx2m9-desert-610039z-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:10:11'),
(131, 'Thảm Harmony Brown 160x230', 100, 9, 'tham-harmony-brown-160x230', 2100000, 0, '23', '2024-04-13__104193-tham-harmony-1m6-2m3-brown-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:10:23'),
(132, 'Thảm Harmony hồng 160x230 610037Z', 100, 5, 'tham-harmony-hong-160x230-610037z', 2200000, 0, '23', '2024-04-13__104193-tham-harmony-1m6-2m3-brown-2-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:10:37'),
(133, 'Thảm Labyrinth 150x240', 100, 2, 'tham-labyrinth-150x240', 1600000, 0, '23', '2024-04-13__tham-labyrinth-150x240-52739k-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:10:46'),
(134, 'Thảm Levia', 100, 0, 'tham-levia', 300000, 0, '24', '2024-04-13__tham-levia-6-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:10:57'),
(135, 'Thảm Madeira Blue', 100, 0, 'tham-madeira-blue', 300000, 0, '24', '2024-04-13__tham-madeira-blue-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:06'),
(136, 'Thảm Magic đại dương', 100, 0, 'tham-magic-dai-duong', 300000, 0, '24', '2024-04-13__tham-magic-200x290-ocean-6000070z-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:16'),
(137, 'Thảm Magic mùa thu', 100, 0, 'tham-magic-mua-thu', 300000, 0, '24', '2024-04-13__tham-magic-200x290-autumn-600072z-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:26'),
(138, 'Thảm Ovado', 100, 0, 'tham-ovado', 300000, 0, '24', '2024-04-13__tham-ovado-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:36'),
(139, 'Thảm Phila 6100078Z', 100, 0, 'tham-phila-6100078z', 300000, 0, '24', '2024-04-13__tham-phila-160x257-blue-6100078z-4-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:47'),
(140, 'Thảm Solar 1m6x2m3 Grey Terra 610045Z', 100, 0, 'tham-solar-1m6x2m3-grey-terra-610045z', 300000, 0, '24', '2024-04-13__tham-solar-1m6-x-2m3-grey-terra-610045z-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:11:59'),
(141, 'Thảm Solar Grey/Terra 610046Z', 100, 0, 'tham-solar-greyterra-610046z', 300000, 0, '24', '2024-04-13__tham-solar-200x290-greyterra-610046z-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:12:09'),
(142, 'Rèm Ure Mã 01', 100, 0, 'rem-ure-ma-01', 300000, 0, '24', '2024-04-13__rem-ure-ma-01.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:12:27'),
(143, 'Rèm Ly Mã 11', 100, 0, 'rem-ly-ma-11', 350000, 0, '25', '2024-04-13__rem-ly-ma-11.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:12:47'),
(144, 'Rèm Roman Mã 09', 100, 0, 'rem-roman-ma-09', 350000, 0, '25', '2024-04-13__rem-roman-ma-09.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:12:57'),
(145, 'Rèm Roman Mã 16', 100, 0, 'rem-roman-ma-16', 400000, 0, '25', '2024-04-13__rem-roman-ma-16.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:13:07'),
(146, 'Rèm Ure Mã 09', 100, 0, 'rem-ure-ma-09', 400000, 0, '25', '2024-04-13__rem-ure-ma-091.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:13:18'),
(147, 'Rèm Ly Mã 05', 100, 0, 'rem-ly-ma-05', 400000, 0, '25', '2024-04-13__rem-ly-ma-05.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:13:34'),
(148, 'Rèm Ure Mã 26', 100, 0, 'rem-ure-ma-26', 500000, 0, '25', '2024-04-13__rem-ure-ma-261-ln77-wd.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:13:44'),
(149, 'Rèm Ure Mã 06', 100, 0, 'rem-ure-ma-06', 400000, 0, '25', '2024-04-13__rem-ure-ma-06.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:13:55'),
(150, 'Rèm Ure Mã 17', 100, 0, 'rem-ure-ma-17', 350000, 0, '25', '2024-04-13__rem-ure-ma-17.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:14:04'),
(151, 'Rèm Roman Mã 14', 100, 0, 'rem-roman-ma-14', 350000, 0, '25', '2024-04-13__rem-roman-ma-14.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:14:22'),
(152, 'Rèm Roman Mã 12', 100, 0, 'rem-roman-ma-12', 500000, 0, '25', '2024-04-13__rem-roman-ma-12.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:14:33'),
(153, 'Rèm Ure Mã 25', 100, 0, 'rem-ure-ma-25', 650000, 0, '26', '2024-04-13__rem-ure-ma-25.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:14:45'),
(154, 'Rèm Roman Mã 07', 100, 0, 'rem-roman-ma-07', 650000, 0, '26', '2024-04-13__rem-roman-ma-07.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:14:55'),
(155, 'Rèm Ly Mã 13', 100, 0, 'rem-ly-ma-13', 650000, 0, '25', '2024-04-13__rem-ly-ma-13.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:15:10'),
(156, 'Rèm Ure Mã 04', 100, 0, 'rem-ure-ma-04', 650000, 0, '26', '2024-04-13__rem-ure-ma-04.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:15:20'),
(157, 'Rèm Ure Mã 28', 100, 0, 'rem-ure-ma-28', 650000, 0, '26', '2024-04-13__rem-ure-ma-28.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:15:30'),
(158, 'Gối Nệm Sofa Trang Trí Mã 16', 100, 0, 'goi-nem-sofa-trang-tri-ma-16', 650000, 0, '26', '2024-04-13__goi-trang-tri-ma-16.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:15:48'),
(159, 'Gối Tựa Lưng Trang Trí Sofa Mã 15', 100, 0, 'goi-tua-lung-trang-tri-sofa-ma-15', 650000, 0, '26', '2024-04-13__goi-trang-tri-ma-15.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:03'),
(160, 'Gối Trang Trí Khách Sạn Mã 14', 100, 0, 'goi-trang-tri-khach-san-ma-14', 650000, 0, '26', '2024-04-13__goi-trang-tri-ma-14.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:13'),
(161, 'Gối Trang Trí Sofa Mã 22', 100, 0, 'goi-trang-tri-sofa-ma-22', 650000, 0, '26', '2024-04-13__goi-trang-tri-ma-22.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:26'),
(162, 'Gối Trang Trí Sofa Mã 10', 100, 0, 'goi-trang-tri-sofa-ma-10', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-10.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:36'),
(163, 'Gối Trang Trí Sofa Mã 09', 100, 0, 'goi-trang-tri-sofa-ma-09', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-09.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:49'),
(164, 'Gối Trang Trí Sofa Mã 17', 100, 0, 'goi-trang-tri-sofa-ma-17', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-17.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:16:58'),
(165, 'Gối Trang Trí Sofa Mã 18', 100, 0, 'goi-trang-tri-sofa-ma-18', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-18.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:17:08'),
(166, 'Gối Trang Trí Sofa Mã 11', 100, 0, 'goi-trang-tri-sofa-ma-11', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-11.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:17:18'),
(167, 'Gối Trang Trí Sofa Mã 21', 100, 0, 'goi-trang-tri-sofa-ma-21', 1500000, 0, '27', '2024-04-13__goi-trang-tri-ma-21.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:17:30');
INSERT INTO `product` (`id`, `pro_name`, `pro_amount`, `pro_view`, `pro_slug`, `pro_price`, `pro_sale`, `pro_category`, `pro_avatar`, `pro_favourite`, `pro_hot`, `pro_active`, `pro_admin_id`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `keywordseo`, `pro_review_star`, `_wysihtml5_mode`, `created_at`, `updated_at`) VALUES
(168, 'Gối Trang Trí Sofa Mã 08', 100, 0, 'goi-trang-tri-sofa-ma-08', 2500000, 0, '28', '2024-04-13__goi-trang-tri-ma-08.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:17:39'),
(169, 'Gối Trang Trí Sofa Mã 13', 100, 0, 'goi-trang-tri-sofa-ma-13', 1800000, 0, '28', '2024-04-13__goi-trang-tri-ma-13.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:17:48'),
(170, '[Hàng Sẵn]-Táp Gỗ Màu Đen Hs23', 100, 0, 'hang-san-tap-go-mau-den-hs23', 3500000, 0, '29', '2024-04-13__hs23-2.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:18:09'),
(171, 'Táp Sofa Mã 02', 100, 0, 'tap-sofa-ma-02', 3500000, 0, '28', '2024-04-13__tap-sofa-ma-02.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:18:27'),
(172, 'Táp Sofa Mã 03', 100, 0, 'tap-sofa-ma-03', 3500000, 0, '29', '2024-04-13__tap-sofa-ma-03.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:18:38'),
(173, 'Táp Sofa Mã 01', 100, 0, 'tap-sofa-ma-01', 2800000, 0, '29', '2024-04-13__tap-sofa-ma-01.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:18:49'),
(174, 'Táp Sofa Mã 04', 100, 0, 'tap-sofa-ma-04', 2933000, 0, '11', '2024-04-13__tap-sofa-ma-04.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:19:03'),
(175, 'Bàn Ghế Ăn Mã 32', 99, 3, 'ban-ghe-an-ma-32', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-321.avif', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:19:18'),
(176, 'Bàn Ghế Ăn Mã 35', 100, 2, 'ban-ghe-an-ma-35', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-35110.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:19:27'),
(177, 'Bàn Ghế Ăn Mã 53', 100, 2, 'ban-ghe-an-ma-53', 2933000, 0, '11', '2024-04-13__ban-ghe-an-ma-53.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:19:40'),
(178, 'Bàn Ghế Ăn Mã 49', 100, 0, 'ban-ghe-an-ma-49', 2933000, 0, '11', '2024-04-13__ban-ghe-an-ma-49.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:19:50'),
(179, 'Bàn Ghế Ăn Mã 42', 100, 0, 'ban-ghe-an-ma-42', 2933000, 0, '11', '2024-04-13__ban-ghe-an-ma-42.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:20:04'),
(180, 'Bàn Ghế Ăn Mã 40', 100, 0, 'ban-ghe-an-ma-40', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-40.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:20:14'),
(181, 'Bàn Ghế Ăn Mã 43', 100, 0, 'ban-ghe-an-ma-43', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-43.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:20:27'),
(182, 'Bàn Ghế Ăn Mã 44', 100, 0, 'ban-ghe-an-ma-44', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-45.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:20:37'),
(183, 'Bàn Ghế Ăn Mã 47', 100, 0, 'ban-ghe-an-ma-47', 3450000, 0, '11', '2024-04-13__ban-ghe-an-ma-47.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:20:48'),
(184, 'Bàn Ghế Ăn Mã 52', 100, 0, 'ban-ghe-an-ma-52', 3450000, 0, '12', '2024-04-13__ban-ghe-an-ma-52.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:21:02'),
(185, 'Bàn Ghế Ăn Mã 51', 100, 0, 'ban-ghe-an-ma-51', 3450000, 0, '12', '2024-04-13__ban-ghe-an-ma-51.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:21:16'),
(186, 'Bàn Ghế Ăn Mã 41', 100, 0, 'ban-ghe-an-ma-41', 34500000, 0, '12', '2024-04-13__ban-ghe-an-ma-41.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:21:26'),
(187, 'Bàn Ghế Ăn Mã 55', 100, 0, 'ban-ghe-an-ma-55', 3622500, 0, '12', '2024-04-13__ban-ghe-an-ma-55.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:21:36'),
(188, 'Bàn Ghế Ăn Mã 48', 100, 16, 'ban-ghe-an-ma-48', 3278000, 0, '12', '2024-04-13__ban-ghe-an-ma-48.avif', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:21:46'),
(189, 'Bình Aila Turquoise', 100, 0, 'binh-aila-turquoise', 4485000, 0, '12', '2024-04-13__binh-aila-turquoise-116170e-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:07'),
(190, 'Bình Aline đỏ XS 16x16x16 23102J', 100, 0, 'binh-aline-do-xs-16x16x16-23102j', 3278000, 0, '12', '2024-04-13__binh-aline-ceramic-red-xs16x16x16-23102j-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:19'),
(191, 'Bình Atelier Jaune H26 156603C', 100, 0, 'binh-atelier-jaune-h26-156603c', 3278000, 0, '12', '2024-04-13__binh-vase-atelier-jaune-h26-156603c-1-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:29'),
(192, 'Bình Bloom Green 820053Z', 100, 0, 'binh-bloom-green-820053z', 3450000, 0, '12', '2024-04-13__binh-bloom-green-820053z-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:38'),
(193, 'Bình Bloom Ivory 820052Z', 100, 0, 'binh-bloom-ivory-820052z', 5175000, 0, '12', '2024-04-13__binh-bloom-ivory-820052z-2-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:49'),
(194, 'Bình Bloom Mist Blue 820050Z', 100, 0, 'binh-bloom-mist-blue-820050z', 3450000, 0, '12', '2024-04-13__binh-bloom-mist-blue-820050z-5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:22:58'),
(195, 'Bình Brenda Granit màu đỏ 16803B', 100, 0, 'binh-brenda-granit-mau-do-16803b', 3622500, 0, '12', '2024-04-13__binh-trang-tri-granit-mau-do-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:09'),
(196, 'Bình Brenda Granit màu xanh 16823B', 100, 0, 'binh-brenda-granit-mau-xanh-16823b', 4485000, 0, '12', '2024-04-13__binh-julia-granit-mau-xanh-16822b-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:22'),
(197, 'Bình Brenda Granit Sand 16813B', 100, 0, 'binh-brenda-granit-sand-16813b', 5750000, 0, '13', '2024-04-13__binh-brenda-granit-sand-16813b-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:32'),
(198, 'Bình Brut gris 157702C', 100, 0, 'binh-brut-gris-157702c', 5750000, 0, '13', '2024-04-13__binh-brut-gris-mat-30cm-157702c-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:41'),
(199, 'Bình Brut terracota 157703C', 100, 3, 'binh-brut-terracota-157703c', 4550000, 0, '13', '2024-04-13__binh-brut-terracota-30cm-157703c-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:51'),
(200, 'Bình Brut xám 157700C', 100, 0, 'binh-brut-xam-157700c', 5250000, 0, '13', '2024-04-13__binh-brut-grey-23cm-157700c-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:23:59'),
(201, 'Bình Child head vàng 159644C', 100, 0, 'binh-child-head-vang-159644c', 4950000, 0, '13', '2024-04-13__binh-holder-child-head-yellow-159644c-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:24:10'),
(202, 'Bình Child head xanh lá 159645C', 100, 0, 'binh-child-head-xanh-la-159645c', 5750000, 0, '13', '2024-04-13__elegance-mau-tu-nhien-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:24:22'),
(203, 'Bình Clementine Bordeaux H45 156611C', 100, 0, 'binh-clementine-bordeaux-h45-156611c', 5550000, 0, '13', '2024-04-13__binh-vase-clementine-bordeauxh45-156611c-1-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:24:32'),
(204, 'Bình con bướm 60464K', 100, 0, 'binh-con-buom-60464k', 4950000, 0, '13', '2024-04-13__binh-butter-flight-blue-50cm-60464k-4-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:24:42'),
(205, 'Bình Cylinder Boysenberry 40849B', 100, 0, 'binh-cylinder-boysenberry-40849b', 4950000, 0, '13', '2024-04-13__binh-cylinder-boysenberry-40849b-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:24:53'),
(206, 'Bình Cylinder hồng S', 100, 0, 'binh-cylinder-hong-s', 5750000, 0, '13', '2024-04-13__binh-cylinder-gl-light-pink-s-32783j-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:25:02'),
(207, 'Bình Cylinder Stripe Amber 43473B', 100, 0, 'binh-cylinder-stripe-amber-43473b', 5450000, 0, '14', '2024-04-13__binh-cylinder-stripe-amber-43473b-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:25:13'),
(208, 'Đèn sân năm ngón tay Brass 60631K', 100, 0, 'den-san-nam-ngon-tay-brass-60631k', 7650000, 0, '14', '2024-04-13__den-san-five-fingers-brass-60631k-3-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:26:59'),
(209, 'Ghế ngoài trời Angela Alu ADS003', 100, 0, 'ghe-ngoai-troi-angela-alu-ads003', 5250000, 0, '14', '2024-04-13__ghe-ngoai-troi-angela-alu-ads003-1-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:27:14'),
(210, 'Đèn sân mariposa Brass 160 52931K', 100, 0, 'den-san-mariposa-brass-160-52931k', 5250000, 0, '14', '2024-04-13__den-san-mariposa-brass-160-52931k-3-2-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:27:25'),
(211, 'Đèn Balad xương rồng H25 361282', 100, 0, 'den-balad-xuong-rong-h25-361282', 4750000, 0, '14', '2024-04-13__den-balad-lamp-h25-cactus-361282-2-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:27:37'),
(212, 'Gối Lorette 44X44 Green 271210', 100, 0, 'goi-lorette-44x44-green-271210', 5250000, 0, '14', '2024-04-13__goi-lorette-44x44-green-271210-2-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:27:46'),
(213, 'Gối Lorette 68X44 Green 271310', 100, 0, 'goi-lorette-68x44-green-271310', 7950000, 0, '15', '2024-04-13__goi-lorette-68x44-green-271310-2-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:27:55'),
(214, 'Bàn bên 2 tầng Fermob Guinguette - Willow green', 100, 0, 'ban-ben-2-tang-fermob-guinguette-willow-green', 7950000, 0, '15', '2024-04-13__ban-ngoi-troi-2-tang-guingette-fermob-willowgreen-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:28:09'),
(215, 'Bàn bên 2 tầng Fermob Guinguette – Ice mint', 100, 0, 'ban-ben-2-tang-fermob-guinguette-ice-mint', 5250000, 0, '14', '2024-04-13__ban-ngoai-troi-2-tang-guingette-fermob-icemint-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:28:19'),
(216, 'Bàn ngoài trời Fermob Sixties', 100, 0, 'ban-ngoai-troi-fermob-sixties', 4950000, 0, '14', '2024-04-13__ban-ngoai-troi-hien-dai-fermob-sixties-trang-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:28:28'),
(217, 'Đệm hơi LamZac màu đỏ', 99, 6, 'dem-hoi-lamzac-mau-do', 9250000, 0, '15', '2024-04-13__dem-hoi-lamzac-04-500x3333-1-300x200.jpg', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 1, NULL, 10, '1', '2024-03-21 01:25:40', '2024-04-13 07:28:39'),
(218, 'Ghế tắm nắng Alize Xs Nutmeg', 100, 0, 'ghe-tam-nang-alize-xs-nutmeg', 8750000, 0, '15', '2024-04-13__ghe-ngoai-troi-3-99506-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:28:52'),
(219, 'Ghế ngoài trời Fermob Plein air honey', 100, 0, 'ghe-ngoai-troi-fermob-plein-air-honey', 7250000, 0, '15', '2024-04-13__ghe-ngoai-troi-fermob-plein-air-honey-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:29:01'),
(220, 'Đệm hơi Lamzac màu xanh lá cây', 100, 0, 'dem-hoi-lamzac-mau-xanh-la-cay', 7250000, 0, '15', '2024-04-13__dem-hoi-lamzac-04-500x3334-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:29:13'),
(221, 'Đèn đứng Moon', 100, 0, 'den-dung-moon', 8750000, 0, '15', '2024-04-13__den-dung-moon-1-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:29:23'),
(222, 'Ghế dài 3 chỗ', 100, 0, 'ghe-dai-3-cho', 9250000, 0, '15', '2024-04-13__80846-1000-nhaxinh-hang-ngoai-troi-ghe-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:29:33'),
(223, 'Bàn phấn Mirror Curve Art 84839K', 100, 0, 'ban-phan-mirror-curve-art-84839k', 9250000, 0, '15', '2024-04-13__console-mirror-curve-art-84839k-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:29:50'),
(224, 'Bàn phấn Madame màu Ebony P87W', 100, 0, 'ban-phan-madame-mau-ebony-p87w', 9250000, 0, '15', '2024-04-13__ban-phan-madame-mau-ebony-p87w-2-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:00'),
(225, 'Bàn phấn Madame Termocotto P67W', 100, 3, 'ban-phan-madame-termocotto-p67w', 9250000, 0, '15', '2024-04-13__ban-phan-madame-termocotto-p67w-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:09'),
(226, 'Bàn trang điểm Mây - Mẫu 2', 100, 0, 'ban-trang-diem-may-mau-2', 4550000, 0, '15', '2024-04-13__ban-trang-diem-may-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:18'),
(227, 'Bàn trang điểm Skagen', 100, 0, 'ban-trang-diem-skagen', 3750000, 0, '16', '2024-04-13__ban-trang-diem-dep-tinh-te-co-hoc-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:27'),
(228, 'Bình Orchid đen nhỏ 110696 MCA', 100, 0, 'binh-orchid-den-nho-110696-mca', 4250000, 0, '16', '2024-04-13__binh-black-orchid-med-110695-mca-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:45'),
(229, 'Bình Anemone cỡ trung 175082 MCA', 100, 0, 'binh-anemone-co-trung-175082-mca', 3950000, 0, '16', '2024-04-13__binh-anemone-medium-175082-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:30:54'),
(230, 'Lọ đựng đồ dùng Butterfly Ginkgo 175935 MCA', 100, 0, 'lo-dung-do-dung-butterfly-ginkgo-175935-mca', 3750000, 0, '16', '2024-04-13__ong-dung-utensil-butterfly-175935-mca-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:03'),
(231, 'Khay Butterfly Ginkgo 2 lít 175940 MCA', 100, 0, 'khay-butterfly-ginkgo-2-lit-175940-mca', 3750000, 0, '16', '2024-04-13__khay-butterfly-ginkgo-2-qrt-175940-mca-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:13'),
(232, 'Khay Butterfly Ginkgo 175857 MCA', 100, 0, 'khay-butterfly-ginkgo-175857-mca', 3750000, 0, '16', '2024-04-13__khay-butterfly-ginkgo-pie-d27-175857-mca-5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:23'),
(233, 'Khay Pomegranate 175184 MCA', 100, 0, 'khay-pomegranate-175184-mca', 4250000, 0, '16', '2024-04-13__khay-pomegranate-pie-dia-27-175184-mca-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:32'),
(234, 'Khay Butterfly Ginkgo 3 lít 175855 MCA', 100, 0, 'khay-butterfly-ginkgo-3-lit-175855-mca', 3950000, 0, '16', '2024-04-13__khay-butterfly-ginkgo-30x22-175855-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:42'),
(235, 'Đèn bàn Anemone 411436 MCA', 100, 0, 'den-ban-anemone-411436-mca', 3950000, 0, '16', '2024-04-13__den-ban-anemone-36xh55-411436-mca-5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:31:51'),
(236, 'Đèn bàn Butterfly Ginkgo 411409 MCA', 100, 0, 'den-ban-butterfly-ginkgo-411409-mca', 2950000, 0, '17', '2024-04-13__den-ban-butterfly-ginkgo-h70-411409-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:32:02'),
(237, 'Bình Iris đen lớn 111201 MCA', 100, 0, 'binh-iris-den-lon-111201-mca', 3750000, 0, '17', '2024-04-13__binh-black-iris-large-17x20-111201-mca-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:32:14'),
(238, 'Bình Butterfly Ginkgo lớn 175930 MCA', 100, 0, 'binh-butterfly-ginkgo-lon-175930-mca', 2950000, 0, '17', '2024-04-13__binh-butterfly-ginkgo-large-175930-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:32:23'),
(239, 'Khung hình Dandelion 13x18 131904 MCA', 100, 0, 'khung-hinh-dandelion-13x18-131904-mca', 2950000, 0, '17', '2024-04-13__khung-hinh-dandelion-13x18-131904-mca-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:32:34'),
(240, 'Khung hình Golden Ginkgo 8x10 132105 MCA', 100, 0, 'khung-hinh-golden-ginkgo-8x10-132105-mca', 3750000, 0, '17', '2024-04-13__khung-hinh-golden-ginkgo-h25-132105-mca-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:32:45'),
(241, 'Khung hình Anemone 5x7 175035 MCA', 100, 0, 'khung-hinh-anemone-5x7-175035-mca', 3750000, 0, '17', '2024-04-13__khung-hinh-anemone-13x18-175035-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:03'),
(242, 'Khung hình Love Knot 8x10 123660 MCA', 100, 0, 'khung-hinh-love-knot-8x10-123660-mca', 3250000, 0, '18', '2024-04-13__khung-hinh-loveknot-h25-gldtn-123660-mca-4-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:13'),
(243, 'Khung hình Love Knot 5x7 123659 MCA', 100, 0, 'khung-hinh-love-knot-5x7-123659-mca', 42500000, 0, '18', '2024-04-13__khung-hinh-love-knot-gldtn-123659-mca-9-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:24'),
(244, 'Khung hình Calla Lily 8x10 123209 MCA', 100, 0, 'khung-hinh-calla-lily-8x10-123209-mca', 3750000, 0, '18', '2024-04-13__khung-hinh-calla-lily-20x25-123209-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:34'),
(245, 'Khung hình Calla Lily 5x7 123208 MCA', 100, 0, 'khung-hinh-calla-lily-5x7-123208-mca', 3750000, 0, '18', '2024-04-13__khung-hinh-calla-lily-13x18-123208-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:44'),
(246, 'Tô Dandelion centerpiece 131902 MCA', 100, 0, 'to-dandelion-centerpiece-131902-mca', 3950000, 0, '18', '2024-04-13__to-dandelion-centerpiece-131902-mca-5-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:33:54'),
(247, 'Tô Dandelion nhỏ 131903 MCA', 100, 0, 'to-dandelion-nho-131903-mca', 3750000, 0, '18', '2024-04-13__to-dandelion-small-131903-mca-6-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:34:06'),
(248, 'Lọ đựng muối tiêu Ivy oak 123524 MCA', 100, 0, 'lo-dung-muoi-tieu-ivy-oak-123524-mca', 3750000, 0, '18', '2024-04-13__lo-dung-muoi-tieu-ivy-oak-h20-123524-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:34:16'),
(249, 'Bình đựng xà bông Calla Lily123238 MCA', 100, 0, 'binh-dung-xa-bong-calla-lily123238-mca', 3750000, 0, '18', '2024-04-13__binh-dung-xbong-calla-lily-123238-mca-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:34:31'),
(250, 'Khay Butterfly Ginkgo 175859 MCA', 100, 0, 'khay-butterfly-ginkgo-175859-mca', 3750000, 0, '18', '2024-04-13__khay-butterfly-ginkgo-22x20-175859-mca-4-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:34:46'),
(251, 'Tủ áo Acrylic', 100, 0, 'tu-ao-acrylic', 3650000, 0, '18', '2024-04-13__tu-ao-acrylic-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:35:14'),
(252, 'Tủ áo Wabrobe 02', 100, 0, 'tu-ao-wabrobe-02', 2750000, 0, '19', '2024-04-13__tu-ao-wabrobe-02-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:35:25'),
(253, 'Tủ áo hiện đại', 100, 0, 'tu-ao-hien-dai', 1950000, 0, '19', '2024-04-13__3-99496-1-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:35:35'),
(254, 'Tủ áo Maxine', 100, 0, 'tu-ao-maxine', 2750000, 0, '19', '2024-04-13__3-91000-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:35:44'),
(255, 'Bench Paco mustard 150cm 86074K', 100, 0, 'bench-paco-mustard-150cm-86074k', 2950000, 0, '19', '2024-04-13__bench-paco-mustard-150cm-86074k-6-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:04'),
(256, 'Đôn Atollo vải venice sand', 100, 0, 'don-atollo-vai-venice-sand', 2950000, 0, '19', '2024-04-13__don-atollo-vai-venice-sand-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:13'),
(257, 'Đôn Cherry jungle tiger', 100, 0, 'don-cherry-jungle-tiger', 1950000, 0, '19', '2024-04-13__don-cherry-jungle-tiger-3-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:23'),
(258, 'Ghế dài Deria', 100, 0, 'ghe-dai-deria', 2750000, 0, '19', '2024-04-13__ghe-dai-deria-7-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:32'),
(259, 'Ghế dài Velvet', 100, 0, 'ghe-dai-velvet', 2750000, 0, '20', '2024-04-13__ghe-dai-velvet-7-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:42'),
(260, 'Bench Cabo vải KD1085-11 PMA491015 F1', 100, 0, 'bench-cabo-vai-kd1085-11-pma491015-f1', 2950000, 0, '19', '2024-04-13__bench-cabo-vai-kd1085-11-pma491015-f1-2-1-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:36:53'),
(261, 'Bench Elegance màu tự nhiên da cognac', 100, 0, 'bench-elegance-mau-tu-nhien-da-cognac', 2950000, 0, '19', '2024-04-13__elegance-mau-tu-nhien-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:03'),
(262, 'Bench Elegance màu nâu da Cognac', 100, 0, 'bench-elegance-mau-nau-da-cognac', 340000, 0, '20', '2024-04-13__ban-ghe-an-elegance-300x194.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:14'),
(263, 'Bench Elegance màu tự nhiên da xanh', 100, 0, 'bench-elegance-mau-tu-nhien-da-xanh', 340000, 0, '20', '2024-04-13__102419-bench-elegance-mau-tu-nhien-da-xanh-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:24'),
(264, 'Bench Elegance màu đen da brown', 100, 0, 'bench-elegance-mau-den-da-brown', 340000, 0, '20', '2024-04-13__102410-bench-elegance-mau-den-da-brown-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:34'),
(265, 'Bench Bridge gỗ nâu Da cognac 1m5', 100, 0, 'bench-bridge-go-nau-da-cognac-1m5', 340000, 0, '20', '2024-04-13__1000-san-pham-nha-xinh441-300x180.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:44'),
(266, 'Bench Bridge gỗ Tự nhiên Da đen', 100, 0, 'bench-bridge-go-tu-nhien-da-den', 340000, 0, '20', '2024-04-13__bench-bridge-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:37:53'),
(267, 'Bench Soul', 100, 0, 'bench-soul', 340000, 0, '20', '2024-04-13__phong-an-soul2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:38:03'),
(268, 'Bench YK', 100, 0, 'bench-yk', 340000, 0, '20', '2024-04-13__bench-yen-khe-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:38:13'),
(269, 'Bench Miami 1m2', 100, 0, 'bench-miami-1m2', 340000, 0, '20', '2024-04-13__bench-go-miami-97840-1m2-2-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:38:25'),
(270, 'Bench Miami 1m6', 100, 0, 'bench-miami-1m6', 340000, 0, '20', '2024-04-13__phong-an-miami33-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:38:34'),
(271, 'Bench Shadow', 100, 0, 'bench-shadow', 1350000, 0, '21', '2024-04-13__chi-tiet-shadow-1003-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:38:46'),
(272, 'Bench Shadow', 100, 0, 'bench-shadow', 1350000, 0, '21', '2024-04-13__chi-tiet-shadow-1003-300x200-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:02'),
(273, 'Bench Jazz', 100, 0, 'bench-jazz', 1350000, 0, '21', '2024-04-13__phong-an-jazz-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:15'),
(274, 'Bench Rap mẫu 2', 100, 0, 'bench-rap-mau-2', 1350000, 0, '24', '2024-04-13__bench-rap-3-101294-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:26'),
(276, 'Bench Rap', 100, 0, 'bench-rap', 1350000, 0, '21', '2024-04-13__1000-san-pham-nha-xinh35-7-300x200.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:35'),
(277, 'Đôn Bridge Gỗ nâu Da cognac', 100, 0, 'don-bridge-go-nau-da-cognac', 1955000, 0, '22', '2024-04-13__elegance-300x194-1.jpg', 0, 0, 1, 1, 0, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:44'),
(279, 'Đôn Bridge Gỗ Tự nhiên Da Đen', 99, 3, 'don-bridge-go-tu-nhien-da-den', 1955000, 120000, '22', '2024-04-13__500-line-bridge2-300x200.jpg', 0, 0, 1, 1, 1, 'Bảo Hành: 1 Năm', '<p>K&iacute;ch Thước:&nbsp;D&agrave;i 1400mm, Rộng 800mm, Cao 450mm</p>', 0, NULL, 5, '1', '2024-03-21 01:25:40', '2024-04-13 07:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `al_name` varchar(191) DEFAULT NULL,
  `al_slug` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_keywords`
--

CREATE TABLE `product_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` bigint(20) UNSIGNED NOT NULL,
  `pk_keyword_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(20) UNSIGNED NOT NULL,
  `r_product_id` bigint(20) UNSIGNED NOT NULL,
  `r_number` int(11) NOT NULL DEFAULT 0,
  `r_status` int(11) NOT NULL DEFAULT 0,
  `r_content` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 13, 11, 3, 0, 'Greate', '2022-04-13 14:07:43', '2022-04-13 14:07:43'),
(2, 13, 7, 2, 0, 'Tồi tệ', '2022-04-13 23:18:35', '2022-04-13 23:18:35'),
(3, 13, 11, 3, 0, 'Nice', '2022-05-07 00:07:46', '2022-05-07 00:07:46'),
(4, 13, 11, 1, 0, 'Bad', '2022-05-07 00:08:15', '2022-05-07 00:08:15'),
(5, 13, 7, 4, 0, 'Great', '2022-05-07 02:27:03', '2022-05-07 02:27:03'),
(6, 13, 27, 4, 0, '123213', '2024-03-19 07:27:41', '2024-03-19 07:27:41'),
(7, 13, 217, 5, 0, 'dsasada', '2024-03-31 08:21:19', '2024-03-31 08:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(20) UNSIGNED NOT NULL,
  `tst_total_money` varchar(191) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` int(11) NOT NULL DEFAULT 1,
  `tst_type` int(11) NOT NULL DEFAULT 1,
  `tst_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(1, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJLV6YA90278034GB619790T', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(2, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 2, 'PAYID-MJLWNMA3JB45680AY3245345', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(3, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 2, 'PAYID-MJLWOVA78C08370XX847474A', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(4, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(5, 13, '222000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(6, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJXABDA66K50385HW291913V', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(7, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 2, 'PAYID-MJXADJA2X596868SB829021T', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(8, 13, '16730000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(9, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 2, 'PAYID-MJ23IQQ0Y154070BP3131720', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(10, 13, '19900000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(11, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(12, 13, '24150000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(13, 13, '120000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MJ25VYY76R02920P1726784N', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(14, 13, '364500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(15, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 2, 2, 'PAYID-MJ7WEGI2XS49438JY5896227', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(16, 13, '4500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 2, 'PAYID-MJ7WGZQ0PB89436864450153', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(17, 13, '4500000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(18, 13, '24000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(19, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(20, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(21, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(22, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(23, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(24, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(25, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(26, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(27, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(28, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(29, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', -1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(30, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(31, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(32, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(33, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(34, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(35, 13, '11359000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(36, 13, '150000000', 'Customer', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-21 01:25:40', '2024-03-23 01:25:40'),
(37, 25, '30640000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-23 02:08:39', '2024-03-23 02:09:26'),
(38, 25, '4500000', 'tdthai', 'thai180065@huce.edu.vn', NULL, 'Hà Nội', 'Không có', 5, 2, 'PAYID-MYERN2A3SF62191XK8267102', '2024-03-31 07:55:19', '2024-03-31 07:55:19'),
(39, 25, '4500000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-31 07:55:27', '2024-03-31 07:55:27'),
(40, 13, '31259000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 5, 2, 'PAYID-MYERZGQ2F065242F3451534N', '2024-03-31 08:19:37', '2024-03-31 08:19:37'),
(41, 13, '31259000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:19:44', '2024-03-31 08:20:41'),
(42, 25, '9250000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 1, 1, '', '2024-03-31 08:23:43', '2024-03-31 08:23:43'),
(43, 25, '153450000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:24:50', '2024-03-31 08:25:13'),
(44, 25, '-2344045000', 'tdthai', 'thai180065@huce.edu.vn', '0915621797', 'Hà Nội', 'Không có', 3, 1, '', '2024-03-31 08:27:26', '2024-03-31 08:27:42'),
(45, 13, '950000000', 'Peter', 'user@gmail.com', '0948561668', 'Hà Nội', 'Không có', 1, 1, '', '2024-04-02 14:10:43', '2024-04-02 14:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthday` varchar(191) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `provider`, `provider_id`, `email`, `phone`, `address`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `birthday`, `gender`) VALUES
(13, 'Peter', NULL, NULL, 'user@gmail.com', '0948561668', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(14, 'Nguyễn Văn A', 'google', '100195086957714365762', 'vana@gmail.com', NULL, NULL, NULL, NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(17, 'John Doe', NULL, NULL, 'johndoe@gmail.com', '0948561669', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(18, 'Peter', NULL, NULL, 'peter@gmail.com', '12345678', NULL, '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0),
(21, 'Nguyễn Văn B', NULL, NULL, 'vanb@gmail.com', '0879428091', '4', '$2y$10$hfGjgzp5vvQYBcrmgZg96.BSa46SD5aLklxuv/oqGdvWexEGSMXoW', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', '2022-06-01T02:22:00.000Z', 1),
(22, 'Khách hàng 1', NULL, NULL, 'khachhang@gmail.com', '0879428091', '1', '$2y$10$OfMxlFmdDDn1LwFEH/5pJuEzx.Pu.sHf8m.jRbZiPMsS3.y9/AX0i', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Wed May 25 2022 23:35:00 GMT+0700 (Indochina Time)', 1),
(23, 'Customer', NULL, NULL, '1@gmail.com', '0879428091', '2', '$2y$10$OxB2omT4krJ.hpAG4nXGyeioi3msquDSEIxa62CLoZMv/WeHzeKpm', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Wed May 04 2022 23:37:00 GMT+0700 (Indochina Time)', 1),
(24, 'Customer1', NULL, NULL, 'customer@gmail.com', '0879428091', '2', '$2y$10$SjK75D5oO1bqKoVhmsT/DOMqGB9je.pO22fz5BmT0YjI0aD7mJ19W', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', 'Thu May 19 2022 23:46:00 GMT+0700 (Indochina Time)', 1),
(25, 'tdthai', NULL, NULL, 'thai180065@huce.edu.vn', '0915621797', NULL, '$2y$10$IATLNrZHwtzCfCk5FDrQoeDmzgCpb/84wOaW5HTmUD2H5perdXAca', NULL, NULL, '2024-03-21 01:25:40', '2024-03-23 01:25:40', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(20) UNSIGNED NOT NULL,
  `uf_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(126, 7, 13, NULL, NULL),
(127, 14, 13, NULL, NULL),
(128, 11, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyword`
--
ALTER TABLE `keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_od_transaction_id_foreign` (`od_transaction_id`),
  ADD KEY `orders_od_product_id_foreign` (`od_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_keywords_pk_product_id_foreign` (`pk_product_id`),
  ADD KEY `product_keywords_pk_keyword_id_foreign` (`pk_keyword_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_r_user_id_foreign` (`r_user_id`),
  ADD KEY `ratings_r_product_id_foreign` (`r_product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_foreign` (`tst_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favourite_uf_product_id_foreign` (`uf_product_id`),
  ADD KEY `user_favourite_uf_user_id_foreign` (`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `keyword`
--
ALTER TABLE `keyword`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_keywords`
--
ALTER TABLE `product_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_od_product_id_foreign` FOREIGN KEY (`od_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_od_transaction_id_foreign` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD CONSTRAINT `product_keywords_pk_keyword_id_foreign` FOREIGN KEY (`pk_keyword_id`) REFERENCES `keyword` (`id`),
  ADD CONSTRAINT `product_keywords_pk_product_id_foreign` FOREIGN KEY (`pk_product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_r_product_id_foreign` FOREIGN KEY (`r_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `ratings_r_user_id_foreign` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_tst_user_id_foreign` FOREIGN KEY (`tst_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_uf_product_id_foreign` FOREIGN KEY (`uf_product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `user_favourite_uf_user_id_foreign` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
