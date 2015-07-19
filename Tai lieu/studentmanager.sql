-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2015 at 02:00 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `studentmanager`
--
CREATE DATABASE IF NOT EXISTS `studentmanager` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `studentmanager`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `id` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `cmt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `statusId` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_APPLICANT_PERSON` (`cmt`),
  KEY `FK_APPLICANT_STATUS` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apptostudate`
--

CREATE TABLE IF NOT EXISTS `apptostudate` (
  `appId` char(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stuId` char(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` date NOT NULL,
  PRIMARY KEY (`appId`,`stuId`),
  KEY `FK_APPTOSTUDATE_STUDENT` (`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `stuId` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `statusId` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeEvent` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_EVENT_STUDENT` (`stuId`),
  KEY `FK_EVENT_STATUS` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `cmt` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schoolId` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cmt`),
  KEY `FK_Person_School` (`schoolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`cmt`, `name`, `birthday`, `address`, `schoolId`) VALUES
('168511072', 'trần hữu đạt', '2015-07-08', 'bồ đề - bình lục - hà nam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `studentId` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdi` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mantis` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `sId` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `sName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stylePerson` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `cmt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_STUDENT_PERSON` (`cmt`),
  KEY `FK_STUDEN_STATUS` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `FK_APPLICANT_PERSON` FOREIGN KEY (`cmt`) REFERENCES `person` (`cmt`),
  ADD CONSTRAINT `FK_APPLICANT_STATUS` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`);

--
-- Constraints for table `apptostudate`
--
ALTER TABLE `apptostudate`
  ADD CONSTRAINT `FK_APPTOSTUDATE_APPLICANT` FOREIGN KEY (`appId`) REFERENCES `applicant` (`id`),
  ADD CONSTRAINT `FK_APPTOSTUDATE_STUDENT` FOREIGN KEY (`stuId`) REFERENCES `student` (`id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_EVENT_STUDENT` FOREIGN KEY (`stuId`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK_EVENT_STATUS` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `FK_Person_School` FOREIGN KEY (`schoolId`) REFERENCES `school` (`sId`);

--
-- Constraints for table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_RESOURCE_STUDENT` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_STUDENT_PERSON` FOREIGN KEY (`cmt`) REFERENCES `person` (`cmt`),
  ADD CONSTRAINT `FK_STUDEN_STATUS` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
