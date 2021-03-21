-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 10:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `email` varchar(2556) NOT NULL,
  `pname` varchar(2556) NOT NULL,
  `rname` varchar(2556) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `email`, `pname`, `rname`, `qty`, `price`, `total`) VALUES
(1, 5, 'amit@gmail.com', 'Buff MoMo', 'Eddies', 1, 150, 150),
(2, 6, 'amit@gmail.com', 'Veg MoMo', 'Eddies', 1, 100, 100),
(30, 15, 'jayana@gamil.com', 'Samosa', 'Bhojan Griha', 1, 15, 15),
(31, 16, 'jayana@gamil.com', 'Thakali Set', 'Bhojan Griha', 1, 300, 300);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test@gmail.com'),
(2, 'Amit Thakur', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'amit@gmail.com'),
(3, 'Pradip', '7b4e02e3af3016406c03d2f37036392b1346f66f', '2learn2fun@gmail.com'),
(4, 'suyal', '8b38153f0dd8d9253f15826002da17831b9dd83f', 'jayana@gamil.com'),
(5, 'Bj Tamang', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'bjtamang1234@gmail.com'),
(6, 'Anit Thakur', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'anit@gmail.com'),
(7, 'hari', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'hari@gmail.com'),
(8, 'user', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `pid` int(100) NOT NULL,
  `rid` int(100) NOT NULL,
  `name` varchar(2556) NOT NULL,
  `image` varchar(2556) NOT NULL,
  `price` int(200) NOT NULL,
  `rname` varchar(2556) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`pid`, `rid`, `name`, `image`, `price`, `rname`) VALUES
(1, 11, 'Buff Chowmin', 'images/items/chowmin.jpg', 200, 'Baneshwor Restaurant'),
(2, 11, 'Veg Chowmin', 'images/items/chowmin2.jpg', 120, 'Baneshwor Restaurant'),
(3, 11, 'Buff MoMo', 'images/items/momo.jpeg', 200, 'Baneshwor Restaurant'),
(5, 12, 'Buff MoMo', 'images/items/momo.jpeg', 150, 'Eddies'),
(6, 12, 'Veg MoMo', 'images/items/momo1.png', 100, 'Eddies'),
(7, 12, 'Buff Chowmin', 'images/items/chowmin2.jpg', 150, 'Eddies'),
(8, 13, 'Buff MoMo', 'images/items/momo.jpeg', 150, 'Atithi Satkar'),
(9, 13, 'Veg MoMo', 'images/items/momo1.png', 120, 'Atithi Satkar'),
(10, 13, 'Buff Chowmin', 'images/items/chowmin3.jpg', 100, 'Atithi Satkar'),
(11, 13, 'Veg Chowmin', 'images/items/chowmin2.jpg', 70, 'Atithi Satkar'),
(12, 12, 'Veg Chowmin', 'images/items/chowmin.jpg', 70, 'Eddies'),
(13, 11, 'Pizza', 'images/items/pizza.jpeg', 500, 'Baneshwor Restaurant'),
(14, 1, 'Fried Rice', 'images/items/friedrice2.jpg', 100, 'Bhojan Griha'),
(15, 1, 'Samosa', 'images/items/samosa.jpg', 15, 'Bhojan Griha'),
(16, 1, 'Thakali Set', 'images/items/thakaliset.jpeg', 300, 'Bhojan Griha'),
(17, 2, 'Thongba', 'images/items/tongba.jpg', 350, 'Le Sherpa'),
(18, 2, 'Thukpa', 'images/items/thukpa.jpg', 200, 'Le Sherpa'),
(19, 2, 'Thenduk', 'images/items/thenduk.jpg', 300, 'Le Sherpa'),
(20, 3, 'Full Khana Set', 'images/items/khanaset.webp', 200, 'Bhojdeals'),
(21, 3, 'Chicken Chilly', 'images/items/chickentandoori.jpg', 250, 'Bhojdeals'),
(22, 3, 'Fish Chilly', 'images/items/fishchilli.jpg', 450, 'Bhojdeals'),
(23, 3, 'Pork Belly', 'images/items/porkbelly.jpg', 450, 'Bhojdeals'),
(24, 4, 'Fish Fry per plate', 'images/items/fishfry1.jpg', 120, 'The Chimney Resturant'),
(26, 4, 'Chicken Tandoori', 'images/items/chickentandoori.jpg', 500, 'The Chimney Resturant'),
(27, 5, 'Buff MoMo', 'images/items/momo.jpeg', 200, 'The Bakery and Cafe'),
(31, 5, 'Pizza', 'images/items/pizza1.jpeg', 250, 'The Bakery and Cafe'),
(32, 6, 'Burger', 'images/items/7.jpg', 200, 'Dragon Cafe'),
(33, 22, 'Buff Momo', 'images/items/momo3.jpg', 160, 'Jamal Momo'),
(34, 22, 'Burger', 'images/items/burger.jpg', 250, 'Jamal Cafe'),
(35, 23, 'Burger', 'images/items/burger1.jpg', 250, 'Balkumari Cafe'),
(36, 24, 'mo:mo', 'images/items/momo.jpeg', 150, 'peepalbot');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `email` varchar(2556) NOT NULL,
  `pname` varchar(2556) NOT NULL,
  `rname` varchar(2556) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(100) NOT NULL,
  `email` varchar(2556) NOT NULL,
  `pname` varchar(2565) NOT NULL,
  `rname` varchar(2556) NOT NULL,
  `qty` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `total` int(250) NOT NULL,
  `lat` double NOT NULL,
  `longt` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `email`, `pname`, `rname`, `qty`, `price`, `total`, `lat`, `longt`, `date_purchase`) VALUES
