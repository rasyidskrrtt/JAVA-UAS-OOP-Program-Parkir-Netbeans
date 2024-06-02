-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 01:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adminparkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `listparkir`
--

CREATE TABLE `listparkir` (
  `kodeParkir` varchar(40) NOT NULL,
  `nomorPlat` varchar(60) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `waktu_masuk` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listparkir`
--

INSERT INTO `listparkir` (`kodeParkir`, `nomorPlat`, `jenis`, `waktu_masuk`) VALUES
('E780', 'T 7890 KL', 'Motor', '2024-05-26 17:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `parkirkeluar`
--

CREATE TABLE `parkirkeluar` (
  `kodeParkir` varchar(40) NOT NULL,
  `nomorPlat` varchar(60) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `waktu_keluar` datetime NOT NULL,
  `biayaParkir` int(13) NOT NULL,
  `totalJamParkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkirkeluar`
--

INSERT INTO `parkirkeluar` (`kodeParkir`, `nomorPlat`, `jenis`, `waktu_keluar`, `biayaParkir`, `totalJamParkir`) VALUES
('0825', 'L 9804 RA', 'Motor', '2024-05-26 16:44:41', 3000, 1),
('0CA8', 'L 7840 LK', 'Mobil', '2024-05-24 13:49:41', 25000, 4),
('12C7', 'T 5674 MN', 'Motor', '2024-05-24 14:04:32', 3000, 1),
('552D', 'T 6759 NM', 'Mobil', '2024-05-26 16:41:55', 5000, 1),
('5AE3', 'T 8907 KM', 'Motor', '2024-05-26 17:07:35', 3000, 1),
('A020', 'T 7689 NM', 'Motor', '2024-05-24 15:44:24', 3000, 1),
('C455', 'L 7890 NM', 'Mobil', '2024-05-24 15:46:30', 5000, 1),
('E97E', 'T 5679 NB', 'Motor', '2024-05-24 14:36:24', 3000, 1),
('EB53', 'T 5678 KL', 'Mobil', '2024-05-26 16:03:25', 25000, 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listparkir`
--
ALTER TABLE `listparkir`
  ADD PRIMARY KEY (`kodeParkir`);

--
-- Indexes for table `parkirkeluar`
--
ALTER TABLE `parkirkeluar`
  ADD PRIMARY KEY (`kodeParkir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
