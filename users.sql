-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2025 at 03:25 PM
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
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `address_line_2` varchar(100) DEFAULT NULL,
  `town` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `eircode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_line_1`, `address_line_2`, `town`, `county`, `eircode`) VALUES
(1, '99 New Main Street', 'Apartment 2A', 'Wexford', 'Kildare', 'T12 XYZ'),
(2, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(3, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(5, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(6, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(7, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(8, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(9, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(10, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(11, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(12, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(13, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(15, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(16, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(17, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(18, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(19, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(20, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(21, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(22, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(23, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(24, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(25, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(26, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(27, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(28, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(29, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(30, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(31, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(32, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(33, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(34, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(35, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(36, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(37, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(38, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(39, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(40, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(41, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC'),
(42, '12 Main Street', 'Apartment 2A', 'Maynooth', 'Kildare', 'W23 ABC');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `first_name`, `surname`, `mobile`, `email`) VALUES
(4, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(5, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(6, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(7, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(8, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(9, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(11, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(13, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(14, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(15, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(16, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(17, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(18, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(19, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(20, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(21, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(22, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(23, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(24, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(25, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com'),
(26, 'Ms', 'Anna', 'Murphy', '0871234567', 'anna.murphy@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `address_type` enum('home','shipping') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`user_id`, `address_id`, `address_type`) VALUES
(5, 5, 'home'),
(6, 6, 'home'),
(6, 6, 'home'),
(7, 7, 'home'),
(7, 7, 'home'),
(7, 7, 'home'),
(7, 7, 'home'),
(9, 9, 'home'),
(8, 8, 'home'),
(8, 8, 'home');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD KEY `user_addresses_ibfk_1` (`user_id`),
  ADD KEY `user_addresses_ibfk_2` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_addresses_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
