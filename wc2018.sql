-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 09:59 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wc2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `away_team`
--

CREATE TABLE `away_team` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `goals` int(11) NOT NULL,
  `penalties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `away_team`
--

INSERT INTO `away_team` (`id`, `match_id`, `country`, `code`, `goals`, `penalties`) VALUES
(1, 66, 'Saudi Arabia', 'KSA', 0, 0),
(2, 67, 'Uruguay', 'URU', 1, 0),
(3, 68, 'Iran', 'IRN', 1, 0),
(4, 69, 'Spain', 'ESP', 3, 0),
(5, 70, 'Australia', 'AUS', 1, 0),
(6, 71, 'Iceland', 'ISL', 1, 0),
(7, 72, 'Denmark', 'DEN', 1, 0),
(8, 73, 'Nigeria', 'NGA', 0, 0),
(9, 74, 'Serbia', 'SRB', 1, 0),
(10, 75, 'Mexico', 'MEX', 1, 0),
(11, 76, 'Switzerland', 'SUI', 1, 0),
(12, 77, 'Korea Republic', 'KOR', 0, 0),
(13, 78, 'Panama', 'PAN', 0, 0),
(14, 79, 'England', 'ENG', 2, 0),
(15, 80, 'Japan', 'JPN', 2, 0),
(16, 81, 'Senegal', 'SEN', 2, 0),
(17, 82, 'Egypt', 'EGY', 1, 0),
(18, 83, 'Morocco', 'MAR', 0, 0),
(19, 84, 'Saudi Arabia', 'KSA', 0, 0),
(20, 85, 'Spain', 'ESP', 1, 0),
(21, 86, 'Australia', 'AUS', 1, 0),
(22, 87, 'Peru', 'PER', 0, 0),
(23, 88, 'Croatia', 'CRO', 3, 0),
(24, 89, 'Costa Rica', 'CRC', 0, 0),
(25, 90, 'Iceland', 'ISL', 0, 0),
(26, 91, 'Switzerland', 'SUI', 2, 0),
(27, 92, 'Tunisia', 'TUN', 2, 0),
(28, 93, 'Mexico', 'MEX', 2, 0),
(29, 94, 'Sweden', 'SWE', 1, 0),
(30, 95, 'Panama', 'PAN', 1, 0),
(31, 96, 'Senegal', 'SEN', 2, 0),
(32, 97, 'Colombia', 'COL', 3, 0),
(33, 98, 'Russia', 'RUS', 0, 0),
(34, 99, 'Egypt', 'EGY', 1, 0),
(35, 100, 'Morocco', 'MAR', 2, 0),
(36, 101, 'Portugal', 'POR', 1, 0),
(37, 102, 'France', 'FRA', 0, 0),
(38, 103, 'Peru', 'PER', 2, 0),
(39, 104, 'Croatia', 'CRO', 2, 0),
(40, 105, 'Argentina', 'ARG', 2, 0),
(41, 106, 'Germany', 'GER', 0, 0),
(42, 107, 'Sweden', 'SWE', 3, 0),
(43, 108, 'Costa Rica', 'CRC', 2, 0),
(44, 109, 'Brazil', 'BRA', 2, 0),
(45, 110, 'Poland', 'POL', 1, 0),
(46, 111, 'Colombia', 'COL', 1, 0),
(47, 112, 'Belgium', 'BEL', 1, 0),
(48, 113, 'Tunisia', 'TUN', 2, 0),
(49, 114, 'Argentina', 'ARG', 3, 0),
(50, 115, 'Portugal', 'POR', 1, 0),
(51, 116, 'Russia', 'RUS', 1, 4),
(52, 117, 'Denmark', 'DEN', 1, 2),
(53, 118, 'Mexico', 'MEX', 0, 0),
(54, 119, 'Japan', 'JPN', 2, 0),
(55, 120, 'Switzerland', 'SUI', 0, 0),
(56, 121, 'England', 'ENG', 1, 4),
(57, 122, 'France', 'FRA', 2, 0),
(58, 123, 'Belgium', 'BEL', 2, 0),
(59, 124, 'England', 'ENG', 2, 0),
(60, 125, 'Croatia', 'CRO', 2, 4),
(61, 126, 'Belgium', 'BEL', 0, 0),
(62, 127, 'England', 'ENG', 1, 0),
(63, 128, 'England', 'ENG', 0, 0),
(64, 129, 'Croatia', 'CRO', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_team`
--

