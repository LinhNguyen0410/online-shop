-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2020 lúc 03:56 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_online`
--

DELIMITER $$
--
-- Thủ tục
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `aboutteam`
--

CREATE TABLE `aboutteam` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idcard` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Education` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `imageM` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link_fb` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `aboutteam`
--

INSERT INTO `aboutteam` (`id`, `fullname`, `idcard`, `phone`, `position`, `Education`, `description`, `imageM`, `link_fb`) VALUES
(1, 'Nguyễn Văn Khánh Linh', '1811547401', '0786907654', 'Coder', 'ĐH Nguyễn Tất Thành', 'test', 'avt2.jpg', 'https://www.facebook.com/linh04102000'),
(3, 'Nguyễn Duy Khánh', '1800002588', '0874637372', 'Coder', 'ĐH Nguyễn Tất Thành', 'test ', 'khanh.jfif', 'https://www.facebook.com/profile.php?id=100029948120158'),
(38, 'Võ Trọng Hiển', '1800002588', '0732123651', 'Coder', 'ĐH Nguyễn Tất Thành', 'code khuya lam', 'hien.jpg', 'https://www.facebook.com/votronghien.1999'),
(56, 'Nguyễn Trung Vĩnh', '1800005294', '0716262372', 'Team Leader', 'ĐH Nguyễn Tất Thành', 'thích code khuya nhưng không biết code', 'vin.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Motorolla'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Điện Tử'),
(2, 'Quý Bà'),
(3, 'Quý Ông'),
(4, 'Trẻ Nhỏ'),
(5, 'Nội Thất'),
(6, 'Thiết Bị Gia Dụng'),
(7, 'Thể Thao , Sách & Báo Chí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'deyneeraj666@gmail.com'),
(5, 'niroj.dey@edureka.co'),
(6, 'linhgbale0410@gmail.com'),
(7, 'linh.nttu18@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
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
-- Đang đổ dữ liệu cho bảng `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Niraj', 'deyneeraj666@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 26, 'sadiomane', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HoChiMinh', 'Karnataka', 560074, 'hahahaha', '222222222221', '12/22', 3, 26128000, 1234),
(3, 26, 'salad', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HOCHIMINH', 'district', 124987, 'hahahaha', '1111111111111111', '12/22', 2, 4128000, 2222),
(4, 26, 'vinhloz', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HOCHIMINH', 'QUan', 560074, 'hahahaha', '7224983988787887', '12/21', 2, 5350000, 2223),
(5, 26, 'sadiomane', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HoChiMinh', 'Karnataka', 560074, 'hahahaha', '1111111111111111', '12/22', 1, 12300000, 2222),
(6, 26, 'sadiomane', 'linhgbale0410@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'kaddff', 'sdf', 124987, 'mmmamamammaa', '1111111111111111', '12/22', 1, 2300000, 1111),
(7, 26, 'sadiomane', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HoChiMinh', 'Karnataka', 560074, 'hahahaha', '1111111223333333', '12/22', 1, 129000, 1111),
(8, 26, 'sadiomane', 'linhgbale0410@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'kaddff', 'California', 124987, 'trungvinh', '1233455667788993', '12/22', 1, 1000000, 1233),
(9, 26, 'minh', 'linh.nttu18@gmail.com', '1021 Huỳnh Tấn Phát,Phú Thuận,Quận 7,TPHCM', 'HoChiMinh', 'Karnataka', 560074, 'mmmamamammaa', '2789798484889484', '12/22', 1, 650000, 1723);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000),
(91, 2, 73, 1, 129000),
(92, 2, 9, 1, 22000000),
(93, 2, 3, 1, 3999000),
(94, 3, 3, 12, 47988000),
(95, 3, 73, 1, 129000),
(96, 4, 71, 1, 5000000),
(97, 4, 72, 1, 350000),
(98, 5, 6, 1, 12300000),
(99, 6, 2, 1, 2300000),
(100, 7, 73, 1, 129000),
(101, 8, 82, 100, 100000000),
(102, 9, 34, 1, 650000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Samsung Galaxy s7 edge', 7500000, 'Samsung galaxy s7 edge', 'product07.png', 'samsung mobile electronics'),
(2, 1, 3, 'IPhone 5s', 2300000, 'iphone 5s', 'http___pluspng.com_img-png_iphone-hd-png-iphone-apple-png-file-550.png', 'mobile iphone apple'),
(3, 1, 3, 'IPad Air 2', 3999000, 'ipad apple brand', 'da4371ffa192a115f922b1c0dff88193.png', 'apple ipad tablet'),
(4, 1, 3, 'IPhone 6s', 10500000, 'Apple iPhone ', 'http___pluspng.com_img-png_iphone-6s-png-iphone-6s-gold-64gb-1000.png', 'iphone apple mobile'),
(5, 1, 2, 'IPad 2', 2000000, 'samsung ipad', 'iPad-air.png', 'ipad tablet samsung'),
(6, 1, 1, 'Samsung Laptop  Series', 12300000, 'samsung Black combination Laptop', 'laptop_PNG5939.png', 'samsung laptop '),
(7, 1, 1, 'Laptop Pavillion', 15000000, 'Laptop Hp Pavillion', 'laptop_PNG5930.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony Happy India Pack', 4000000, 'Sony Mobile', '530201353846AM_635_sony_xperia_z.png', 'sony mobile'),
(9, 1, 3, 'IPhone 11', 22000000, 'iphone', 'iph11.jpg', 'iphone apple mobile'),
(10, 2, 6, 'Set đầm đỏ hoa hồng', 500000, 'red dress for girls', 'vaydo.jfif', 'red dress '),
(11, 2, 6, 'Sơ mi công sở', 399000, 'Blue dress', 'somixanh.jpg', 'blue dress cloths'),
(12, 2, 6, 'Đầm mila xanh form dài thắt eo', 400000, 'ladies casual summer two colors pleted', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'girl dress cloths casual'),
(13, 2, 6, 'Đầm hoa nhí nhổ cổ V', 289000, 'girls dress', 'vayhoa.jpg', 'girl dress'),
(14, 2, 6, 'Set đồ công sở', 350000, 'girl dress', 'congso11.jpg', 'ladies cloths girl'),
(15, 2, 6, 'Đầm caro vintage trễ vai eo thun có túi màu đỏ', 199000, 'girl dress', 'caro.jfif', 'ladies wears dress girl'),
(16, 3, 6, 'Áo Sweater Nam', 600000, '2012-Winter-Sweater-for-Men-for-better-outlook', 'sweater.jfif', 'black sweter cloth winter'),
(17, 3, 6, 'Set đồ công sở nam', 289000, 'gents formal look', 'cogso.jpg', 'gents wear cloths'),
(19, 3, 6, 'Set thể thao nam', 310000, 'ad', 'sporte.jpg', 'coat blazer gents'),
(20, 3, 6, 'Áo khoác lông cừu', 570000, 'jg', 'logcu.jpg', 'sweeter gents '),
(21, 3, 6, 'Set đồ thể thao', 120000, 'ssds', 'thethao.jpg', 'formal t shirt black'),
(22, 4, 6, 'Set đồ vàng bé nam', 200000, 'yello t shirt with pant', '1.0x0.jpg', 'kids yellow t shirt'),
(23, 4, 6, 'Đầm họa tiết xanh bé gái', 170000, 'sadsf', 'damxanh.jpg', 'formal kids wear dress'),
(24, 4, 6, 'Set đồ đi chơi trẻ em', 320000, 'g', 'images.jpg', 'kids dress'),
(25, 4, 6, 'Đầm vàng bé gái', 400000, 'as', 'images (3).jpg', 'yellow kids dress'),
(27, 4, 6, 'Sơ mi caro bé trai', 199000, 'sd', 'caso.jpg', 'formal kids dress'),
(32, 5, 0, 'Kệ sách', 850000, 'book shelf', 'furniture-book-shelf-250x250.jpg', 'book shelf furniture'),
(33, 6, 2, 'Tủ Lạnh Sony', 8700000, 'Refrigerator', 'tulah.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Đèn Bàn Doraemon', 650000, 'Emergency Light', 'emergency light.png', 'emergency light'),
(35, 6, 0, 'Máy hút bụi', 600000, 'Vaccum Cleaner', 'hutbui.jpg', 'Vaccum Cleaner'),
(36, 6, 5, 'Bàn ủi Sony', 450000, 'gj', 'iron.JPG', 'iron'),
(37, 6, 5, 'Smart TV Crystal UHD 4K 5', 12999000, 'LED TV', 'led.png', 'led tv lg'),
(38, 6, 4, 'Micro', 600000, 'Microwave Oven', 'micro.jpg', 'Microwave Oven'),
(39, 6, 5, 'Máy xay sinh tố', 250000, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Váy dạo phố', 300000, 'Formal girls dress', 'daopho.jpg', 'ladies'),
(45, 1, 2, 'Samsung Galaxy Note 3', 12000000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung galaxy Note 3 neo'),
(46, 1, 2, 'Samsung Galaxy Note 8', 20000000, '', 'samsung8.png', 'samsung galxaxy note 3 neo'),
(47, 4, 6, 'Mũ chống nắng', 99000, 'nbk', 'mu.jpg', 'Dell Laptop'),
(48, 1, 7, 'Tai nghe Apple AirPods Pro chính hãng VN/A', 5900000, 'Headphones', 'airp.jpg', 'Headphones Sony'),
(49, 1, 7, 'Tai nghe Bluetooth Xiaomi chính hãng', 600000, 'Headphones', 'xiaom.jpg', 'Headphones Sony'),
(50, 3, 6, 'Sơ Mi Đen', 350000, 'shirts', 'pm1.JPG', 'suit boys shirts'),
(51, 3, 6, 'Sơ Mi Nâu', 270000, 'shirts', 'pm2.JPG', 'suit boys shirts'),
(52, 3, 6, 'Sơ Mi Xanh Lục', 300000, 'shirts', 'pm3.JPG', 'suit boys shirts'),
(53, 3, 6, 'Vest nam lịch lãm', 2200000, 'shirts', 'ms1.JPG', 'suit boys shirts'),
(54, 3, 6, 'Áo mùa đông có cổ nam', 290000, 'shirts', 'aococo.JPG', 'suit boys shirts'),
(55, 3, 6, 'Áo thun sọc', 159000, 'shirts', 'aosoc.JPG', 'suit boys shirts'),
(56, 3, 6, 'Set 3 áo thun Polo', 299000, 'shirts', 'polo11.JPG', 'suit boys shirts'),
(57, 3, 6, 'Áo khoác da bò', 260000, 'shirts', 'i3.JPG', 'suit boys shirts'),
(58, 3, 6, 'Sơ mi xanh đen', 350000, 'shirts', 'pm9.JPG', 'suit boys shirts'),
(59, 3, 6, 'Set 2 áo thun thể thao', 160000, 'shirts', 'aogym.png', 'suit boys shirts'),
(60, 3, 6, 'Áo khoác giả vest', 300000, 'shirts', 'pm11.JPG', 'suit boys shirts'),
(61, 3, 6, 'Vest & cravats xanh đen', 1215000, 'shirts', 'pm12.JPG', 'suit boys shirts'),
(62, 3, 6, 'Khoác UNIQLO chính hãng', 599000, 'shirts', 'images (1).JPG', 'suit boys shirts'),
(63, 3, 6, 'Quần Kaki Basic', 550000, 'Pants', 'pt1.JPG', 'boys Jeans Pant'),
(64, 3, 6, 'Quần Jeans Âu-Mỹ', 460000, 'pants', 'pt2.JPG', 'boys Jeans Pant'),
(65, 3, 6, 'Quần Âu Hàn Quốc ', 470000, 'pants', 'pt3.JPG', 'boys Jeans Pant'),
(66, 3, 6, 'Quần Jean Đơn Giản', 480000, 'pants', 'pt4.JPG', 'boys Jeans Pant'),
(67, 3, 6, 'Quần Tây đen', 360000, 'pants', 'pt5.JPG', 'boys Jeans Pant'),
(68, 3, 6, 'Quần Jeans Xanh Trằng', 550000, 'pants', 'pt6.JPG', 'boys Jeans Pant'),
(69, 3, 6, 'Quần Jean Xanh', 390000, 'pants', 'pt7.JPG', 'boys Jeans Pant'),
(70, 3, 6, 'Quân Âu Nam Hàn Quốc', 399000, 'pants', 'qa1.png', 'boys Jeans Pant'),
(71, 1, 2, 'Samsung Galaxy s7', 5000000, 'Samsung galaxy s7', 'product07.png', 'samsung mobile electronics'),
(72, 7, 2, 'Cặp vợt cầu lông', 350000, 'badminton ', 'vot.jpg', 'badminton'),
(73, 7, 2, 'Băng gối thể thao', 129000, 'bang goi chog chan thuong', 'bagoi.jfif', 'the thao'),
(74, 1, 1, 'Laptop HP I5', 12000400, 'HP i5 laptop', 'product01.png', 'HP i5 laptop electronics'),
(75, 1, 1, 'Laptop HP I7 8Gb Ram', 9550000, 'HP i7 laptop 8gb ram', 'product03.png', 'HP i7 laptop 8gb ram electronics'),
(76, 1, 5, 'Sony Note 6Gb Ram', 4500, 'sony note 6gb ram', 'product04.png', 'sony note 6gb ram mobile electronics'),
(77, 1, 4, 'MSV laptop 16gb ram NVIDEA Graphics', 5499, 'MSV laptop 16gb ram', 'product06.png', 'MSV laptop 16gb ram NVIDEA Graphics electronics'),
(78, 1, 5, 'Dell Laptop 8gb Ram Intel', 14579000, 'dell laptop 8gb ram intel integerated Graphics', 'product08.png', 'dell laptop 8gb ram intel integerated Graphics electronics'),
(79, 7, 2, 'Bóng Kamito', 699000, 'bóng da', 'kamito.jfif', 'bong kamito'),
(81, 4, 6, 'Đồng hồ định vị trẻ em', 899000, 'blue dress', 'dòho.jpg', 'kids blue dress'),
(82, 3, 3, 'Áo sơ mi trắng', 1000000, 'áo so mi bán giá sale', '1608627332_vinh.jpg', '??m'),
(83, 5, 0, 'Sofa tân cổ điển CD008', 8300000, 'sofa ??p', '1608698742_sofa.png', 'sofa'),
(84, 7, 6, 'Sách Lập trình & cuộc sống', 159000, '??c', '1608698890_laptinh.jpg', 'sach'),
(85, 1, 3, 'VSmart', 3800000, 'Dien thoai do viet nam san xuat', '1608784907_vmat.jpg', 'vsmarst'),
(86, 7, 6, 'Combo 6 sách về cuộc sống', 699000, 'hay lam', '1608785227_sach.jpg', 'sach');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address2` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'Niraj', 'dey', 'deyneeraj666555@gmail.com', 'niraj', '8972198852', '123456789', 'sdcjns,djc'),
(15, 'niroj', 'dey', 'niroj.dey@edureka.co', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'nguyen trung', 'vinh', 'linh.nttu18@gmail.com', 'linh04102000', '0786907653', '1021 Long An,Viet Nam', 'city'),
(27, 'Nguy?n V?n', 'Linh', 'linhgbale0410@gmail.com', 'linh04102000', '0786907653', 'Quận 7', 'Việt Nam');

--
-- Bẫy `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info_backup`
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
-- Đang đổ dữ liệu cho bảng `user_info_backup`
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
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'nguyen trung', 'vinh', 'linh.nttu18@gmail.com', 'linh04102000', '0786907653', '1021 Hu?nh T?n Phát,Phú Thu?n,Qu?n 7,TPHCM', 'city'),
(27, 'Nguy?n V?n', 'Linh', 'linhgbale0410@gmail.com', 'linh04102000', '0786907653', 'Qu?n 7', 'Vi?t Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `aboutteam`
--
ALTER TABLE `aboutteam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `aboutteam`
--
ALTER TABLE `aboutteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Các ràng buộc cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
