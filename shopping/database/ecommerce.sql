-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2024 at 03:11 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat`(IN `cid` INT)
SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
`admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Poojai Needs'),
(2, 'Body Care'),
(3, 'Healthy Products');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Handmade Products'),
(2, 'Pooja Products');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE IF NOT EXISTS `email_info` (
`email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
`id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE IF NOT EXISTS `orders_info` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '1234561278956358', '06/25', 1, 120, 325),
(2, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '5632 5478 9654 2356', '12/26', 1, 90, 458),
(3, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '1222366655557888', '12/23', 1, 50, 456),
(4, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '5666 4555 8555 9666', '12/26', 1, 120, 321),
(5, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '4555 6999 8888 7888', '12/23', 1, 90, 899),
(6, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '5666 6888 9999 5555', '12/25', 1, 120, 564),
(7, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '7777888899996666', '12/25', 1, 120, 123),
(8, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '3333666688889999', '12/26', 1, 50, 566),
(9, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '4444 5555 6666 3333', '12/25', 1, 90, 444),
(10, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '1233365557888899', '12/23', 1, 120, 111),
(11, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '5555 5555 5555 5555', '12/25', 1, 90, 366),
(12, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '4444 4444 4444 4444', '12/26', 1, 120, 555),
(13, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '5555 5555 5555 5555', '12/25', 1, 120, 566),
(14, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '777777777777', '12/23', 1, 120, 256),
(15, 28, 'kumutha t', 'km@gmail.com', 'erode', 'erode', 'tamilnadu', 638052, 'kumutha', '787978978979', '12/25', 1, 90, 222);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE IF NOT EXISTS `order_products` (
`order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(76, 1, 82, 1, 120),
(77, 2, 83, 1, 90),
(78, 3, 84, 1, 50),
(79, 4, 82, 1, 120),
(80, 5, 83, 1, 90),
(81, 6, 82, 1, 120),
(82, 7, 82, 1, 120),
(83, 8, 84, 1, 50),
(84, 9, 83, 1, 90),
(85, 10, 82, 1, 120),
(86, 11, 83, 1, 90),
(87, 12, 82, 1, 120),
(88, 13, 82, 1, 120),
(89, 14, 82, 1, 120),
(90, 15, 83, 1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(82, 1, 2, 'Hibiscus Shampoo', 120, 'Handmade Shampoo', '1710144684_shampoo.jpg', 'Herbal'),
(83, 1, 3, 'Groundnut oil', 90, 'Groundnut oil', '1710144929_ground-nut-OIL-copy-300x300.jpg', 'Organic'),
(84, 2, 1, 'Camphor', 50, 'Camphor', '1710145033_CAMPHOR-copy-300x300.jpg', 'poojai items');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'fd', 'd', 'ad@gmail.com', 'priya@123', '8344124767', 'er', 'erd'),
(28, 'kumutha', 't', 'km@gmail.com', 'kumuthat@123', '9123456789', 'erode', 'erode');

--
-- Triggers `user_info`
--
DELIMITER //
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info`
 FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE IF NOT EXISTS `user_info_backup` (
`user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'fd', 'd', 'ss@gmail.com', 'priya@123', '8344124767', 'er', 'erd'),
(27, 'fd', 'd', 'ad@gmail.com', 'priya@123', '8344124767', 'er', 'erd'),
(28, 'kumutha', 't', 'km@gmail.com', 'kumuthat@123', '9123456789', 'erode', 'erode');

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
 ADD PRIMARY KEY (`order_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
 ADD PRIMARY KEY (`order_pro_id`), ADD KEY `order_products` (`order_id`), ADD KEY `product_id` (`product_id`);

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
MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
