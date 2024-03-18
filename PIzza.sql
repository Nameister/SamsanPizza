-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2023 at 12:21 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(26, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(15, 'Pizza', 'pizza_category.png', 'Yes', 'Yes'),
(16, 'Burger', 'burger_category.png', 'Yes', 'Yes'),
(17, 'Beverage', 'bev_category.png', 'Yes', 'Yes'),
(18, 'Spaghetti', 'spa_category.png', 'No', 'Yes'),
(19, 'Dessert', 'dessert_category.png', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(6, 'Hawaiian', 'Pizza topped with pineapple, tomato sauce, cheese, and either ham or bacon.', '30.00', 'Food-Name-8438.png', 15, 'Yes', 'Yes'),
(7, 'Tomato', 'Pizza topped with chopped tomatoes, anchovies, onions, and oregano.', '20.00', 'Food-Name-5871.png', 15, 'Yes', 'Yes'),
(8, 'Double Cheese', 'Pizza topped with a blend of Mozzarella or Provolone.', '17.00', 'Food-Name-9633.png', 15, 'Yes', 'Yes'),
(9, 'Beef Burger', 'Patty of ground beef grilled and placed between two halves of a bun.', '10.00', 'Food-Name-3867.png', 16, 'Yes', 'Yes'),
(10, 'Vegan Burger', 'Burger with a mix of vegetables, grains, peas, legumes, and healthy fats.', '7.00', 'Food-Name-5380.png', 16, 'No', 'Yes'),
(11, 'Chicken Burger', 'Chicken breast, topped with mandatory melted cheese, onion, tomato and garlic mayo.', '6.00', 'Food-Name-8378.png', 16, 'Yes', 'Yes'),
(15, 'Cabonara', 'spaghetti with bacon and a creamy sauce and Parmesan cheese.', '10.00', 'Food-Name-8753.png', 18, 'No', 'Yes'),
(16, 'Pesto', 'Pasta with noodles tossed in a sauce made with crushed garlic, salt, basil leaves, Parmigiano.', '15.00', 'Food-Name-9792.png', 18, 'No', 'Yes'),
(17, 'Meat Sauce', 'Spaghetti served with a sauce made from tomatoes, minced beef, garlic, wine and herbs.', '9.00', 'Food-Name-750.png', 18, 'No', 'Yes'),
(18, 'Coke', 'Carbonated soft drink manufactured by the Coca-Cola Company.', '2.00', 'Food-Name-6168.png', 17, 'Yes', 'Yes'),
(19, 'Sprite', 'Clear lemon-lime sparkling beverage with no caffeine.', '2.00', 'Food-Name-8450.png', 17, 'No', 'Yes'),
(20, 'Fanta', 'Fizzy fruit flavored soda, made with fruit juice,delivers a bold and bubbly mouthfeel.', '2.00', 'Food-Name-2252.png', 17, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'Hawaiian', '30.00', 5, '150.00', '2023-11-22 12:06:59', 'Delivered', 'Pawat', '958881233', 'Pawatpai@gmail.com', ' ตึก B ห้อง2612 JPark residence'),
(5, 'Cabonara', '10.00', 100, '1000.00', '2023-11-22 12:09:26', 'Delivered', 'Ittiwat', '958884567', 'newittiwat@gmail.com', ' ตึก A ห้อง2612 JPark residence'),
(6, 'Coke', '2.00', 500, '1000.00', '2023-11-22 12:11:41', 'Ordered', 'Thanapat', '089987456', 'name12345@gmail.com', 'ตึก B ห้อง2612 JPark residence');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
