-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 03:06 PM
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
-- Database: `order_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`) VALUES
(2, 1, '2025-07-30 11:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 2, 1, 2, 18999000.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`) VALUES
(1, 'Samsung Galaxy S24 Ultra', 18999000.00, 23),
(2, 'iPhone 15 Pro Max', 23999000.00, 30),
(3, 'Xiaomi 14 Ultra', 15999000.00, 40),
(4, 'POCO F6 Pro', 7999000.00, 60),
(5, 'Keyboard Mechanical', 450000.00, 10),
(6, 'Samsung Galaxy S24 Ultra', 18999000.00, 25),
(7, 'iPhone 15 Pro Max', 23999000.00, 30),
(8, 'Xiaomi 14 Ultra', 15999000.00, 40),
(9, 'POCO F6 Pro', 7999000.00, 60),
(10, 'OnePlus 12', 12999000.00, 50),
(11, 'Google Pixel 8 Pro', 14999000.00, 35),
(12, 'Asus ROG Phone 7', 13999000.00, 20),
(13, 'Motorola Edge 50 Pro', 9999000.00, 18),
(14, 'Realme GT 6', 8999000.00, 33),
(15, 'Vivo X100 Pro', 16999000.00, 28),
(16, 'Huawei P60 Pro', 13999000.00, 22),
(17, 'Nokia X30 5G', 7499000.00, 45),
(18, 'Sony Xperia 1 V', 17999000.00, 15),
(19, 'iPhone 14', 14999000.00, 50),
(20, 'Samsung Galaxy A55', 6999000.00, 80),
(21, 'Infinix Zero 30', 4599000.00, 70),
(22, 'Tecno Camon 30 Pro', 3899000.00, 55),
(23, 'Oppo Reno11 Pro', 7999000.00, 48),
(24, 'iQOO 12', 12999000.00, 40),
(25, 'Honor Magic6 Pro', 13999000.00, 30),
(26, 'Logitech MX Master 3S Mouse', 1599000.00, 40),
(27, 'Razer DeathAdder V2', 999000.00, 60),
(28, 'Apple Magic Mouse 2', 1499000.00, 25),
(29, 'Microsoft Surface Arc Mouse', 1399000.00, 35),
(30, 'Corsair K95 RGB Platinum Keyboard', 2499000.00, 20),
(31, 'Logitech G Pro X Keyboard', 1999000.00, 50),
(32, 'Razer BlackWidow V4 Pro', 2999000.00, 28),
(33, 'HyperX Alloy FPS Pro', 1099000.00, 33),
(34, 'Asus ROG Strix Scope RX', 1799000.00, 30),
(35, 'Cooler Master CK552', 899000.00, 60),
(36, 'WD Black SN850X 1TB SSD', 2399000.00, 40),
(37, 'Samsung 980 Pro 1TB SSD', 2099000.00, 45),
(38, 'Crucial P5 Plus 1TB SSD', 1899000.00, 50),
(39, 'Kingston KC3000 1TB SSD', 1999000.00, 35),
(40, 'Seagate FireCuda 530 1TB SSD', 2499000.00, 25),
(41, 'SanDisk Extreme Portable SSD 1TB', 1799000.00, 55),
(42, 'Adata XPG GAMMIX S70 Blade 1TB', 1599000.00, 48),
(43, 'Asus TUF Gaming Capture Box', 2799000.00, 20),
(44, 'Elgato Stream Deck MK.2', 2499000.00, 30),
(45, 'Logitech Brio 4K Webcam', 2199000.00, 40),
(46, 'Razer Kiyo Pro Webcam', 1999000.00, 33),
(47, 'Blue Yeti Nano USB Mic', 1599000.00, 50),
(48, 'HyperX QuadCast Mic', 2099000.00, 22),
(49, 'Logitech G733 Wireless Headset', 2299000.00, 35),
(50, 'Razer BlackShark V2 Pro', 2499000.00, 28),
(51, 'SteelSeries Arctis 7+', 2399000.00, 45),
(52, 'Corsair Virtuoso RGB XT', 2699000.00, 38),
(53, 'Sony INZONE H9', 2999000.00, 30),
(54, 'Asus ROG Delta S Wireless', 2599000.00, 32),
(55, 'JBL Quantum 800', 2199000.00, 41),
(56, 'Samsung Galaxy Z Fold5', 29999000.00, 12),
(57, 'Samsung Galaxy Z Flip5', 17999000.00, 18),
(58, 'iPhone 13 Mini', 11999000.00, 27),
(59, 'Xiaomi Redmi Note 13 Pro+', 5999000.00, 60),
(60, 'Vivo V30 Pro', 7499000.00, 40),
(61, 'Realme Narzo 70 Pro', 5499000.00, 55),
(62, 'Infinix Note 40 Pro+', 4299000.00, 70),
(63, 'Oppo Find X7 Ultra', 16999000.00, 20),
(64, 'Honor 200 Pro', 9999000.00, 25),
(65, 'Asus Zenfone 11 Ultra', 12999000.00, 18),
(66, 'MSI Optix MAG274QRF Monitor', 3999000.00, 25),
(67, 'LG UltraGear 27GN950-B', 7499000.00, 10),
(68, 'Samsung Odyssey G7 32\"', 7999000.00, 12),
(69, 'Asus TUF VG28UQL1A Monitor', 8999000.00, 9),
(70, 'BenQ EX3501R Ultrawide', 8499000.00, 8),
(71, 'Dell Alienware AW3423DWF', 14999000.00, 6),
(72, 'Cooler Master MM731 Mouse', 899000.00, 50),
(73, 'Redragon M612 Predator', 499000.00, 60),
(74, 'Logitech K380 Bluetooth Keyboard', 599000.00, 75),
(75, 'Keychron K6 Wireless Keyboard', 1499000.00, 40),
(76, 'Glorious Model O Mouse', 1099000.00, 55),
(77, 'Ducky One 2 Mini Keyboard', 1699000.00, 30),
(78, 'NZXT Lift Mouse', 999000.00, 45),
(79, 'SteelSeries Apex Pro TKL', 2499000.00, 20),
(80, 'Razer Huntsman Mini', 1999000.00, 38),
(81, 'Toshiba Canvio Basics 2TB HDD', 999000.00, 80),
(82, 'Seagate Expansion 2TB HDD', 1049000.00, 70),
(83, 'WD My Passport 2TB HDD', 1099000.00, 60),
(84, 'Orico M.2 NVMe Enclosure', 499000.00, 45),
(85, 'Ugreen USB-C Hub 6-in-1', 699000.00, 66);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','customer') DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'adminpertama', '$2y$10$nXwYynslJA7XTkh6m6ZR9ufQXTY4K4HT732mICzweBV10M2fQmhMi', 'admin'),
(2, 'davidgadgetin', '$2y$10$VNEKEK6WfCIlGwcZ95qVCuuNJEfMy3c/05yCeLkl1WkBgKQRvPLJa', 'customer'),
(3, 'jagatreview', '$2y$10$RW5HRxzV3xhnR2XogrOAo.aXTMPP958cU3wtwZlLyiIgq5Zn6wn/a', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
