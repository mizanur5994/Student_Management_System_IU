-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: April 23, 2025 at 03:49 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `roll` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shift` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `department`, `semester`, `shift`, `father_name`, `mother_name`, `address`, `number`, `file`, `time`) VALUES
(7, 'Mizanur rahman', '1914007', 'Computer', '6th', '1st', 'Abdur Rashid', 'Mohena Begum', 'Tanore, Rajshahi', '01700000000', 'Formal Me.png', '2025-04-23 19:20:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `c_password` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `c_password`, `photo`, `date`) VALUES
(7, 'Mizanur Rahman', 'admin@gmail.com', '12345678', '12345678', 'Formal Me.png', '2025-04-23 19:20:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
