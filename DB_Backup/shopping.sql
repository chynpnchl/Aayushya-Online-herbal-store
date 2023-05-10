-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 11:19 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2022-04-30 16:21:18', '21-04-2022 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Medicine', '', '2022-05-03 07:51:00', NULL),
(9, 'Health Care', '', '2022-05-03 07:51:36', NULL),
(10, 'Food ', 'food', '2022-05-03 08:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '1', 1, '2022-05-03 08:16:45', 'COD', 'in Process'),
(2, 2, '2', 2147483647, '2022-05-03 09:09:51', 'Debit / Credit card', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'In Proccess', '2022-05-03 08:17:42'),
(2, 2, 'Delivered', 'Delivered', '2022-05-03 09:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 8, 13, 'DIVYA RASNA CHURNA 50 GM', 'Patanjali', 19, 35, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">Divya Rasna Churna contains Rasna (Pluchea lacneolata) as the main ingredient. A natural cure for problems of the nervous system.</font></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></div><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', 'pd1.jpg', 'pd1.jpg', 'pd1.jpg', 50, 'In Stock', '2022-05-03 08:17:09', NULL),
(3, 8, 13, 'DIVYA SWASARI CORONIL KIT 117 GM', 'Patanjali', 400, 500, '<br style=\"user-select: auto;\">', 'pd2.jpg', 'pd2.jpg', 'pd2.jpg', 0, 'In Stock', '2022-05-03 08:49:11', NULL),
(4, 9, 14, 'PATANJALI HONEY 250 GM', 'Patanjali', 100, 150, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">Patanjali Pure honey is a sweet aliment produced by honey bees and derived from the nectar of flowers and Best pure honey available with our standard. Honey gets its sweetness from the monosaccharide fructose and glucose and has approximately the same relative sweetness as that of granulated sugar (97% of the sweetness of sucrose, a disaccharide). Patanjali pure Natural Honey is rich in fructose, minerals, vitamins and other nutritious elements. Honey is not only a natural sweetener but a multifunctional food that offers ample health benefits.</font></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></div><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', '1565002087400x300(2).jpg', '1565002087400x300(2).jpg', '1565002087400x300(2).jpg', 50, 'In Stock', '2022-05-03 08:50:23', NULL),
(5, 9, 14, 'PATANJALI AMLA JUICE 1 LTR', 'Patanjali', 150, 200, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"><span bookman=\"\" old=\"\" style\",=\"\" \"serif\";=\"\" color:=\"\" rgb(68,=\"\" 84,=\"\" 106);\"=\"\" style=\"box-sizing: border-box; user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">Patanjali Amla Juice is extracted from pure Indian Gooseberry having light brown coloured liquid with suspended particles. Amla juice contains Vitamin C that is twenty times more than in orange juice and It has sour and astringent taste with the characteristic odor&nbsp;of Amla. Sediment may occur because of fibre portion and heavy particles of fruit juice which is separate down to the bottom due to the high amount of natural active component of Amla as gallic acid and ellagic acid. It is quality tested and research-based product free from any added synthetic color, flavor&nbsp;and thickener.&nbsp;</font></span></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><span bookman=\"\" old=\"\" style\",=\"\" \"serif\";=\"\" color:=\"\" rgb(68,=\"\" 84,=\"\" 106);\"=\"\" style=\"box-sizing: border-box; user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></span></div><span bookman=\"\" old=\"\" style\",=\"\" \"serif\";=\"\" color:=\"\" rgb(68,=\"\" 84,=\"\" 106);\"=\"\" style=\"box-sizing: border-box; user-select: auto;\"></span><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', '1592655118400x300.jpg', '1592655118400x300.jpg', '1592655118400x300.jpg', 50, 'In Stock', '2022-05-03 08:51:06', NULL),
(6, 10, 16, 'PATANJALI PISTA 250 GM', 'Patanjali', 350, 400, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p class=\"description\" style=\"box-sizing: border-box; margin-bottom: 0px; color: rgba(14, 14, 14, 0.7); user-select: auto; border-bottom: 0px solid rgb(234, 234, 234); padding-bottom: 6px; text-align: justify;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">The pista or pistachio nut is a dry fruit of small size, lengthy with a hard, thin and clear brown shell. The edible part is green-yellowish and tender. Pistachios are more and more consumed salted or roasted, and with shell as a snack. The seed in raw is used as as ingredient for many dishes, in confectionery and cooked pork meats or ice creams. The pistachio is a very nutrious and energetic dry fruit.</font></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></div><div bis_skin_checked=\"1\" style=\"box-sizing: border-box; user-select: auto;\"></div><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', '1640250233400x300.jpg', '1640250233400x300.jpg', '1640250233400x300.jpg', 50, 'In Stock', '2022-05-03 08:52:03', NULL),
(7, 10, 16, 'PATANJALI OATS 200 GM', 'Patanjali', 35, 50, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">Patanjali Oats is the perfect way to start your day with a healthy breakfast. Rich in iron, carbohydrates, fibre and protein, the quick-cooking porridge controls cholesterol and reduces the risk of cardiac disease and high blood pressure. Made from 100% whole grains, oats are known to have strong anti-inflammatory and antioxidant properties. The minimally processed grains are convenient and fast to prepare—getting your breakfast ready in minutes. Serve hot with sugar and milk, juices, fresh and dried fruits, or combine with traditional Indian gravies such as dal and rasam.</font></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></div><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', '1594266796400x300.jpg', '1594266796400x300.jpg', '1594266796400x300.jpg', 50, 'In Stock', '2022-05-03 08:52:54', NULL),
(8, 10, 16, 'PATANJALI OATS 200 GM', 'Patanjali', 35, 50, '<div class=\"\" bis_skin_checked=\"1\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: PTSans; font-size: 14px; user-select: auto;\"><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\">Patanjali Oats is the perfect way to start your day with a healthy breakfast. Rich in iron, carbohydrates, fibre and protein, the quick-cooking porridge controls cholesterol and reduces the risk of cardiac disease and high blood pressure. Made from 100% whole grains, oats are known to have strong anti-inflammatory and antioxidant properties. The minimally processed grains are convenient and fast to prepare—getting your breakfast ready in minutes. Serve hot with sugar and milk, juices, fresh and dried fruits, or combine with traditional Indian gravies such as dal and rasam.</font></p><div bis_skin_checked=\"1\" style=\"user-select: auto;\"><font size=\"3\" face=\"georgia\" style=\"box-sizing: border-box; user-select: auto;\"><br style=\"user-select: auto;\"></font></div><p style=\"box-sizing: border-box; color: rgb(85, 85, 85); user-select: auto;\"></p></div>', '1594266796400x300.jpg', '1594266796400x300.jpg', '1594266796400x300.jpg', 50, 'In Stock', '2022-05-03 09:10:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 8, 'NA', '2022-05-03 07:59:59', NULL),
(14, 9, 'NA', '2022-05-03 08:00:05', NULL),
(16, 10, 'NA', '2022-05-03 08:47:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'demo@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-03 08:16:17', NULL, 1),
(25, 'd@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-03 09:08:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Demo', 'demo@gmail.com', 123456789, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-03 08:15:57', NULL),
(2, 'demo', 'd@gmail.com', 9876543121, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-03 09:08:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
