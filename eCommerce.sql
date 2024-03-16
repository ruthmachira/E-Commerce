-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2018 at 09:48 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eCommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `products_table_id` int(11) NOT NULL,
  `quantity_added` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`id`, `user_id`, `products_table_id`, `quantity_added`, `status`) VALUES
(1, 2, 16, 3, 1),
(2, 2, 18, 5, 1),
(3, 2, 17, 3, 1),
(4, 2, 16, 2, 1),
(5, 2, 19, 2, 1),
(6, 2, 17, 5, 1),
(7, 2, 19, 3, 1),
(8, 2, 1, 15, 1),
(9, 2, 4, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_table`
--

CREATE TABLE `chat_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_table`
--

INSERT INTO `chat_table` (`id`, `user_id`, `user_comment`, `comment_time`, `comment_status`) VALUES
(1, 1, 'good', '2017-08-30 06:49:42', 0),
(2, 1, 'good morning today guys?', '2017-08-30 06:54:57', 0),
(3, 2, 'good morning here in Kenya', '2017-08-30 06:55:27', 0),
(6, 1, 'mama', '2017-08-30 11:21:19', 0),
(7, 2, 'yes', '2017-08-31 06:06:21', 0),
(8, 1, 'i miss you', '2017-08-31 11:58:58', 0),
(9, 9, 'feels good to be back....bring in all your concerns', '2017-08-31 12:58:44', 0),
(10, 1, 'hello guys??am having trouble', '2017-09-06 12:46:16', 0),
(11, 2, 'what is it Ruth Machira?', '2017-09-06 12:46:48', 0),
(12, 1, 'good morning guys?', '2017-09-19 07:04:37', 0),
(13, 1, 'hello guys,you are sheepishly silent..', '2018-02-18 18:27:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_category`) VALUES
(1, 'Boots'),
(2, 'Care Products'),
(3, 'Perfume');

-- --------------------------------------------------------

--
-- Table structure for table `products_table`
--

CREATE TABLE `products_table` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `avatar` varchar(50) NOT NULL DEFAULT 'image/default.png',
  `product_name` text NOT NULL,
  `product_description` text NOT NULL,
  `product_price` varchar(11) NOT NULL DEFAULT '0.00' COMMENT 'Currency(Kshs)',
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_table`
--

INSERT INTO `products_table` (`id`, `product_id`, `avatar`, `product_name`, `product_description`, `product_price`, `product_quantity`) VALUES
(1, 2, 'image/make1.jpg', 'Make up', 'Luron Product,gives you perfect contour on your face', '300', 21),
(2, 2, 'image/make2.png', 'Luron', 'Hides all your blemishes,highlighter', '700', 12),
(3, 2, 'image/make3.png', 'Luron', 'Hides all your blemishes,highlighter', '2000', 9),
(4, 2, 'image/make4.png', 'Luron', 'Hides all your blemishes,highlighter', '2450', 5),
(5, 2, 'image/make5.png', 'Luron', 'Hides all your blemishes,highlighter', '350', 10),
(6, 1, 'image/boot1.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2500', 34),
(7, 1, 'image/boot2.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2500', 4),
(8, 1, 'image/boot3.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2450', 40),
(9, 1, 'image/boot4.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2400', 10),
(10, 1, 'image/boot5.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2400', 11),
(11, 1, 'image/boot6.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2300', 3),
(12, 1, 'image/boot7.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2300', 21),
(13, 1, 'image/boot8.png', 'Ladies styish boot', 'Warm and cozy,yet very comfortable,worn on any weather', '2300', 24),
(16, 3, 'image/perfume1.png', 'Gucci Perfume', 'Leaves you with a scent that is so sensual,attractive and have  long lasting freshness', '2300', 7),
(17, 3, 'image/perfume2.png', 'Gucci Perfume', 'Leaves you with a scent that is so sensual,attractive and have  long lasting freshness', '2200', 4),
(18, 3, 'image/perfume3.png', 'Gucci Perfume', 'Leaves you with a scent that is so sensual,attractive and have  long lasting freshness', '2340', 2),
(19, 3, 'image/perfume4.png', 'Gucci Perfume', 'Leaves you with a scent that is so sensual,attractive and have  long lasting freshness', '5000', 3),
(20, 2, 'image/default.png', 'Blush', 'Gives you a youthful glow', '5000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_bought_table`
--

CREATE TABLE `product_bought_table` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `quantity_bought` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_bought_table`
--

INSERT INTO `product_bought_table` (`id`, `cart_id`, `quantity_bought`, `status`) VALUES
(1, 6, 5, 0),
(2, 7, 3, 0),
(3, 8, 15, 0),
(4, 9, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `s_name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `chat_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `s_name`, `email`, `password`, `chat_status`) VALUES
(1, 'Ruth', 'Machira', 'machira.ruth6@gmail.com', 'ruth', 0),
(2, 'Alex', 'Wamjai', 'alexmachira@gmail.com', 'alexander', 0),
(3, 'Loice', 'Wambugu', 'loicewambugu@gmail.com', 'loice', 0),
(9, 'Lexxie', 'Kamau', 'kamaulex@gmail.com', 'kamaulexie', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_table`
--
ALTER TABLE `chat_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_bought_table`
--
ALTER TABLE `product_bought_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `chat_table`
--
ALTER TABLE `chat_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products_table`
--
ALTER TABLE `products_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `product_bought_table`
--
ALTER TABLE `product_bought_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
