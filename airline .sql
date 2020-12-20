-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 12:58 PM
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
('1202', 'A303', 'Indigo'),
('1203', 'A304', 'Spice jet');

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
('Benglore', 'Benglore Airport', 'Benglore', 'Benglore', 'India'),
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
(17, '2020-12-19 09:40:14', '2020-12-24', 'AA203', 'Meena23', 'Business', 0),
(19, '2020-12-19 09:45:35', '2020-12-15', 'AA203', '12Meena', 'Business', 1),
(20, '2020-12-19 09:46:13', '2020-12-22', 'AA201', '12Meena', 'Economy', 1),
(22, '2020-12-19 09:54:24', '2020-12-23', 'AA203', '12Reema', 'Business', 1),
(23, '2020-12-19 09:57:34', '2020-12-03', 'AA201', '12Meena', 'Economy', 1),
(25, '2020-12-19 10:00:42', '2020-12-09', 'AA203', 'Reema12', 'Business', 1),
(26, '2020-12-19 10:01:43', '2020-12-17', 'AA204', 'Reema12', 'Economy', 1),
(27, '2020-12-20 02:14:52', '2020-12-31', 'AA203', '1905riddhidegvekar', 'Economy', 1),
(29, '2020-12-20 02:15:55', '2020-12-31', 'AA203', '1905riddhidegvekar', 'Economy', 1),
(31, '2020-12-20 02:21:46', '2020-12-31', 'AA203', '1905riddhidegvekar', 'Economy', 1),
(32, '2020-12-20 03:28:42', '2020-12-15', 'AA201', '1905riddhidegvekar', 'Economy', 1),
(34, '2020-12-20 04:37:21', '2020-12-08', 'AA201', '1905riddhidegvekar', 'Economy', 0);

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
('AA009', 'Business', 2, 2000),
('AA009', 'Economy', 300, 2333),
('AA201', 'Business', 5, 2000),
('AA201', 'Economy', 233, 2000),
('AA203', 'Business', 4, 3000),
('AA203', 'Economy', 233, 2000),
('AA204', 'Business', 2, 3000),
('AA204', 'Economy', 233, 2000),
('AA205', 'Business', 5, 3000),
('AA205', 'Economy', 300, 2000);

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
('AA201', '1203', 'Benglore', '12:00:00', 'Dabolim', '10:00:00'),
('AA203', '1202', 'Delhi', '12:00:00', 'Benglore', '10:00:00'),
('AA204', '1201', 'Dabolim', '11:00:00', 'Delhi', '00:00:08'),
('AA205', '1201', 'Benglore', '12:00:00', 'Dabolim', '00:00:10');

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
('12Meena', 'Meena', '', 'Singh', 'meena@gmail.com', '98654321', 'Female', '1996-12-30', 'Meenba23'),
('12Reema', 'Reema', '', 'Dessai', 're@gmail.com', '23446543', 'Female', '1996-12-09', 'Reema12'),
('1905riddhidegvekar', 'Riddhi', '', 'Degvekar', 'mca.1905@unigoa.ac.in', '963249611', 'Female', '2020-12-17', 'Ridhi18'),
('mca.1905@unigoa.ac.in', 'Riddhi', '', 'Deg', 'rii@gm.com', '568888', 'Female', '1998-07-17', 'Rbcd123'),
('Meena23', 'Meena', '', 'Dessai', 'meena@gmail.com', '98623231', 'Female', '2000-12-01', 'Meeenba13'),
('Reema12', 'Reema', '', 'Desa', 'ree@gmail.com', '98623231', 'Female', '2020-12-29', 'Reema12'),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
