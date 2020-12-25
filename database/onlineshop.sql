-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 07:53 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_demo`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Motorolla'),
(5, 'LG'),
(6, 'Thương Hiệu Quần Áo');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Thiết Bị Điện Tử'),
(2, 'Phụ Nữ'),
(3, 'Nam'),
(4, 'Trẻ Em'),
(5, 'Nội Thất'),
(6, 'Đồ Tiêu Dùng'),
(7, 'Thể Thao, Sách & Báo');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'deyneeraj666@gmail.com'),
(5, 'niroj.dey@edureka.co');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Đã Hoàn Thành'),
(2, 14, 2, 1, '07M47684BS5725041', 'Đã Hoàn Thành');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Niraj', 'deyneeraj666@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Galaxy S7 Edge', 5.000.00, 'Samsung Galaxy S7 Edge', 'product07.png', 'samsung mobile electronics'),
(2, 1, 3, 'IPhone 5s', 2.500.00, 'IPhone 5s', 'iphone5s.png', 'mobile iphone apple'),
(3, 1, 3, 'IPad Air 2', 3.000.00, 'Ipad Apple Brand', 'ipad_air2.png', 'apple ipad tablet'),
(4, 1, 3, 'IPhone 6s', 4.200.00, 'Apple IPhone ', 'iphone6s.png', 'iphone apple mobile'),
(5, 1, 2, 'IPad 2', 2.050.00, 'Samsung Ipad', 'iPad-air.png', 'ipad tablet samsung'),
(6, 1, 1, 'Samsung Laptop r series', 8.500.00, 'Samsung Black Combination Laptop', 'laptop_PNG5939.png', 'samsung laptop '),
(7, 1, 1, 'Laptop Pavillion', 12.000.00, 'Laptop Hp Pavillion', 'laptop_PNG5930.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony Mobile', 4.000.00, 'Sony Mobile', '530201353846AM_635_sony_xperia_z.png', 'sony mobile'),
(9, 1, 3, 'IPhone 11', 32.000.00, 'Iphone 11', 'iphone-hd-png-iphone-apple-png-file-550.png', 'iphone apple mobile'),
(10, 2, 6, 'Đầm Đỏ Quý Bà', 399.00, 'Đầm Đỏ Quý Bà', 'D0719872-3.png', 'đầm '),
(11, 2, 6, 'Đầm Xanh', 120.00, 'Đầm Xanh', 'images.jpg', 'đầm'),
(12, 2, 6, 'Váy Fáke', 150.00, 'Váy Fáke', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'váy'),
(13, 2, 6, 'Áo mùa Thu', 330.20, 'Áo mùa Thu', 'Spring-Autumn-Winter-Young-Ladies-Casual-Wool-Dress-Women-s-One-Piece-Dresse-Dating-Clothes-Medium.jpg_640x640.jpg', 'Thu'),
(14, 2, 6, 'Áo Sơ Mi Nữ', 340.00, 'Áo Sơ Mi Nữ', 'download.jpg', 'so mi'),
(15, 2, 6, 'Quần Áo Gym', 300.00, 'Quần Áo Gym', 'shutterstock_203611819.jpg', 'gym'),
(16, 3, 6, 'Sweter nam', 310.00, 'Sweter nam', '2012-Winter-Sweater-for-Men-for-better-outlook.jpg', 'Sweter nam'),
(17, 3, 6, 'Sơ Mi Nam', 1000, 'Sơ Mi Nam', 'gents-formal-250x250.jpg', 'Sơ Mi Nam'),
(19, 3, 6, 'Áo Khoác Nam', 430.00, 'Áo Khoác Nam', 'images (1).jpg', 'khoác'),
(20, 3, 6, 'Quần Âu', 160.00, 'Quần Âu', 'Winter-fashion-men-burst-sweater.png', 'quan '),
(21, 3, 6, 'Áo Thun', 200.50, 'Áo Thun', 'IN-Mens-Apparel-Voodoo-Tiles-09._V333872612_.jpg', 'ao thun'),
(22, 4, 6, 'Áo thun bé ', 130.00, 'Áo thun bé', '1.0x0.jpg', 'tre em'),
(23, 4, 6, 'Áo hoddies ', 190.00, 'Áo hoddies ', 'GirlsClothing_Widgets.jpg', 'hoddies'),
(24, 4, 6, 'Áo khoác trẻ em', 170.00, 'Áo khoác trẻ em', 'images.jpg', 'polo'),
(25, 4, 6, 'Đầm bé gái', 175.00, 'Đầm bé gái', 'images (3).jpg', 'đầm'),
(27, 4, 6, 'Mũ chống nắng', 69.00, 'Mũ chống nắng', 'image28.jpg', 'mũ'),
(32, 5, 0, 'Kệ Sách', 525.00, 'Kệ Sách', 'furniture-book-shelf-250x250.jpg', 'Kệ Sách'),
(33, 6, 2, 'Tủ Lạnh', 9.375.00, 'Tủ Lạnh', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'samsung'),
(34, 6, 4, 'Đèn Bàn', 310.00, 'Đèn Bàn', 'emergency light.png', 'Đèn Bàn'),
(35, 6, 0, 'Máy Hút Bụi', 600.00, 'Máy Hút Bụi', 'images (2).jpg', 'hut bui'),
(36, 6, 5, 'Bàn Ủi', 215.00, 'Bàn Ủi', 'ir.jpg', 'Bàn Ủi'),
(37, 6, 5, 'LED TV', 12.000.00, 'LED TV', 'images (4).png', 'led tv lg'),
(38, 6, 4, 'Micro', 350.00, 'Micro', 'micro.jpg', 'Micro'),
(39, 6, 5, 'Máy xay sinh tố', 325.00, 'Máy xay sinh tố', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Váy ngắn nữ', 300.00, 'Váy ngắn nữ', 'girl-walking.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 4.000.00, 'Samsung Galaxy Note 3', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 8', 12.000.00, 'Samsung Galaxy Note 8', 'samsung8.png', 'samsung galxaxy note 8 neo'),
(47, 4, 6, 'Dell Vostro 5568', 16.500.00, 'Dell Vostro 5568', 'product01.jpg', 'Dell Laptop'),
(48, 1, 7, 'Tai nghe', 250.00, 'Tai nghe', 'product05.png', 'Headphones Sony'),
(49, 1, 7, 'Dây Sạc', 250, 'Dây Sạc', 'daysac.png', 'Dây Sạc Sony'),
(50, 3, 6, 'Sơ Mi Đen', 350.00, 'Sơ Mi Đen', 'pm1.JPG', 'suit boys shirts'),
(51, 3, 6, 'Sơ Mi Nâu', 270.00, 'Sơ Mi Nâu', 'pm2.JPG', 'suit boys shirts'),
(52, 3, 6, 'Sơ Mi Xanh', 453.00, 'Sơ Mi Xanh', 'pm3.JPG', 'suit boys shirts'),
(53, 3, 6, 'Áo Khoác Nỉ', 220.00, 'Áo Khoác Nỉ', 'pm11.JPG', 'suit boys shirts'),
(54, 3, 6, 'Áo 3 Lỗ Nam', 99.00, 'Áo 3 Lỗ Nam', '3lo.jpg', 'suit boys shirts'),
(55, 3, 6, 'Sơ Mi Trơn', 259.00, 'Sơ Mi Trơn', 'pm9.JPG', 'suit boys shirts'),
(56, 3, 6, 'Vest Nam', 1.299.00, 'Vest Nam', 'pm7.JPG', 'suit boys shirts'),
(57, 3, 6, 'Áo Hoddies Nam', 260.00, 'Áo Hoddies Nam', 'hoddis.jpg', 'suit boys shirts'),
(58, 3, 6, 'Áo gym', 35.00, 'Áo gym', 'pm9.png', 'suit boys shirts'),
(59, 3, 6, 'Khoác Da Bò', 855.00, 'Khoác Da Bò', 'a2.JPG', 'suit boys shirts'),
(60, 3, 6, 'Áo Body', 150.00, 'Áo Body', 'pm11.JPG', 'suit boys shirts'),
(61, 3, 6, 'Vest Công Sở', 1.215.00, 'Vest Công Sở', 'pm12.JPG', 'suit boys shirts'),
(62, 3, 6, 'Polo Nam', 199.00, 'Polo Nam', 'pm13.JPG', 'suit boys shirts'),
(63, 3, 6, 'Jean Nâu Trơn', 550.00, 'Jean Nâu Trơn', 'pt1.JPG', 'boys Jeans Pant'),
(64, 3, 6, 'Jeans Xanh', 460.00, 'Jeans Xanh', 'pt2.JPG', 'boys Jeans Pant'),
(65, 3, 6, 'Jeans Màu Sữa', 470.00, 'Jeans Màu Sữa', 'pt3.JPG', 'boys Jeans Pant'),
(66, 3, 6, 'Quần Âu Nâu', 280.00, 'Quần Âu Nâu', 'pt4.JPG', 'boys Jeans Pant'),
(67, 3, 6, 'Jean Rách Gối', 360.00, 'Jean Rách Gối', 'pt5.JPG', 'boys Jeans Pant'),
(68, 3, 6, 'Jeans Xanh Trắng', 550.00, 'Jeans Xanh Trắng', 'pt6.JPG', 'boys Jeans Pant'),
(69, 3, 6, 'Quần Âu Xanh', 390.00, 'Quần Âu Xanh', 'pt7.JPG', 'boys Jeans Pant'),
(70, 3, 6, 'Jeans Xanh Đậm', 399.00, 'Jeans Xanh Đậm', 'pt8.JPG', 'boys Jeans Pant'),
(71, 1, 2, 'Xiaomi Redmi 8x', 5.000.00, 'Xiaomi Redmi 8x', 'xiaomi.jpg', 'xiaomi'),
(72, 7, 2, 'Tai nghe Xiaomi', 350.00, 'Tai nghe Xiaomi', 'tainge.jpg', 'sony Headphones electronics gadgets'),
(73, 7, 2, 'Samsung Headphones', 350.00, 'Samsung Headphones', 'product05.png', 'samsung Headphones electronics gadgets'),
(74, 1, 1, 'HP I5 laptop', 9.550.00, 'HP I5 laptop', 'product01.png', 'HP i5 laptop electronics'),
(75, 1, 1, 'HP I7 Laptop 8Gb Ram', 15.500.00, 'HP I7 Laptop 8Gb Ram', 'product03.png', 'HP i7 laptop 8gb ram electronics'),
(76, 1, 5, 'Sony Note 6Gb Ram', 4.500.00, 'Sony Note 6Gb Ram', 'product04.png', 'sony note 6gb ram mobile electronics'),
(77, 1, 4, 'MSV Laptop 16Gb Ram NVIDEA Graphics', 25.499.00, 'MSV Laptop 16Gb Ram NVIDEA Graphics', 'product06.png', 'MSV laptop 16gb ram NVIDEA Graphics electronics'),
(78, 1, 5, 'Dell Laptop 8Gb Ram Intel Integerated Graphics', 14.579.00, 'Dell Laptop 8Gb Ram Intel Integerated Graphics', 'product08.png', 'dell laptop 8gb ram intel integerated Graphics electronics'),
(79, 7, 2, 'Camera With 3D Pixels', 12.569.00, 'Camera With 3D Pixels', 'product09.png', 'camera with 3D pixels camera electronics gadgets'),
(80, 1, 1, 'Mac-Book Fake', 39.000.00, 'Mac-Book Fake', 'macbook.jpg', 'dfgh'),
(81, 4, 6, 'Đầm dạ hội bé gái', 600.00, 'Đầm dạ hội bé gái', 'đambegai.jpg', 'kids blue dress');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Niraj', 'dey', 'deyneeraj666@gmail.com', 'niraj', '89721988523', '123456789', 'sdcjns,djc'),
(15, 'niroj', 'dey', 'niroj.dey@edureka.co', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Niraj', 'dey', 'deyneeraj666@gmail.com', '123456789', '8972188523', '123456789', 'sdcjns,djc'),
(14, 'niroj', 'dey', 'niroj.dey@edureka.co', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
