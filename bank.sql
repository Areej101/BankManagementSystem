-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 29, 2020 at 05:19 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `acc_id`, `cust_id`, `acc_type`, `balance`) VALUES
(1, 'A001', 'CS001', 'Saving', 40000),
(2, 'A002', 'CS002', 'Saving', 62000),
(3, 'A003', 'CS003', 'Saving', 42000);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`) VALUES
(1, 'Khairpur'),
(2, 'Sukkur');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `firstname`, `lastname`, `street`, `city`, `branch`, `phone`) VALUES
(1, 'CS001', 'Areej', 'Atta', 'main street', 'khairpur', 'Khairpur', 2345678),
(3, 'CS002', 'Zainab', 'Atta', 'main streeet 2', 'sukkur', 'Sukkur', 987654321),
(4, 'CS003', 'Sorath', 'Atta', 'main street 3', 'sukkur', 'Khairpur', 34567890);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
CREATE TABLE IF NOT EXISTS `deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A002', 'CS002', '2020/07/27', 50000, 3000),
(2, 'A003', 'CS003', '2020/07/27', 34000, 4000),
(3, 'A003', 'CS003', '2020/07/27', 38000, 4000),
(4, 'A002', 'CS002', '2020/07/27', 53000, 1000),
(5, 'A002', 'CS002', '2020/07/27', 53000, 1000),
(6, 'A002', 'CS002', '2020/07/27', 55000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
CREATE TABLE IF NOT EXISTS `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`) VALUES
(1, 'A001', 'A002', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE IF NOT EXISTS `withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'A001', 'CS001', '2020/07/27', 54000, 4000),
(2, 'A001', 'CS001', '2020/07/27', 50000, 4000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
