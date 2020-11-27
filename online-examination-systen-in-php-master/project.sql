-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 11:50 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5fc0fd3cca124','5fc0fd3ccb1b0'),
('5fc0fd3ccd88d' , '5fc0fd3cce065') ,
('5fc0fd3cd15d4' ,'5fc0fd3cd24fe');
-- --------------------------------------------------------

-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('admin@admin.com' , 	'5fbb8bb661b35' , 	2,	3,	1,	2,	'2020-11-23 15:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
("5fc0fd3cca124" , "DATA BASE MANAGER SYSTEM" , "5fc0fd3ccb1ab"),
("5fc0fd3cca124" , "DATA BAT MANAGER SYSTEM", "5fc0fd3ccb1af"),
("5fc0fd3cca124" ,"DATA BASE MANAGEMENT SYSTEM" "5fc0fd3ccb1b0"),
("5fc0fd3cca124", "DOMAIN BASE MAINTAINANCE SYSTEM" , "5fc0fd3ccb1b1"),
("5fc0fd3ccd88d" , "Columns", "5fc0fd3cce05e"),
("5fc0fd3ccd88d","rows","5fc0fd3cce065"),
("5fc0fd3ccd88d","table","5fc0fd3cce066"),
("5fc0fd3ccd88d" ,"cell","5fc0fd3cce067"),
("5fc0fd3cd15d4","table","5fc0fd3cd24fe"),
("5fc0fd3cd15d4","attribute", "5fc0fd3cd2503"),
("5fc0fd3cd15d4","value", "5fc0fd3cd2504"),
("5fc0fd3cd15d4","cell","5fc0fd3cd2505");

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
("5fc0fc967356d","5fc0fd3cca124","FULL FORM OF DBMS", 4 ,1),
("5fc0fc967356d", "5fc0fd3ccd88d", "WHAT IS AN ATTRIBUTE", 4 , 2),
("5fc0fc967356d" , "5fc0fd3cd15d4" ,"What is an entity" , 4 ,3);
-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5fbb8bb661b35','Dbms' , 4,1,3, 5 ,'MID SEM' , '#dbms', '2020-11-23 15:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--



-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Meghana Rao','F','fg','meghanarao.99@gmail.com', 9535410456, '827ccb0eea8a706c4c34a16891f84e7b');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
