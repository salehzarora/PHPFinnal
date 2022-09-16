-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 09:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_order`
--

CREATE TABLE `all_order` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Cartid` int(11) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `isVIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_order`
--

INSERT INTO `all_order` (`id`, `orderid`, `Total`, `Cartid`, `Date`, `time`, `isVIP`) VALUES
(1, 9788, 985, 6059, '2022-08-12', '00:00:00', NULL),
(2, 8166, 1108, 3335, '2022-08-12', '00:00:00', NULL),
(3, 2650, 208, 6059, '2022-08-12', '00:00:00', NULL),
(4, 1580, 2191, 6059, '2022-08-12', '00:00:00', NULL),
(5, 6362, 368, 3335, '2022-08-12', '00:00:00', NULL),
(6, 4624, 304, 5322, '2022-08-13', '00:00:00', NULL),
(7, 9171, 263, 5322, '2022-08-13', '00:00:00', NULL),
(8, 2336, 540, 5322, '2022-08-13', '00:00:00', NULL),
(9, 8166, 1087, 3335, '2022-08-14', '00:00:00', NULL),
(10, 0, 605, 0, '2022-08-15', '00:00:00', NULL),
(11, 7304, 605, 3335, '2022-08-15', '00:00:00', NULL),
(12, 9569, 1060, 3335, '2022-08-19', '00:00:00', NULL),
(13, 8389, 465, 3335, '2022-08-19', '00:00:00', NULL),
(14, 5708, 109, 3335, '2022-08-19', '00:00:00', NULL),
(15, 7423, 109, 3335, '2022-08-19', '00:00:00', NULL),
(16, 5125, 280, 3335, '2022-08-19', '00:00:00', NULL),
(17, 2212, 800, 3335, '2022-08-19', '00:00:00', NULL),
(18, 9371, 800, 3335, '2022-08-19', '00:00:00', NULL),
(19, 6682, 85, 3335, '2022-08-19', '00:00:00', NULL),
(20, 2953, 77, 4036, '2022-08-21', '00:20:57', 1),
(21, 5823, 109, 1060, '2022-08-21', '00:22:43', NULL),
(22, 6534, 306, 4036, '2022-08-21', '00:24:14', 1),
(23, 8385, 119, 1060, '2022-08-21', '00:25:10', NULL),
(24, 9181, 119, 1060, '2022-08-21', '00:25:54', NULL),
(25, 8690, 336, 4036, '2022-08-21', '00:39:26', 1),
(26, 2340, 800, 1060, '2022-08-21', '00:40:04', NULL),
(27, 3264, 177, 4036, '2022-08-21', '00:46:33', 1),
(28, 3589, 198, 1060, '2022-08-21', '00:46:50', NULL),
(29, 2534, 185, 4036, '2022-08-22', '20:16:21', 1),
(30, 6032, 85, 1060, '2022-08-22', '22:56:49', NULL),
(31, 8272, 85, 1060, '2022-08-22', '22:56:57', NULL),
(32, 9938, 85, 1060, '2022-08-22', '22:57:05', NULL),
(33, 1149, 85, 1060, '2022-08-23', '21:58:20', NULL),
(34, 5886, 109, 1060, '2022-08-23', '22:01:25', NULL),
(35, 2381, 119, 1060, '2022-08-23', '22:01:34', NULL),
(36, 9677, 109, 1060, '2022-08-23', '22:04:14', NULL),
(37, 6248, 85, 1060, '2022-08-23', '22:05:14', NULL),
(38, 5831, 109, 1060, '2022-08-23', '22:05:22', NULL),
(39, 9528, 255, 4036, '2022-08-27', '16:49:50', 1),
(40, 9570, 77, 4036, '2022-08-28', '00:55:21', 1),
(41, 2123, 77, 4036, '2022-09-13', '20:10:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_user_orders`
--

CREATE TABLE `all_user_orders` (
  `Order_Id` int(100) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Cartid` int(11) NOT NULL,
  `isVIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_user_orders`
--

INSERT INTO `all_user_orders` (`Order_Id`, `Item_Name`, `Price`, `Quantity`, `Cartid`, `isVIP`) VALUES
(9788, 'MRE BAR (1 BOX/ 12 BARS)', 89, 5, 6059, NULL),
(9788, 'IMMUNE GUMMIES', 65, 8, 6059, NULL),
(8166, 'APPLE CIDER VINEGAR GUMMIES', 99, 2, 3335, NULL),
(8166, 'WAR  ZONE', 260, 2, 3335, NULL),
(8166, 'BOOM STICK TESTOSTERONE SUPPORT', 64, 3, 3335, NULL),
(8166, 'MRE BAR (1 BOX/ 12 BARS)', 89, 2, 3335, NULL),
(2650, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 6059, NULL),
(2650, 'APPLE CIDER VINEGAR GUMMIES', 99, 1, 6059, NULL),
(1580, 'IMMUNE GUMMIES', 65, 3, 6059, NULL),
(1580, 'WAR  ZONE', 260, 5, 6059, NULL),
(1580, 'MRE BAR (1 BOX/ 12 BARS)', 89, 4, 6059, NULL),
(1580, 'BOOM STICK TESTOSTERONE SUPPORT', 64, 5, 6059, NULL),
(6362, 'IMMUNE GUMMIES', 65, 3, 3335, NULL),
(6362, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 3335, NULL),
(6362, 'BOOM STICK TESTOSTERONE SUPPORT', 64, 1, 3335, NULL),
(4624, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 5322, NULL),
(4624, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 3, 5322, NULL),
(9171, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 5322, NULL),
(9171, 'MRE BAR (1 BOX/ 12 BARS)', 89, 2, 5322, NULL),
(2336, 'WAR  ZONE', 260, 2, 5322, NULL),
(8166, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 3335, NULL),
(8166, 'IMMUNE GUMMIES', 65, 4, 3335, NULL),
(8166, 'WAR  ZONE', 260, 2, 3335, NULL),
(8166, 'APPLE CIDER VINEGAR GUMMIES', 99, 2, 3335, NULL),
(7304, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 3335, NULL),
(7304, 'WAR  ZONE', 260, 2, 3335, NULL),
(9569, 'WAR  ZONE', 260, 4, 3335, NULL),
(8389, 'MRE BAR (1 BOX/ 12 BARS)', 89, 5, 3335, NULL),
(5708, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 3335, NULL),
(7423, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 3335, NULL),
(5125, 'WAR  ZONE', 260, 1, 3335, NULL),
(2212, 'WAR  ZONE', 260, 3, 3335, NULL),
(9371, 'WAR  ZONE', 260, 3, 3335, NULL),
(6682, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 3335, NULL),
(8103, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 3335, NULL),
(4995, 'x2', 3233, 1, 3335, NULL),
(6805, 'x2', 3233, 5, 4036, NULL),
(4722, 'MRE BAR (1 BOX/ 12 BARS)', 78, 2, 4036, NULL),
(4722, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 1, 4036, NULL),
(6427, 'APPLE CIDER VINEGAR GUMMIES', 87, 1, 4036, NULL),
(2953, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 1, 4036, NULL),
(5823, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 1060, NULL),
(6534, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 1, 4036, NULL),
(6534, 'WAR  ZONE', 229, 1, 4036, NULL),
(8385, 'APPLE CIDER VINEGAR GUMMIES', 99, 1, 1060, NULL),
(9181, 'APPLE CIDER VINEGAR GUMMIES', 99, 1, 1060, NULL),
(8690, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 4, 4036, 1),
(8690, 'APPLE CIDER VINEGAR GUMMIES', 87, 1, 4036, 1),
(2340, 'WAR  ZONE', 260, 3, 1060, NULL),
(3264, 'MRE BAR (1 BOX/ 12 BARS)', 78, 2, 4036, 1),
(3589, 'MRE BAR (1 BOX/ 12 BARS)', 89, 2, 1060, NULL),
(2534, 'MRE BAR (1 BOX/ 12 BARS)', 78, 1, 4036, 1),
(2534, 'APPLE CIDER VINEGAR GUMMIES', 87, 1, 4036, 1),
(6032, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 1060, NULL),
(8272, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 1060, NULL),
(9938, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 1060, NULL),
(1149, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 1060, NULL),
(5886, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 1060, NULL),
(2381, 'APPLE CIDER VINEGAR GUMMIES', 99, 1, 1060, NULL),
(9677, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 1060, NULL),
(6248, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 65, 1, 1060, NULL),
(5831, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 1060, NULL),
(9528, 'MRE BAR (1 BOX/ 12 BARS)', 78, 3, 4036, 1),
(9570, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 1, 4036, 1),
(2123, 'IMMUNE GUMMIES  ORANGE', 57, 1, 4036, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `total`, `cid`) VALUES
(1060, NULL, 5867),
(3335, NULL, 4458),
(4036, NULL, 9295),
(5322, NULL, 1492),
(6059, NULL, 6323),
(6398, NULL, 3125),
(9045, NULL, 4663),
(9360, NULL, 1451),
(9478, NULL, 9293);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `Nid` int(11) NOT NULL,
  `CustomerCart` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Massage` varchar(100) NOT NULL,
  `Massage2` varchar(100) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `staff` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `Nid`, `CustomerCart`, `Date`, `Time`, `Massage`, `Massage2`, `orderid`, `productid`, `staff`) VALUES
(1, 791, 0, '2022-08-22', '22:53:36', 'Your order', 'has been shipped and its on the way to you', 2534, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Cartid` int(11) NOT NULL,
  `Date` date NOT NULL,
  `time` time NOT NULL,
  `isVIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `orderid`, `Total`, `Cartid`, `Date`, `time`, `isVIP`) VALUES
(39, 2123, 77, 4036, '2022-09-13', '20:10:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_checkout`
--

CREATE TABLE `order_checkout` (
  `id` int(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Card_Name` varchar(20) NOT NULL,
  `Card_Number` int(16) NOT NULL,
  `Card_Exp` varchar(5) NOT NULL,
  `Card_CVV` int(3) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_checkout`
--

INSERT INTO `order_checkout` (`id`, `Full_Name`, `Phone`, `Address`, `ZIP`, `City`, `Card_Name`, `Card_Number`, `Card_Exp`, `Card_CVV`, `orderid`) VALUES
(174, 'saleh zarora', 543949907, 'alnabaa', 2571, 'kfar manda', '1', 1, '1', 1, 6427),
(175, 'saleh zarora', 543949907, 'alnabaa', 2571, 'kfar manda', '1', 1, '1', 1, 2953),
(176, 'saleh zarora', 543949907, 'alnabaa', 2571, 'kfar manda', '1', 1, '1', 1, 5823),
(178, 'saleh zarora', 543949907, 'alnabaa', 2571, 'kfar manda', '1', 1, '1', 1, 8385),
(196, 'saleh zarora', 543949907, 'alnabaa', 2571, 'kfar manda', '1', 1, '1', 1, 2123);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(128) NOT NULL,
  `img` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `amount`, `price`, `category`, `img`, `description`, `Date`, `Time`) VALUES
(7, 'saleh zarora', 1374, 333, 'clothing', 'includes/productimg/IMG-631b7988ce7698.48775354.jpeg', 'hi', NULL, '00:00:00'),
(33, 'wmew', 19, 32, 'Dumbbells', 'includes/productimg/IMG-631b77ba5bfd66.12232494.jpg', 'sa', NULL, '00:00:00'),
(34, 'mewo', 140, 150, '', 'includes/productimg/IMG-631b77c2bc0381.29722308.jpg', '', NULL, '00:00:00'),
(40, 'WAR  ZONE', 7, 260, 'other', 'images/warzone.jpg', 'For maximum results, take WAR ZONE with a protein-rich meal. Otherwise, WAR ZONE can be taken any time throughout the day.', NULL, '00:00:00'),
(41, 'BOOM STICK TESTOSTERONE SUPPORT', 54, 64, 'other', 'images/BOOMSTICK.jpg', 'WITH FOOD, SPACED EQUALLY THROUGHOUT THE DAY', NULL, '00:00:00'),
(42, 'APPLE CIDER VINEGAR GUMMIES', 5, 99, 'other', 'images/APPLECIDER.jpg', 'Anytime during the day', NULL, '00:00:00'),
(43, 'IMMUNE GUMMIES  ORANGE', 124, 65, 'other', 'images/IMMUNEGUMMIES.jpg', 'Anytime during the day', NULL, '00:00:00'),
(44, 'Snacks :)', 253, 0, 'eat', 'images/MREBAR.jpg', 'We recommend eating an MRE BAR as a mid-day snack or for fuel before an intense training session.', NULL, '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `Cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `Item_Name` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_cart`
--

INSERT INTO `product_cart` (`Cartid`, `productid`, `Item_Name`, `Price`, `Quantity`) VALUES
(6059, 44, 'MRE BAR (1 BOX/ 12 BARS)', 89, 6),
(6059, 43, 'IMMUNE GUMMIES', 65, 3),
(6059, 42, 'APPLE CIDER VINEGAR GUMMIES', 99, 10),
(6059, 41, 'BOOM STICK TESTOSTERONE SUPPORT', 64, 1),
(6059, 40, 'WAR  ZONE', 260, 1),
(1060, 44, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcribers`
--

CREATE TABLE `subcribers` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `UserName` varchar(128) NOT NULL,
  `PlanPrice` int(11) NOT NULL,
  `isVIP` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcribers`
--

INSERT INTO `subcribers` (`id`, `transfer_id`, `userid`, `UserName`, `PlanPrice`, `isVIP`, `Date`, `Time`) VALUES
(11, 74299, 4458, 'customer', 40, NULL, '2022-08-19', '21:26:57'),
(16, 18795, 9295, 'Customer100', 120, 1, '2022-08-20', '00:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `top_sells`
--

CREATE TABLE `top_sells` (
  `Item_Name` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_sells`
--

INSERT INTO `top_sells` (`Item_Name`, `Price`, `Quantity`) VALUES
('x2', 3233, 1),
('WAR  ZONE', 5802, 28),
('MRE BAR (1 BOX/ 12 BARS)', 7115, 59),
('IMMUNE GUMMIES', 7310, 74),
('IMMUNE GUMMIES  \r\nORANGE\r\n', 7733, 86),
('BOOM STICK TESTOSTERONE SUPPORT', 7861, 92),
('APPLE CIDER VINEGAR GUMMIES', 8443, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL,
  `isManager` int(1) DEFAULT NULL,
  `isWorker` int(1) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`, `isManager`, `isWorker`, `Salary`, `Date`, `time`) VALUES
(1451, 'saleh99', 'saleh99@gmail.com', 'saleh99', 'saleh', NULL, NULL, NULL, '2019-03-12', '04:00:00'),
(3125, 'xx', 'x@gmail.com', 'x', 'x', NULL, NULL, NULL, '2022-08-01', '00:00:00'),
(4458, 'customer', 'customer@gmail.com', 'customer', '123', NULL, NULL, NULL, '2022-08-15', '00:00:00'),
(4663, 'staff1', 'staff1@gmail.com', 'staff1', '122', NULL, 1, 1561, '2019-08-15', '00:00:00'),
(5867, 'Customer101', 'Customer101@gmail.com', 'Customer101', 'C101', NULL, NULL, NULL, '2022-08-19', '02:24:13'),
(6323, 'saleh', 'salehzarora.z.007@gmail.com', 'saleh', 'saleh', 1, NULL, NULL, '2022-08-01', '05:00:00'),
(9293, 'customer2', 'customer2@gmail.com', 'customer2', '122', NULL, 1, NULL, '2022-08-04', '00:00:00'),
(9295, 'Customer100', 'Customer100@gmail.com', 'Customer100', 'c100', NULL, NULL, NULL, '2022-08-19', '02:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `Order_Id` int(100) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Price` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Cartid` int(11) NOT NULL,
  `isVIP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`Order_Id`, `Item_Name`, `Price`, `Quantity`, `Cartid`, `isVIP`) VALUES
(6427, 'APPLE CIDER VINEGAR GUMMIES', 87, 1, 4036, NULL),
(2953, 'IMMUNE GUMMIES  \r\nORANGE\r\n', 57, 1, 4036, NULL),
(5823, 'MRE BAR (1 BOX/ 12 BARS)', 89, 1, 1060, NULL),
(8385, 'APPLE CIDER VINEGAR GUMMIES', 99, 1, 1060, NULL),
(2123, 'IMMUNE GUMMIES  ORANGE', 57, 1, 4036, 1);

-- --------------------------------------------------------

--
-- Table structure for table `workernotification`
--

CREATE TABLE `workernotification` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `massage` varchar(128) NOT NULL,
  `ProductId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workernotification`
--

INSERT INTO `workernotification` (`id`, `title`, `massage`, `ProductId`) VALUES
(38, 'Low quantity!', ' is about to get out of stock ! ', 33),
(39, 'Low quantity!', ' is about to get out of stock ! ', 40),
(40, 'Low quantity!', ' is about to get out of stock ! ', 42);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_order`
--
ALTER TABLE `all_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_checkout`
--
ALTER TABLE `order_checkout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD KEY `Cartid` (`Cartid`) USING BTREE,
  ADD KEY `productid` (`productid`) USING BTREE;

--
-- Indexes for table `subcribers`
--
ALTER TABLE `subcribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- Indexes for table `workernotification`
--
ALTER TABLE `workernotification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_order`
--
ALTER TABLE `all_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_checkout`
--
ALTER TABLE `order_checkout`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `subcribers`
--
ALTER TABLE `subcribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9725;

--
-- AUTO_INCREMENT for table `workernotification`
--
ALTER TABLE `workernotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
