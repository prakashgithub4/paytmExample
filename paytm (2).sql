-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 02:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paytm`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `status`, `transaction_id`, `price`, `created_at`, `updated_at`) VALUES
(6, '5ed3586ada401', 'complete', '20200531111212800110168693201585539', 100, '2020-05-31 14:10:34', '2020-05-31 14:13:49'),
(8, '5ed35d3511339', 'complete', '20200531111212800110168474301581523', 150, '2020-05-31 14:31:01', '2020-05-31 14:31:32'),
(9, '5ed3ebad8388b', 'complete', '20200531111212800110168320401606688', 250, '2020-06-01 00:38:53', '2020-06-01 00:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `transection` varchar(255) DEFAULT NULL,
  `refundId` varchar(255) DEFAULT NULL,
  `refundAmount` float DEFAULT NULL,
  `refundstatus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `transection`, `refundId`, `refundAmount`, `refundstatus`, `created_at`, `updated_at`) VALUES
(2, '20200531111212800110168474301581523', '5ed3fd75a3277', 1, 'SUCCESS', '2020-06-01 01:54:47', '2020-06-01 01:54:47'),
(3, '20200531111212800110168474301581523', '5ed3fd910516c', 6, 'SUCCESS', '2020-06-01 01:55:16', '2020-06-01 01:55:16'),
(4, '20200531111212800110168474301581523', '5ed3ff24ce152', 6, 'SUCCESS', '2020-06-01 02:01:59', '2020-06-01 02:01:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
