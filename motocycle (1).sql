-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2026 at 07:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motocycle`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `identity_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle`
--

CREATE TABLE `motorcycle` (
  `id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `chassis_number` varchar(50) NOT NULL,
  `engine_speed` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `purchase_price` varchar(50) NOT NULL,
  `selling_price` varchar(50) NOT NULL,
  `starus` varchar(50) NOT NULL,
  `created_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `motorcycle_models`
--

CREATE TABLE `motorcycle_models` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `model_year` varchar(50) NOT NULL,
  `engine_capacity` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `describe` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purcharse`
--

CREATE TABLE `purcharse` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `purchars_number` varchar(50) DEFAULT NULL,
  `subtotal` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `total_amount` varchar(50) DEFAULT NULL,
  `paid_amount` varchar(50) DEFAULT NULL,
  `remaining_amount` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `create_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motorcycle`
--
ALTER TABLE `motorcycle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purcharse`
--
ALTER TABLE `purcharse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motorcycle`
--
ALTER TABLE `motorcycle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purcharse`
--
ALTER TABLE `purcharse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
