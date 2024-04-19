-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 12:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be21_cr6_bigevent_chidi`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `capacity` decimal(10,2) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(9, 'swimming', '2023-10-02 20:00:00', 'best swimmers', 'https://cdn.pixabay.com/photo/2016/09/18/14/21/swimmer-1678307_1280.jpg', 200.00, 'email2@example.com', 1234567891, 'abuja.nigeria.no2 nnamdi street.', 'http://example.com/event2', 'sport'),
(10, 'Theater', '2023-10-03 20:00:00', 'such a mesmerizing evening,join us.', 'https://cdn.pixabay.com/photo/2024/04/10/10/18/ai-generated-8687791_1280.jpg', 150.00, 'email3@example.com', 1234567892, 'imo state.no5 adanne street', 'http://example.com/event3', 'theater'),
(13, 'Running', '2023-10-06 20:00:00', 'bolt move.too fast too furious.', 'https://cdn.pixabay.com/photo/2015/03/01/22/27/women-655353_1280.jpg', 350.00, 'email6@example.com', 1234567895, '1239 Street, Newyork, USA', 'loading', 'Sport'),
(15, 'Rock festival', '2023-10-08 20:00:00', 'masters of death.mad love', 'https://cdn.pixabay.com/photo/2016/01/14/06/09/woman-1139397_1280.jpg', 450.00, 'email8@example.com', 1234567897, '125 streetroad Califonia.', 'http://example.com/event8', 'Music'),
(18, 'Surfing', '2024-04-19 16:44:11', 'we love moving wave.', 'https://cdn.pixabay.com/photo/2018/10/07/00/46/surfer-3729052_1280.jpg', 50000.00, 'ikenna@yahoo.com', 508974, '1234 avenue Brazil.', 'coming', 'Sport'),
(19, 'festival dancer', '2024-04-19 19:56:37', 'music lovers', 'https://cdn.pixabay.com/photo/2016/11/08/05/15/ramayana-festival-1807516_1280.jpg', 5000.00, 'ikenna@yahoo.com', 8039978547, '30 tanbruckgasse, vienna', 'coming', 'Music'),
(21, 'music', '2024-04-19 21:39:46', 'For Afro beat lovers', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662_1280.jpg', 50000.00, 'raara@hotmail.com', 814455698, 'No4 lawal street.Lagos nigeria', 'coming', 'Music'),
(22, 'Theater of war', '2024-04-19 21:44:00', 'scientific cinema', 'https://cdn.pixabay.com/photo/2014/10/19/14/57/war-venue-494345_1280.jpg', 100.00, 'theater@yahoo.com', 8144789658, 'No15 danburg germany', 'Loading', 'Theater'),
(23, 'Singing festival', '2024-04-19 22:09:02', 'Best singers from all over the world', 'https://cdn.pixabay.com/photo/2017/08/10/02/23/music-2617224_1280.jpg', 5000.00, 'singers@yahoo.com', 215874968, 'hongkong china.  14 avenu', 'coming', 'Theater');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
