-- -------------------------------------------------------------
-- TablePlus 3.6.1(320)
--
-- https://tableplus.com/
--
-- Database: document_control
-- Generation Time: 2563-07-03 11:11:02.0580
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `brands` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `countries` (
  `countryId` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `customers` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `documents` (
  `documentId` int NOT NULL AUTO_INCREMENT,
  `documentName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documentReview` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brandName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`documentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `usernames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `brands` (`brandId`, `brandName`, `customerId`) VALUES
('2', 'Iphone', '1'),
('3', 'Wowstick', '6');

INSERT INTO `countries` (`countryId`, `countryName`) VALUES
('1', 'USA'),
('3', 'JAPAN'),
('4', 'KOREA'),
('5', 'THAILAND'),
('6', 'CHINA'),
('7', 'INDIA');

INSERT INTO `customers` (`customerId`, `customerName`, `countryId`) VALUES
('1', 'Apple', '1'),
('5', 'Xiami', '6'),
('6', 'ONITSUKA', '5'),
('7', 'ORBIT', '5');

INSERT INTO `documents` (`documentId`, `documentName`, `documentReview`, `brandName`, `customerName`, `countryName`) VALUES
('4', 'IPHONE-002', '1589526259853.pdf', 'Iphone', 'Apple', 'USA'),
('5', 'IPHONE-001', '1589526259853.pdf', 'Iphone', 'Apple', 'USA'),
('6', 'TEST', '1589526259853.pdf', 'Iphone', 'Apple', 'USA'),
('7', 'test', '1589526259853.pdf', 'Iphone', 'Apple', 'USA'),
('8', 'gg', '1589526259853.pdf', 'Iphone', 'Apple', 'USA');

INSERT INTO `usernames` (`id`, `username`, `password`, `level`) VALUES
('1', 'admin', '12345678', '0');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;