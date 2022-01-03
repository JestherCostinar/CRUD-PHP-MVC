-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 08:08 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(2048) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price`, `create_date`) VALUES
(49, 'Test 1', 'lorem ipsum', 'images/4qBbe4Gc/SetB_Costinar_p1.jpg', '20000', '2021-12-15 11:31:11'),
(50, 'Test 3', 'Test 1 answer', 'images/dh0graHG/SetB_Costinar_p3.jpg', '100', '2021-12-15 11:40:10'),
(51, 'Test 1 [Updated]', 'test 2 answer', 'images/S4WiSx1A/SetB_Costinar_p2.jpg', '100', '2021-12-16 12:04:45'),
(58, 'Accura-Find [update]', 'ac [update]', 'images/VsaMCP8S/Accurafind.JPG', '123', '2021-12-28 11:06:33'),
(61, 'boy [updated]', 'boy', 'images/XTS539Uf/boy_profile.png', '1', '2022-01-03 07:51:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