(19, 'test@gmail.com', 'Thentuk', 'Le Sherpa', 1, 300, 300, 27.671110199999998, 85.344622, '2020-01-13 11:32:59'),
(20, '2learn2fun@gmail.com', 'Buff MoMo', 'Eddies', 1, 150, 150, 27.6714657, 85.3389657, '2020-01-16 09:39:22'),
(21, 'bjtamang1234@gmail.com', 'Chicken Chilly', 'Bhojdeals', 1, 250, 250, 27.6717673, 85.3380311, '2021-03-13 09:29:22'),
(22, 'bjtamang1234@gmail.com', 'Fish Chilly', 'Bhojdeals', 1, 450, 450, 27.6717673, 85.3380311, '2021-03-13 09:29:22'),
(23, 'test@gmail.com', 'Veg Chowmin', 'Baneshwor Restaurant', 1, 120, 120, 27.6922368, 85.32459519999999, '2021-03-13 10:31:05'),
(24, 'test@gmail.com', 'Thongba', 'Le Sherpa', 1, 350, 350, 27.6922368, 85.32459519999999, '2021-03-13 10:31:05'),
(25, 'test@gmail.com', 'Thukpa', 'Le Sherpa', 1, 200, 200, 27.6922368, 85.32459519999999, '2021-03-13 10:31:05'),
(26, 'test@gmail.com', 'Thenduk', 'Le Sherpa', 1, 300, 300, 27.6922368, 85.32459519999999, '2021-03-13 10:31:05'),
(27, 'test@gmail.com', 'Buff MoMo', 'Eddies', 1, 150, 150, 27.6922368, 85.32459519999999, '2021-03-13 10:41:54'),
(28, 'test@gmail.com', 'Veg MoMo', 'Eddies', 1, 100, 100, 27.6922368, 85.32459519999999, '2021-03-13 10:41:54'),
(29, 'test@gmail.com', 'Buff Chowmin', 'Eddies', 1, 150, 150, 27.6922368, 85.32459519999999, '2021-03-13 10:41:54'),
(30, 'anit@gmail.com', 'Burger', 'Dragon Cafe', 1, 200, 200, 27.6922368, 85.32459519999999, '2021-03-13 11:00:56'),
(31, 'test@gmail.com', 'Buff Momo', 'Jamal Momo', 1, 160, 160, 27.671546199999998, 85.33895600000001, '2021-03-13 11:07:35'),
(32, 'test@gmail.com', 'Burger', 'Balkumari Cafe', 1, 250, 250, 27.6922368, 85.32459519999999, '2021-03-13 11:14:24'),
(33, 'hari@gmail.com', 'Veg MoMo', 'Eddies', 1, 100, 100, 27.6922368, 85.32459519999999, '2021-03-13 11:36:16'),
(34, 'hari@gmail.com', 'Buff MoMo', 'Eddies', 3, 150, 450, 27.6922368, 85.32459519999999, '2021-03-13 11:37:45'),
(35, 'test@gmail.com', 'mo:mo', 'peepalbot', 1, 150, 150, 27.6922368, 85.32459519999999, '2021-03-13 13:05:42'),
(36, 'user@gmail.com', 'Buff MoMo', 'Atithi Satkar', 1, 150, 150, 27.6922368, 85.32459519999999, '2021-03-13 13:08:29'),
(37, 'user@gmail.com', 'Veg MoMo', 'Atithi Satkar', 1, 120, 120, 27.6922368, 85.32459519999999, '2021-03-13 13:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(50) NOT NULL,
  `rname` varchar(2556) NOT NULL,
  `address` varchar(2556) NOT NULL,
  `image` varchar(2556) NOT NULL,
  `email` varchar(2556) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(50) NOT NULL,
  `rname` varchar(2556) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `image` varchar(3556) NOT NULL,
  `email` varchar(2556) NOT NULL,
  `password` varchar(2556) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `rname`, `address`, `image`, `email`, `password`) VALUES
(1, 'Bhojan Griha', 'Dillibazar', 'uploads/4.jpg', 'bhojan@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(2, 'Le Sherpa', 'Maharajgunj', 'uploads/5.jpg', 'sherpa@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(3, 'Bhojdeals', 'kathmandu', 'uploads/6.jpg', 'bhojdeals@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(4, 'Chimney Resturant', 'Durbar Marg', 'uploads/7.jpg', 'chimney@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(5, 'Bakery and Cafe', 'Teendhara Marg', 'uploads/8.jpg', 'bakery@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(6, 'Dragon Cafe', 'thasikhel', 'uploads/1.jpg', 'Dragon@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(11, 'Baneshwor Khaja', 'Baneshwor', 'uploads/5.jpg', 'chowmin@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(12, 'Eddies', 'Balkumari', 'uploads/2.jpg', 'eddies@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(13, 'Atithi Satkar', 'Amrit Marg', 'uploads/3.jpg', 'atithi@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(23, 'Balkumari Cafe', 'Balkumari', 'uploads/3.jpg', 'balkumari@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(24, 'peepalbot', 'peepalbot', 'uploads/8.jpg', 'peepalbot@gmail.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(50) NOT NULL,
  `email` varchar(3556) NOT NULL,
  `rid` int(50) NOT NULL,
  `msg` varchar(3556) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `email`, `rid`, `msg`) VALUES
(1, 'test@gmail.com', 11, 'nice restaurant'),
(2, 'test@gmail.com', 11, 'tasty'),
(3, 'test@gmail.com', 11, 'very good\r\n'),
(4, 'test@gmail.com', 11, 'cool items'),
(5, 'test@gmail.com', 12, 'fried rice is very tasty here!!!!'),
(6, '2learn2fun@gmail.com', 2, 'nice restaurant'),
(7, 'test@gmail.com', 12, 'nice ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
