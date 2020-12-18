-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 10:38 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `company` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1201', 'A302', 'Air India'),
('1202', 'A303', 'Indigo');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`code`, `name`, `city`, `state`, `country`) VALUES
('Dabolim', 'Dabolim Airport', 'Vasco', 'Goa', 'India'),
('Delhi', 'Delhi Airport', 'Delhi', 'Delhi', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(1, '2020-12-17 01:23:40', '2020-12-31', 'AA001', 'Riddhi deg', 'Economy', 0),
(2, '2020-12-17 01:28:26', '2020-12-31', 'AA001', 'Riddhi deg', 'Economy', 0),
(3, '2020-12-17 01:37:38', '2020-12-02', 'AA002', 'Riddhi deg', 'Economy', 0),
(4, '2020-12-17 07:45:57', '2020-12-23', 'AA002', 'sam14', 'Economy', 0),
(5, '2020-12-17 07:46:33', '2020-12-23', 'AA002', 'sam14', 'Economy', 0),
(6, '2020-12-17 08:01:41', '2020-12-23', 'AA002', 'sam14', 'Economy', 0),
(7, '2020-12-18 01:59:25', '2020-12-03', 'AA001', '1905riddhidegvekar', 'Economy', 0),
(8, '2020-12-18 02:29:55', '2020-12-17', 'AA001', '1905riddhidegvekar', 'Business', 0),
(9, '2020-12-18 02:33:36', '2020-12-17', 'AA001', '1905riddhidegvekar', 'Business', 0),
(10, '2020-12-18 03:25:27', '2020-12-08', 'AA001', 'Riddhi deg', 'Economy', 0),
(11, '2020-12-18 10:30:26', '2020-12-08', 'AA001', 'Riddhi deg', 'Economy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('121', 'Business', 2, 2000),
('121', 'Economy', 233, 2333),
('1211', 'Business', 2, 2000),
('1211', 'Economy', 233, 2333),
('1213', 'Business', 5, 5000),
('1213', 'Economy', 300, 3000),
('AA001', 'Business', 2, 2000),
('AA001', 'Economy', 233, 2333),
('AA002', 'Business', 5, 3000),
('AA002', 'Economy', 200, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `number` varchar(15) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(20) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(20) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('1213', '1204', 'benglore', '12:00:00', 'delhi', '06:00:00'),
('AA001', '1201', 'delhi', '12:00:00', 'dabolim', '06:00:00'),
('AA002', '1202', 'Dabolim', '13:00:00', 'Mumbai', '11:00:00'),
('AA003', '1203', 'Mumbai Airport', '12:00:00', 'banglore Airport', '06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `username` varchar(35) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`username`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `gender`, `dob`, `password`) VALUES
('mca.1905@unigoa.ac.in', 'Riddhi', '', 'Deg', 'rii@gm.com', '568888', 'Female', '1998-07-17', 'Rbcd123'),
('Riddhi deg', 'rd', 'hg', 'Deg', 'mca.1905@unigoa.ac.in', '568888', 'Female', '2020-02-23', 'abc123'),
('Riddhi degvekar', 'Riddhi', '', 'Deg', 'mca.1905@unigoa.ac.in', '963249611', 'Female', '0000-00-00', 'Riddhi13'),
('sam14', 'Sam', '', 'dsa', 'sam@gmail.com', '9344533334', 'Female', '2000-12-08', 'sam13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`),
  ADD KEY `username_idx` (`username`),
  ADD KEY `class_type` (`classtype`),
  ADD KEY `flightno_idx` (`flightno`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`),
  ADD KEY `number` (`number`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`) USING BTREE,
  ADD KEY `airplane_id` (`airplane_id`),
  ADD KEY `dept` (`departure`),
  ADD KEY `arrival` (`arrival`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
