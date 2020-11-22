-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 09:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
(2, 'admin@admin.com', 'admin');

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
('5fba1c97c18a9', '5fba1c97c1fe6'),
('5fba1c97c4b5a', '5fba1c97c50cf'),
('5fba1c97c7468', '5fba1c97c828e');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `correct`, `wrong`, `date`) VALUES
('admin@admin.com', '5fba1bacc85f0', 3, 3, 3, 0, '2020-11-22 08:09:12');

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
('5fba1c97c18a9', 'Random Access Memory', '5fba1c97c1fe6'),
('5fba1c97c18a9', 'Randomly Access Memory', '5fba1c97c1fef'),
('5fba1c97c18a9', 'Run Accept Memory', '5fba1c97c1ff0'),
('5fba1c97c18a9', 'None of these', '5fba1c97c1ff1'),
('5fba1c97c4b5a', 'Central Program Unit', '5fba1c97c50cd'),
('5fba1c97c4b5a', 'Central Processing Unit', '5fba1c97c50cf'),
('5fba1c97c4b5a', 'Central Preload Unit', '5fba1c97c50d0'),
('5fba1c97c4b5a', 'None of these', '5fba1c97c50d1'),
('5fba1c97c7468', 'Electronic Mail', '5fba1c97c828e'),
('5fba1c97c7468', 'Electric Mail', '5fba1c97c8291'),
('5fba1c97c7468', 'Engine Mail', '5fba1c97c8292'),
('5fba1c97c7468', 'None of these', '5fba1c97c8293');

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
('5fba1bacc85f0', '5fba1c97c18a9', 'What is the full form of RAM?', 4, 1),
('5fba1bacc85f0', '5fba1c97c4b5a', 'What is the full form of CPU?', 4, 2),
('5fba1bacc85f0', '5fba1c97c7468', 'What is the full form of E-mail', 4, 3);

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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `correct`, `wrong`, `total`, `time`, `intro`, `date`) VALUES
('5fba1bacc85f0', 'Computer Science ', 1, 0, 3, 10, '', '2020-11-22 08:05:00');

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
('Harish ', 'M', 'ASEB ', 'harish@gmail.com', 321654987, 'harish'),
('Meghana', 'F', 'ASEB', 'meghs@gmail.com', 123456789, 'meghs '),
('Navya ', 'F', 'Amrita School of Engineering ', 'navya@gmail.com', 1234567895, '1234'),
('Raghu', 'M', 'ASEB', 'raghu@gmail.com', 987654321, 'raghu'),
('Shruthi ', 'F', 'Amrita School of Engineering ', 'shruthisk2000@gmail.com', 7899362434, '1234');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
