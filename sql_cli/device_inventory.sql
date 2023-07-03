-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 07, 2022 at 03:22 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `device_inventory`
--

CREATE TABLE `device_inventory` (
  `d_no` int NOT NULL,
  `d_name` varchar(40) NOT NULL,
  `d_macaddress` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `device_inventory`
--

INSERT INTO `device_inventory` (`d_no`, `d_name`, `d_macaddress`) VALUES
(1, 'BLE_Tag-1', 'a0e6f8515eff'),
(2, 'Temp-Sensor-1', 'f008d155b4fe'),
(3, 'iBeacon-1', 'f008d155b65e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_inventory`
--
ALTER TABLE `device_inventory`
  ADD PRIMARY KEY (`d_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_inventory`
--
ALTER TABLE `device_inventory`
  MODIFY `d_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
