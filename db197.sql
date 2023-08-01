-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 06:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db197`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) DEFAULT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `city`, `grade`, `s_id`) VALUES
(11, 'Shanto', 'Dhaka', 50, 1),
(12, 'Alve', 'Cumilla', 55, 2),
(13, 'Monirul', 'Rajshahi', 60, 3),
(14, 'Shihab', 'Kustia', 75, 4),
(14, 'Hasib', 'Saver', 77, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `ord_no` int(11) DEFAULT NULL,
  `purch_amnt` int(11) DEFAULT NULL,
  `ord_date` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE `order2` (
  `ord_no` int(11) DEFAULT NULL,
  `purch_amnt` int(11) DEFAULT NULL,
  `ord_date` varchar(20) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order2`
--

INSERT INTO `order2` (`ord_no`, `purch_amnt`, `ord_date`, `c_id`, `s_id`) VALUES
(123, 300, 'May-15', 11, 1),
(112, 2000, 'May-16', 12, 2),
(113, 1500, 'May-16', 13, 3),
(114, 700, 'May-18', 14, 4),
(115, 645, 'May-18', 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `company`, `quantity`, `rate`, `cost`) VALUES
(1, 'Company1', 2, 10, 20),
(2, 'Company2', 3, 25, 75),
(3, 'Company1', 2, 30, 60),
(4, 'Company3', 5, 10, 50),
(5, 'Company2', 2, 20, 40),
(6, 'Company1', 3, 25, 75),
(7, 'Company1', 5, 30, 150),
(8, 'Company1', 3, 10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `salaseman`
--

CREATE TABLE `salaseman` (
  `S_id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Commission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salaseman`
--

INSERT INTO `salaseman` (`S_id`, `Name`, `City`, `Commission`) VALUES
(1, 'Hasan', 'Dhaka', 15000),
(2, 'Abdullah', 'Rajshahi', 20000),
(3, 'Imran', 'Chottogram', 25000),
(4, 'Noman', 'Barishal', 10000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
