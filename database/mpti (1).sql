-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 03:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--
-- Error reading structure for table mpti.admin_info: #1932 - Table 'mpti.admin_info' doesn't exist in engine
-- Error reading data for table mpti.admin_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`admin_info`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--
-- Error reading structure for table mpti.brands: #1932 - Table 'mpti.brands' doesn't exist in engine
-- Error reading data for table mpti.brands: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`brands`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--
-- Error reading structure for table mpti.cart: #1932 - Table 'mpti.cart' doesn't exist in engine
-- Error reading data for table mpti.cart: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`cart`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- Error reading structure for table mpti.categories: #1932 - Table 'mpti.categories' doesn't exist in engine
-- Error reading data for table mpti.categories: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`categories`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--
-- Error reading structure for table mpti.email_info: #1932 - Table 'mpti.email_info' doesn't exist in engine
-- Error reading data for table mpti.email_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`email_info`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--
-- Error reading structure for table mpti.logs: #1932 - Table 'mpti.logs' doesn't exist in engine
-- Error reading data for table mpti.logs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`logs`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Error reading structure for table mpti.orders: #1932 - Table 'mpti.orders' doesn't exist in engine
-- Error reading data for table mpti.orders: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`orders`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--
-- Error reading structure for table mpti.orders_info: #1932 - Table 'mpti.orders_info' doesn't exist in engine
-- Error reading data for table mpti.orders_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`orders_info`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--
-- Error reading structure for table mpti.order_products: #1932 - Table 'mpti.order_products' doesn't exist in engine
-- Error reading data for table mpti.order_products: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`order_products`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Error reading structure for table mpti.products: #1932 - Table 'mpti.products' doesn't exist in engine
-- Error reading data for table mpti.products: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`products`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--
-- Error reading structure for table mpti.user_info: #1932 - Table 'mpti.user_info' doesn't exist in engine
-- Error reading data for table mpti.user_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`user_info`' at line 1

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
-- Error reading structure for table mpti.user_info_backup: #1932 - Table 'mpti.user_info_backup' doesn't exist in engine
-- Error reading data for table mpti.user_info_backup: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `mpti`.`user_info_backup`' at line 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
