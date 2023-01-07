-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 07, 2023 at 06:42 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naseem_sa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `full_name`, `email`, `password`, `gender`) VALUES
(1, 'Mohammad Alzahrani', '07yahala@gmail.com', '123', 'ذكر');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `admin_full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ID`, `name`, `admin_id`, `admin_full_name`) VALUES
(1, 'الرياض', 1, 'Mohammad Alzahrani');

-- --------------------------------------------------------

--
-- Table structure for table `city_activitiy`
--

DROP TABLE IF EXISTS `city_activitiy`;
CREATE TABLE IF NOT EXISTS `city_activitiy` (
  `city_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `activitiy_description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city_activitiy`
--

INSERT INTO `city_activitiy` (`city_id`, `name`, `subtitle`, `activitiy_description`) VALUES
(1, 'الرياض', 'برج المملكة', 'moimiom'),
(1, 'الرياض', 'برج المملكة', 'iomoi'),
(1, 'الرياض', 'برج المملكة', 'nionio'),
(1, 'الرياض', 'وادي حنيفة', 'nionionion'),
(1, 'الرياض', 'وادي حنيفة', 'ionionin'),
(1, 'الرياض', 'وادي حنيفة', 'ionionion'),
(1, 'الرياض', 'منتزة الملك سلمان ', 'biubiub'),
(1, 'الرياض', 'منتزة الملك سلمان ', 'iubuibiub'),
(1, 'الرياض', 'منتزة الملك سلمان ', 'uibiubuibui'),
(1, 'الرياض', 'المتحف الوطني', 'nopnponpon'),
(1, 'الرياض', 'المتحف الوطني', 'nppinipn'),
(1, 'الرياض', 'المتحف الوطني', 'ipnipnpin');

-- --------------------------------------------------------

--
-- Table structure for table `city_content`
--

DROP TABLE IF EXISTS `city_content`;
CREATE TABLE IF NOT EXISTS `city_content` (
  `city_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `main_description` text,
  `weather_description` text,
  `card_description` text,
  `card_photo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city_content`
--

INSERT INTO `city_content` (`city_id`, `name`, `main_description`, `weather_description`, `card_description`, `card_photo`) VALUES
(1, 'الرياض', 'iojoipjij', 'nmoinionoi', 'oimoimoi', 'Screenshot_20221027_081416.png');

-- --------------------------------------------------------

--
-- Table structure for table `city_subtitle`
--

DROP TABLE IF EXISTS `city_subtitle`;
CREATE TABLE IF NOT EXISTS `city_subtitle` (
  `city_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitle_description` text,
  `subtitle_photo` varchar(255) DEFAULT NULL,
  `location_description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city_subtitle`
--

INSERT INTO `city_subtitle` (`city_id`, `name`, `subtitle`, `subtitle_description`, `subtitle_photo`, `location_description`) VALUES
(1, 'الرياض', 'برج المملكة', 'pokmom', 'Screenshot_20221027_102715.png', 'oimpoimopi'),
(1, 'الرياض', 'وادي حنيفة', 'oimoimoi', 'Screenshot_20221101_090526.png', 'onionionio'),
(1, 'الرياض', 'منتزة الملك سلمان ', 'injioniubnui', 'Screenshot_20221027_081416.png', 'uibnuibob'),
(1, 'الرياض', 'المتحف الوطني', 'pomompom', 'Screenshot_20221027_102715.png', 'opnmopnponpo');

-- --------------------------------------------------------

--
-- Table structure for table `island`
--

DROP TABLE IF EXISTS `island`;
CREATE TABLE IF NOT EXISTS `island` (
  `ID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `admin_full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `island_activitiy`
--

DROP TABLE IF EXISTS `island_activitiy`;
CREATE TABLE IF NOT EXISTS `island_activitiy` (
  `island_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `activitiy_description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `island_content`
--

DROP TABLE IF EXISTS `island_content`;
CREATE TABLE IF NOT EXISTS `island_content` (
  `island_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `main_description` text,
  `weather_description` text,
  `card_description` text,
  `card_photo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `island_subtitle`
--

DROP TABLE IF EXISTS `island_subtitle`;
CREATE TABLE IF NOT EXISTS `island_subtitle` (
  `island_id` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitle_description` text,
  `subtitle_photo` varchar(255) DEFAULT NULL,
  `location_description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `req_id` int(10) NOT NULL,
  `tourist_req_id` int(10) DEFAULT NULL,
  `tour_guide_req_id` int(10) DEFAULT NULL,
  `req_date` date NOT NULL,
  `req_time` time NOT NULL,
  `req_status` varchar(10) DEFAULT NULL,
  `req_date_end` date DEFAULT NULL,
  `req_time_end` time DEFAULT NULL,
  `destination` varchar(255) NOT NULL,
  `number_days` int(10) DEFAULT NULL,
  `number_people` int(10) DEFAULT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

DROP TABLE IF EXISTS `tourist`;
CREATE TABLE IF NOT EXISTS `tourist` (
  `ID` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `language` varchar(10) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `question` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tour_guide`
--

DROP TABLE IF EXISTS `tour_guide`;
CREATE TABLE IF NOT EXISTS `tour_guide` (
  `ID` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `question` varchar(20) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
