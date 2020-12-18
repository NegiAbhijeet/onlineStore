-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 07:44 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `categories_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` int(255) NOT NULL,
  `d_price` int(255) NOT NULL,
  `qty` int(122) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword1` varchar(255) NOT NULL,
  `keyword2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `mrp`, `d_price`, `qty`, `img`, `description`, `keyword1`, `keyword2`) VALUES
(1, 0, 'Jacket', 10000, 0, 50, 'images/products/product-1.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'sweater', 'women'),
(2, 0, 'Sweater', 2345, 0, 50, 'images/products/women-3.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'sweater', 'women'),
(3, 0, 'Sweater', 5000, 0, 50, 'images/products/product-6.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'sweater', 'women'),
(4, 0, 'Handbag', 10000, 0, 50, 'images/products/women-4.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'women'),
(5, 0, 'Cap', 4599, 0, 50, 'images/products/product-5.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'women'),
(6, 0, 'Bag', 5000, 0, 50, 'images/products/product-7.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'women'),
(7, 0, 'Jacket', 7999, 0, 50, 'images/products/product-3.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'women'),
(8, 0, 'Jacket', 4999, 0, 50, 'images/insta-3.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'women'),
(9, 0, 'Jacket', 5999, 0, 50, 'images/product-single/thumb-2.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'women'),
(11, 0, 'Shoes', 4599, 0, 50, 'images/products/man-2.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'shoes', 'men'),
(13, 0, 'Jacket', 4999, 0, 50, 'images/products/man-3.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'men'),
(14, 0, 'Jacket', 4799, 0, 50, 'images/products/man-4.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'men'),
(15, 0, 'Jacket', 9999, 0, 50, 'images/products/product-3.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'jacket', 'men'),
(16, 0, 'Muffler', 789, 0, 50, 'images/products/product-4.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'men'),
(17, 0, 'Cap', 5000, 0, 50, 'images/products/product-5.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'men'),
(18, 0, 'Bag', 4000, 0, 50, 'images/products/product-7.jpg', 'Generate Lorem Ipsum placeholder text for use in your graphic, print and web layouts, and discover plugins for your favorite writing, design and blogging tools.', 'accessories', 'men');

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