CREATE TABLE `home_team` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `goals` int(11) NOT NULL,
  `penalties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_team`
--

INSERT INTO `home_team` (`id`, `match_id`, `country`, `code`, `goals`, `penalties`) VALUES
(1, 66, 'Russia', 'RUS', 5, 0),
(2, 67, 'Egypt', 'EGY', 0, 0),
(3, 68, 'Morocco', 'MAR', 0, 0),
(4, 69, 'Portugal', 'POR', 3, 0),
(5, 70, 'France', 'FRA', 2, 0),
(6, 71, 'Argentina', 'ARG', 1, 0),
(7, 72, 'Peru', 'PER', 0, 0),
(8, 73, 'Croatia', 'CRO', 2, 0),
(9, 74, 'Costa Rica', 'CRC', 0, 0),
(10, 75, 'Germany', 'GER', 0, 0),
(11, 76, 'Brazil', 'BRA', 1, 0),
(12, 77, 'Sweden', 'SWE', 1, 0),
(13, 78, 'Belgium', 'BEL', 3, 0),
(14, 79, 'Tunisia', 'TUN', 1, 0),
(15, 80, 'Colombia', 'COL', 1, 0),
(16, 81, 'Poland', 'POL', 1, 0),
(17, 82, 'Russia', 'RUS', 3, 0),
(18, 83, 'Portugal', 'POR', 1, 0),
(19, 84, 'Uruguay', 'URU', 1, 0),
(20, 85, 'Iran', 'IRN', 0, 0),
(21, 86, 'Denmark', 'DEN', 1, 0),
(22, 87, 'France', 'FRA', 1, 0),
(23, 88, 'Argentina', 'ARG', 0, 0),
(24, 89, 'Brazil', 'BRA', 2, 0),
(25, 90, 'Nigeria', 'NGA', 2, 0),
(26, 91, 'Serbia', 'SRB', 1, 0),
(27, 92, 'Belgium', 'BEL', 5, 0),
(28, 93, 'Korea Republic', 'KOR', 1, 0),
(29, 94, 'Germany', 'GER', 2, 0),
(30, 95, 'England', 'ENG', 6, 0),
(31, 96, 'Japan', 'JPN', 2, 0),
(32, 97, 'Poland', 'POL', 0, 0),
(33, 98, 'Uruguay', 'URU', 3, 0),
(34, 99, 'Saudi Arabia', 'KSA', 2, 0),
(35, 100, 'Spain', 'ESP', 2, 0),
(36, 101, 'Iran', 'IRN', 1, 0),
(37, 102, 'Denmark', 'DEN', 0, 0),
(38, 103, 'Australia', 'AUS', 0, 0),
(39, 104, 'Iceland', 'ISL', 1, 0),
(40, 105, 'Nigeria', 'NGA', 1, 0),
(41, 106, 'Korea Republic', 'KOR', 2, 0),
(42, 107, 'Mexico', 'MEX', 0, 0),
(43, 108, 'Switzerland', 'SUI', 2, 0),
(44, 109, 'Serbia', 'SRB', 0, 0),
(45, 110, 'Japan', 'JPN', 0, 0),
(46, 111, 'Senegal', 'SEN', 0, 0),
(47, 112, 'England', 'ENG', 0, 0),
(48, 113, 'Panama', 'PAN', 1, 0),
(49, 114, 'France', 'FRA', 4, 0),
(50, 115, 'Uruguay', 'URU', 2, 0),
(51, 116, 'Spain', 'ESP', 1, 3),
(52, 117, 'Croatia', 'CRO', 1, 3),
(53, 118, 'Brazil', 'BRA', 2, 0),
(54, 119, 'Belgium', 'BEL', 3, 0),
(55, 120, 'Sweden', 'SWE', 1, 0),
(56, 121, 'Colombia', 'COL', 1, 3),
(57, 122, 'Uruguay', 'URU', 0, 0),
(58, 123, 'Brazil', 'BRA', 1, 0),
(59, 124, 'Sweden', 'SWE', 0, 0),
(60, 125, 'Russia', 'RUS', 2, 3),
(61, 126, 'France', 'FRA', 1, 0),
(62, 127, 'Croatia', 'CRO', 2, 0),
(63, 128, 'Belgium', 'BEL', 2, 0),
(64, 129, 'France', 'FRA', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `fifa_id` varchar(255) NOT NULL,
  `attendance` varchar(255) NOT NULL,
  `stage_name` varchar(255) NOT NULL,
  `home_team_country` varchar(255) NOT NULL,
  `away_team_country` varchar(255) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `winner` varchar(255) NOT NULL,
  `winner_code` varchar(255) NOT NULL,
  `last_event_update_at` varchar(255) NOT NULL,
  `last_score_update_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `venue`, `location`, `status`, `time`, `fifa_id`, `attendance`, `stage_name`, `home_team_country`, `away_team_country`, `datetime`, `winner`, `winner_code`, `last_event_update_at`, `last_score_update_at`) VALUES
(66, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331503', '78011', 'First stage', 'Russia', 'Saudi Arabia', '2018-06-14T15:00:00Z', 'Russia', 'RUS', '2018-06-21T02:36:44Z', NULL),
(67, 'Ekaterinburg', 'Ekaterinburg Arena', 'completed', 'full-time', '300353632', '27015', 'First stage', 'Egypt', 'Uruguay', '2018-06-15T12:00:00Z', 'Uruguay', 'URU', '2018-06-21T02:37:25Z', NULL),
(68, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331526', '62548', 'First stage', 'Morocco', 'Iran', '2018-06-15T15:00:00Z', 'Iran', 'IRN', '2018-06-21T02:36:30Z', NULL),
(69, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331524', '43866', 'First stage', 'Portugal', 'Spain', '2018-06-15T18:00:00Z', 'Draw', 'Draw', '2018-06-21T02:36:18Z', '2018-06-15T19:52:38Z'),
(70, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331533', '41279', 'First stage', 'France', 'Australia', '2018-06-16T10:00:00Z', 'France', 'FRA', '2018-06-21T02:42:39Z', '2018-06-16T11:52:21Z'),
(71, 'Moscow', 'Spartak Stadium', 'completed', 'full-time', '300331515', '44190', 'First stage', 'Argentina', 'Iceland', '2018-06-16T13:00:00Z', 'Draw', 'Draw', '2018-06-21T02:37:10Z', '2018-06-16T14:54:29Z'),
(72, 'Saransk', 'Mordovia Arena', 'completed', 'full-time', '300331528', '40502', 'First stage', 'Peru', 'Denmark', '2018-06-16T16:00:00Z', 'Denmark', 'DEN', '2018-06-21T02:43:11Z', '2018-06-16T16:55:28Z'),
(73, 'Kaliningrad', 'Kaliningrad Stadium', 'completed', 'full-time', '300331523', '31136', 'First stage', 'Croatia', 'Nigeria', '2018-06-16T19:00:00Z', 'Croatia', 'CRO', '2018-06-21T02:42:48Z', '2018-06-16T20:53:41Z'),
(74, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331529', '41432', 'First stage', 'Costa Rica', 'Serbia', '2018-06-17T12:00:00Z', 'Serbia', 'SRB', '2018-06-21T02:44:52Z', '2018-06-17T13:54:55Z'),
(75, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331502', '78011', 'First stage', 'Germany', 'Mexico', '2018-06-17T15:00:00Z', 'Mexico', 'MEX', '2018-06-21T02:43:20Z', '2018-06-17T16:50:54Z'),
(76, 'Rostov-On-Don', 'Rostov Arena', 'completed', 'full-time', '300331525', '43109', 'First stage', 'Brazil', 'Switzerland', '2018-06-17T18:00:00Z', 'Draw', 'Draw', '2018-06-21T02:43:35Z', '2018-06-17T19:55:21Z'),
(77, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331499', '42300', 'First stage', 'Sweden', 'Korea Republic', '2018-06-18T12:00:00Z', 'Sweden', 'SWE', '2018-06-21T02:42:55Z', '2018-06-18T13:50:50Z'),
(78, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331539', '43257', 'First stage', 'Belgium', 'Panama', '2018-06-18T15:00:00Z', 'Belgium', 'BEL', '2018-06-21T01:51:44Z', '2018-06-18T16:53:29Z'),
(79, 'Volgograd', 'Volgograd Arena', 'completed', 'full-time', '300331554', '41064', 'First stage', 'Tunisia', 'England', '2018-06-18T18:00:00Z', 'England', 'ENG', '2018-06-21T01:40:20Z', '2018-06-18T19:54:06Z'),
(80, 'Saransk', 'Mordovia Arena', 'completed', 'full-time', '300331550', '40842', 'First stage', 'Colombia', 'Japan', '2018-06-19T12:00:00Z', 'Japan', 'JPN', '2018-06-21T02:42:30Z', '2018-06-19T13:52:45Z'),
(81, 'Moscow', 'Spartak Stadium', 'completed', 'full-time', '300331545', '44190', 'First stage', 'Poland', 'Senegal', '2018-06-19T15:00:00Z', 'Senegal', 'SEN', '2018-06-21T02:18:31Z', '2018-06-19T16:53:34Z'),
(82, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331495', '64468', 'First stage', 'Russia', 'Egypt', '2018-06-19T18:00:00Z', 'Russia', 'RUS', '2018-06-21T02:11:00Z', '2018-06-19T19:51:07Z'),
(83, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331511', '78011', 'First stage', 'Portugal', 'Morocco', '2018-06-20T12:00:00Z', 'Portugal', 'POR', '2018-06-21T02:35:54Z', '2018-06-20T13:55:28Z'),
(84, 'Rostov-On-Don', 'Rostov Arena', 'completed', 'full-time', '300331530', '42678', 'First stage', 'Uruguay', 'Saudi Arabia', '2018-06-20T15:00:00Z', 'Uruguay', 'URU', '2018-06-21T02:36:00Z', '2018-06-20T16:52:56Z'),
(85, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331496', '42718', 'First stage', 'Iran', 'Spain', '2018-06-20T18:00:00Z', 'Spain', 'ESP', '2018-06-21T02:36:07Z', '2018-06-20T19:50:29Z'),
(86, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331518', '40727', 'First stage', 'Denmark', 'Australia', '2018-06-21T12:00:00Z', 'Draw', 'Draw', '2018-06-22T00:00:03Z', '2018-06-22T00:00:03Z'),
(87, 'Ekaterinburg', 'Ekaterinburg Arena', 'completed', 'full-time', '300331527', '32789', 'First stage', 'France', 'Peru', '2018-06-21T15:00:00Z', 'France', 'FRA', '2018-06-21T23:59:51Z', '2018-06-21T23:59:50Z'),
(88, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331513', '43319', 'First stage', 'Argentina', 'Croatia', '2018-06-21T18:00:00Z', 'Croatia', 'CRO', '2018-06-21T23:59:57Z', '2018-06-21T23:59:57Z'),
(89, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331540', '64468', 'First stage', 'Brazil', 'Costa Rica', '2018-06-22T12:00:00Z', 'Brazil', 'BRA', '2018-06-22T13:55:03Z', '2018-06-22T13:55:03Z'),
(90, 'Volgograd', 'Volgograd Arena', 'completed', 'full-time', '300331497', '40904', 'First stage', 'Nigeria', 'Iceland', '2018-06-22T15:00:00Z', 'Nigeria', 'NGA', '2018-06-22T16:56:16Z', '2018-06-22T16:56:15Z'),
(91, 'Kaliningrad', 'Kaliningrad Stadium', 'completed', 'full-time', '300340183', '33167', 'First stage', 'Serbia', 'Switzerland', '2018-06-22T18:00:00Z', 'Switzerland', 'SUI', '2018-06-22T19:54:19Z', '2018-06-22T19:54:18Z'),
(92, 'Moscow', 'Spartak Stadium', 'completed', 'full-time', '300331547', '44190', 'First stage', 'Belgium', 'Tunisia', '2018-06-23T12:00:00Z', 'Belgium', 'BEL', '2018-06-23T13:55:55Z', '2018-06-23T13:55:55Z'),
(93, 'Rostov-On-Don', 'Rostov Arena', 'completed', 'full-time', '300331549', '43472', 'First stage', 'Korea Republic', 'Mexico', '2018-06-23T15:00:00Z', 'Mexico', 'MEX', '2018-06-23T16:53:31Z', '2018-06-23T16:53:31Z'),
(94, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331501', '44287', 'First stage', 'Germany', 'Sweden', '2018-06-23T18:00:00Z', 'Germany', 'GER', '2018-06-23T19:55:53Z', '2018-06-23T19:55:53Z'),
(95, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331546', '43319', 'First stage', 'England', 'Panama', '2018-06-24T12:00:00Z', 'England', 'ENG', '2018-06-24T13:53:42Z', '2018-06-24T13:53:42Z'),
(96, 'Ekaterinburg', 'Ekaterinburg Arena', 'completed', 'full-time', '300331505', '32572', 'First stage', 'Japan', 'Senegal', '2018-06-24T15:00:00Z', 'Draw', 'Draw', '2018-06-24T16:51:36Z', '2018-06-24T16:51:36Z'),
(97, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331508', '42873', 'First stage', 'Poland', 'Colombia', '2018-06-24T18:00:00Z', 'Colombia', 'COL', '2018-06-24T19:55:35Z', '2018-06-24T19:55:35Z'),
(98, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331516', '41970', 'First stage', 'Uruguay', 'Russia', '2018-06-25T14:00:00Z', 'Uruguay', 'URU', '2018-06-25T16:19:26Z', '2018-06-25T16:19:26Z'),
(99, 'Volgograd', 'Volgograd Arena', 'completed', 'full-time', '300331509', '36823', 'First stage', 'Saudi Arabia', 'Egypt', '2018-06-25T14:00:00Z', 'Saudi Arabia', 'KSA', '2018-06-25T16:19:33Z', '2018-06-25T16:19:33Z'),
(100, 'Kaliningrad', 'Kaliningrad Stadium', 'completed', 'full-time', '300340184', '33973', 'First stage', 'Spain', 'Morocco', '2018-06-25T18:00:00Z', 'Draw', 'Draw', '2018-06-25T19:56:26Z', '2018-06-25T19:56:26Z'),
(101, 'Saransk', 'Mordovia Arena', 'completed', 'full-time', '300331500', '41685', 'First stage', 'Iran', 'Portugal', '2018-06-25T18:00:00Z', 'Draw', 'Draw', '2018-06-25T19:57:13Z', '2018-06-25T19:57:13Z'),
(102, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331512', '78011', 'First stage', 'Denmark', 'France', '2018-06-26T14:00:00Z', 'Draw', 'Draw', '2018-06-26T15:51:55Z', '2018-06-26T15:51:55Z'),
(103, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331506', '44073', 'First stage', 'Australia', 'Peru', '2018-06-26T14:00:00Z', 'Peru', 'PER', '2018-06-26T15:53:54Z', '2018-06-26T15:53:54Z'),
(104, 'Rostov-On-Don', 'Rostov Arena', 'completed', 'full-time', '300331510', '43472', 'First stage', 'Iceland', 'Croatia', '2018-06-26T18:00:00Z', 'Croatia', 'CRO', '2018-06-26T19:52:36Z', '2018-06-26T19:52:36Z'),
(105, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331519', '64468', 'First stage', 'Nigeria', 'Argentina', '2018-06-26T18:00:00Z', 'Argentina', 'ARG', '2018-06-26T19:54:06Z', '2018-06-26T19:54:06Z'),
(106, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331532', '41835', 'First stage', 'Korea Republic', 'Germany', '2018-06-27T14:00:00Z', 'Korea Republic', 'KOR', '2018-06-27T15:58:47Z', '2018-06-27T15:58:47Z'),
(107, 'Ekaterinburg', 'Ekaterinburg Arena', 'completed', 'full-time', '300331548', '33061', 'First stage', 'Mexico', 'Sweden', '2018-06-27T14:00:00Z', 'Sweden', 'SWE', '2018-06-27T15:53:43Z', '2018-06-27T15:53:43Z'),
(108, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331534', '43319', 'First stage', 'Switzerland', 'Costa Rica', '2018-06-27T18:00:00Z', 'Draw', 'Draw', '2018-06-28T01:01:17Z', '2018-06-27T19:54:11Z'),
(109, 'Moscow', 'Spartak Stadium', 'completed', 'full-time', '300331521', '44190', 'First stage', 'Serbia', 'Brazil', '2018-06-27T18:00:00Z', 'Brazil', 'BRA', '2018-06-27T19:51:48Z', '2018-06-27T19:51:47Z'),
(110, 'Volgograd', 'Volgograd Arena', 'completed', 'full-time', '300331507', '42189', 'First stage', 'Japan', 'Poland', '2018-06-28T14:00:00Z', 'Poland', 'POL', '2018-06-28T15:52:28Z', '2018-06-28T15:52:28Z'),
(111, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331553', '41970', 'First stage', 'Senegal', 'Colombia', '2018-06-28T14:00:00Z', 'Colombia', 'COL', '2018-06-28T15:54:03Z', '2018-06-28T15:54:03Z'),
(112, 'Kaliningrad', 'Kaliningrad Stadium', 'completed', 'full-time', '300340182', '33973', 'First stage', 'England', 'Belgium', '2018-06-28T18:00:00Z', 'Belgium', 'BEL', '2018-06-28T19:51:13Z', '2018-06-28T19:51:13Z'),
(113, 'Saransk', 'Mordovia Arena', 'completed', 'full-time', '300331520', '37168', 'First stage', 'Panama', 'Tunisia', '2018-06-28T18:00:00Z', 'Tunisia', 'TUN', '2018-06-28T19:56:36Z', '2018-06-28T19:56:36Z'),
(114, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331537', '42873', 'Round of 16', 'France', 'Argentina', '2018-06-30T14:00:00Z', 'France', 'FRA', '2018-06-30T17:16:20Z', '2018-06-30T17:16:20Z'),
(115, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331544', '44287', 'Round of 16', 'Uruguay', 'Portugal', '2018-06-30T18:00:00Z', 'Uruguay', 'URU', '2018-06-30T19:55:36Z', '2018-06-30T19:55:36Z'),
(116, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331517', '78011', 'Round of 16', 'Spain', 'Russia', '2018-07-01T14:00:00Z', 'Russia', 'RUS', '2018-07-01T16:53:15Z', '2018-07-01T16:53:15Z'),
(117, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331498', '40851', 'Round of 16', 'Croatia', 'Denmark', '2018-07-01T18:00:00Z', 'Croatia', 'CRO', '2018-07-01T20:46:51Z', '2018-07-01T20:46:51Z'),
(118, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331535', '41970', 'Round of 16', 'Brazil', 'Mexico', '2018-07-02T14:00:00Z', 'Brazil', 'BRA', '2018-07-02T15:52:39Z', '2018-07-02T15:52:39Z'),
(119, 'Rostov-On-Don', 'Rostov Arena', 'completed', 'full-time', '300331551', '41466', 'Round of 16', 'Belgium', 'Japan', '2018-07-02T18:00:00Z', 'Belgium', 'BEL', '2018-07-02T19:54:07Z', '2018-07-02T19:54:06Z'),
(120, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331514', '64042', 'Round of 16', 'Sweden', 'Switzerland', '2018-07-03T14:00:00Z', 'Sweden', 'SWE', '2018-07-03T15:53:44Z', '2018-07-03T15:53:44Z'),
(121, 'Moscow', 'Spartak Stadium', 'completed', 'full-time', '300331542', '44190', 'Round of 16', 'Colombia', 'England', '2018-07-03T18:00:00Z', 'England', 'ENG', '2018-07-03T20:53:13Z', '2018-07-03T20:53:13Z'),
(122, 'Nizhny Novgorod', 'Nizhny Novgorod Stadium', 'completed', 'full-time', '300331543', '43319', 'Quarter-finals', 'Uruguay', 'France', '2018-07-06T14:00:00Z', 'France', 'FRA', '2018-07-06T15:53:30Z', '2018-07-06T15:53:30Z'),
(123, 'Kazan', 'Kazan Arena', 'completed', 'full-time', '300331538', '42873', 'Quarter-finals', 'Brazil', 'Belgium', '2018-07-06T18:00:00Z', 'Belgium', 'BEL', '2018-07-06T19:53:42Z', '2018-07-06T19:53:42Z'),
(124, 'Samara', 'Samara Arena', 'completed', 'full-time', '300331541', '39991', 'Quarter-finals', 'Sweden', 'England', '2018-07-07T14:00:00Z', 'England', 'ENG', '2018-07-07T15:52:32Z', '2018-07-07T15:52:32Z'),
(125, 'Sochi', 'Fisht Stadium', 'completed', 'full-time', '300331504', '44287', 'Quarter-finals', 'Russia', 'Croatia', '2018-07-07T18:00:00Z', 'Croatia', 'CRO', '2018-07-07T20:51:30Z', '2018-07-07T20:51:30Z'),
(126, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331531', '64286', 'Semi-finals', 'France', 'Belgium', '2018-07-10T18:00:00Z', 'France', 'FRA', '2018-07-10T19:54:35Z', '2018-07-10T19:54:35Z'),
(127, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331522', '78011', 'Semi-finals', 'Croatia', 'England', '2018-07-11T18:00:00Z', 'Croatia', 'CRO', '2018-07-11T20:37:36Z', '2018-07-11T20:37:36Z'),
(128, 'St. Petersburg', 'Saint Petersburg Stadium', 'completed', 'full-time', '300331536', '64406', 'Play-off for third place', 'Belgium', 'England', '2018-07-14T14:00:00Z', 'Belgium', 'BEL', '2018-07-14T15:52:29Z', '2018-07-14T15:52:28Z'),
(129, 'Moscow', 'Luzhniki Stadium', 'completed', 'full-time', '300331552', '78011', 'Final', 'France', 'Croatia', '2018-07-15T15:00:00Z', 'France', 'FRA', '2018-07-15T16:54:32Z', '2018-07-15T16:54:32Z');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `alternate_name` varchar(255) DEFAULT NULL,
  `fifa_code` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_letter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `country`, `alternate_name`, `fifa_code`, `group_id`, `group_letter`) VALUES
(1, 'Korea Republic', NULL, 'KOR', 6, 'F'),
(2, 'Germany', NULL, 'GER', 6, 'F'),
(3, 'Serbia', NULL, 'SRB', 5, 'E'),
(4, 'Costa Rica', NULL, 'CRC', 5, 'E'),
(5, 'Belgium', NULL, 'BEL', 7, 'G'),
(6, 'Poland', NULL, 'POL', 8, 'H'),
(7, 'Senegal', NULL, 'SEN', 8, 'H'),
(8, 'England', NULL, 'ENG', 7, 'G'),
(9, 'France', NULL, 'FRA', 3, 'C'),
(10, 'Croatia', NULL, 'CRO', 4, 'D'),
(11, 'Panama', NULL, 'PAN', 7, 'G'),
(12, 'Tunisia', NULL, 'TUN', 7, 'G'),
(13, 'Argentina', NULL, 'ARG', 4, 'D'),
(14, 'Portugal', NULL, 'POR', 2, 'B'),
(15, 'Mexico', NULL, 'MEX', 6, 'F'),
(16, 'Japan', NULL, 'JPN', 8, 'H'),
(17, 'Colombia', NULL, 'COL', 8, 'H'),
(18, 'Switzerland', NULL, 'SUI', 5, 'E'),
(19, 'Uruguay', NULL, 'URU', 1, 'A'),
(20, 'Brazil', NULL, 'BRA', 5, 'E'),
(21, 'Spain', NULL, 'ESP', 2, 'B'),
(22, 'Saudi Arabia', NULL, 'KSA', 1, 'A'),
(23, 'Egypt', NULL, 'EGY', 1, 'A'),
(24, 'Morocco', NULL, 'MAR', 2, 'B'),
(25, 'Iran', NULL, 'IRN', 2, 'B'),
(26, 'Sweden', NULL, 'SWE', 6, 'F'),
(27, 'Australia', NULL, 'AUS', 3, 'C'),
(28, 'Peru', NULL, 'PER', 3, 'C'),
(29, 'Iceland', NULL, 'ISL', 4, 'D'),
(30, 'Nigeria', NULL, 'NGA', 4, 'D'),
(31, 'Russia', NULL, 'RUS', 1, 'A'),
(32, 'Denmark', NULL, 'DEN', 3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `humidity` varchar(255) NOT NULL,
  `temp_celsius` varchar(255) NOT NULL,
  `temp_farenheit` varchar(255) NOT NULL,
  `wind_speed` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `match_id`, `humidity`, `temp_celsius`, `temp_farenheit`, `wind_speed`, `description`) VALUES
(65, 66, '43', '17', '49', '6', 'Partly Cloudy'),
(66, 67, '42', '14', '46', '29', 'Partly Cloudy'),
(67, 68, '37', '25', '57', '13', 'Partly Cloudy'),
(68, 69, '74', '24', '56', '10', 'Partly Cloudy Night'),
(69, 70, '32', '19', '51', '19', 'Sunny'),
(70, 71, '33', '22', '54', '11', 'Sunny'),
(71, 72, '48', '18', '50', '12', 'Partly Cloudy'),
(72, 73, '64', '20', '52', '7', 'Partly Cloudy'),
(73, 74, '32', '22', '54', '18', 'Sunny'),
(74, 75, '42', '23', '55', '11', 'Sunny'),
(75, 76, '27', '25', '57', '16', 'Partly Cloudy Night'),
(76, 77, '36', '25', '57', '9', 'Partly Cloudy'),
(77, 78, '71', '24', '56', '12', 'Partly Cloudy'),
(78, 79, '17', '24', '56', '7', 'Clear Night'),
(79, 80, '38', '27', '59', '12', 'Sunny'),
(80, 81, '40', '27', '59', '19', 'Cloudy'),
(81, 82, '83', '15', '47', '14', 'Cloudy'),
(82, 83, '33', '20', '52', '24', 'Partly Cloudy'),
(83, 84, '26', '32', '64', '10', 'Sunny'),
(84, 85, '48', '18', '50', '26', 'Clear Night'),
(85, 86, '32', '24', '56', '25', 'Sunny'),
(86, 87, '79', '12', '44', '21', 'Cloudy'),
(87, 88, '49', '17', '49', '15', 'Clear Night'),
(88, 89, '70', '19', '51', '19', 'Cloudy'),
(89, 90, '19', '32', '64', '2', 'Sunny'),
(90, 91, '55', '15', '47', '11', 'Sunny'),
(91, 92, '64', '28', '60', '12', 'Partly Cloudy'),
(92, 93, '28', '33', '65', '11', 'Partly Cloudy'),
(93, 94, '80', '22', '54', '11', 'Partly Cloudy Night'),
(94, 95, '33', '30', '62', '15', 'Partly Cloudy'),
(95, 96, '38', '25', '57', '26', 'Sunny'),
(96, 97, '58', '26', '58', '8', 'Clear Night'),
(97, 98, '34', '32', '64', '6', 'Sunny'),
(98, 99, '24', '35', '67', '10', 'Partly Cloudy'),
(99, 100, '70', '15', '47', '13', 'Partly Cloudy Night'),
(100, 101, '70', '23', '55', '9', 'Partly Cloudy Night'),
(101, 102, '34', '24', '56', '11', 'Partly Cloudy'),
(102, 103, '70', '30', '62', '10', 'Partly Cloudy'),
(103, 104, '38', '30', '62', '21', 'Clear Night'),
(104, 105, '45', '22', '54', '18', 'Sunny'),
(105, 106, '40', '28', '60', '18', 'Sunny'),
(106, 107, '42', '27', '59', '18', 'Sunny'),
(107, 108, '43', '20', '52', '13', 'Clear Night'),
(108, 109, '42', '24', '56', '12', 'Partly Cloudy'),
(109, 110, '24', '36', '68', '13', 'Sunny'),
(110, 111, '34', '27', '59', '21', 'Sunny'),
(111, 112, '61', '21', '53', '11', 'Sunny'),
(112, 113, '60', '20', '52', '7', 'Clear Night'),
(113, 114, '33', '28', '60', '12', 'Sunny'),
(114, 115, '74', '27', '59', '11', 'Clear Night'),
(115, 116, '63', '24', '56', '13', 'Partly Cloudy'),
(116, 117, '48', '25', '57', '15', 'Partly Cloudy Night'),
(117, 118, '28', '33', '65', '14', 'Sunny'),
(118, 119, '36', '25', '57', '9', 'Clear Night'),
(119, 120, '60', '18', '50', '10', 'Partly Cloudy'),
(120, 121, '61', '18', '50', '7', 'Cloudy'),
(121, 122, '53', '22', '54', '13', 'Partly Cloudy'),
(122, 123, '60', '20', '52', '9', 'Partly Cloudy Night'),
(123, 124, '39', '26', '58', '7', 'Partly Cloudy'),
(124, 125, '70', '24', '56', '12', 'Clear Night'),
(125, 126, '75', '18', '50', '11', 'Cloudy'),
(126, 127, '64', '21', '53', '6', 'Cloudy'),
(127, 128, '45', '26', '58', '10', 'Partly Cloudy'),
(128, 129, '51', '27', '59', '3', 'Partly Cloudy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `away_team`
--
ALTER TABLE `away_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_team`
--
ALTER TABLE `home_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `away_team`
--
ALTER TABLE `away_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `home_team`
--
ALTER TABLE `home_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
