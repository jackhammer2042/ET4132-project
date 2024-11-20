-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 03:33 PM
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
-- Database: `db_et4132_group8`
--

-- --------------------------------------------------------

--
-- Table structure for table `committeemember`
--

CREATE TABLE `committeemember` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `committeePostition` varchar(255) DEFAULT NULL,
  `core` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `committeemember`
--

INSERT INTO `committeemember` (`StudentID`, `LastName`, `FirstName`, `committeePostition`, `core`) VALUES
(1002, 'Smith', 'John', 'PRO', 'yes'),
(1003, 'Davis', 'Emma', 'Secretary', 'yes'),
(1004, 'Wilson', 'Liam', 'Treasurer', 'yes'),
(1005, 'Taylor', 'Sophia', 'Event Coordinator', 'no'),
(1006, 'Johnson', 'Noah', 'Amorer', 'no'),
(1111, 'Griffith', 'Jack', 'Captain', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `emergacycontact`
--

CREATE TABLE `emergacycontact` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `EmergencycontactName` varchar(255) DEFAULT NULL,
  `EmergencycontactNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergacycontact`
--

INSERT INTO `emergacycontact` (`StudentID`, `LastName`, `FirstName`, `EmergencycontactName`, `EmergencycontactNumber`) VALUES
(1001, 'Brown', 'Alice', 'Emily Taylor', '555-0101'),
(1002, 'Smith', 'John', 'Alex Martin', '555-0102'),
(1003, 'Davis', 'Emma', 'Katie Harris', '555-0103'),
(1004, 'Wilson', 'Liam', 'Emily Taylor', '555-0104'),
(1005, 'Taylor', 'Sophia', 'Emily White', '555-0105'),
(1006, 'Johson', 'Noah', 'Chris Thomas', '555-0106'),
(1007, 'White', 'Mia', 'John Brown', '555-0107'),
(1008, 'Lee', 'James', 'Emily Jackson', '555-0108'),
(1009, 'Garica', 'Oliva', 'Emily White', '555-0109'),
(1010, 'Martinez', 'Ethan', 'John Anderson', '555-0110');

-- --------------------------------------------------------

--
-- Table structure for table `funny`
--

CREATE TABLE `funny` (
  `MemberNUmber` int(11) DEFAULT NULL,
  `BrokenSword` int(11) DEFAULT NULL,
  `Tournemts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funny`
--

INSERT INTO `funny` (`MemberNUmber`, `BrokenSword`, `Tournemts`) VALUES
(65, 127, 614);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `StudentID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `committeemember`
--
ALTER TABLE `committeemember`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `emergacycontact`
--
ALTER TABLE `emergacycontact`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
