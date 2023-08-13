-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 10:54 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housekeeping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hostel` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `hostel`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'VITB');

-- --------------------------------------------------------

--
-- Table structure for table `cleanrequest`
--

CREATE TABLE `cleanrequest` (
  `request_id` int(12) NOT NULL,
  `rollnumber` int(12) NOT NULL,
  `worker_id` int(12) NOT NULL,
  `date` date NOT NULL,
  `cleaningtime` time NOT NULL,
  `req_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleanrequest`
--

INSERT INTO `cleanrequest` (`request_id`, `rollnumber`, `worker_id`, `date`, `cleaningtime`, `req_status`) VALUES
(1, 101, 1, '2023-04-24', '06:15:00', 2),
(2, 101, 1, '2023-04-25', '20:20:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(12) NOT NULL,
  `feedback_id` int(12) NOT NULL,
  `rollnumber` int(12) NOT NULL,
  `complaint` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(12) NOT NULL,
  `rollnumber` int(12) NOT NULL,
  `request_id` int(12) NOT NULL,
  `rating` tinyint(2) NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `rollnumber`, `request_id`, `rating`, `timein`, `timeout`) VALUES
(1, 101, 1, 5, '06:20:00', '07:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `housekeeper`
--

CREATE TABLE `housekeeper` (
  `worker_id` int(12) NOT NULL,
  `name` varchar(30) NOT NULL,
  `hostel` varchar(5) NOT NULL,
  `floor` tinyint(4) NOT NULL,
  `rooms_cleaned` int(5) NOT NULL,
  `complaints` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housekeeper`
--

INSERT INTO `housekeeper` (`worker_id`, `name`, `hostel`, `floor`, `rooms_cleaned`, `complaints`) VALUES
(1, 'cyan', 'n', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollnumber` int(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `room` varchar(8) NOT NULL,
  `floor` tinyint(4) NOT NULL,
  `hostel` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollnumber`, `password`, `room`, `floor`, `hostel`) VALUES
(101, '827ccb0eea8a706c4c34a16891f84e7b', 'cyan101', 1, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `suggestion_id` int(12) NOT NULL,
  `feedback_id` int(12) NOT NULL,
  `rollnumber` int(12) NOT NULL,
  `suggestion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cleanrequest`
--
ALTER TABLE `cleanrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `housekeeper`
--
ALTER TABLE `housekeeper`
  ADD PRIMARY KEY (`worker_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollnumber`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cleanrequest`
--
ALTER TABLE `cleanrequest`
  MODIFY `request_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `housekeeper`
--
ALTER TABLE `housekeeper`
  MODIFY `worker_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `suggestion_id` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
