-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2016 at 09:42 AM
-- Server version: 5.5.49
-- PHP Version: 5.4.45-0+deb7u3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `WebDiP2015x086`
--

-- --------------------------------------------------------

--
-- Table structure for table `anketa`
--

CREATE TABLE IF NOT EXISTS `anketa` (
  `id_a` int(11) NOT NULL,
  `kreiranje` timestamp NULL DEFAULT NULL,
  `pitanja_id_pitanja` int(11) NOT NULL,
  `pitanja_id_pitanja1` int(11) NOT NULL,
  `pitanja_id_pitanja2` int(11) NOT NULL,
  `pitanja_id_pitanja3` int(11) NOT NULL,
  `pitanja_id_pitanja4` int(11) NOT NULL,
  `odg_ekran` float DEFAULT NULL,
  `odg_bat` int(11) DEFAULT NULL,
  `odg_4g` varchar(1) DEFAULT NULL,
  `odg_mem` int(11) DEFAULT NULL,
  `odg_ram` float DEFAULT NULL,
  `odg_kam` float DEFAULT NULL,
  `odg_proc` varchar(30) DEFAULT NULL,
  `korisnik_idkorisnik` int(11) NOT NULL,
  PRIMARY KEY (`id_a`,`pitanja_id_pitanja`,`pitanja_id_pitanja1`,`pitanja_id_pitanja2`,`pitanja_id_pitanja3`,`pitanja_id_pitanja4`,`korisnik_idkorisnik`),
  KEY `fk_anketa_pitanja1_idx` (`pitanja_id_pitanja`),
  KEY `fk_anketa_pitanja2_idx` (`pitanja_id_pitanja1`),
  KEY `fk_anketa_pitanja3_idx` (`pitanja_id_pitanja2`),
  KEY `fk_anketa_pitanja4_idx` (`pitanja_id_pitanja3`),
  KEY `fk_anketa_pitanja5_idx` (`pitanja_id_pitanja4`),
  KEY `fk_anketa_korisnik1_idx` (`korisnik_idkorisnik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anketa`
--

INSERT INTO `anketa` (`id_a`, `kreiranje`, `pitanja_id_pitanja`, `pitanja_id_pitanja1`, `pitanja_id_pitanja2`, `pitanja_id_pitanja3`, `pitanja_id_pitanja4`, `odg_ekran`, `odg_bat`, `odg_4g`, `odg_mem`, `odg_ram`, `odg_kam`, `odg_proc`, `korisnik_idkorisnik`) VALUES
(1, '2016-03-28 21:48:40', 1, 2, 3, 5, 7, 4, 2000, 'd', NULL, 2, NULL, '2.2', 1),
(2, '2016-03-28 21:48:40', 2, 3, 4, 6, 1, 3.5, 3000, 'n', 8, NULL, 12, NULL, 2),
(3, '2016-03-28 21:48:40', 4, 5, 6, 7, 1, 5.5, NULL, 'd', NULL, 3.1, 16, '2.5', 2),
(4, '2016-03-28 21:48:40', 3, 4, 5, 6, 7, NULL, NULL, 'n', 8, 3, 8, '2.5', 1),
(5, '2016-03-28 21:48:40', 2, 1, 5, 6, 7, 4, 3100, NULL, NULL, 2.5, 16, '2.8', 1),
(6, '2016-03-28 21:52:17', 1, 2, 3, 4, 5, 5, 3000, 'd', 20, 2.4, NULL, NULL, 4),
(7, '2016-03-28 21:52:17', 3, 4, 5, 6, 7, NULL, NULL, 'd', 20, 2.1, 14, '2.2', 4),
(8, '2016-03-28 21:54:22', 1, 2, 3, 4, 5, 3, 3000, 'd', 20, 1.7, NULL, NULL, 3),
(9, '2016-03-28 21:54:22', 1, 2, 3, 6, 7, 2.5, 2900, 'd', NULL, NULL, 16, '2.5', 4),
(10, '2016-03-28 21:54:22', 1, 2, 3, 4, 5, 3.5, 3100, 'd', 32, 3.1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `autentikacija`
--

CREATE TABLE IF NOT EXISTS `autentikacija` (
  `id` int(11) NOT NULL,
  `sadrzaj` varchar(10) DEFAULT NULL,
  `korisnik_idkorisnik` int(11) NOT NULL,
  PRIMARY KEY (`id`,`korisnik_idkorisnik`),
  KEY `fk_autentikacija_korisnik1_idx` (`korisnik_idkorisnik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autentikacija`
--

INSERT INTO `autentikacija` (`id`, `sadrzaj`, `korisnik_idkorisnik`) VALUES
(1, 'Zvsdv780f9', 2),
(2, 'jf0328fhj9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandovi`
--

CREATE TABLE IF NOT EXISTS `brandovi` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) DEFAULT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandovi`
--

INSERT INTO `brandovi` (`id`, `naziv`, `upvote`, `downvote`) VALUES
(1, 'Samsung', 7, 2),
(2, 'LG', 2, 1),
(3, 'OnePlus', 0, 0),
(4, 'Sony ', 2, 1),
(5, 'Microsoft', 0, 0),
(6, 'Lenovo', 0, 0),
(7, 'Xiaomi', 1, 1),
(8, 'iPhone', 0, 1),
(9, 'Huawei', 0, 0),
(10, 'HTC', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik`
--

CREATE TABLE IF NOT EXISTS `dnevnik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `korisnik` varchar(45) NOT NULL,
  `akcija` text NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1271 ;

--
-- Dumping data for table `dnevnik`
--

INSERT INTO `dnevnik` (`id`, `korisnik`, `akcija`, `vrijeme`) VALUES
(853, 'Select', 'Select naziv from brandovi', '2016-06-15 12:00:22'),
(854, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:14:27'),
(855, 'Select', 'Select naziv from brandovi', '2016-06-15 12:14:27'),
(856, 'Select', 'Select naziv from brandovi', '2016-06-15 12:14:53'),
(857, 'Select', 'Select naziv from brandovi', '2016-06-15 12:15:12'),
(858, 'Select', 'Select naziv from brandovi', '2016-06-15 12:15:31'),
(859, 'Select', 'Select naziv from brandovi', '2016-06-15 12:16:58'),
(860, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:17:10'),
(861, 'Select', 'Select naziv from brandovi', '2016-06-15 12:17:10'),
(862, 'Select', 'Select naziv from brandovi', '2016-06-15 12:18:22'),
(863, 'Select', 'Select naziv from brandovi', '2016-06-15 12:18:50'),
(864, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:19:01'),
(865, 'Select', 'Select naziv from brandovi', '2016-06-15 12:19:01'),
(866, 'Select', 'Select naziv from brandovi', '2016-06-15 12:22:47'),
(867, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:22:59'),
(868, 'Select', 'Select naziv from brandovi', '2016-06-15 12:23:00'),
(869, 'Select', 'Select naziv from brandovi', '2016-06-15 12:24:01'),
(870, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:25:56'),
(871, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:27:07'),
(872, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:27:35'),
(873, 'Select', 'Select naziv from brandovi', '2016-06-15 12:27:36'),
(874, 'jolepartijaner', 'Uspješna prijava', '2016-06-15 12:27:53'),
(875, 'Select', 'Select naziv from brandovi', '2016-06-15 12:27:53'),
(876, 'Select', 'Select naziv from brandovi', '2016-06-15 12:32:20'),
(877, 'aletrajkoO!?', 'Neuspješna prijava', '2016-06-15 12:32:39'),
(878, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 12:32:45'),
(879, 'Select', 'Select naziv from brandovi', '2016-06-15 12:32:45'),
(880, 'Select', 'Select naziv from brandovi', '2016-06-15 14:25:03'),
(881, 'Select', 'Select naziv from brandovi', '2016-06-15 14:25:54'),
(882, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-15 14:26:04'),
(883, 'Select', 'Select naziv from brandovi', '2016-06-15 14:26:04'),
(884, 'Select', 'Select naziv from brandovi', '2016-06-15 14:26:54'),
(885, 'Select', 'Select naziv from brandovi', '2016-06-15 14:56:50'),
(886, 'Select', 'Select naziv from brandovi', '2016-06-15 14:57:27'),
(887, 'Select', 'Select naziv from brandovi', '2016-06-15 15:04:43'),
(888, 'Select', 'Select naziv from brandovi', '2016-06-15 15:11:10'),
(889, 'Select', 'Select naziv from brandovi', '2016-06-15 15:24:19'),
(890, 'Select', 'Select naziv from brandovi', '2016-06-15 15:24:39'),
(891, 'Select', 'Select naziv from brandovi', '2016-06-15 15:26:06'),
(892, 'Select', 'Select naziv from brandovi', '2016-06-15 15:28:53'),
(893, 'Select', 'Select naziv from brandovi', '2016-06-15 15:29:07'),
(894, 'Select', 'Select naziv from brandovi', '2016-06-15 15:29:24'),
(895, 'Select', 'Select naziv from brandovi', '2016-06-15 15:37:05'),
(896, 'matnovak', 'Neuspješna prijava', '2016-06-15 15:37:26'),
(897, 'ivaseplA!?', 'Neuspješna prijava', '2016-06-15 15:37:56'),
(898, 'ivaseplA!?', 'Uspješna prijava', '2016-06-15 15:38:04'),
(899, 'Select', 'Select naziv from brandovi', '2016-06-15 15:38:04'),
(900, 'Select', 'Select naziv from brandovi', '2016-06-15 15:39:10'),
(901, 'Select', 'Select naziv from brandovi', '2016-06-15 15:39:23'),
(902, 'Select', 'Select naziv from brandovi', '2016-06-15 16:03:34'),
(903, 'Select', 'Select naziv from brandovi', '2016-06-15 16:04:05'),
(904, 'Select', 'Select naziv from brandovi', '2016-06-15 16:05:09'),
(905, 'Select', 'Select naziv from brandovi', '2016-06-15 16:05:49'),
(906, 'Select', 'Select naziv from brandovi', '2016-06-15 16:06:15'),
(907, 'Select', 'Select naziv from brandovi', '2016-06-15 18:37:01'),
(908, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:07'),
(909, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:17'),
(910, 'Select', 'Select naziv from brandovi', '2016-06-15 18:37:31'),
(911, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:35'),
(912, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:45'),
(913, 'Select', 'Select naziv from brandovi', '2016-06-15 18:37:48'),
(914, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:55'),
(915, 'Select', 'select * from mobiteli;', '2016-06-15 18:37:59'),
(916, 'Select', 'select * from mobiteli;', '2016-06-15 18:38:01'),
(917, 'Select', 'Select naziv from brandovi', '2016-06-15 23:23:06'),
(918, 'Select', 'Select naziv from brandovi', '2016-06-15 23:24:19'),
(919, 'Select', 'Select naziv from brandovi', '2016-06-15 23:26:23'),
(920, 'Select', 'Select naziv from brandovi', '2016-06-15 23:26:38'),
(921, 'Select', 'Select naziv from brandovi', '2016-06-15 23:28:18'),
(922, 'Select', 'Select naziv from brandovi', '2016-06-15 23:28:30'),
(923, 'Select', 'Select naziv from brandovi', '2016-06-15 23:28:32'),
(924, 'Select', 'Select naziv from brandovi', '2016-06-15 23:29:03'),
(925, 'Select', 'Select naziv from brandovi', '2016-06-15 23:29:05'),
(926, 'Select', 'Select naziv from brandovi', '2016-06-15 23:29:22'),
(927, 'Select', 'Select naziv from brandovi', '2016-06-15 23:29:39'),
(928, 'Select', 'Select naziv from brandovi', '2016-06-15 23:29:52'),
(929, 'Select', 'Select naziv from brandovi', '2016-06-15 23:30:33'),
(930, 'Select', 'Select naziv from brandovi', '2016-06-15 23:30:58'),
(931, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:16'),
(932, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:18'),
(933, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:31'),
(934, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:34'),
(935, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:43'),
(936, 'Select', 'Select naziv from brandovi', '2016-06-15 23:31:44'),
(937, 'Select', 'Select naziv from brandovi', '2016-06-15 23:32:12'),
(938, 'Select', 'Select naziv from brandovi', '2016-06-15 23:32:25'),
(939, 'Select', 'Select naziv from brandovi', '2016-06-15 23:33:15'),
(940, 'Select', 'Select naziv from brandovi', '2016-06-15 23:33:16'),
(941, 'Select', 'Select naziv from brandovi', '2016-06-15 23:33:53'),
(942, 'Select', 'Select naziv from brandovi', '2016-06-15 23:34:35'),
(943, 'Select', 'Select naziv from brandovi', '2016-06-15 23:34:38'),
(944, 'Select', 'Select naziv from brandovi', '2016-06-15 23:34:49'),
(945, 'Select', 'Select naziv from brandovi', '2016-06-15 23:35:01'),
(946, 'Select', 'Select naziv from brandovi', '2016-06-15 23:35:13'),
(947, 'Select', 'Select naziv from brandovi', '2016-06-15 23:35:33'),
(948, 'Select', 'Select naziv from brandovi', '2016-06-15 23:35:34'),
(949, 'Select', 'Select naziv from brandovi', '2016-06-15 23:35:35'),
(950, 'Select', 'Select naziv from brandovi', '2016-06-15 23:36:19'),
(951, 'Select', 'Select naziv from brandovi', '2016-06-15 23:36:20'),
(952, 'Select', 'Select naziv from brandovi', '2016-06-15 23:36:39'),
(953, 'Select', 'Select naziv from brandovi', '2016-06-15 23:37:21'),
(954, 'Select', 'Select naziv from brandovi', '2016-06-15 23:48:11'),
(955, 'ivaseplA!?', 'Uspješna prijava', '2016-06-15 23:48:34'),
(956, 'Select', 'Select naziv from brandovi', '2016-06-15 23:48:34'),
(957, 'Select', 'Select naziv from brandovi', '2016-06-16 00:00:07'),
(958, 'Select', 'Select naziv from brandovi', '2016-06-16 00:00:51'),
(959, 'Select', 'Select naziv from brandovi', '2016-06-16 00:00:52'),
(960, 'Select', 'Select naziv from brandovi', '2016-06-16 00:00:54'),
(961, 'Select', 'Select naziv from brandovi', '2016-06-16 00:01:43'),
(962, 'Select', 'Select naziv from brandovi', '2016-06-16 00:03:08'),
(963, 'Select', 'Select naziv from brandovi', '2016-06-16 00:04:22'),
(964, 'Select', 'Select naziv from brandovi', '2016-06-16 00:04:34'),
(965, 'Select', 'Select naziv from brandovi', '2016-06-16 00:04:41'),
(966, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 00:05:31'),
(967, 'Select', 'Select naziv from brandovi', '2016-06-16 00:05:31'),
(968, 'Select', 'Select * from osoba', '2016-06-16 00:33:28'),
(969, 'Select', 'select * from osoba order by prezime;', '2016-06-16 00:33:30'),
(970, 'Select', 'select * from osoba order by prezime desc;', '2016-06-16 00:33:30'),
(971, 'Select', 'select * from osoba order by ime;', '2016-06-16 00:33:31'),
(972, 'Select', 'select * from osoba order by ime desc;', '2016-06-16 00:33:32'),
(973, 'Select', 'Select naziv from brandovi', '2016-06-16 00:33:43'),
(974, 'Select', 'Select naziv from brandovi', '2016-06-16 00:34:36'),
(975, 'Select', 'Select naziv from brandovi', '2016-06-16 00:35:37'),
(976, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:42'),
(977, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:45'),
(978, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:47'),
(979, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:49'),
(980, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:51'),
(981, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:53'),
(982, 'Select', 'select * from mobiteli;', '2016-06-16 00:35:55'),
(983, 'Select', 'Select * from osoba', '2016-06-16 00:44:44'),
(984, 'Select', 'Select * from osoba', '2016-06-16 00:46:21'),
(985, 'Select', 'Select naziv from brandovi', '2016-06-16 00:47:57'),
(986, 'Select', 'Select naziv from brandovi', '2016-06-16 00:48:38'),
(987, 'Select', 'Select naziv from brandovi', '2016-06-16 00:48:42'),
(988, 'Select', 'Select naziv from brandovi', '2016-06-16 00:51:38'),
(989, 'Select', 'Select naziv from brandovi', '2016-06-16 01:09:10'),
(990, 'Select', 'Select naziv from brandovi', '2016-06-16 01:09:50'),
(991, 'Select', 'Select naziv from brandovi', '2016-06-16 01:10:28'),
(992, 'Select', 'Select naziv from brandovi', '2016-06-16 01:11:13'),
(993, 'Select', 'Select naziv from brandovi', '2016-06-16 01:12:32'),
(994, 'Select', 'Select naziv from brandovi', '2016-06-16 01:12:57'),
(995, 'Select', 'Select naziv from brandovi', '2016-06-16 01:12:59'),
(996, 'Select', 'select * from mobiteli;', '2016-06-16 01:13:29'),
(997, 'Select', 'select * from mobiteli order by model;', '2016-06-16 01:13:32'),
(998, 'Select DESC', 'select * from mobiteli order by model desc;', '2016-06-16 01:13:32'),
(999, 'Select', 'select * from mobiteli order by model;', '2016-06-16 01:13:33'),
(1000, 'Select', 'select * from mobiteli order by baterija;', '2016-06-16 01:13:34'),
(1001, 'Select', 'select * from mobiteli order by baterija desc;', '2016-06-16 01:13:34'),
(1002, 'Select', 'select * from mobiteli order by baterija;', '2016-06-16 01:13:34'),
(1003, 'Select', 'Select naziv from brandovi', '2016-06-16 01:33:50'),
(1004, 'Select', 'Select naziv from brandovi', '2016-06-16 01:55:10'),
(1005, 'Select', 'Select naziv from brandovi', '2016-06-16 01:56:10'),
(1006, 'Select', 'Select naziv from brandovi', '2016-06-16 01:56:22'),
(1007, 'Select', 'Select naziv from brandovi', '2016-06-16 12:30:44'),
(1008, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 12:31:50'),
(1009, 'Select', 'Select naziv from brandovi', '2016-06-16 12:31:50'),
(1010, 'Select', 'select * from mobiteli;', '2016-06-16 12:40:21'),
(1011, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:24'),
(1012, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:25'),
(1013, 'Select', 'select * from mobiteli;', '2016-06-16 12:40:27'),
(1014, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:28'),
(1015, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:28'),
(1016, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:29'),
(1017, 'Select', 'select * from mobiteli;', '2016-06-16 12:40:30'),
(1018, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:31'),
(1019, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:32'),
(1020, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:43'),
(1021, 'Select', 'Select naziv from brandovi', '2016-06-16 12:40:55'),
(1022, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:02'),
(1023, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:04'),
(1024, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:07'),
(1025, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:10'),
(1026, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:27'),
(1027, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:34'),
(1028, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:36'),
(1029, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:40'),
(1030, 'Select', 'select * from mobiteli;', '2016-06-16 12:41:44'),
(1031, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:46'),
(1032, 'Select', 'Select naziv from brandovi', '2016-06-16 12:41:56'),
(1033, 'Select', 'Select naziv from brandovi', '2016-06-16 12:42:00'),
(1034, 'Select', 'Select naziv from brandovi', '2016-06-16 12:42:33'),
(1035, 'Select', 'Select naziv from brandovi', '2016-06-16 12:42:36'),
(1036, 'Select', 'Select naziv from brandovi', '2016-06-16 13:16:30'),
(1037, 'Select', 'Select naziv from brandovi', '2016-06-16 13:17:11'),
(1038, 'Select', 'Select naziv from brandovi', '2016-06-16 13:17:13'),
(1039, 'Select', 'Select naziv from brandovi', '2016-06-16 13:19:11'),
(1040, 'Select', 'Select naziv from brandovi', '2016-06-16 13:19:55'),
(1041, 'Select', 'Select naziv from brandovi', '2016-06-16 16:32:03'),
(1042, 'Select', 'Select naziv from brandovi', '2016-06-16 16:32:08'),
(1043, 'Select', 'Select naziv from brandovi', '2016-06-16 16:32:39'),
(1044, 'Select', 'Select naziv from brandovi', '2016-06-16 16:33:01'),
(1045, 'Select', 'Select naziv from brandovi', '2016-06-16 16:33:29'),
(1046, 'Select', 'Select naziv from brandovi', '2016-06-16 16:33:58'),
(1047, 'Select', 'Select naziv from brandovi', '2016-06-16 16:34:03'),
(1048, 'Select', 'Select naziv from brandovi', '2016-06-16 16:34:21'),
(1049, 'Select', 'Select naziv from brandovi', '2016-06-16 16:36:02'),
(1050, 'Select', 'Select naziv from brandovi', '2016-06-16 16:37:31'),
(1051, 'Select', 'Select naziv from brandovi', '2016-06-16 16:37:35'),
(1052, 'Select', 'Select naziv from brandovi', '2016-06-16 16:38:03'),
(1053, 'Select', 'Select naziv from brandovi', '2016-06-16 16:38:35'),
(1054, 'Select', 'Select naziv from brandovi', '2016-06-16 16:46:27'),
(1055, 'Select', 'Select naziv from brandovi', '2016-06-16 16:46:33'),
(1056, 'Select', 'Select naziv from brandovi', '2016-06-16 16:52:00'),
(1057, 'Select', 'Select naziv from brandovi', '2016-06-16 16:52:04'),
(1058, 'Select', 'Select naziv from brandovi', '2016-06-16 16:52:53'),
(1059, 'Select', 'Select naziv from brandovi', '2016-06-16 16:54:00'),
(1060, 'Select', 'Select naziv from brandovi', '2016-06-16 16:54:03'),
(1061, 'Select', 'Select naziv from brandovi', '2016-06-16 16:56:33'),
(1062, 'Select', 'Select naziv from brandovi', '2016-06-16 16:56:35'),
(1063, 'Select', 'Select naziv from brandovi', '2016-06-16 16:57:57'),
(1064, 'Select', 'Select naziv from brandovi', '2016-06-16 16:58:27'),
(1065, 'Select', 'Select naziv from brandovi', '2016-06-16 16:59:07'),
(1066, 'Select', 'Select naziv from brandovi', '2016-06-16 16:59:38'),
(1067, 'Select', 'Select naziv from brandovi', '2016-06-16 17:00:50'),
(1068, 'Select', 'Select naziv from brandovi', '2016-06-16 17:01:53'),
(1069, 'Select', 'Select naziv from brandovi', '2016-06-16 17:02:56'),
(1070, 'Select', 'Select naziv from brandovi', '2016-06-16 17:02:59'),
(1071, 'Select', 'Select naziv from brandovi', '2016-06-16 17:04:02'),
(1072, 'Select', 'Select naziv from brandovi', '2016-06-16 17:04:42'),
(1073, 'Select', 'Select naziv from brandovi', '2016-06-16 17:05:06'),
(1074, 'Select', 'Select naziv from brandovi', '2016-06-16 17:05:07'),
(1075, 'Select', 'Select naziv from brandovi', '2016-06-16 17:06:22'),
(1076, 'Select', 'Select naziv from brandovi', '2016-06-16 17:07:44'),
(1077, 'Select', 'Select naziv from brandovi', '2016-06-16 17:08:03'),
(1078, 'Select', 'Select naziv from brandovi', '2016-06-16 17:08:36'),
(1079, 'Select', 'Select naziv from brandovi', '2016-06-16 17:09:07'),
(1080, 'Select', 'Select naziv from brandovi', '2016-06-16 17:09:08'),
(1081, 'Select', 'Select naziv from brandovi', '2016-06-16 17:09:09'),
(1082, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:07'),
(1083, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:23'),
(1084, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:25'),
(1085, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:43'),
(1086, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:45'),
(1087, 'Select', 'Select naziv from brandovi', '2016-06-16 17:10:46'),
(1088, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:11'),
(1089, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:32'),
(1090, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:33'),
(1091, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:33'),
(1092, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:37'),
(1093, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:49'),
(1094, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:50'),
(1095, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:50'),
(1096, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:51'),
(1097, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:52'),
(1098, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:52'),
(1099, 'Select', 'Select naziv from brandovi', '2016-06-16 17:12:53'),
(1100, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:08'),
(1101, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:09'),
(1102, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:10'),
(1103, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:10'),
(1104, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:11'),
(1105, 'Select', 'Select naziv from brandovi', '2016-06-16 17:13:59'),
(1106, 'Select', 'Select naziv from brandovi', '2016-06-16 17:14:19'),
(1107, 'Select', 'Select naziv from brandovi', '2016-06-16 17:14:35'),
(1108, 'Select', 'Select naziv from brandovi', '2016-06-16 17:15:28'),
(1109, 'Select', 'Select naziv from brandovi', '2016-06-16 17:15:57'),
(1110, 'Select', 'Select naziv from brandovi', '2016-06-16 17:17:28'),
(1111, 'Select', 'Select naziv from brandovi', '2016-06-16 17:17:36'),
(1112, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 17:17:49'),
(1113, 'Select', 'Select naziv from brandovi', '2016-06-16 17:17:49'),
(1114, 'Select', 'select * from mobiteli;', '2016-06-16 17:17:52'),
(1115, 'Select', 'select * from mobiteli;', '2016-06-16 17:17:58'),
(1116, 'Select', 'Select * from osoba', '2016-06-16 17:18:01'),
(1117, 'Select', 'select * from osoba order by prezime;', '2016-06-16 17:18:10'),
(1118, 'Select', 'select * from osoba order by prezime desc;', '2016-06-16 17:18:12'),
(1119, 'Select', 'Select naziv from brandovi', '2016-06-16 17:18:29'),
(1120, 'Select', 'Select sirina,duzina from trgovine', '2016-06-16 17:18:32'),
(1121, 'Select', 'Select naziv from brandovi', '2016-06-16 17:18:42'),
(1122, 'Select', 'Select naziv from brandovi', '2016-06-16 17:20:23'),
(1123, 'Select', 'Select naziv from brandovi', '2016-06-16 17:21:12'),
(1124, 'Select', 'Select naziv from brandovi', '2016-06-16 17:21:25'),
(1125, 'Select', 'Select naziv from brandovi', '2016-06-16 17:21:51'),
(1126, 'Select', 'Select naziv from brandovi', '2016-06-16 17:25:47'),
(1127, 'Select', 'Select naziv from brandovi', '2016-06-16 17:27:26'),
(1128, 'Select', 'Select naziv from brandovi', '2016-06-16 17:28:14'),
(1129, 'Select', 'Select naziv from brandovi', '2016-06-16 17:30:08'),
(1130, 'Select', 'Select naziv from brandovi', '2016-06-16 17:30:32'),
(1131, 'Select', 'Select naziv from brandovi', '2016-06-16 17:31:16'),
(1132, 'Select', 'Select naziv from brandovi', '2016-06-16 17:41:07'),
(1133, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 17:41:23'),
(1134, 'Select', 'Select naziv from brandovi', '2016-06-16 17:41:23'),
(1135, 'Select', 'Select naziv from brandovi', '2016-06-16 17:42:03'),
(1136, 'Select', 'select * from mobiteli;', '2016-06-16 17:42:08'),
(1137, 'Select', 'select * from mobiteli order by baterija;', '2016-06-16 17:42:12'),
(1138, 'Select', 'select * from mobiteli order by baterija desc;', '2016-06-16 17:42:13'),
(1139, 'Select', 'select * from mobiteli order by baterija;', '2016-06-16 17:42:13'),
(1140, 'Select', 'Select naziv from brandovi', '2016-06-16 18:15:30'),
(1141, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 18:15:43'),
(1142, 'Select', 'Select naziv from brandovi', '2016-06-16 18:15:44'),
(1143, 'Select', 'select * from mobiteli;', '2016-06-16 18:16:02'),
(1144, 'Select', 'select * from mobiteli;', '2016-06-16 18:16:05'),
(1145, 'Select', 'Select naziv from brandovi', '2016-06-16 18:16:11'),
(1146, 'Select', 'Select naziv from brandovi', '2016-06-16 18:16:15'),
(1147, 'Select', 'Select naziv from brandovi', '2016-06-16 19:58:00'),
(1148, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-16 19:58:07'),
(1149, 'Select', 'Select naziv from brandovi', '2016-06-16 19:58:08'),
(1150, 'Select', 'Select naziv from brandovi', '2016-06-16 19:58:59'),
(1151, 'Select', 'Select naziv from brandovi', '2016-06-16 19:59:00'),
(1152, 'Select', 'Select naziv from brandovi', '2016-06-16 19:59:03'),
(1153, 'Select', 'Select naziv from brandovi', '2016-06-16 19:59:30'),
(1154, 'Select', 'Select naziv from brandovi', '2016-06-16 20:38:20'),
(1155, 'Select', 'Select naziv from brandovi', '2016-06-16 22:21:30'),
(1156, 'Select', 'Select naziv from brandovi', '2016-06-16 22:22:23'),
(1157, 'Select', 'Select naziv from brandovi', '2016-06-16 22:22:25'),
(1158, 'Select', 'Select naziv from brandovi', '2016-06-16 22:24:36'),
(1159, 'Select', 'Select naziv from brandovi', '2016-06-16 22:24:51'),
(1160, 'Select', 'Select naziv from brandovi', '2016-06-16 22:25:08'),
(1161, 'Select', 'Select * from osoba', '2016-06-16 22:25:10'),
(1162, 'Select', 'Select naziv from brandovi', '2016-06-16 22:25:44'),
(1163, 'Select', 'Select * from osoba', '2016-06-16 22:25:47'),
(1164, 'Select', 'Select * from osoba', '2016-06-16 22:25:54'),
(1165, 'Select', 'Select * from osoba', '2016-06-16 22:25:57'),
(1166, 'Select', 'Select naziv from brandovi', '2016-06-16 22:26:17'),
(1167, 'Select', 'Select naziv from brandovi', '2016-06-16 22:26:19'),
(1168, 'Select', 'Select naziv from brandovi', '2016-06-16 22:26:35'),
(1169, 'Select', 'Select * from osoba', '2016-06-16 22:26:37'),
(1170, 'Select', 'Select naziv from brandovi', '2016-06-16 22:26:50'),
(1171, 'Select', 'Select * from osoba', '2016-06-16 22:27:13'),
(1172, 'Select', 'Select naziv from brandovi', '2016-06-16 22:28:09'),
(1173, 'Select', 'Select * from osoba', '2016-06-16 22:28:12'),
(1174, 'Select', 'Select naziv from brandovi', '2016-06-16 22:28:23'),
(1175, 'Select', 'Select naziv from brandovi', '2016-06-16 22:36:30'),
(1176, 'Select', 'Select naziv from brandovi', '2016-06-16 22:36:47'),
(1177, 'kristigasljev', 'select count(*) as broj from osoba where korime =''kristigasljev'';', '2016-06-16 22:37:17'),
(1178, 'kristigasljev', 'Insert into osoba values (''Kristijan'',''Gasljevic'',''kristigasljev'',''ljozinka??'',''aletrajko@foi.hr'',''099 4111221'',''91567b545d1ec27bd95e3fb89ca59090a8567f0a2740a8e8ff32cba6c8a246ac'',0,1,''2016-06-17 00:41:22'',0)', '2016-06-16 22:41:22'),
(1179, 'Dohvacanje vremena', 'Select time from vvrijeme where id=1', '2016-06-16 22:41:46'),
(1180, 'Select', 'Select naziv from brandovi', '2016-06-16 22:41:48'),
(1181, 'kristigasljev', 'Neuspješna prijava', '2016-06-16 22:42:08'),
(1182, 'kristigasljev', 'Uspješna prijava', '2016-06-16 22:42:20'),
(1183, 'Select', 'Select naziv from brandovi', '2016-06-16 22:42:20'),
(1184, 'Select', 'Select naziv from brandovi', '2016-06-16 22:42:55'),
(1185, 'Select', 'Select * from osoba', '2016-06-16 22:43:04'),
(1186, 'Select', 'select * from osoba order by prezime;', '2016-06-16 22:43:09'),
(1187, 'Select', 'select * from osoba order by prezime desc;', '2016-06-16 22:43:09'),
(1188, 'Select', 'select * from osoba order by prezime;', '2016-06-16 22:43:10'),
(1189, 'Select', 'select * from osoba order by prezime desc;', '2016-06-16 22:43:11'),
(1190, 'Select', 'select * from osoba order by ime;', '2016-06-16 22:43:12'),
(1191, 'Select', 'select * from osoba order by ime desc;', '2016-06-16 22:43:13'),
(1192, 'Select', 'select * from osoba order by ime;', '2016-06-16 22:43:14'),
(1193, 'Select', 'select * from osoba order by ime desc;', '2016-06-16 22:43:14'),
(1194, 'Select', 'Select naziv from brandovi', '2016-06-16 22:43:18'),
(1195, 'Select', 'Select sirina,duzina from trgovine', '2016-06-16 22:43:21'),
(1196, 'Select', 'Select naziv from brandovi', '2016-06-16 22:43:35'),
(1197, 'Select', 'select * from mobiteli;', '2016-06-16 22:43:42'),
(1198, 'Select', 'Select naziv from brandovi', '2016-06-16 22:44:30'),
(1199, 'Select', 'select * from mobiteli;', '2016-06-16 22:44:41'),
(1200, 'Select', 'Select naziv from brandovi', '2016-06-16 22:44:42'),
(1201, 'Select', 'Select naziv from brandovi', '2016-06-16 22:45:00'),
(1202, 'Select', 'select * from mobiteli;', '2016-06-16 22:45:03'),
(1203, 'Select', 'select * from mobiteli;', '2016-06-16 22:45:11'),
(1204, 'kristigasljev', 'Uspješna prijava', '2016-06-16 22:46:02'),
(1205, 'Select', 'Select naziv from brandovi', '2016-06-16 22:46:02'),
(1206, 'kristigasljev', 'Neuspješna prijava', '2016-06-16 22:46:20'),
(1207, 'kristigasljev', 'Neuspješna prijava', '2016-06-16 22:46:24'),
(1208, 'kristigasljev', 'Neuspješna prijava', '2016-06-16 22:46:27'),
(1209, 'kristigasljev', 'Zakljucan racun', '2016-06-16 22:46:33'),
(1210, 'kristigasljev', 'Zakljucan racun', '2016-06-16 22:46:37'),
(1211, 'kristigasljev', 'Zakljucan racun', '2016-06-16 22:46:48'),
(1212, 'krezdjel', 'select count(*) as broj from osoba where korime =''krezdjel'';', '2016-06-16 22:47:20'),
(1213, 'krezdjel', 'Insert into osoba values (''Kreso'',''Zdjelar'',''krezdjel'',''ljozinka??'',''aletrajko@foi.hr'',''099 4111221'',''75ebba6759b9253fbf3d762df7f06deebaa25ae65c3fc37b24d9490fa9307efc'',0,1,''2016-06-17 00:47:41'',0)', '2016-06-16 22:47:41'),
(1214, 'Update', 'Select time from vvrijeme where id=1', '2016-06-17 11:47:55'),
(1215, 'Dohvacanje vremena', 'Select time from vvrijeme where id=1', '2016-06-17 11:48:11'),
(1216, 'Select', 'Select naziv from brandovi', '2016-06-17 11:48:24'),
(1217, 'Select', 'select * from mobiteli;', '2016-06-17 11:49:33'),
(1218, 'Select', 'Select naziv from brandovi', '2016-06-17 11:49:44'),
(1219, 'Select', 'Select naziv from brandovi', '2016-06-17 11:49:47'),
(1220, 'Select', 'Select naziv from brandovi', '2016-06-17 13:24:42'),
(1221, 'Select', 'Select naziv from brandovi', '2016-06-17 13:25:22'),
(1222, 'Select', 'Select naziv from brandovi', '2016-06-17 19:58:48'),
(1223, 'Select', 'select * from mobiteli;', '2016-06-17 20:02:54'),
(1224, 'aletrajkoO!?', 'select count(*) as broj from osoba where korime =''aletrajkoO!?'';', '2016-06-17 20:03:16'),
(1225, 'aletrajkoO!?', 'select count(*) as broj from osoba where korime =''aletrajkoO!?'';', '2016-06-17 20:03:39'),
(1226, 'mlazar11', 'select count(*) as broj from osoba where korime =''mlazar11'';', '2016-06-17 20:03:57'),
(1227, 'mlazar11', 'Insert into osoba values (''Matija'',''Lazar'',''mlazar11'',''ljozinka??'',''aletrajko@foi.hr'',''099 3134114'',''727957a92066ce2766068f0f3eea89a06e0b1adcba26d2b5fbd0c8a399379b17'',0,1,''2016-06-17 22:04:27'',0)', '2016-06-17 20:04:27'),
(1228, 'Update', 'Select time from vvrijeme where id=1', '2016-06-21 01:05:58'),
(1229, 'Dohvacanje vremena', 'Select time from vvrijeme where id=1', '2016-06-21 01:06:09'),
(1230, 'Update', 'Select time from vvrijeme where id=1', '2016-06-17 12:06:24'),
(1231, 'Dohvacanje vremena', 'Select time from vvrijeme where id=1', '2016-06-17 12:06:30'),
(1232, 'Select', 'Select naziv from brandovi', '2016-06-17 12:06:30'),
(1233, 'mlazar11', 'Uspješna prijava', '2016-06-17 12:07:07'),
(1234, 'Select', 'Select naziv from brandovi', '2016-06-17 12:07:08'),
(1235, 'mlazar11', 'Uspješna prijava', '2016-06-17 12:07:35'),
(1236, 'Select', 'Select naziv from brandovi', '2016-06-17 12:07:35'),
(1237, 'mlazar11', 'Neuspješna prijava', '2016-06-17 12:07:45'),
(1238, 'mlazar11', 'Neuspješna prijava', '2016-06-17 12:07:47'),
(1239, 'mlazar11', 'Neuspješna prijava', '2016-06-17 12:07:50'),
(1240, 'mlazar11', 'Zakljucan racun', '2016-06-17 12:07:54'),
(1241, 'mlazar11', 'Zakljucan racun', '2016-06-17 12:08:52'),
(1242, 'Select', 'Select * from osoba', '2016-06-17 12:10:11'),
(1243, 'Select', 'Select * from osoba', '2016-06-17 12:10:23'),
(1244, 'mlazar11', 'Promjena lozinke', '2016-06-17 12:10:55'),
(1245, 'Select', 'Select * from osoba', '2016-06-17 12:11:31'),
(1246, 'jolepartijaner', 'Uspješna prijava', '2016-06-17 12:11:53'),
(1247, 'Select', 'Select naziv from brandovi', '2016-06-17 12:11:53'),
(1248, 'aletrajkoO!?', 'Neuspješna prijava', '2016-06-17 12:12:14'),
(1249, 'aletrajkoO!?', 'Uspješna prijava', '2016-06-17 12:12:25'),
(1250, 'Select', 'Select naziv from brandovi', '2016-06-17 12:12:25'),
(1251, 'Select', 'Select naziv from brandovi', '2016-06-17 12:13:37'),
(1252, 'Select', 'Select naziv from brandovi', '2016-06-17 12:13:50'),
(1253, 'Select', 'Select naziv from brandovi', '2016-06-17 12:14:03'),
(1254, 'Select', 'Select naziv from brandovi', '2016-06-17 12:15:52'),
(1255, 'Select', 'select * from mobiteli;', '2016-06-17 12:16:08'),
(1256, 'Select', 'select * from mobiteli;', '2016-06-17 12:16:14'),
(1257, 'Select', 'Select naziv from brandovi', '2016-06-17 12:16:21'),
(1258, 'Select', 'Select naziv from brandovi', '2016-06-17 12:16:33'),
(1259, 'Select', 'Select naziv from brandovi', '2016-06-17 12:16:42'),
(1260, 'Select', 'Select sirina,duzina from trgovine', '2016-06-17 12:17:50'),
(1261, 'Select', 'Select naziv from brandovi', '2016-06-17 12:19:15'),
(1262, 'Select', 'Select naziv from brandovi', '2016-06-17 12:19:45'),
(1263, 'Select', 'Select naziv from brandovi', '2016-06-17 12:21:33'),
(1264, 'Select', 'Select * from osoba', '2016-06-17 12:21:37'),
(1265, 'Select', 'select * from osoba order by prezime;', '2016-06-17 12:21:40'),
(1266, 'Select', 'select * from osoba order by prezime desc;', '2016-06-17 12:21:41'),
(1267, 'Select', 'select * from osoba order by ime;', '2016-06-17 12:21:43'),
(1268, 'Select', 'select * from osoba order by ime desc;', '2016-06-17 12:21:43'),
(1269, 'Select', 'Select naziv from brandovi', '2016-06-17 12:21:45'),
(1270, 'Select', 'Select naziv from brandovi', '2016-06-17 12:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `korisnicke_slike`
--

CREATE TABLE IF NOT EXISTS `korisnicke_slike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slika` text NOT NULL,
  `tag` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `korisnicke_slike`
--

INSERT INTO `korisnicke_slike` (`id`, `slika`, `tag`) VALUES
(2, 'http://www.welectronics.com/gsm/Samsung/samsung-p300.jpg', 'SGH P300'),
(3, 'http://welectronics.com/gsm/Samsung/samsung-e250i-0.jpg', 'SGH e250'),
(4, 'http://cdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s-ii-plus-i9105p.jpg', 'Galaxy S2+');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `idkorisnik` int(11) NOT NULL,
  `korime` varchar(45) NOT NULL,
  `lozinka` varchar(45) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `dat_rod` datetime NOT NULL,
  `tip_korisnika_idtip_korisnika` int(11) NOT NULL,
  PRIMARY KEY (`idkorisnik`,`tip_korisnika_idtip_korisnika`),
  KEY `fk_korisnik_tip_korisnika1_idx` (`tip_korisnika_idtip_korisnika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idkorisnik`, `korime`, `lozinka`, `ime`, `prezime`, `dat_rod`, `tip_korisnika_idtip_korisnika`) VALUES
(1, 'aletrajko', 'aletrajko1', 'aleksandar', 'trajkov', '2006-04-08 09:00:00', 1),
(2, 'pflegma7', 'loserssorry', 'Kreso', 'Stojanov', '2009-09-09 16:00:00', 3),
(3, 'deajakov', 'dejoala', 'dean', 'jakovljevic', '2008-11-07 00:00:00', 4),
(4, 'ivasepl', 'ivasepl', 'ivan', 'sepl', '2010-03-03 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobiteli`
--

CREATE TABLE IF NOT EXISTS `mobiteli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(45) NOT NULL,
  `vel_ekrana` float NOT NULL,
  `baterija` int(11) NOT NULL,
  `Prednja_kamera` varchar(1) NOT NULL,
  `procesor` varchar(30) NOT NULL,
  `memorija` int(11) NOT NULL,
  `RAM` float NOT NULL,
  `kamera` float NOT NULL,
  `brandovi_id` int(11) NOT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL,
  `slike` text NOT NULL,
  PRIMARY KEY (`id`,`brandovi_id`),
  KEY `fk_mobiteli_brandovi1_idx` (`brandovi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `mobiteli`
--

INSERT INTO `mobiteli` (`id`, `model`, `vel_ekrana`, `baterija`, `Prednja_kamera`, `procesor`, `memorija`, `RAM`, `kamera`, `brandovi_id`, `upvote`, `downvote`, `slike`) VALUES
(1, 'Galaxy S4', 5, 2600, 'd', '6.4', 32, 2, 13, 1, 10, 4, 'http://drop.ndtv.com/TECH/product_database/images/5292013115024PM_635_samsung_galaxy_s_4.png'),
(2, 'Galaxy S5', 5.1, 2800, 'd', '10', 32, 2, 16, 1, 5, 3, 'http://i-cdn.phonearena.com/images/phones/45742-xlarge/Samsung-Galaxy-S5-2.jpg'),
(3, 'Galaxy S6', 5.1, 2550, 'd', '14.4', 64, 3, 16, 1, 5, 3, 'http://www.androidcentral.com/sites/androidcentral.com/files/styles/large/public/topic_images/2015/galaxy-s6-topic.png?itok=gz54XZjA'),
(4, 'Galaxy S7 ', 5.1, 3000, 'd', '18.4', 32, 4, 12, 1, 6, 3, 'http://www.samsung.com/hr/consumer/mobile-devices/smartphones/galaxy-s/galaxy-s7/images/galaxy-s7-edge_gallery_front_white_s3.png'),
(5, 'G3', 5.5, 3000, 'd', '8', 32, 3, 13, 2, 5, 3, 'https://negotiablesales.com/wp-content/uploads/2016/04/lg-g3.png'),
(6, 'G4', 5.5, 3000, 'd', '9.2', 32, 3, 16, 2, 5, 3, 'https://www.thinkofus.com.au/media/catalog/product/cache/1/image/1200x1300/9df78eab33525d08d6e5fb8d27136e95/l/g/lg-g4-4g-lte-ceramic-white.png'),
(7, 'One', 5.5, 3100, 'd', '10', 64, 3, 13, 3, 6, 4, 'https://lh3.googleusercontent.com/-PMgKNBwGP5c/VjR8U4QYUGI/AAAAAAAAAiM/He-nUbMQch8/s2048-Ic42/cuerpo-oneplus-x-.png'),
(8, 'Two', 5.5, 3300, 'd', '13.6', 64, 4, 13, 3, 8, 4, 'https://www.qualcomm.com/sites/ember/files/device/image/oneplus-two-angle.png'),
(9, 'Xperia Z', 5, 2300, 'd', '6', 16, 2, 13.1, 4, 5, 3, 'http://api.sonymobile.com/files/xperia-z-white-1240x840-8ff005dc9465d780126a15f59efcc7bc-opt.png'),
(10, 'Xperia Z2', 5.2, 3200, 'd', '9.2', 16, 3, 20, 4, 5, 5, 'http://www.bizcorpsonline.com/image/data/Sony/Xperia%20Z2%20BLK-.jpg'),
(11, 'Lumia 640 LTE', 5, 2500, 'n', '4.8', 8, 1, 8, 5, 6, 7, 'http://www.bdmobilephone.com/images/gallery/microsoft-lumia-640-lte_8982.jpg'),
(12, 'Lumia 950 XL', 5.7, 3300, 'd', '14', 32, 3, 20, 5, 5, 3, 'http://images.cdn.stuff.tv/sites/stuff.tv/files/styles/big-image/public/brands/Microsoft/Windows10/Phones/microsoft-lumia-950xl-leaked-render.png?itok=m_W9FVzI'),
(13, 'Vibe K4', 5.5, 3300, 'd', '10.4', 16, 3, 13, 6, 6, 3, 'http://1.bp.blogspot.com/-a725dAXCHSw/Vo1O3kXfCHI/AAAAAAAAC0E/b38wAcppgDQ/s1600/Lenovo-A7010-Lenovo-VIBE-X3-Lite-1024x667.png'),
(14, 'Vibe K5 +', 5, 2750, 'd', '10.8', 16, 2, 13, 6, 6, 3, 'http://www.chipchick.com/wp-content/uploads/2016/02/screenshot_350.png'),
(15, 'Mi 5', 5.15, 3000, 'd', '7.5', 128, 4, 16, 7, 6, 3, 'http://cdn02.androidauthority.net/wp-content/uploads/2015/12/Xiaomi-Mi-5-White.jpg'),
(16, 'Mi Max', 6.44, 4850, 'd', '14.8', 32, 4, 16, 7, 5, 3, 'http://www.androidheadlines.com/wp-content/uploads/2016/04/Xiaomi-Max-render-leak_2.png'),
(17, '5s', 4, 1560, 'd', '2.6', 16, 1, 8, 8, 5, 5, 'http://pdadb.net/img/gallery/big/apple_iphone_5s_3color_ios7_print.png'),
(18, '6', 4.7, 1810, 'd', '2.8', 64, 1, 8, 8, 7, 3, 'http://www.iclarified.com/images/news/41425/183985/183985.png'),
(19, '6s', 4.7, 1715, 'd', '3.7', 64, 2, 12, 8, 9, 4, 'https://9to5mac.files.wordpress.com/2014/09/iphone6p-select-2014.png'),
(20, 'SE', 4, 1624, 'd', '3.7', 64, 2, 12, 8, 5, 3, 'http://blogs-images.forbes.com/briansolomon/files/2016/03/iphone-se1-1200x730.png'),
(21, 'P9', 5.2, 3000, 'd', '15.2', 32, 4, 12, 9, 5, 3, 'http://www.unlockphonetool.com/wp-content/uploads/2016/02/How-To-Unlock-Huawei-P9.png'),
(22, 'P8lite', 5, 2200, 'd', '9.6', 16, 2, 13, 9, 5, 3, 'https://www.nabava.net/slike/proizvodi/huawei-mobitel-p8-lite-android-bijeli-crni_8bb9d94a.png'),
(23, 'Desire 626', 5, 2000, 'd', '13.6', 16, 2, 13, 10, 5, 4, 'http://cdn.androidcommunity.com/wp-content/uploads/2015/07/HTC-Desire626s-Cricket-1024x734.png'),
(24, 'One M9', 5, 2840, 'd', '14', 32, 3, 20, 10, 5, 3, 'https://support.t-mobile.com/servlet/JiveServlet/showImage/102-20802-3-30358/M9_6V_GunMetal_TMO.png'),
(25, '10', 5.2, 3000, 'd', '7.5', 64, 4, 12, 10, 5, 3, 'http://zdnet1.cbsistatic.com/hub/i/r/2016/03/04/fb8b92df-810e-4355-ad31-d4b3a421a1a5/resize/770xauto/79477412e9411dd5b6e6f7092ad85f98/htc-m10.png'),
(28, 'SGH-300', 1.7, 1500, 'n', '1.7', 2, 0.265, 3.2, 1, 5, 3, '0'),
(30, 'Galaxy Ace', 4.5, 2770, 'd', '11', 8, 2.16, 8, 1, 5, 3, '0'),
(31, 'M2', 5.1, 2440, 'd', '13', 128, 2, 12, 1, 0, 3, '0'),
(32, 'Galaxy S2+', 4.5, 2500, 'd', '10', 8, 1.7, 8, 1, 0, 1, '0'),
(33, 'Ace Optimum', 4, 2100, 'd', '13', 32, 3, 18, 1, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `mod_brand`
--

CREATE TABLE IF NOT EXISTS `mod_brand` (
  `moderator` varchar(20) NOT NULL,
  `id_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_brand`
--

INSERT INTO `mod_brand` (`moderator`, `id_brand`) VALUES
('ivaseplA!?', 1),
('aletrajkoO!?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `osoba`
--

CREATE TABLE IF NOT EXISTS `osoba` (
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `korime` varchar(30) NOT NULL,
  `lozinka` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `aktivacijski` varchar(200) DEFAULT NULL,
  `aktivan` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `vr` datetime NOT NULL,
  `pobr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osoba`
--

INSERT INTO `osoba` (`ime`, `prezime`, `korime`, `lozinka`, `email`, `telefon`, `aktivacijski`, `aktivan`, `tip`, `vr`, `pobr`) VALUES
('Aleksandar', 'Trajkov', 'aletrajkoO!?', 'lozinkaA!', 'aletrajko@foi.hr', '099 4177494', NULL, 1, 3, '0000-00-00 00:00:00', 0),
('Ivan', 'Sepl', 'ivaseplA!?', 'lozinkaB!', 'ivasepl@foi.hr', '099 3134114', NULL, 1, 2, '0000-00-00 00:00:00', 0),
('Kristiana', 'Vitez', 'kristivitezZ!?', 'lozinkaD!', 'kristivitez@foi.hr', '091 3007707', '3f840a4154b90939d258417119123331aaf7652d7a5576e9bff4b2d73fe0a5b9', 1, 1, '0000-00-00 00:00:00', 0),
('pero', 'erste', 'pererste', 'ss8n1whlw', 'aletrajko@foi.hr', '099 3134114', '6ae3d4c2a6c8006579bf649a308c18d953601cbac44cf29f82cb2f2743e322d2', 0, 1, '2016-06-08 05:24:48', 0),
('matija', 'novak', 'matnovak', 'dnxdyph23', 'aletrajko@foi.hr', '091 3001754', '0a3c58779228d31d572c9ece5847546c6a2de623dae2f759573eee70c4fe89c2', 1, 2, '2016-06-08 18:22:47', 1),
('dragutin', 'kermek', 'dkermek1', 'muxx8wdh9', 'aletrajko@foi.hr', '099 9910000', '83474f5ca7d2eb467873e52e95827eb459cc6a235eb34c448d3b2061ed231290', 1, 1, '2016-06-08 18:26:18', 1),
('josko', 'cagalj', 'jolepartijaner', 'ljozinka??', 'aletrajko@foi.hr', '099 3134114', '1c88933a6f5f90a90aaf2441e6952409d6f1791154dcecc9c3812ecb7bd609b7', 1, 1, '2016-06-10 02:29:23', 0),
('Elvis', 'Popovic', 'elvipopov', 'ljozinka??', 'aletrajko@foi.hr', '099 9910000', 'bd4472b76801cd308fe83c5766e3962c1dd54877ab6f6d103eaea4f25ab28d75', 0, 1, '2016-06-10 23:52:48', 2),
('Kristijan', 'Gasljevic', 'kristigasljev', 'ljozinka??', 'aletrajko@foi.hr', '099 4111221', '91567b545d1ec27bd95e3fb89ca59090a8567f0a2740a8e8ff32cba6c8a246ac', 1, 1, '2016-06-17 00:41:22', 3),
('Kreso', 'Zdjelar', 'krezdjel', 'ljozinka??', 'aletrajko@foi.hr', '099 4111221', '75ebba6759b9253fbf3d762df7f06deebaa25ae65c3fc37b24d9490fa9307efc', 0, 1, '2016-06-17 00:47:41', 0),
('Matija', 'Lazar', 'mlazar11', 'r6u8d0nng', 'aletrajko@foi.hr', '099 3134114', '727957a92066ce2766068f0f3eea89a06e0b1adcba26d2b5fbd0c8a399379b17', 1, 1, '2016-06-17 22:04:27', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pitanja`
--

CREATE TABLE IF NOT EXISTS `pitanja` (
  `id_pitanja` int(11) NOT NULL,
  `pitanje` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pitanja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pitanja`
--

INSERT INTO `pitanja` (`id_pitanja`, `pitanje`) VALUES
(1, 'Koja velicina ekrana vam najvise odgovara? Odgovor u Inch-ima:'),
(2, 'Koja snaga baterije vam najvise odgovara? Odgovor u obliku broja mAh:'),
(3, 'Zelite li 4g opciju signala? Da/ne :'),
(4, 'Koju frenkvenciju procesora zelite? Odgovor u GHz:'),
(5, 'Koja kolicina memorije vam najvise odgovara? Odgovor u GB: '),
(6, 'Koju kolicinu RAM memorije zelite u telefonu? Odgovor u obliku MB :'),
(7, 'Koju rezoluciju kamere zelite? Odgovor u broju Mpx:');

-- --------------------------------------------------------

--
-- Table structure for table `prijedlozi`
--

CREATE TABLE IF NOT EXISTS `prijedlozi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `korisnik` varchar(30) NOT NULL,
  `prijedlog` text NOT NULL,
  `kategorija` int(11) NOT NULL,
  `odobren` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `prijedlozi`
--

INSERT INTO `prijedlozi` (`id`, `korisnik`, `prijedlog`, `kategorija`, `odobren`) VALUES
(5, 'aletrajkoO!?', 'Insert into mobiteli values (default,1,"Galaxy S4 mini",3,2440,"d",10,16,2,9)', 1, 1),
(6, 'aletrajkoO!?', 'Insert into mobiteli values (default,1,"Galaxy S4 mini",3,2440,"d",10,16,2,9,0,0,0)', 1, 0),
(7, 'aletrajkoO!?', 'Insert into mobiteli values (default,1,"Galaxy S4 mini",3,2440,"d",10,16,2,9,0,0,0)', 1, 1),
(8, 'aletrajkoO!?', 'Insert into mobiteli values (default,8,"7",5.3,2200,"d",14,32,2,14,0,0,0)', 8, 1),
(9, 'aletrajkoO!?', 'Insert into mobiteli values (default,7,"Mi Min 6",3.6,2900,"n",11,8,2,8,0,0,0)', 7, 1),
(10, 'ivaseplA!?', 'Insert into mobiteli values (default,"SGH-300",1.7,1500,"n",1.7,2,0.265,3.2,1,0,0,0)', 1, 1),
(11, 'aletrajkoO!?', 'Insert into mobiteli values (default,"Galaxy Ace",4.5,2770,"d",11,8,2.16,8,1,0,0,0)', 1, 1),
(12, 'aletrajkoO!?', 'Insert into mobiteli values (default,"M2",5.1,2400,"d",15,120,2.3,12,7,0,0,0)', 7, 0),
(13, 'aletrajkoO!?', 'Insert into mobiteli values (default,"M2",5.1,2440,"d",13,128,2,12,1,0,0,0)', 1, 1),
(14, 'kristigasljev', 'Insert into mobiteli values (default,"Ace Optimum",4,2100,"d",13,32,3,18,1,0,0,0)', 1, 1),
(15, 'jolepartijaner', 'Insert into mobiteli values (default,"Galaxy S2+",4.5,2500,"d",10,8,1.7,8,1,0,0,0)', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rezultati`
--

CREATE TABLE IF NOT EXISTS `rezultati` (
  `id` int(11) NOT NULL,
  `mobitel_id` int(11) NOT NULL,
  `mobitel_id1` int(11) NOT NULL,
  `mobitel_id2` int(11) NOT NULL,
  `anketa_id_a` int(11) NOT NULL,
  PRIMARY KEY (`id`,`mobitel_id`,`mobitel_id1`,`mobitel_id2`,`anketa_id_a`),
  KEY `fk_rezultati_mobitel1_idx` (`mobitel_id`),
  KEY `fk_rezultati_mobitel2_idx` (`mobitel_id1`),
  KEY `fk_rezultati_mobitel3_idx` (`mobitel_id2`),
  KEY `fk_rezultati_anketa1_idx` (`anketa_id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rezultati`
--

INSERT INTO `rezultati` (`id`, `mobitel_id`, `mobitel_id1`, `mobitel_id2`, `anketa_id_a`) VALUES
(1, 2, 3, 5, 2),
(4, 2, 6, 4, 3),
(5, 2, 7, 6, 3),
(2, 4, 2, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tip_korisnika`
--

CREATE TABLE IF NOT EXISTS `tip_korisnika` (
  `idtip_korisnika` int(11) NOT NULL,
  `stupanj` varchar(45) NOT NULL,
  PRIMARY KEY (`idtip_korisnika`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`idtip_korisnika`, `stupanj`) VALUES
(1, 'registrirani korisnik'),
(2, 'moderator'),
(3, 'admin'),
(4, 'neregistrirani korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `trgovine`
--

CREATE TABLE IF NOT EXISTS `trgovine` (
  `id` int(11) NOT NULL,
  `ime` varchar(45) DEFAULT NULL,
  `opis` varchar(45) DEFAULT NULL,
  `sirina` double NOT NULL,
  `duzina` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trgovine`
--

INSERT INTO `trgovine` (`id`, `ime`, `opis`, `sirina`, `duzina`) VALUES
(1, 'ZIT', 'Maloprodajni ducan tehnoloskom opremom', 46.3898498, 16.4390704),
(2, 'TehnoMarket', 'Velikoprodajni ducan', 46.38911233, 16.43908031),
(3, 'iStore', 'Maloprodajni ducan za Apple racunala i uredaj', 46.390111001, 16.43911111),
(4, 'VeMil', 'Maloprodajni ducan', 46.30302217, 16.33774386),
(5, 'Links', 'Maloprodajni ducan', 46.302991093, 16.33722101),
(6, 'Systar', 'Velikoprodajni ducan', 46.303881947, 16.41436433),
(7, 'Alpha-M', 'Velikoprodajni ducan', 46.30324918, 16.337323534),
(8, 'Mondo', 'Maloprodajni ducan', 46.3030001831, 16.3375478463),
(9, 'Tia Mobiteli', 'Maloprodajni ducan', 46.308928403, 16.401000213),
(10, 'Megastore', 'Maloprodajni ducan', 46.309007617, 16.450945);

-- --------------------------------------------------------

--
-- Table structure for table `voteovi`
--

CREATE TABLE IF NOT EXISTS `voteovi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `korisnik` varchar(20) NOT NULL,
  `tip` varchar(10) NOT NULL,
  `objekt` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vvrijeme`
--

CREATE TABLE IF NOT EXISTS `vvrijeme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `time` (`time`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vvrijeme`
--

INSERT INTO `vvrijeme` (`ID`, `time`) VALUES
(1, 5),
(2, 2016);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anketa`
--
ALTER TABLE `anketa`
  ADD CONSTRAINT `fk_anketa_korisnik1` FOREIGN KEY (`korisnik_idkorisnik`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anketa_pitanja1` FOREIGN KEY (`pitanja_id_pitanja`) REFERENCES `pitanja` (`id_pitanja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anketa_pitanja2` FOREIGN KEY (`pitanja_id_pitanja1`) REFERENCES `pitanja` (`id_pitanja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anketa_pitanja3` FOREIGN KEY (`pitanja_id_pitanja2`) REFERENCES `pitanja` (`id_pitanja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anketa_pitanja4` FOREIGN KEY (`pitanja_id_pitanja3`) REFERENCES `pitanja` (`id_pitanja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anketa_pitanja5` FOREIGN KEY (`pitanja_id_pitanja4`) REFERENCES `pitanja` (`id_pitanja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `autentikacija`
--
ALTER TABLE `autentikacija`
  ADD CONSTRAINT `fk_autentikacija_korisnik1` FOREIGN KEY (`korisnik_idkorisnik`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_korisnik_tip_korisnika1` FOREIGN KEY (`tip_korisnika_idtip_korisnika`) REFERENCES `tip_korisnika` (`idtip_korisnika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mobiteli`
--
ALTER TABLE `mobiteli`
  ADD CONSTRAINT `fk_mobiteli_brandovi1` FOREIGN KEY (`brandovi_id`) REFERENCES `brandovi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rezultati`
--
ALTER TABLE `rezultati`
  ADD CONSTRAINT `fk_rezultati_anketa1` FOREIGN KEY (`anketa_id_a`) REFERENCES `anketa` (`id_a`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rezultati_mobitel1` FOREIGN KEY (`mobitel_id`) REFERENCES `mobiteli` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rezultati_mobitel2` FOREIGN KEY (`mobitel_id1`) REFERENCES `mobiteli` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rezultati_mobitel3` FOREIGN KEY (`mobitel_id2`) REFERENCES `mobiteli` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
