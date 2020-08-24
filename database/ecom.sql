-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 11:56 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

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
(1, 'Kshitij '),
(2, 'Sneh '),
(3, 'Saundarya');

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
(6, 2, '::1', 3, 1),
(8, 2, '::1', 4, 1),
(12, 3, '::1', 3, 1),
(13, 10, '::1', 3, 1),
(14, 5, '::1', 3, 1),
(18, 1, '::1', 3, 1),
(19, 2, '::1', 3, 1);

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
(1, 'Rings '),
(2, 'Earrings '),
(3, 'Pendants '),
(4, 'Bracelets');

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
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

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
(1, 1, 1, 'Kshitij - German Silver and Diamond Ring ', 45000, 'a', 'ring1.jpg', 'ring kshitij diamond '),
(2, 1, 2, 'Sneh - 24K Platinum and Diamond Ring ', 120000, 'ip', 'ring2.webp', 'sneh ring platinum'),
(3, 1, 3, 'Saundarya - 14K Gold, Silver and Diamond Ring', 75000, 'brand', 'ring3.webp', 'saundarya '),
(4, 2, 1, 'Kshitij - Diamond Earrings', 100000, 'red dress for girls', 'Earing1.webp', 'red dress '),
(5, 2, 2, 'Sneh - Diamond Earrings ', 120000, 'Blue dress', 'Earing2.webp', 'sneh'),
(6, 2, 3, 'Saundarya - Diamond Earrings ', 150000, 'ladies casual summer two colors pleted', 'Earing3.webp', 'girl diamond earrings '),
(7, 3, 3, 'Saundarya - Diamond Pendant ', 30000, 'ad', 'pendant3.jpg', 'coat blazer gents'),
(10, 3, 2, 'Sneh - Diamond Pendant ', 100000, 'gents formal look', 'pendant4.jpg', 'diamond pendant'),
(11, 4, 2, 'Sneh - Diamond Bracelet', 90000, 'sadsf', 'b1.jpg', 'formal kids wear dress'),
(12, 4, 3, 'Saundarya - Diamond Bracelet ', 70000, 'g', 'b3.jpg', 'kids dress'),
(15, 4, 1, 'Kshitij - Diamond Bracelet ', 130000, 'yello t shirt with pant', 'b2.jpg', 'kids yellow t shirt'),
(101, 1, 1, 'Kshitij - 22K Platinum and Diamond Ring ', 80000, 'Apple iPhone ', 'ring4.jpg', 'ring'),
(102, 1, 2, 'Sneh - 18k Gold, Platinum and Diamond Ring ', 100000, 'book shelf', 'ring5.jpg', 'gold platinum diamond '),
(103, 2, 2, 'Sneh - Diamond Earrings 2 ', 120000, 'girls dress', 'earing4.jpg', 'girl dress'),
(104, 3, 1, 'Kshitij - Diamond Pendant 2', 60000, 'jg', 'p3.jpg', 'pendant '),
(105, 4, 3, 'Saundarya - Diamond Bracelet 2', 75000, 'as', 'bracelet4.jpg', 'bracelet diamond '),
(106, 3, 1, 'Kshitij - Diamond Pendant ', 60000, '2012-Winter-Sweater-for-Men-for-better-outlook', 'p1.jpg', 'black sweter cloth winter');

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
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Meet ', 'Kotak', 'meet.kotak@somaiya.edu', 'bfd86b12ffd1671ce80cb9e54610a9a4', '9082646432', 'D-1804, Panchsheel Heights, Mahavir Nagar ', 'Kandivali W'),
(4, 'yagnik', 'madaliya', 'yagnik.m@somaiya.edu', '03d5bc1fb593ba2269fec2587d5ea8d1', '7666932747', 'dahisar', 'mumbai');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
