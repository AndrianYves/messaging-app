-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 05, 2020 at 06:56 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messaging`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `address`, `image`) VALUES
(1, 'leo martin barbara', '09123456789', '123 san carlos city', 'avatar.png'),
(2, 'john michael jackson', '09341345313', '324 poblacion', 'avatar2.png'),
(9, 'Mr Lucas', '09123123234', '123 bonifacio', 'man-657869_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sendto` int(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `sendto`, `duration`, `timestamp`) VALUES
(1, 2, '5', '2020-02-05 10:43:17.000000'),
(2, 2, '3', '2020-02-05 10:43:35.000000'),
(3, 2, '4', '2020-02-05 10:51:07.000000'),
(4, 1, '2', '2020-02-05 10:51:18.000000'),
(5, 1, '4', '2020-02-05 10:51:55.000000'),
(6, 2, '5', '2020-02-05 10:52:19.000000'),
(7, 2, '4', '2020-02-05 18:53:12.000000'),
(8, 1, '3', '2020-02-05 18:54:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `sendto` int(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sendto`, `message`, `timestamp`) VALUES
(1, 1, 'lets goo', '2020-02-05 15:43:00.000000'),
(2, 1, 'where na u??', '2020-02-04 17:00:00.000000'),
(3, 2, 'hi', '2020-02-05 09:18:05.000000'),
(4, 2, 'hello', '2020-02-05 09:18:18.000000'),
(5, 2, '', '2020-02-05 09:23:29.000000'),
(6, 2, 'we', '2020-02-05 09:27:12.000000'),
(7, 1, 'lo', '2020-02-05 09:27:22.000000'),
(8, 2, 'nice', '2020-02-05 09:27:48.000000'),
(9, 1, 'wdwd', '2020-02-05 09:30:17.000000'),
(10, 1, 'sd', '2020-02-05 09:31:06.000000'),
(11, 2, 'wdwd', '2020-02-05 09:31:10.000000'),
(12, 2, 'sup', '2020-02-05 09:46:28.000000'),
(13, 1, 'hey ', '2020-02-05 09:46:41.000000'),
(14, 2, 'df', '2020-02-05 09:47:13.000000'),
(15, 1, 'water', '2020-02-05 18:54:03.000000'),
(16, 2, 'musta??', '2020-02-05 18:54:19.000000'),
(17, 9, 'men', '2020-02-05 18:54:58.000000'),
(18, 2, 'sup??', '2020-02-05 18:56:07.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
