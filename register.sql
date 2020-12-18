-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 07:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altron`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `mobile`, `password`, `cpassword`) VALUES
(4, 'abhijeet', 'kavita170981@gmail.com', '1234567890', '$2y$10$IZr/5Pm6wMo2rKt9hI7w1OT/lyuy9hw4aGgDGSvrmVjQNVtFGKf7S', '$2y$10$5GowGEXx38VyVmVLZB3rvezfLPYYphEs/4.k5LWo90EVG/l3WYWo2'),
(5, 'abhijeet', 'abhijeetnegi.ab@gmail.com', '1234567890', '$2y$10$.hC2dJzjVjUtG26lcv7s7ejhvu42xmKzOmgQUU6RoNidcPohnEEHW', '$2y$10$j00CaxniPyfx86gXqXuBGOHNQkcDzcKQGO5mIcGfHW5qS2S7gnS0K'),
(6, 'abhijeet', 'shubhamnegi999744@gmail.com', '1234567890', '$2y$10$UHct.JkMXyK7le.g/67ZAOVBZJ4jlJ4v0YirZlCyzeadQF77qov8a', '$2y$10$OQHT7/r5MPsyq3HHx/04K.4bMi6Pp0T893nqk5OgmeT4ytmPuiluO'),
(7, 'admin', 'abc@gmail.com', '1234567890', '$2y$10$wSa/TtIQ2p/GRfiULd3zJOQQIn1rROjK.Z33w/SyOta6HkyYPq7Fa', '$2y$10$whF/H/yOByahPbcy12x15u2LiKNVC6TvBRYjGNuVO23XPjNtnzXmu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
