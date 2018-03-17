-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 10:15 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `birc form`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pass`, `admin_email`) VALUES
(1, '123456', 'favour@gmail.com'),
(2, '54321', 'favour@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `maxwell`
--

CREATE TABLE `maxwell` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `other_names` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `state` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `other_qualification` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maxwell`
--

INSERT INTO `maxwell` (`id`, `name`, `surname`, `other_names`, `address`, `number`, `email`, `gender`, `status`, `date`, `state`, `town`, `qualification`, `other_qualification`, `skills`, `company`, `duration`, `job`, `file`) VALUES
(2, 'Abia', 'David', 'Tambari', 'New Road', 2147483647, 'abiadavidt@gmail.com', 'male', 'single', '1998-08-17', 'Rivers', 'Kaani', 'WAEC', '', 'IT', 'Cedars Productivity Hub', '2yrs', 'Programmer', 'Cedars Digital Academy 20161209_212642.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register_user`
--

CREATE TABLE `register_user` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_country` text NOT NULL,
  `user_no` int(100) NOT NULL,
  `user_address` text NOT NULL,
  `user_gender` text NOT NULL,
  `b_day` date NOT NULL,
  `user_image` text NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_user`
--

INSERT INTO `register_user` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_country`, `user_no`, `user_address`, `user_gender`, `b_day`, `user_image`, `register_date`) VALUES
(1, 'Favour', '12345676789', 'd@gmail.com', 'Nigeria', 2147483647, 'this is a test.', 'Male', '2017-11-15', 'stock-photo-above-shot-of-a-woman-with-a-bowl-of-berries-a-bottle-of-almond-milk-and-two-bananas-wearing-a-311459951.jpg', '2017-11-15 23:39:05'),
(2, 'Favour', '12345677898', 'we@yahoo.com', 'Nigeria', 2147483647, 'this is it', 'Male', '2017-11-15', '1.jpg', '2017-11-15 23:40:57'),
(3, 'Favour', '123456789', 'kcee@gmail.com', 'Nigeria', 2147483647, 'test', 'Male', '2017-11-15', '1.jpg', '2017-11-15 23:43:26'),
(4, 'Favour', '12345678', 'Favour@yahoo.com', 'Nigeria', 2147483647, 'test it', 'Male', '2017-11-16', '5.jpg', '2017-11-17 00:58:43'),
(5, 'uche', '09876543', 'uche@gmail.com', 'Nigeria', 678999, 'dtg', 'Male', '2017-11-16', '1.jpg', '2017-11-17 01:00:25'),
(6, 'uche', '09876543', 'ty@gmail.com', 'Ghana', 806489458, 'tyuio', 'Male', '2017-11-16', '1.jpg', '2017-11-17 01:03:12'),
(7, 'Favour', '12345678', 'favourdes@yahoo.com', 'Nigeria', 2147483647, 'test', 'Male', '2017-11-17', '1.jpg', '2017-11-18 01:01:08'),
(8, 'Alexander', 'Friday555', 'Alexander@gmail.com', 'Ghana', 2147483647, 'Ghana Woman', 'Male', '2017-11-02', '6.jpg', '2017-11-18 21:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `id` int(11) NOT NULL,
  `fname` varchar(700) NOT NULL,
  `lname` varchar(700) NOT NULL,
  `oth` varchar(600) NOT NULL,
  `dob` date NOT NULL,
  `addr` text NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(2000) NOT NULL,
  `pass` varchar(2000) NOT NULL,
  `cpass` varchar(2000) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`id`, `fname`, `lname`, `oth`, `dob`, `addr`, `gender`, `email`, `pass`, `cpass`, `register_date`) VALUES
(27, 'okoro chukwuebuka', 'ebus united', 'ebus', '2017-11-08', 'hospital road', '', 'favoursamuel2017@yahoo.com', '122222', '121233333', '2017-11-17 23:35:41'),
(28, 'okoro chukwuebuka', 'favour', 'ebus', '2017-11-08', 'hospital road', '', 'uche@gmail.com', '23456', '23456', '2017-11-17 23:35:41'),
(31, 'okoro chukwuebuka', 'favour', 'ebus', '0000-00-00', 'hospital road', 'female', 'favoursamuel2017@yahoo.com', 'asdaf', 'asfds', '2017-11-17 23:35:41'),
(32, 'okoro chukwuebuka', 'favour', 'ebus', '2017-11-17', 'orosikiri', 'Male', 'Favoursamuel2017@yahoo.com', 'qwerty', 'qwerty', '2017-11-17 23:35:41'),
(33, 'okoro chukwuebuka', 'favour', 'ebus', '2017-11-17', 'orosikiri', 'Male', 'Favoursamuel2017@yahoo.com', 'qwerty', 'qwerty', '2017-11-17 23:35:41'),
(187, 'okoro chukwuebuka', '', '', '0000-00-00', '', '', '', '', '', '2017-11-17 23:35:41'),
(227, 'Innocent', 'favour', 'afdasdf', '2017-11-16', 'asdf', 'Male', 'nathanhezekiah@gmail.com', 'ebus2992999', '122222', '2017-11-17 23:35:41'),
(228, 'favour', 'desweam', 'samuel', '2017-11-17', 'orosikiri', 'Male', 'favourdesweam@gmail.com', '12345678', '12345678', '2017-11-18 00:06:25'),
(229, 'favour', 'desweam', 'samuel', '2017-11-17', 'orosikiri', 'Male', 'favoursamuel2017@yahoo.com', '12345678', '12345678', '2017-11-18 00:07:06'),
(230, 'favour', 'desweam', 'samuel', '2017-11-17', 'orosikiri', 'Male', 'favoursamuel2017@yahoo.com', '12345678', '12345678', '2017-11-18 00:08:33'),
(231, 'osas', 'osaspeter', 'jumbo', '2017-11-21', 'finima girls', 'Male', 'osaspeter@gmail.com', '123456789', '123456789', '2017-11-21 22:38:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `maxwell`
--
ALTER TABLE `maxwell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maxwell`
--
ALTER TABLE `maxwell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register_user`
--
ALTER TABLE `register_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
