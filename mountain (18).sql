-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 06:16 AM
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
-- Database: `mountain`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `category_desc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`, `category_desc`) VALUES
(1, 'Hill Produce', 'asdfghjkjkk'),
(3, 'Seeds', 'sdfghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_product`
--

CREATE TABLE `farmer_product` (
  `id` int(10) NOT NULL,
  `loginid` int(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `des` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer_product`
--

INSERT INTO `farmer_product` (`id`, `loginid`, `fname`, `adress`, `pid`, `category`, `price`, `qty`, `des`, `image`, `status`) VALUES
(3, 32, 'Haru', 'Kanjir', '27', '1', '500', 10, 'sdfghj', 'wh.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type1` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `username`, `password`, `type1`, `status`) VALUES
(1, 'admin123@gmail.com', 'Admin@123', 'admin', '1'),
(20, 'nidhi@gmail.com', 'Nidhi@123', 'farmer', '1'),
(22, 'tk@gmail.com', 'Ta@11', 'farmer', '1'),
(23, 't@gmail.com', 'Taa@22', 'customer', '1'),
(25, 'saa@gmail.com', 'Sd@11', 'customer', '0'),
(26, 'Achu@gmail.com', 'Achu@1', 'customer', '1'),
(27, 'M@gmail.com', 'Ma@22', 'farmer', '0'),
(28, 'e@gmail.com', 'Ra@22', 'customer', '0'),
(29, 'Mee@gmail.com', 'Me@33', 'farmer', '0'),
(30, 'maria@gmail.com', 'Tan@34', 'customer', '0'),
(32, 'lakshmimrvkm@gmail.com', 'Tan@12', 'farmer', '1'),
(33, 'taniamargret98@gmail.com', 'Tan@11', 'customer', '0'),
(34, 'tomjoseph11042000@gmail.com', 'Tom@11', 'customer', '0'),
(35, 'tomjoseph1042000@gmail.com', 'Tom@123', 'customer', '0'),
(36, 'reenujoseph112@gmail.com', 'Tom@12', 'customer', '0'),
(37, 'taniyaachu98@gmail.com', 'Tan@34', 'customer', '0'),
(38, 'swathykrishana821@gmail.com', 'Tan@34', 'customer', '0'),
(43, 'sebastiantayana@gmail.com', 'Ta@34', 'customer', '0'),
(47, 'sinjumariathomas@mca.ajce.in', 'Tan@34', 'customer', '0'),
(48, 'sinjumariathomas2022b@mca.ajce', 'Tan@34', 'customer', '0'),
(49, 'sinjumaria@mca.ajce.in', 'Tan@12', 'customer', '0');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `cartid` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`id`, `userid`, `cartid`, `price`, `status`, `date`) VALUES
(97, 30, '78', '500', 'Delivered', '28-06-22'),
(98, 30, '79', '350', 'Delivered', '28-06-22'),
(99, 30, '81', '1500', 'Delivered', '28-06-22'),
(100, 30, '84', '350', 'Delivered', '28-06-22'),
(101, 30, '89', '500', 'Delivered', '28-06-22'),
(102, 30, '88', '350', 'Delivered', '28-06-22'),
(103, 30, '91', '500', 'Delivered', '28-06-22'),
(104, 30, '92', '1000', 'Delivered', '28-06-22'),
(105, 30, '93', '1000', 'Delivered', '28-06-22'),
(106, 30, '94', '700', 'Delivered', '28-06-22'),
(107, 30, '95', '30', 'Delivered', '28-06-22'),
(108, 30, '96', '20', 'Delivered', '28-06-22'),
(109, 30, '97', '350', 'Delivered', '28-06-22'),
(110, 30, '98', '350', 'Delivered', '28-06-22'),
(111, 30, '99', '89', 'Delivered', '28-06-22'),
(112, 30, '100', '20', 'Delivered', '28-06-22'),
(113, 30, '101', '350', 'Delivered', '28-06-22'),
(114, 30, '102', '356', 'Delivered', '28-06-22'),
(115, 30, '103', '10', 'Delivered', '28-06-22'),
(116, 30, '104', '89', 'Delivered', '28-06-22'),
(149, 37, '160', '10', 'placed', '06-07-22'),
(150, 37, '161', '300', 'placed', '06-07-22'),
(151, 37, '159', '350', 'placed', '06-07-22'),
(152, 37, '163', '350', 'placed', '06-07-22'),
(156, 37, '167', '300', 'placed', '06-07-22'),
(157, 30, '169', '500', 'placed', '06-07-22'),
(158, 30, '168', '350', 'placed', '06-07-22'),
(159, 37, '166', '10', 'placed', '06-07-22'),
(160, 30, '171', '350', 'placed', '06-07-22'),
(161, 43, '172', '350', 'Delivered', '06-07-22'),
(162, 43, '174', '10', 'placed', '07-07-22'),
(163, 43, '175', '300', 'placed', '07-07-22'),
(164, 43, '176', '500', 'placed', '07-07-22'),
(165, 43, '177', '10', 'placed', '07-07-22'),
(166, 30, '181', '1500', 'placed', '08-07-22'),
(167, 30, '184', '2000', 'placed', '08-07-22'),
(168, 30, '185', '600', 'placed', '08-07-22'),
(169, 30, '186', '500', 'placed', '08-07-22'),
(170, 30, '187', '500', 'placed', '08-07-22'),
(171, 30, '190', '500', 'placed', '08-07-22'),
(172, 30, '191', '10', 'placed', '08-07-22'),
(173, 43, '193', '1050', 'placed', '08-07-22'),
(174, 43, '194', '740', 'placed', '08-07-22'),
(175, 43, '195', '370', 'placed', '08-07-22'),
(176, 43, '197', '1750', 'placed', '08-07-22'),
(177, 43, '196', '300', 'placed', '08-07-22'),
(178, 30, '200', '300', 'placed', '12-07-22'),
(179, 30, '192', '10', 'placed', '14-07-22'),
(180, 30, '202', '100', 'placed', '14-07-22'),
(181, 30, '204', '300', 'placed', '19-07-22'),
(182, 30, '205', '100', 'placed', '19-07-22'),
(183, 30, '203', '350', 'placed', '19-07-22'),
(260, 30, '2', '350', '', ''),
(261, 30, '2', '370', '', ''),
(262, 30, '4', '500', '', ''),
(263, 30, '4', '370', '', ''),
(264, 30, '5', '500', '', ''),
(265, 30, '5', '370', '', ''),
(266, 30, '5', '350', '', ''),
(267, 30, '5', '500', '', ''),
(268, 30, '5', '370', '', ''),
(269, 30, '5', '350', '', ''),
(270, 43, '7', '350', '', ''),
(271, 43, '7', '100', '', ''),
(272, 43, '11', '720', '', ''),
(280, 30, '15', '1270', '', ''),
(281, 43, '16', '500', 'placed', '19-07-22'),
(282, 43, '18', '800', 'placed', '19-07-22'),
(283, 43, '20', '130', 'placed', '19-07-22'),
(284, 43, '22', '800', 'placed', '19-07-22'),
(285, 43, '24', '400', 'placed', '19-07-22'),
(286, 43, '26', '470', 'placed', '19-07-22'),
(287, 43, '28', '400', 'placed', '19-07-22'),
(288, 43, '29', '500', 'placed', '19-07-22'),
(289, 43, '31', '850', 'placed', '19-07-22'),
(290, 43, '32', '370', 'placed', '19-07-22'),
(291, 43, '33', '670', 'placed', '19-07-22'),
(292, 43, '35', '800', 'placed', '19-07-22'),
(293, 43, '35', '800', 'placed', '19-07-22'),
(294, 43, '36', '200', 'placed', '19-07-22'),
(295, 43, '37', '1700', 'placed', '19-07-22'),
(296, 43, '39', '1680', 'placed', '19-07-22'),
(297, 43, '40', '700', 'placed', '19-07-22'),
(298, 43, '41', '1000', 'placed', '19-07-22'),
(299, 43, '42', '1000', 'placed', '19-07-22'),
(300, 43, '43', '500', 'placed', '19-07-22'),
(301, 30, '45', '1200', 'placed', '19-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pdesc` varchar(300) NOT NULL,
  `pimg` varchar(500) NOT NULL,
  `price` int(30) NOT NULL,
  `qty` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `estatus` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `category`, `pname`, `pdesc`, `pimg`, `price`, `qty`, `status`, `type`, `estatus`) VALUES
(27, '1', 'White pepper', 'White pepper is ingerident that good taste ', 'wh.jpg', 500, 8, 'active', '', 0),
(28, '1', 'BayLeaves', 'good product BayLeaves', 'bay.jpg', 100, 16, 'inactive', '', 0),
(29, '1', 'Cloves', 'Cloves are a kind of spice that is found', 'img4.jpg', 350, 12, 'active', '', 0),
(30, '1', 'Black Pepper', 'Black pepper is a good source of manganese', 'img5.jpg', 370, 16, 'active', '', 0),
(31, '3', 'TomatoSeed', 'Hybrid tomatoes are the product of cross-pollination', 'tom.jpg', 30, 14, 'active', '', 0),
(32, '3', 'Ladys finger seed', 'Lady Finger Seeds are produce an elongated', 'lad.jpg', 30, 14, 'active', '', 0),
(33, '3', 'Bitter gourd seed', 'Transplant To Your Vegetable Garden', 'bitter-gourd-seed.jpg', 20, 14, 'active', '', 0),
(34, '1', 'Malabar tamarind', 'Malabar tamarind or kudam puli is a tropical fruit', 'malab.jpg', 100, 10, 'active', '', 0),
(36, '1', 'Cinnamon', 'good', 'ci.jpg', 360, 14, 'inactive', '', 0),
(51, '1', 'Coffee', 'Fresh', 'img7.jpg', 300, 14, 'active', 'farmer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `rid` int(10) NOT NULL,
  `prid` int(20) NOT NULL,
  `quality` int(10) NOT NULL,
  `price` int(20) NOT NULL,
  `value` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(500) NOT NULL,
  `review` varchar(500) NOT NULL,
  `reviewDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(15) NOT NULL,
  `loginid` int(15) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adress` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `estatus` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `loginid`, `fname`, `email`, `adress`, `phone`, `estatus`) VALUES
(18, 20, 'Nidhi', 'nidhi@gmail.com', 'Mssda', '9207123742', 0),
(20, 22, 'Tayana Sebastian', 'tk@gmail.com', 'Asdfg', '9876542312', 0),
(21, 23, 'Keerthi', 't@gmail.com', 'Akkmj', '9876543212', 0),
(22, 24, 'Shifana', 's@gmail.com', 'Ssdfg', '8976544545', 0),
(23, 25, 'Smitha', 'saa@gmail.com', 'Akkk', '9876543212', 0),
(24, 26, 'Achu', 'Achu@gmail.com', 'Asddff', '9988776655', 0),
(25, 27, 'Muthe', 'M@gmail.com', 'Sdfghj', '7865433444', 0),
(26, 28, 'Rakhi', 'e@gmail.com', 'Asdcf', '9988554321', 0),
(27, 29, 'Meethu', 'Mee@gmail.com', 'Meehj', '7676544545', 0),
(28, 30, 'Maria', 'maria@gmail.com', 'Anandham', '8877666754', 0),
(30, 32, 'Haru', 'lakshmimrvkm@gmail.com', 'Kanjir', '7766554433', 0),
(31, 33, 'Meera', 'taniamargret98@gmail.com', 'Paika', '9888776655', 0),
(32, 34, 'Tomy', 'tomjoseph11042000@gmail.com', 'Kanjir', '9988776655', 0),
(33, 35, 'Tomy', 'tomjoseph1042000@gmail.com', 'Kanjir', '9988776655', 0),
(34, 36, 'Vjayal', 'reenujoseph112@gmail.com', 'Kanjir', '8878878799', 0),
(35, 37, 'Merin', 'taniyaachu98@gmail.com', 'Annnnt', '9876544567', 0),
(36, 38, 'Swathy', 'swathykrishana821@gmail.com', 'Krishna', '7999786341', 0),
(37, 43, 'Deepa', 'sebastiantayana@gmail.com', 'Kanjir', '9877777777', 0),
(38, 47, 'Vidhya', 'sinjumariathomas@mca.ajce.in', 'Kanjir', '9877777777', 0),
(39, 49, 'Haru', 'sinjumaria@mca.ajce.in', 'Kanjir', '9877777777', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(30) NOT NULL,
  `userid` int(30) NOT NULL,
  `pid` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` int(30) NOT NULL,
  `totalprice` int(30) NOT NULL,
  `status` int(30) NOT NULL,
  `orderid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart1`
--

CREATE TABLE `tbl_cart1` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `totalprice` varchar(10) NOT NULL,
  `status` int(10) NOT NULL,
  `orderid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart1`
--

INSERT INTO `tbl_cart1` (`id`, `userid`, `pid`, `quantity`, `price`, `totalprice`, `status`, `orderid`) VALUES
(44, 30, 27, 2, '500', '1000', 0, 301),
(45, 30, 34, 2, '100', '200', 0, 301);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `login_id` varchar(10) NOT NULL,
  `cartid` varchar(10) NOT NULL,
  `amount` int(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`login_id`, `cartid`, `amount`, `status`) VALUES
('30', '146', 13756, 'success'),
('30', '148', 143, 'success'),
('30', '150', 17266, 'success'),
('30', '151', 17616, 'success'),
('30', '152', 17966, 'success'),
('30', '153', 18466, 'success'),
('30', '104', 8414, 'success'),
('30', '104', 8414, 'success'),
('37', '159', 660, 'success'),
('37', '166', 1320, 'success'),
('43', '172', 350, 'success'),
('43', '175', 660, 'success'),
('43', '177', 1170, 'success'),
('30', '181', 1500, 'success'),
('30', '184', 2000, 'success'),
('43', '193', 1050, 'success'),
('30', '192', 10, 'success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `farmer_product`
--
ALTER TABLE `farmer_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `prid` (`prid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `farmer_product`
--
ALTER TABLE `farmer_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farmer_product`
--
ALTER TABLE `farmer_product`
  ADD CONSTRAINT `farmer_product_ibfk_1` FOREIGN KEY (`loginid`) REFERENCES `login` (`loginid`);

--
-- Constraints for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD CONSTRAINT `prid` FOREIGN KEY (`prid`) REFERENCES `product` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
