-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 07, 2022 at 03:23 AM
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
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `s_no` int NOT NULL,
  `s_mac_address` varchar(48) NOT NULL,
  `s_device_type` varchar(50) NOT NULL,
  `s_minor` int DEFAULT NULL,
  `s_major` int DEFAULT NULL,
  `s_battery` int DEFAULT NULL,
  `s_dynamic_value` int DEFAULT NULL,
  `s_rssi` int NOT NULL,
  `s_timestamp` datetime NOT NULL,
  `s_location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sensors`
--

INSERT INTO `sensors` (`s_no`, `s_mac_address`, `s_device_type`, `s_minor`, `s_major`, `s_battery`, `s_dynamic_value`, `s_rssi`, `s_timestamp`, `s_location`) VALUES
(2, '247d4dbdf4c2', 'iBeacon', 0, 0, NULL, NULL, -89, '2021-12-10 07:56:08', 'Lobby-Room'),
(3, 'f008d155b65e', 'iBeacon', 94, 747, NULL, NULL, -82, '2021-12-10 07:56:29', 'Master-BedRoom'),
(4, 'a0e6f8515eff', 'arubaTag', NULL, NULL, 92, NULL, -80, '2021-12-10 07:56:29', 'Master-BedRoom'),
(5, 'f008d155b4fe', 'eddystone', NULL, NULL, NULL, 80, -78, '2021-12-10 07:56:29', 'Master-BedRoom'),
(6, 'f008d155b4fe', 'eddystone', NULL, NULL, NULL, 42, -78, '2021-12-10 07:56:34', 'Gaming-Room'),
(7, 'f008d155b65e', 'iBeacon', 42, 113, NULL, NULL, -86, '2021-12-10 07:56:34', 'Gaming-Room'),
(8, '0cae7dbffd5f', 'iBeacon', 0, 0, NULL, NULL, -88, '2021-12-10 07:56:34', 'Gaming-Room'),
(9, 'a0e6f8515eff', 'arubaTag', NULL, NULL, 92, NULL, -76, '2021-12-10 07:56:34', 'Gaming-Room'),
(10, '247d4dbdf4c2', 'iBeacon', 0, 0, NULL, NULL, -90, '2021-12-10 07:56:38', 'Lobby-Room'),
(11, 'f008d155b65e', 'iBeacon', 75, 160, NULL, NULL, -80, '2021-12-10 07:56:59', 'Master-BedRoom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `s_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
