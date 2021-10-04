-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 04:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `postID` int(10) NOT NULL,
  `postName` varchar(15) NOT NULL,
  `postDescription` varchar(500) NOT NULL,
  `thumbnail` varchar(15) NOT NULL,
  `postDate` datetime(6) NOT NULL,
  `catID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`postID`, `postName`, `postDescription`, `thumbnail`, `postDate`, `catID`) VALUES
(1, 'hot to deploy', 'I had a rough time realising being a full stack without having a single idea on how to actually deploy is a recepie for disaster....', 'devops1.jpg', '2021-10-04 17:07:07.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `catID` int(10) NOT NULL,
  `catName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`catID`, `catName`) VALUES
(1, 'code');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientID` int(10) NOT NULL,
  `clientLogo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientID`, `clientLogo`) VALUES
(1, 'wisy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `leadID` int(10) NOT NULL,
  `leadName` varchar(25) NOT NULL,
  `leadPhone` varchar(25) NOT NULL,
  `leadMail` varchar(30) NOT NULL,
  `leadSite` varchar(50) NOT NULL,
  `contactDate` datetime(6) NOT NULL,
  `follow` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`leadID`, `leadName`, `leadPhone`, `leadMail`, `leadSite`, `contactDate`, `follow`) VALUES
(1, 'tester', '050-9382456', 'anguru@gmail.com', 'https://johnmogi.com', '2021-10-04 17:09:11.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `workcat`
--

CREATE TABLE `workcat` (
  `workCatID` int(10) NOT NULL,
  `workCatName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workcat`
--

INSERT INTO `workcat` (`workCatID`, `workCatName`) VALUES
(1, 'sites');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `workID` int(10) NOT NULL,
  `workCatID` int(10) NOT NULL,
  `workName` varchar(15) NOT NULL,
  `workDescription` varchar(500) NOT NULL,
  `workDate` datetime(6) NOT NULL,
  `workTag` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`workID`, `workCatID`, `workName`, `workDescription`, `workDate`, `workTag`) VALUES
(1, 1, 'emesh', 'emesh nadlan is an elementor site', '2020-10-07 17:02:04.000000', 'elementor, wordpress');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`leadID`);

--
-- Indexes for table `workcat`
--
ALTER TABLE `workcat`
  ADD PRIMARY KEY (`workCatID`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`workID`),
  ADD KEY `workCatID` (`workCatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `postID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `catID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `leadID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workcat`
--
ALTER TABLE `workcat`
  MODIFY `workCatID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `workID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `cats` (`catID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`workCatID`) REFERENCES `workcat` (`workCatID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
