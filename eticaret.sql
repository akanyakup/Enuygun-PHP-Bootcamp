-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 10 Ağu 2022, 15:22:07
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4E6F81A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(3, 18, 'Ev', 'Murat', 'Demirci', 'Batuhan İş merkezi', '43.sokak 52.no Akdere ', '06212', 'Ankara', 'TR', '0 (512) 512 12 12'),
(6, 31, 'İş ', 'Yakup', 'Akan', 'Enuygun', 'Kadıköy ', '34321', 'İstanbul', 'TR', '+90 (524) 559-5162'),
(7, 31, 'Ev', 'Yakup', 'Akan', 'Symfony ', 'General Zeki Doğan Mahallesi 123.cad 123.sok', '06600', 'Ankara', 'TR', '1234567890');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `carrier`
--

DROP TABLE IF EXISTS `carrier`;
CREATE TABLE IF NOT EXISTS `carrier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Götür Nakliye', '2 iş günü içinde standart eve teslimat.', 400),
(2, 'Post Ofis', 'Posta kutunuzda siparişiniz yerine bir teslimat bildirimi bulmayı tercih ederseniz.', 190),
(3, 'BSPT Kargo', '3 iş günü içerisinde siparişiniz kapıda.', 250);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Kabanlar'),
(3, 'Atkılar'),
(4, 'Bereler'),
(5, 'Tişörtler'),
(6, 'Ayakkabılar'),
(7, 'Gözlükler'),
(9, 'Şapkalar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220216090224', '2022-07-16 09:02:53', 195),
('DoctrineMigrations\\Version20220216094827', '2022-07-16 09:48:41', 54),
('DoctrineMigrations\\Version20220218171218', '2022-07-18 17:12:29', 198),
('DoctrineMigrations\\Version20220219105301', '2022-07-19 10:53:16', 221),
('DoctrineMigrations\\Version20220220215719', '2022-07-20 21:57:28', 237),
('DoctrineMigrations\\Version20220222211707', '2022-07-22 21:17:36', 172),
('DoctrineMigrations\\Version20220226160703', '2022-07-26 16:07:11', 356),
('DoctrineMigrations\\Version20220227163839', '2022-07-27 16:38:48', 677),
('DoctrineMigrations\\Version20220227195406', '2022-08-06 19:10:19', 59),
('DoctrineMigrations\\Version20220320164349', '2022-08-07 17:43:57', 34),
('DoctrineMigrations\\Version20220321141846', '2022-08-07 19:18:54', 55),
('DoctrineMigrations\\Version20220329100058', '2022-08-08 12:01:11', 128),
('DoctrineMigrations\\Version20220401085112', '2022-08-08 15:51:23', 128),
('DoctrineMigrations\\Version20220401092032', '2022-08-08 17:20:39', 28);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `headers`
--

DROP TABLE IF EXISTS `headers`;
CREATE TABLE IF NOT EXISTS `headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `headers`
--

