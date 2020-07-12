-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 07:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `rm_id` int(11) NOT NULL,
  `rm_type` varchar(250) NOT NULL,
  `rm_tot_available` int(11) NOT NULL,
  `rm_status` enum('Active','In-active','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`rm_id`, `rm_type`, `rm_tot_available`, `rm_status`) VALUES
(1, 'AC', 10, 'Active'),
(2, 'Non-AC', 20, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms_reserved`
--

CREATE TABLE `tbl_rooms_reserved` (
  `resv_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `tot_rooms_booked` int(11) NOT NULL,
  `cust_name` varchar(150) NOT NULL,
  `cust_email` varchar(250) NOT NULL,
  `cust_mobile` varchar(20) NOT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`rm_id`);

--
-- Indexes for table `tbl_rooms_reserved`
--
ALTER TABLE `tbl_rooms_reserved`
  ADD PRIMARY KEY (`resv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `rm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rooms_reserved`
--
ALTER TABLE `tbl_rooms_reserved`
  MODIFY `resv_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
