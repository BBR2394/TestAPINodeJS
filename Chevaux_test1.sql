-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2019 at 11:23 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Chevaux_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Chevaux`
--

CREATE TABLE `Chevaux` (
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `Age` smallint(6) NOT NULL,
  `Sex` tinyint(1) NOT NULL,
  `Robe` int(11) NOT NULL,
  `Owner` int(11) NOT NULL,
  `Past_owner` int(11) NOT NULL,
  `Trainer` int(11) NOT NULL,
  `Past_trainer` int(11) NOT NULL,
  `Perf` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Chevaux`
--

INSERT INTO `Chevaux` (`Name`, `Height`, `Weight`, `Age`, `Sex`, `Robe`, `Owner`, `Past_owner`, `Trainer`, `Past_trainer`, `Perf`, `Id`, `Birthdate`) VALUES
('Bojack Horseman', 1.7, 0, 4, 0, 1, 4, 0, 4, 0, 0, 1, '2014-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `Nationality`
--

CREATE TABLE `Nationality` (
  `Id` int(11) NOT NULL,
  `Nationality` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Nationality`
--

INSERT INTO `Nationality` (`Id`, `Nationality`) VALUES
(1, 'UNKNOWN'),
(2, 'Français'),
(3, 'English'),
(4, 'Americain us');

-- --------------------------------------------------------

--
-- Table structure for table `Owners`
--

CREATE TABLE `Owners` (
  `Id` int(11) NOT NULL,
  `Firstname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nationality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Owners`
--

INSERT INTO `Owners` (`Id`, `Firstname`, `Lastname`, `Nationality`) VALUES
(1, 'Toto', 'Titi', 2),
(2, 'Baptiste', 'Bertrand-Rapello', 2),
(3, 'Inco', 'Inco', 1),
(4, 'Netflix', 'inc.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Trainer`
--

CREATE TABLE `Trainer` (
  `Id` int(11) NOT NULL,
  `Firstname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nationality` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Trainer`
--

INSERT INTO `Trainer` (`Id`, `Firstname`, `Lastname`, `Nationality`) VALUES
(1, 'Prof', 'Chen', 1),
(2, 'Tutu', 'Tyty', 3),
(3, 'Netflix', 'inc.', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Chevaux`
--
ALTER TABLE `Chevaux`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Nationality`
--
ALTER TABLE `Nationality`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Owners`
--
ALTER TABLE `Owners`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Trainer`
--
ALTER TABLE `Trainer`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Chevaux`
--
ALTER TABLE `Chevaux`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Nationality`
--
ALTER TABLE `Nationality`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Owners`
--
ALTER TABLE `Owners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Trainer`
--
ALTER TABLE `Trainer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
