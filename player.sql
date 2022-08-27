-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 11:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `player`
--

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `ID` int(50) NOT NULL,
  `pl_name` varchar(250) NOT NULL,
  `pl_email` varchar(250) NOT NULL,
  `pl_mobile` int(20) NOT NULL,
  `pl_totalmatch` int(30) NOT NULL,
  `pl_totalrun` int(50) NOT NULL,
  `pl_Highestrun` int(50) NOT NULL,
  `pl_runrate` double NOT NULL,
  `pl_strikerate` double NOT NULL,
  `pl_wicket` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`ID`, `pl_name`, `pl_email`, `pl_mobile`, `pl_totalmatch`, `pl_totalrun`, `pl_Highestrun`, `pl_runrate`, `pl_strikerate`, `pl_wicket`) VALUES
(2, 'Sachin', 'sachin@gmail.com', 2147483647, 120, 20000, 200, 6, 90, 50),
(3, 'virat', 'virat', 2147483647, 49, 16000, 190, 7, 110, 50);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Login_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` int(100) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Login_id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'Amitkumar Pal', 'amitkumar841994@gmail.com', 2147483647, 12345),
(2, '', '', 0, 0),
(3, '', '', 0, 0),
(4, '', '', 0, 0),
(5, '', '', 0, 0),
(6, '', '', 0, 0),
(7, '', '', 0, 0),
(8, '', '', 0, 0),
(9, '', '', 0, 0),
(10, '', '', 0, 0),
(11, '', '', 0, 0),
(12, '', '', 0, 0),
(13, '', '', 0, 0),
(14, '', '', 0, 0),
(15, '', '', 0, 0),
(16, '', '', 0, 0),
(17, '', '', 0, 0),
(18, '', '', 0, 0),
(19, '', '', 0, 0),
(20, '', '', 0, 0),
(21, '', '', 0, 0),
(22, '', '', 0, 0),
(23, '', '', 0, 0),
(24, '', '', 0, 0),
(25, '', '', 0, 0),
(26, '', '', 0, 0),
(27, '', '', 0, 0),
(28, '', '', 0, 0),
(29, '', '', 0, 0),
(30, '', '', 0, 0),
(31, '', '', 0, 0),
(32, '', '', 0, 0),
(33, '', '', 0, 0),
(34, '', '', 0, 0),
(35, '', '', 0, 0),
(36, '', '', 0, 0),
(37, '', '', 0, 0),
(38, '', '', 0, 0),
(39, '', '', 0, 0),
(40, '', '', 0, 0),
(41, '', '', 0, 0),
(42, '', '', 0, 0),
(43, '', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `Login_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
