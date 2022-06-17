-- Adminer 4.8.1 MySQL 8.0.29 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `omega`;
CREATE DATABASE `omega` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `omega`;

DROP TABLE IF EXISTS `Transaction_details`;
CREATE TABLE `Transaction_details` (
  `Account-number` varchar(7) NOT NULL,
  `Amount` int NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2022-06-16 18:03:40