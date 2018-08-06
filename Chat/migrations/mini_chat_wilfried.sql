-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 06, 2018 at 11:36 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_chat_wilfried`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `pseudo`, `message`, `date`, `ip`, `user_agent`) VALUES
(633, 'Wilfried', 'Voici mon prjet minichat.', '2018-08-06 11:34:34', '192.168.1.23', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0'),
(634, 'Wilfried', 'projet OMG !', '2018-08-06 11:34:48', '192.168.1.23', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `color`) VALUES
(1, 'se', '#ad4027'),
(2, 'se', '#14a08b'),
(3, 'se', '#59ccf9'),
(4, 'se', '#8275ea'),
(5, 'se', '#4b38a0'),
(6, 'se', '#06ad94'),
(7, 'se', '#9bbf37'),
(8, 'se', '#6247a5'),
(9, 'se', '#c409c1'),
(10, 'se', '#69eadf'),
(11, 'se', '#65f7ba'),
(12, 'se', '#54f756'),
(13, 'Wilfried', ' #0078ff '),
(14, 'zestelle2', ' #fbff00 '),
(15, 'segu', '#ff5eb6'),
(16, 'zzzzz', '#aeedf2'),
(17, 'qsdfsd', '#8bd14f'),
(18, 'zest2', '#ffc4db'),
(19, 'Cielphis', '#97f4ce'),
(20, 'Céline', '#2ebc07'),
(21, 'SEGUYOT', '#2389aa'),
(22, 'FOUILLA', '#ffc4c4'),
(23, 'éé\"éé', '#924ebf'),
(24, 'TitiYoupie', '#86a8d8'),
(25, 'NON', '#e80695'),
(26, 'pk pas', '#039b0d'),
(27, 'le ciel ', '#b20536'),
(28, 'jaune', '#0a2866'),
(29, 'yAOURT', '#dded4b'),
(30, 'yellow', '#75ef8f'),
(31, 'O.O', '#c6e222'),
(32, 'u.u', '#78dd6c'),
(33, 'J\'AI FAIM', '#3607b7'),
(34, 'GATEAUX AU CHOCOLAT', '#4ac992'),
(35, 'FRITES', '#fcd5bd'),
(36, 'je quitte le chat', '#76f767'),
(37, 'bye', '#1edbd8'),
(38, 'au revoir', '#36d8b0'),
(39, 'au', '#b3b3f9'),
(40, 'Marie', '#d8992d'),
(41, 'hum hum', '#c6f99f'),
(42, NULL, '#8af7ac'),
(43, NULL, '#e2387f'),
(44, NULL, '#9df2eb'),
(45, NULL, '#bded5e'),
(46, NULL, '#7397f4'),
(47, NULL, '#f9edc2'),
(48, NULL, '#3259ad'),
(49, NULL, '#6e6ec9'),
(50, NULL, '#4a078e'),
(51, NULL, '#ffa3af'),
(52, NULL, '#199b17'),
(53, NULL, '#6d3faa'),
(54, NULL, '#a7f99f'),
(55, NULL, '#8b2fd6'),
(56, NULL, '#8077f4'),
(57, NULL, '#44dd47'),
(58, NULL, '#d849dd'),
(59, NULL, '#e2dc24'),
(60, NULL, '#4b9fc6'),
(61, 'WilfriedHH', '#f9d4bd'),
(62, 'iueryize', '#b51938'),
(63, NULL, '#efeb02'),
(64, 'Jérémy', '#ffd3cc'),
(65, 'dsjifkjlsdss', '#12007c'),
(66, 'Gael', '#239faf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
