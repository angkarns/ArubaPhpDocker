-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 08, 2022 at 04:54 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


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
(3, 'iBeacon-1', 'f008d155b65e'),
(4, 'Minew14EA', 'ac233ff214ea');

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userlevel` varchar(1) NOT NULL DEFAULT 'm',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `username`, `email`, `userlevel`, `password`) VALUES
(1, 'admin1', 'admin1@uit.co.th', 'a', 'c98f7accb7085721d179609382a1509e'),
(2, 'user1', 'user1@uit.co.th', 'm', 'c98f7accb7085721d179609382a1509e');

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
(1, '247d4dbdf4c2', 'iBeacon', 0, 0, NULL, NULL, -89, '2021-12-10 07:56:08', 'Lobby-Room'),
(2, 'f008d155b65e', 'iBeacon', 94, 747, NULL, NULL, -82, '2021-12-10 07:56:29', 'Master-BedRoom'),
(3, 'a0e6f8515eff', 'arubaTag', NULL, NULL, 92, NULL, -80, '2021-12-10 07:56:29', 'Master-BedRoom'),
(4, 'f008d155b4fe', 'eddystone', NULL, NULL, NULL, 80, -78, '2021-12-10 07:56:29', 'Master-BedRoom'),
(5, 'f008d155b4fe', 'eddystone', NULL, NULL, NULL, 42, -78, '2021-12-10 07:56:34', 'Gaming-Room'),
(6, 'f008d155b65e', 'iBeacon', 42, 113, NULL, NULL, -86, '2021-12-10 07:56:34', 'Gaming-Room'),
(7, '0cae7dbffd5f', 'iBeacon', 0, 0, NULL, NULL, -88, '2021-12-10 07:56:34', 'Gaming-Room'),
(8, 'a0e6f8515eff', 'arubaTag', NULL, NULL, 92, NULL, -76, '2021-12-10 07:56:34', 'Gaming-Room'),
(9, '247d4dbdf4c2', 'iBeacon', 0, 0, NULL, NULL, -90, '2021-12-10 07:56:38', 'Lobby-Room'),
(10, 'f008d155b65e', 'iBeacon', 75, 160, NULL, NULL, -80, '2021-12-10 07:56:59', 'Master-BedRoom');

-- --------------------------------------------------------

--
-- Table structure for table `tb_upload`
--

CREATE TABLE `tb_upload` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_upload`
--

INSERT INTO `tb_upload` (`id`, `name`, `image`) VALUES
(1, 'Bldg1-F1-RoomA_f590', '6391696cb1589.png'),
(2, 'Bldg1-F1-RoomB_eb92', '62a9bccdc5709.png'),
(3, 'Bldg1-F1-RoomC_a6ba', '62a9bebfe423b.png'),
(4, 'Gaming-Room', '62ac45ebb62b4.png'),
(5, 'Master-BedRoom', '62ac45d79b567.png'),
(6, 'Lobby-Room', '62ac45bb44c76.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_inventory`
--
ALTER TABLE `device_inventory`
  ADD PRIMARY KEY (`d_no`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `tb_upload`
--
ALTER TABLE `tb_upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_inventory`
--
ALTER TABLE `device_inventory`
  MODIFY `d_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `s_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4000;

--
-- AUTO_INCREMENT for table `tb_upload`
--
ALTER TABLE `tb_upload`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