INSERT INTO `headers` (`id`, `title`, `content`, `btn_title`, `btn_url`, `image`) VALUES
(6, 'Şık ve zarif', 'Sonbahar koleksiyonundaki son indirimli ürünlerimiz', 'Gör', '/urunler', 'f8b3d678cbd591d97db81f7699efbf8769d71fdf.jpg'),
(7, 'Hızlı Teslimat', 'Ekspres teslimat hizmetlerimizden ve aynı zamanda ücretsiz iadelerimizden yararlanın! Deneyin, kullanın veya değiştirin!', 'Sipariş Et', '/urunler', 'b1a033cedb79715980939bd606ca675ee8f87d6a.jpg'),
(8, 'Her mevsim için aksesuarlar', 'Ayakkabılarımız, şapkalarımız, berelerimiz ve atkılarımız ile kendinizi şımartın!', 'Ürünler', '/urunler', 'e13adf6f1244289179c69cecfe4df8cd0528d4e6.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session`, `state`) VALUES
(40, 18, '2022-08-07 17:44:10', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220320174410-623759dacdc50', NULL, 0),
(41, 18, '2022-08-01 17:46:16', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220320174616-62375a585cf06', NULL, 0),
(42, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220320174925-62375b15b0b3f', NULL, 0),
(43, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220320182620-623763bc19397', NULL, 0),
(44, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220321112811-6238533b69446', NULL, 0),
(45, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220321151130-6238879220c5d', NULL, 0),
(46, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220321152143-623889f7677bc', NULL, 0),
(47, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220321153157-62388c5d3dcb9', NULL, 0),
(48, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220321153450-62388d0a09959', 'cs_test_b1SBOyIYUlNjmcGmAWw3nlF8USEpGWntMb6WXLakPo0WIibbIkCs4am313', 0),
(49, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322170204-6239f2fc3589f', NULL, 0),
(50, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '3.9', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322172039-6239f7573c3e2', 'cs_test_b1eGNsgqwf4HHt2YuH92mCxBgf453vCTp4J0RbZs1MdXNhFdrhdmIVkSB6', 0),
(51, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '1.49', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322172549-6239f88daf871', 'cs_test_b14BKDEprkiSilOuk4i6IHNV3c20eix48nda2AARAnsgJI9m9sthfPukGH', 0),
(52, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322174950-6239fe2e0278a', NULL, 0),
(53, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322175018-6239fe4a30e6a', NULL, 0),
(54, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322175044-6239fe64915f4', NULL, 0),
(55, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '190', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322175108-6239fe7c2a7ee', NULL, 0),
(56, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '190', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322175139-6239fe9baace1', 'cs_test_b1QZUPwPgnLIn27IOi0yBIlEtBMeCLTcvrO817CEvhBOzpVk93izdu3Xl2', 0),
(57, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322180138-623a00f242bf2', 'cs_test_b1pMcTNqlEPWipvCpdt0yaXrxfGlYwcQByfJthhFGg9aSfl8xgautEAQZM', 0),
(58, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '190', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322222200-623a3df8835b1', NULL, 0),
(59, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322224500-623a435ccb66f', 'cs_test_b12YAC7cXCAEAcTZ6JkW71ylZffMl7yChpUr8IZQcJBpF7kxdB5i6pc1IB', 0),
(60, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322231622-623a4ab68ec27', 'cs_test_b1ucTIls6kYpFgyiXKK1TXkyIQwyjpzPJI9b7a8cYydpdrJA2xfpKBpv3r', 0),
(61, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220322232926-623a4dc6ce727', 'cs_test_b1BX6ytv3q3bJMjpXCowtgpx6TXbelYquTV6w7BgzlZIvyKhxboVZdjfKb', 3),
(62, 27, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220328155754-6241bee23f5b1', 'cs_test_b1gLpzCcKn3tR1q0CWF5bCgpuVwSjL4yFejU11va7kCihyZSMccJC9jhUQ', 2),
(63, 18, '2022-08-08 16:18:44', 'BSPT Kargo', '400', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220331221918-62460cc658263', 'cs_test_b1KebeKEdfq4hsEr6YvzvKp9qach8z0OrjZIUrPZnUJGh2jXF5p969Zxym', 1),
(64, 31, '2022-08-08 16:18:44', 'BSPT Kargo', '190', 'Yakup Akan<br>1234567890<br><br>General Zeki Doğan Mahallesi 123.cad 123.sok<br>06600<br>Ankara<br>TR', '20220808161844-62f137644f7e6', 'cs_test_b1A9sDtSm1eMqzAAUhcVbeNVnKXgLhTJOtSF8JeR06mhHQctQDah1ZgPGt', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `binded_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_845CA2C17C78A4E3` (`binded_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order_details`
--

INSERT INTO `order_details` (`id`, `binded_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(76, 40, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(77, 40, 'Sıcak Tutan Ceket', 1, 5800, 5800),
(78, 41, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(79, 41, 'Sıcak Tutan Ceket', 1, 5800, 5800),
(80, 42, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(81, 42, 'Sıcak Tutan Ceket', 1, 5800, 5800),
(82, 43, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(83, 43, 'Sıcak Tutan Ceket', 1, 5800, 5800),
(84, 44, 'Sıcak Tutan Ceket', 3, 5800, 17400),
(85, 44, 'Kırmızı ve Mavi Ponpon Bere', 2, 1600, 3200),
(86, 45, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(87, 46, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(88, 47, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(89, 48, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(90, 50, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(91, 51, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(92, 52, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(93, 53, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(94, 54, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(95, 55, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(96, 56, 'Kırmızı Ponpon Bere', 2, 1800, 3600),
(97, 57, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(98, 58, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(99, 59, 'Kırmızı Ponpon Bere', 1, 1800, 1800),
(101, 61, 'Bonnet Rouge Pompom', 1, 1800, 1800),
(102, 61, 'T-shirt Blanc', 1, 1800, 1800),
(103, 62, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(104, 62, 'T-shirt Blanc', 1, 1800, 1800),
(105, 63, 'Bonnet Rouge Pompom', 2, 1800, 3600),
(106, 64, 'Echarpe Rouge', 4, 1400, 5600),
(107, 64, 'T-shirt Blanc', 1, 1800, 1800);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_in_home` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `image`, `subtitle`, `description`, `price`, `is_in_home`) VALUES
(2, 4, 'Kırmızı Ponpon Bere', 'kirmizi-ponpon-bere', 'e0b7e89b60de57f1e4451fd9831be26a102081e4.jpg', 'Tarzınla sıcak kal', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid.', 1800, 0),
(3, 4, 'Kırmızı ve Mavi Ponpon Bere', 'kirmizi-ve-mavi-ponpon-bere', '8bf330b14aefcec1ab92b7c3f475290fd7940275.jpg', 'Stilini yansıt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut!', 1600, 0),
(4, 3, 'Kırmızı Atkı', 'kirmizi-atki', '9ec1111e99942243bf2157e2fbeaa2aec0a485ac.jpg', 'Kayak veya şehir için', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum!', 1400, 0),
(5, 2, 'Sıcak Tutan Ceket', 'sicak-tutan-ceket', '5cf449463c611b07451480da81fa048f208fc974.jpg', 'Sert kışlar için', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\ntenetur error, harum nesciunt ipsum debitis quas aliquid.\nLorem ipsum dolor sit amet consectetur adipisicing elit.', 5800, 0),
(6, 5, 'Beyaz Tişört', 'beyaz-tisort', 'ee40d9f7990aead7e8695f2eb4599ea1dbb0b1b1.jpg', 'Sade ve Şık', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum!', 1800, 0),
(7, 3, 'Çizgili Atkı', 'cizgili-atki', '2153f235c1175c595860b612a4d2657402184a04.jpg', 'Tarzına renk kat', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid.', 1500, 0),
(8, 5, 'Dar Tişört', 'dar-tisort', '00a9e824e1a5ba119d9964cc2798fdc3e27b9a84.jpg', 'Her kombine gider', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\noptio, eaque rerum!', 15800, 0),
(9, 7, 'Yeni Havalı Gözlük', 'yeni-havali-gozluk', '9b63b18c0cde83590b9e36eaaac34092e430712c.jpg', 'Karakterini yansıt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n', 2400, 0),
(10, 7, 'Güneş Gözlüğü', 'gunes-gozlugu', 'dc0f8d0f37e4866c5882c01e0841b7f8b271e49d.jpg', 'Etrafa yeniden bak', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n', 9800, 1),
(11, 9, 'Turuncu Şapka', 'turuncu-sapka', '242b2cf61210f43c231c6fdec081a554c6757e95.jpg', 'Güneşi yakala', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n', 400, 1),
(12, 6, 'Tarz Ayakkabı', 'tarz-ayakkabi', '985fc0c43bac9473286fd1f4fabe1d14c21485e7.jpg', 'Ayağınızı yerden kesecek', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n', 14900, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'asdasd@deneme.com', '[]', '$2y$13$XJ6eO87g5wbbYo1VVGsSa.K3ZoY3nxb/AP7jesP.B4pQ5uCTPnWta', 'Yakup', 'Akan'),
(2, 'ertan.akan@deneme.com', '[]', '$2y$13$hbsvJpSPsTAifkSz7EKdnek5JELREFm7AcAD2waapW.CGbPPb9/Xa', 'Ertan', 'Akan'),
(3, 'ozkan@deneme.com', '[]', '$2y$13$V8gb44ppyH26z1aGFrrrg.YHVwNCrO2uoDCODyAqkKb3IehWYw/de', 'Özkan', 'Acar'),
(5, 'Senem@deneme.com', '[]', '$2y$13$TIqH1opO82k7lhHZIQx3RuJcMOOZd4wgpILAC8BQ7Fm0L31Lhrop2', 'Senem', 'Purtul'),
(6, 'bahar@deneme.com', '[]', '$2y$13$aS8uwK/U422zKIQPZVan6.xxXHbKDLe0QBu3BrA6cv3bT8NJydCFi', 'Bahar', 'Girgin'),
(8, 'Onur@deneme.com', '[]', '$2y$13$5eh2MdTTmp3saxjVSdSDpuuI1U4OFVbfj9rLOMK0MZOeatvcPciSa', 'Onur', 'Can'),
(9, 'mert123@deneme.com', '[]', '$2y$13$kZAwoyXojOm5KZWhSGH3aeAaYe1DU3pBkqHnD7Qz328dpbPHuu1L6', 'Mert', 'Özak'),
(10, 'suleymangzgn@deneme.com', '[]', '$2y$13$ygkBzDRFAqErEjNg84CwEOeN3UjCE.QaaGALDmykqQBvP/WIuKF4.', 'Süleyman', 'Gezgin'),
(11, 'denizberke@deneme.com', '[]', '$2y$13$rYh3reJhPHOthgfaKhz/e..5ghtSb0RgIDZQT98iJLyvjmwRhMl0G', 'Deniz', 'Berke'),
(12, 'tugba@deneme.com', '[]', '$2y$13$nYHb/cULNrIAdteSAtJSiOy4wkZbxfYeAY4los.C9BOBBczF09P0e', 'Tuğba', 'Akan'),
(14, 'wozowiwydi@deneme.com', '[]', '$2y$13$AFkNQqYChQC6bDQWuO0eVeIhu9jnEMpSCk4e0bT.Cc6gCGWoXHZEi', 'Ezgi', 'Demir'),
(16, 'yigit@deneme.com', '[]', '$2y$13$gxSZ/IWhSlUbOeMJpA.qBejCfpRgj1Zz4YgQ0Q7OII51YwzVFjBpW', 'Yiğit', 'Ali'),
(18, 'muratdmrc@deneme.com', '[]', '$2y$13$hi0ATGo5E4HiBtd98kjEoud.CYeEwTUg07dP0vZHVayIYttmK0yqy', 'Murat', 'Demirci'),
(19, 'kutaysrk@deneme.com', '[]', '$2y$13$/RrdovSw1MccwGOhMACuAu1SJYnj1IE3C2lTzjSTgn56Nb99ALCN6', 'Kutay', 'Şerik'),
(20, 'xowogavibe@deneme.com', '[]', '$2y$13$qflQJ4yFJ0xtHsd.el.BYezdsmxTiMifkhcaB.Y.JcpAeBqggUt86', 'Aleyna', 'Bal'),
(25, 'ozcan3124@deneme.com', '[]', '$2y$13$k5rLWE3mYj5ky4oZV1KUNuSSmUQAa.yEOYcNAqOv7FJ9FIaRIy8Ny', 'Özcan', 'Kahraman'),
(26, 'nrglbykli@deneme.com', '[]', '$2y$13$G4nys/saDA5GRlTouafl/O8jXA.PUbCwh9iao.ZSvRJH889HliHn.', 'Nurgül', 'Bıyıklı'),
(27, 'suheda.2003@deneme.com', '[]', '$2y$13$7L4y2VHPe6dqXhCjfSzybO1BWzeYC0usC06KRdycu6xScOvWaJJuS', 'Şüheda', 'Irmak'),
(28, 'seyfullah@deneme.com', '[]', '$2y$13$hdW4kLBteLo0LC5sftuN2.XfJ8mQEuR/ccq.pfBJha46xY8cG1lm.', 'Seyfullah', 'Erdal'),
(29, 'zeynep456@deneme.com', '[]', '$2y$13$/JPcAgc9.rFAs/gZRXKEZugbFC23hY1F5P1cRSio3U9PkrxEIb0Ai', 'Zeynep', 'Çakıl'),
(30, 'fatihyalcin@deneme.com', '[]', '$2y$13$IisPxHafPM2Hl6i.GvAs.eegCJPjFtd929zMALC4qC0BT27MNYzpO', 'Fatih', 'Yalçın'),
(31, 'yakupakan@deneme.com', '[\"ROLE_ADMIN\"]', '$2y$13$iJ3Y35Jhkyg22raLd1dADuVZyq5O7eUy9p0QNuIOgmvp2UXMC/JyS', 'Yakup', 'Akan');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Tablo kısıtlamaları `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Tablo kısıtlamaları `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C17C78A4E3` FOREIGN KEY (`binded_order_id`) REFERENCES `order` (`id`);

--
-- Tablo kısıtlamaları `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
