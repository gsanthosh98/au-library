-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 10, 2019 at 03:32 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Mar 01, 2019 at 05:32 AM
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'test@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--
-- Creation: Mar 01, 2019 at 05:32 AM
-- Last update: Mar 10, 2019 at 03:30 AM
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1' COMMENT 'Number of books',
  `remaining` int(11) DEFAULT NULL,
  `publisher` varchar(400) DEFAULT NULL,
  `edition` varchar(10) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `row` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `name`, `author`, `count`, `remaining`, `publisher`, `edition`, `price`, `subject`, `reference`, `department`, `row`) VALUES
(1, '180001', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 390, 'Physics', 'Yes', 'Physics', 'A2'),
(2, '180002', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(3, '180003', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(4, '180004', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', 'A2'),
(5, '180005', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', 'A2'),
(6, '180006', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(7, '180007', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 325, 'Physics', 'No', 'Physics', 'A2'),
(8, '180008', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 425, 'Physics', 'No', 'Physics', 'A2'),
(9, '180009', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(10, '180010', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 325, 'Physics', 'No', 'Physics', 'A2'),
(11, '180011', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(12, '180012', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(13, '180013', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(14, '180014', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(15, '180015', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(16, '180016', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(17, '180017', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(18, '180018', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 390, 'Physics', 'No', 'Physics', 'A2'),
(19, '180019', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 375, 'Physics', 'No', 'Physics', 'A2'),
(20, '180020', 'Engineering Physics  1', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '3', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(21, '180021', 'Engineering Physics  1', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '3', 0, 'Physics', 'No', 'Physics', 'A2'),
(22, '180022', 'Engineering Physics  2', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(23, '180023', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 275, 'Physics', 'Yes', 'Physics', 'A2'),
(24, '180024', 'Engineering Physics', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '1', 275, 'Physics', 'No', 'Physics', 'A2'),
(25, '180025', 'Engineering Physics 1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '12', 430, 'Physics', 'Yes', 'Physics', 'A2'),
(26, '180026', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '13', 450, 'Physics', 'Yes', 'Physics', 'A2'),
(27, '180027', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '8', 330, 'Physics', 'Yes', 'Physics', 'A2'),
(28, '180028', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '10', 370, 'Physics', 'Yes', 'Physics', 'A2'),
(29, '180029', 'Engineering Physics  1', 'P.Mani   ', 1, 1, 'Dhanam Publications', '8', 330, 'Physics', 'No', 'Physics', 'A2'),
(30, '180030', 'Engineering Physics  2', 'P.Mani   ', 1, 1, 'Shri Dhanam PUblisher', '10', 450, 'Physics', 'Yes', 'Physics', 'A2'),
(31, '180031', 'Engineering Physics Question Bank', 'P.Mani   ', 1, 1, 'Dhanam Publications', '3', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(32, '180032', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '5', 325, 'Physics', 'Yes', 'Physics', 'A2'),
(33, '180033', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '7', 395, 'Physics', 'Yes', 'Physics', 'A2'),
(34, '180034', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '8', 440, 'Physics', 'Yes', 'Physics', 'A2'),
(35, '180035', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '7', 395, 'Physics', 'No', 'Physics', 'A2'),
(36, '180036', 'Engineering Physics  1', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '5', 325, 'Physics', 'No', 'Physics', 'A2'),
(37, '180037', 'Engineering Physics  2', 'G.Senthilkumar   ', 1, 1, 'VRB Publishers', '1', 80, 'Physics', 'Yes', 'Physics', 'A2'),
(38, '180038', 'Engineering Physics  1', 'K.Tamilarasan K.Prabu  ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(39, '180039', 'Engineering Physics  2', 'K.Tamilarasan K.Prabu  ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(40, '180040', 'Engineering Physics  2', 'M.Nidhya T.Vigneswari  ', 1, 1, 'Jaitech Publications', '2', 250, 'Physics', 'Yes', 'Physics', 'A2'),
(41, '180041', 'Engineering Physics  2', 'M.Nidhya T.Vigneswari  ', 1, 1, 'Jaitech Publications', '3', 298, 'Physics', 'Yes', 'Physics', 'A2'),
(42, '180042', 'Engineering Physics', 'V.Rajendran   ', 1, 1, 'Tata McGraw Hill Education', '2', 0, 'Physics', 'Yes', 'Physics', 'A2'),
(43, '180043', 'Engineering Physics  1', 'K.L.Palanisamy   ', 1, 1, 'Sai Publications', '1', 280, 'Physics', 'Yes', 'Physics', 'A2'),
(44, '180044', 'Concept of Physics  1', 'H.C.Verma   ', 1, 1, 'Bharati Bhawan Publishers', '3', 160, 'Physics', 'Yes', 'Physics', 'A2'),
(45, '180045', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'Yes', 'Physics', 'A3'),
(46, '180046', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(47, '180047', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(48, '180048', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(49, '180049', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(50, '180050', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(51, '180051', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(52, '180052', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(53, '180053', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(54, '180054', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(55, '180055', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(56, '180056', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(57, '180057', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(58, '180058', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(59, '180059', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(60, '180060', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(61, '180061', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A3'),
(62, '180062', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A4'),
(63, '180063', 'Engineering Physics', 'R.K.Gaur S.L.Gupta  ', 1, 1, 'Dhanpat Rai Publications', '10', 650, 'Physics', 'No', 'Physics', 'A4'),
(64, '180064', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(65, '180065', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(66, '180066', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(67, '180067', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(68, '180068', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(69, '180069', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '14', 297, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(70, '180070', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(71, '180071', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(72, '180072', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '14', 297, 'Chemistry', 'No', 'Chemistry', 'A1'),
(73, '180073', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(74, '180074', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(75, '180075', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(76, '180076', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(77, '180077', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(78, '180078', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '16', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(79, '180079', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '17', 345, 'Chemistry', 'No', 'Chemistry', 'A1'),
(80, '180080', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(81, '180081', 'Engineering Chemistry 1', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '15', 325, 'Chemistry', 'No', 'Chemistry', 'A1'),
(82, '180082', 'Engineering Chemistry 1 Question Bank', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '1', 0, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(83, '180083', 'Engineering Chemistry  2', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '11', 230, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(84, '180084', 'Engineering Chemistry  2', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Hitech Publications', '12', 250, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(85, '180085', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(86, '180086', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'No', 'Chemistry', 'A4'),
(87, '180087', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '11', 630, 'Chemistry', 'No', 'Chemistry', 'A4'),
(88, '180088', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(89, '180089', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', 'A4'),
(90, '180090', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', 'A4'),
(91, '180091', 'Engineering Chemistry', 'A.Ravikrishnan P.Kannan  ', 1, 1, 'Sri Krishna Hitech Publications', '10', 597, 'Chemistry', 'No', 'Chemistry', 'A4'),
(92, '180092', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(93, '180093', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', 'A1'),
(94, '180094', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', 'A1'),
(95, '180095', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', 'A1'),
(96, '180096', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', 'A1'),
(97, '180097', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '1', 310, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(98, '180098', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', 'A1'),
(99, '180099', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '2', 295, 'Chemistry', 'Yes', 'Chemistry', 'A1'),
(100, '180100', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', 'A1'),
(101, '180101', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 296, 'Chemistry', 'No', 'Chemistry', 'A1'),
(102, '180102', 'Engineering Chemistry', 'K.Subramanian   ', 1, 1, 'United Global Publishers', '5', 280, 'Chemistry', 'No', 'Chemistry', 'A1'),
(103, '180103', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 375, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(104, '180104', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 375, 'Chemistry', 'No', 'Chemistry', 'A4'),
(105, '180105', 'Engineering Chemistry  1', 'A.Sheik Mideen   ', 1, 1, 'J B Publications', '14', 330, 'Chemistry', 'No', 'Chemistry', 'A4'),
(106, '180106', 'Engineering Chemistry', 'B.Sivasankar   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(107, '180107', 'Applied Chemistry', 'P.N.Palanisamy A.Geetha K.Manjula Rani ', 1, 1, 'Tata McGraw Hill Education', '1', 0, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(108, '180108', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(109, '180109', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'No', 'Chemistry', 'A4'),
(110, '180110', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '15', 425, 'Chemistry', 'No', 'Chemistry', 'A4'),
(111, '180111', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'Yes', 'Chemistry', 'A4'),
(112, '180112', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(113, '180113', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(114, '180114', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(115, '180115', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(116, '180116', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(117, '180117', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(118, '180118', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(119, '180119', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(120, '180120', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(121, '180121', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(122, '180122', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 525, 'Chemistry', 'No', 'Chemistry', 'A5'),
(123, '180123', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 475, 'Chemistry', 'No', 'Chemistry', 'A5'),
(124, '180124', 'Engineering Chemistry', 'P.C.Jain Monika Jain  ', 1, 1, 'Dhanpat Rai Publishing Company', '16', 510, 'Chemistry', 'No', 'Chemistry', 'A5'),
(125, '180125', 'Environmental Science and Engineering', 'Anubha Kaushik C.P.Kaushik  ', 1, 1, 'New Age International Publishers', '3', 150, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(126, '180126', 'Environmental Science and Engineering', 'Benny Joseph   ', 1, 1, 'McGraw Hill Education', '', 0, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(127, '180127', 'Environmental Studies', 'Erach Bharucha   ', 1, 1, 'Universities Press', '2', 225, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(128, '180128', 'Environmental Science and Engineering', 'S.Vairam S.Gopu C.Chelladurai ', 1, 1, 'Gems Publishers', '1', 275, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(129, '180129', 'Environmental Science and Engineering', 'Anubha Kaushik C.P.Kaushik  ', 1, 1, 'New Age International Publishers', '3', 150, 'Environmental Science', 'No', 'Environmental Science', 'A5'),
(130, '180130', 'Environmental Science and Engineering', 'Benny Joseph   ', 1, 1, 'McGraw Hill Education', '6', 0, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(131, '180131', 'Environmental Science and Engineering', 'A.Ravikrishnan   ', 1, 1, 'Sri Krishna Publications', '5', 165, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(132, '180132', 'Environmental Science', 'G.Tyler Miller   ', 1, 1, 'Thomson Brooks/Cole', '10', 0, 'Environmental Science', 'Yes', 'Environmental Science', 'A5'),
(133, '180133', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(134, '180134', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '52', 250, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(135, '180135', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(136, '180136', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(137, '180137', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(138, '180138', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(139, '180139', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(140, '180140', 'Engineering Drawing', 'N.D.Bhatt V.M.Panchal Pramod R.Ingle ', 1, 1, 'Charotar Publishing House', '53', 330, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(141, '180141', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(142, '180142', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(143, '180143', 'Engineering Drawing', 'N.S.Parthasarthy Vela Murali  ', 1, 1, 'Oxford University Press', '1', 465, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(144, '180144', 'Engineering Drawing', 'Dhananjay A.Jolhe   ', 1, 1, 'Tata McGraw Hill', '1', 0, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(145, '180145', 'Engineering Drawing', 'S.Ramachandran K.Pandian R.Devaraj E.V.V.Ramanamurthy', 1, 1, '', '', 0, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(146, '180146', 'Engineering Graphics', 'M.Saravanan M.Arockia Jaswin J.Bensam Raj ', 1, 1, 'Tri Sea Publications', '5', 420, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(147, '180147', 'Engineering Graphics', 'M.Saravanan M.Arockia Jaswin J.Bensam Raj ', 1, 1, 'Tri Sea Publications', '4', 400, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(148, '180148', 'Engineering Graphics', 'Vee Ess   ', 1, 1, 'V K Publishers', '5', 225, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(149, '180149', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(150, '180150', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '22', 0, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(151, '180151', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(152, '180152', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '23', 320, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(153, '180153', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 350, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(154, '180154', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(155, '180155', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 350, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(156, '180156', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(157, '180157', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '27', 480, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(158, '180158', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(159, '180159', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(160, '180160', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '28', 480, 'Engineering Graphics', 'Yes', 'Engineering Graphics', 'B1'),
(161, '180161', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '24', 380, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B1'),
(162, '180162', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '28', 480, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B2'),
(163, '180163', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B2'),
(164, '180164', 'Engineering Graphics', 'K.V.Natarajan   ', 1, 1, 'Dhanalakshmi Publishers', '26', 400, 'Engineering Graphics', 'No', 'Engineering Graphics', 'B2'),
(165, '180165', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'Yes', 'English', 'B2'),
(166, '180166', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(167, '180167', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(168, '180168', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(169, '180169', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(170, '180170', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(171, '180171', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(172, '180172', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(173, '180173', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(174, '180174', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(175, '180175', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(176, '180176', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(177, '180177', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(178, '180178', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(179, '180179', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(180, '180180', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(181, '180181', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(182, '180182', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(183, '180183', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(184, '180184', 'Interchange', 'Jack C.Richards Jonathan Hull Susan Proctor ', 1, 1, 'Cambridge University Press', '4', 0, 'English', 'No', 'English', 'B2'),
(185, '180185', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'Yes', 'English', 'B2'),
(186, '180186', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(187, '180187', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(188, '180188', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(189, '180189', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(190, '180190', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(191, '180191', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(192, '180192', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(193, '180193', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(194, '180194', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(195, '180195', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(196, '180196', 'Mindscape', 'K.Elango   ', 1, 1, 'Orient BlackSwan', '1', 295, 'English', 'No', 'English', 'B2'),
(197, '180197', 'English Work Book  1', 'P.Rathna   ', 1, 1, 'VRB Publishers', '13', 395, 'English', 'Yes', 'English', 'B2'),
(198, '180198', 'English Work Book  1', 'P.Rathna   ', 1, 1, 'VRB Publishers', '11', 296, 'English', 'Yes', 'English', 'B2'),
(199, '180199', 'English Work Book', 'N.M.Ramkumar   ', 1, 1, 'Standard Publications', '1', 400, 'English', 'Yes', 'English', 'B2'),
(200, '180200', 'Technical English Workbook  1', 'J.Anbazhagan Vijay N.Jaishree  ', 1, 1, 'Global Publishers', '3', 450, 'English', 'Yes', 'English', 'B2'),
(201, '180201', 'Technical English Workbook  2', 'S.Gunasekaran   ', 1, 1, 'Global Publishers', '6', 398, 'English', 'Yes', 'English', 'B2'),
(202, '180202', 'Technical English Workbook  2', 'S.Gunasekaran   ', 1, 1, 'United Global Publishers', '4', 294, 'English', 'Yes', 'English', 'B2'),
(203, '180203', 'Advanced Engineering Mathematics', 'Erwin Kreyszig Herbert Kreyszig Edward J.Norminton ', 1, 1, 'Wiley India', '10', 0, 'Mathematics', 'Yes', 'Mathematics', 'B2'),
(204, '180204', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'Yes', 'Mathematics', 'B2'),
(205, '180205', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B2'),
(206, '180206', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B2'),
(207, '180207', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(208, '180208', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(209, '180209', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(210, '180210', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(211, '180211', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(212, '180212', 'Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '7', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(213, '180213', 'Essential Calculus Early Transcendentals', 'James Stewart   ', 1, 1, 'Cengage Learning', '1', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(214, '180214', 'Engineering Mathematics  1', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '5', 488, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(215, '180215', 'Engineering Mathematics  1 Question Bank', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '1', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(216, '180216', 'Engineering Mathematics  2', 'J.John A.Arockiamary  ', 1, 1, 'Jaison Publications', '6', 488, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(217, '180217', 'Engineering Mathematics  1', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '5', 390, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(218, '180218', 'Engineering Mathematics  2', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '25', 495, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(219, '180219', 'Transforms and Partial Differential Equations', 'A.Singaravelu   ', 1, 1, 'Meenakshi Agency', '1', 475, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(220, '180220', 'Engineering Mathematics', 'N.P.Bali Manish Goyal  ', 1, 1, 'University Science Press', '4', 325, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(221, '180221', 'Engineering Mathematics  1', 'N.Subramaniam   ', 1, 1, 'Scm Publishers', '2', 490, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(222, '180222', 'Fundamentals of Applied Probability and Random Processes', 'Oliver C.Ibe   ', 1, 1, 'Elsevier', '5', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(223, '180223', 'Discrete and Combinatorial Mathematics', 'Ralph P.Grimaldi   ', 1, 1, 'Pearson Education', '4', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(224, '180224', 'Engineering Mathematics ', 'P.Sivaramakrishna Das C.Vijayakumari E.Rukmangadachari ', 1, 1, 'Pearson', '2', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(225, '180225', 'Engineering Mathematics  2', 'P.Sivaramakrishna Das C.Vijayakumari  ', 1, 1, 'Viji\'s Academy', '4', 395, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(226, '180226', 'Engineering Mathematics ', 'T.Veerarajan   ', 1, 1, 'Tata McGraw Hill Education', '3', 0, 'Mathematics', 'Yes', 'Mathematics', 'B3'),
(227, '180227', 'Engineering Mathematics', 'T.Veerarajan   ', 1, 1, 'Tata McGraw Hill Education', '3', 0, 'Mathematics', 'No', 'Mathematics', 'B3'),
(228, '180228', 'Engineering Mathematics  2', 'P.Ganesan   ', 1, 1, 'RDA Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(229, '180229', 'Calculus', 'S.Narayanan T.K.Manicavachagom Pillay  ', 1, 1, 'S.Viswanathan Publishers', '1', 0, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(230, '180230', 'Higher Engineering Mathematics', 'B.V.Ramana   ', 1, 1, 'Tata McGraw Hill Education', '4', 0, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(231, '180231', 'Higher Engineering Mathematics', 'B.V.Ramana   ', 1, 1, 'Tata McGraw Hill Education', '4', 0, 'Mathematics', 'No', 'Mathematics', 'B4'),
(232, '180232', 'Probability and Random Processes', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '7', 326, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(233, '180233', 'Probability and Random Processes Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(234, '180234', 'Discrete Mathematics Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 120, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(235, '180235', 'Transforms and Partial Differential Equations', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '11', 479, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(236, '180236', 'Transforms and Partial Differential Equations Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(237, '180237', 'Probability and Queueing Theory', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '6', 0, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(238, '180238', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(239, '180239', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'No', 'Mathematics', 'B4'),
(240, '180240', 'Probability and Queueing Theory Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'No', 'Mathematics', 'B4'),
(241, '180241', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 425, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(242, '180242', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 425, 'Mathematics', 'No', 'Mathematics', 'B4'),
(243, '180243', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '5', 425, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(244, '180244', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '2', 497, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(245, '180245', 'Engineering Mathematics  1', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '4', 497, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(246, '180246', 'Engineering Mathematics  1 Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '4', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(247, '180247', 'Engineering Mathematics  1 Question Bank', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 150, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(248, '180248', 'Engineering Mathematics  2', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '1', 452, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(249, '180249', 'Numerical Methods', 'G.Balaji   ', 1, 1, 'G.Balaji Publications', '9', 336, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(250, '180250', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'Yes', 'Mathematics', 'B4'),
(251, '180251', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', 'B4'),
(252, '180252', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', 'B4'),
(253, '180253', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', 'B5'),
(254, '180254', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '40', 360, 'Mathematics', 'No', 'Mathematics', 'B5'),
(255, '180255', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '41', 0, 'Mathematics', 'Yes', 'Mathematics', 'B5'),
(256, '180256', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '41', 0, 'Mathematics', 'No', 'Mathematics', 'B5'),
(257, '180257', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'Yes', 'Mathematics', 'B5'),
(258, '180258', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(259, '180259', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(260, '180260', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(261, '180261', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(262, '180262', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(263, '180263', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(264, '180264', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(265, '180265', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '42', 475, 'Mathematics', 'No', 'Mathematics', 'B5'),
(266, '180266', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 625, 'Mathematics', 'Yes', 'Mathematics', 'C1'),
(267, '180267', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 625, 'Mathematics', 'No', 'Mathematics', 'C1'),
(268, '180268', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 725, 'Mathematics', 'Yes', 'Mathematics', 'C1'),
(269, '180269', 'Higher Engineering Mathematics', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '43', 725, 'Mathematics', 'No', 'Mathematics', 'C1'),
(270, '180270', 'Numerical Methods', 'B.S.Grewal J.S.Grewal  ', 1, 1, 'Khanna Publishers', '9', 305, 'Mathematics', 'Yes', 'Mathematics', 'C1'),
(271, '180271', 'Applied Numerical Methods', 'Curtis F.Gerald Patrick O.Wheatley  ', 1, 1, 'Pearson', '7', 0, 'Mathematics', 'Yes', 'Mathematics', 'C1'),
(272, '180272', '', '', 0, 0, '', '', 0, '', '', '', ''),
(273, '180273', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(274, '180274', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(275, '180275', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(276, '180276', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(277, '180277', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '2', 315, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(278, '180278', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 315, 'Computer Science', 'No', 'Computer Science', 'C1'),
(279, '180279', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(280, '180280', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(281, '180281', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(282, '180282', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '1', 230, 'Computer Science', 'No', 'Computer Science', 'C1'),
(283, '180283', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '3', 315, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(284, '180284', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(285, '180285', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(286, '180286', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(287, '180287', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(288, '180288', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(289, '180289', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(290, '180290', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(291, '180291', 'Fundamentals of Computing and Programming in C', 'Pradip Dey Manas Ghosh  ', 1, 1, 'Oxford Higher Education', '4', 500, 'Computer Science', 'No', 'Computer Science', 'C1'),
(292, '180292', 'Computer Fundamentals and Programming in C', 'Anita Goel Ajay Mittal  ', 1, 1, 'Pearson', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(293, '180293', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '4', 180, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(294, '180294', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '12', 258, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(295, '180295', 'Let Us C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '12', 258, 'Computer Science', 'No', 'Computer Science', 'C1'),
(296, '180296', 'Understanding Pointers in C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '3', 195, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(297, '180297', 'Understanding Pointers in C', 'Yashavant Kanetkar   ', 1, 1, 'BPB Publications', '4', 270, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(298, '180298', 'Mastering Turbo C', 'Stan KellyBootle   ', 1, 1, 'BPB Publications', '1', 120, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(299, '180299', 'Programming in ANSI C', 'E.Balagurusamy   ', 1, 1, 'Tata McGraw Hill Publishing Company', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(300, '180300', 'The C Programming Language', 'Brian W.Kernighan Dennis M.Ritchie  ', 1, 1, 'PHI Learing', '2', 225, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(301, '180301', 'C Language', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(302, '180302', 'Programming Languages', 'Ravi Sethi K.V.Viswanatha  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(303, '180303', 'An Introduction to Operating Systems', 'Pramod Chandra P.Bhatt   ', 1, 1, 'PHI Learing', '2', 295, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(304, '180304', 'Operating Systems', 'Andrew S.Tanenbaum Albert S.Woodhull  ', 1, 1, 'PHI Learing', '2', 395, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(305, '180305', 'Computer Practice Laboratory  1', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C1'),
(306, '180306', 'Digital Logic and Computer Organization', 'V.Rajaraman T.Radhakrishnan  ', 1, 1, 'PHI Learing', '1', 295, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(307, '180307', 'Computer Organization and Design', 'David A.Patterson John L.Hennessy  ', 1, 1, 'MK Publishers', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(308, '180308', 'Computer Organization and Design', 'David A.Patterson John L.Hennessy  ', 1, 1, 'MK Publishers', '4', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(309, '180309', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(310, '180310', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(311, '180311', 'Computer Organization', 'Carl Hamacher Zvonko Vranesic Safwat Zaky ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', '', 'Computer Science', 'C2'),
(312, '180312', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(313, '180313', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'No', 'Computer Science', 'C2'),
(314, '180314', 'Computer Fundamentals', 'Pradeep K.Sinha Priti Sinha  ', 1, 1, 'BPB Publications', '3', 165, 'Computer Science', 'No', 'Computer Science', 'C2'),
(315, '180315', 'Compiler Construction', 'Kenneth C.Louden   ', 1, 1, 'Galgotia Publications', '1', 176, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(316, '180316', 'Applying UML and Patterns', 'Craig Larman   ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(317, '180317', 'Object Oriented Modeling and Design with UML', 'Michael R.Blaha James R.Rumbaugh  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(318, '180318', 'Object Oriented Modeling and Design with UML', 'Michael R.Blaha James R.Rumbaugh  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(319, '180319', 'XML', ' Web Services and the Data Revolution\",Frank P.Coyle   ', 1, 1, 'Pearson', '8', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(320, '180320', 'Introduction to Automata Theory', 'Languages and Computation\",John E.Hopcraft Rajeev Motwani Jeffrey D.Ullman ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(321, '180321', 'Introduction to Automata Theory', 'Languages and Computation\",John E.Hopcraft Rajeev Motwani Jeffrey D.Ullman ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(322, '180322', 'Computer Graphics Using OpenGL', 'Francis S.Hill Stephen M.Kelley  ', 1, 1, 'Pearson', '3', 550, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(323, '180323', 'Computer Graphics Using OpenGL', 'Francis S.Hill Stephen M.Kelley  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(324, '180324', 'Computer Networking', 'James F.Kurose Keith W.Ross  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(325, '180325', 'Data Communication and Networking', 'Behrouz A.Forouzan   ', 1, 1, 'McGraw Hill Education', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(326, '180326', 'Fundamentals of Computing and Programming', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '17', 460, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(327, '180327', 'Fundamentals of Computing and Programming', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '15', 395, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(328, '180328', 'Fundamentals of Computing and Programming', 'E.Balagurusamy   ', 1, 1, 'McGraw Hill Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(329, '180329', 'Digital Principles and System Design', 'Atul P.Godse Deepali A.Godse  ', 1, 1, 'Technical Publications', '4', 395, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(330, '180330', 'Digital Principles and Applications', 'Albert Paul Malvino Donald P.Leach  ', 1, 1, 'Tata McGraw Hill Publishing Company', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(331, '180331', 'Digital Design', 'M.Morris Mano   ', 1, 1, 'PHI Learing', '3', 175, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(332, '180332', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(333, '180333', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(334, '180334', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(335, '180335', 'Digital Design', 'M.Morris Mano Michael D.Ciletti  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(336, '180336', 'Digital Signal Processing', 'John G.Proakis Dimitris G.Manolakis  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(337, '180337', 'Digital Signal Processing', 'P.Ramesh Babu   ', 1, 1, 'Scitech Publications', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(338, '180338', 'System Software', 'Leland L.Beck D.Manjula  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(339, '180339', 'System Software', 'Leland L.Beck D.Manjula  ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(340, '180340', 'Software Engineering', 'J.Daphney Joann   ', 1, 1, 'A.R Publications', '1', 145, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(341, '180341', 'Software Engineering', 'V.R.Kavitha   ', 1, 1, 'Magnus Publications', '1', 200, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(342, '180342', 'Software Engineering', 'Roger S.Pressman   ', 1, 1, 'McGraw Hill Education', '7', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(343, '180343', 'Software Engineering', 'N.K.Prema   ', 1, 1, 'Sai Publishers', '1', 150, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(344, '180344', 'Fundamentals of Data Structures in C', 'Ellis Horowitz Sartaj Sahni Susan AndersonFreed ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(345, '180345', 'Fundamentals of Data Structures in C', 'Ellis Horowitz Sartaj Sahni Susan AndersonFreed ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'No', 'Computer Science', 'C2'),
(346, '180346', 'Fundamentals of Data Structures', 'Ellis Horowitz Sartaj Sahni  ', 1, 1, 'Galgotia Publications', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C2'),
(347, '180347', 'Programming and Data Structures  1', 'V.Ramesh Babu R.Samyuktha M.Muni Rathnam ', 1, 1, 'VRB Publishers', '1', 460, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(348, '180348', 'Data Structures and Algorithm Analysis in C', 'Mark Allen Weiss   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(349, '180349', 'Data Structures and Algorithm Analysis in C++', 'Mark Allen Weiss   ', 1, 1, 'Pearson', '3', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(350, '180350', 'Data Structures Algorithms and ObjectOriented Programming', 'Gregory L.Heileman   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(351, '180351', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(352, '180352', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '5', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(353, '180353', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(354, '180354', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(355, '180355', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(356, '180356', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(357, '180357', 'Database System Concepts', 'Abraham Silberchatz Henry F.Korth S.Sudarshan ', 1, 1, 'McGraw Hill Education', '6', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(358, '180358', 'Information Technology', 'Dennis P.Curtin Kim Foley Kunal Sen Cathleen Morin', 1, 1, 'Tata McGraw Hill Publishing Company', '13', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(359, '180359', 'Operations Research', 'R.Panneerselvam   ', 1, 1, 'PHI Learing', '2', 395, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(360, '180360', 'Artificial Intelligence', 'Stuart Russell Peter Norvig  ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(361, '180361', 'Introduction to Artificial Intelligence and Expert Systems', 'Dan W.Patterson   ', 1, 1, 'PHI Learing', '12', 150, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(362, '180362', 'Computer Programming', 'E.Balagurusamy   ', 1, 1, 'McGraw Hill Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(363, '180363', 'Computer Programming', 'Ashok N.Kamthane   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(364, '180364', 'Computer Programming', 'Ashok N.Kamthane   ', 1, 1, 'Pearson', '2', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(365, '180365', 'Distributed Systems', 'George Coulouris Jean Dollimore Tim Kindberg Gordon Blair', 1, 1, 'Pearson', '5', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(366, '180366', 'Image Processing', 'Analysis and Machine Vision\",Milan Sonka Vaclav Hlavac Roger Boyle ', 1, 1, 'Thomson Brooks/Cole', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(367, '180367', 'C++ How to Program', 'Paul Deitel Harvey Deitel  ', 1, 1, 'PHI Learing', '8', 695, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(368, '180368', 'C++ How to Program', 'Paul Deitel Harvey Deitel  ', 1, 1, 'PHI Learing', '8', 695, 'Computer Science', 'No', 'Computer Science', 'C3'),
(369, '180369', 'C++ How to Program', 'H.M.Deitel P.J.Deitel  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(370, '180370', 'C++ How to Program', 'H.M.Deitel P.J.Deitel  ', 1, 1, 'Pearson', '4', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(371, '180371', 'C++ Programming', 'Mike McGrath   ', 1, 1, 'Tata McGraw Hill Publishing Company', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(372, '180372', 'Computer Algorithms', 'Ellis Horowitz Sartaj Sahni Sanguthevar Rajasekaran ', 1, 1, 'University Press', '2', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(373, '180373', 'C++', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(374, '180374', 'C++', 'CSC   ', 1, 1, 'CSC Computer Education', '1', 0, 'Computer Science', 'No', 'Computer Science', 'C3'),
(375, '180375', 'Personal Computers', 'Art Margolis   ', 1, 1, 'BPB Publications', '1', 150, 'Computer Science', 'Yes', 'Computer Science', 'C3'),
(376, '180376', 'Design of Transmission Systems', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '3', 275, 'Mechanical', 'Yes', 'Mechanical', 'C3'),
(377, '180377', 'Total Quality Management', 'Dale H.Besterfield Carol BesterfieldMichna Glen H.Besterfield Mary BesterfieldSacre', 1, 1, 'Pearson', '4', 0, 'Mechanical', 'Yes', 'Mechanical', 'C3'),
(378, '180378', 'Total Quality Management', 'V.Jayakumar R.Raju  ', 1, 1, 'Lakshmi Publications', '7', 150, 'Mechanical', 'Yes', 'Mechanical', 'C3'),
(379, '180379', 'Fundamentals of Engineering Heat and Mass Transfer', 'R.C.Sachdeva   ', 1, 1, 'New Age International Publishers', '4', 395, 'Mechanical', 'Yes', 'Mechanical', 'C3'),
(380, '180380', 'Thermal Engineering', 'R.K.Rajput   ', 1, 1, 'Laxmi Publications', '8', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(381, '180381', 'Theory of Machines and Mechanisms', 'John J.Uicker Gordon R.Pennock Joseph E.Shigley ', 1, 1, 'Oxford University Press', '3', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(382, '180382', 'Theory of Machines', 'R.S.Khurmi J.K.Gupta  ', 1, 1, 'S.Chand Publishing', '41', 750, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(383, '180383', 'Machine Design', 'R.S.Khurmi J.K.Gupta  ', 1, 1, 'Eurasia Publishing House', '1', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(384, '180384', 'Dynamic of Machinery', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '5', 330, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(385, '180385', 'Engineering Thermodynamics', 'P.K.Nag   ', 1, 1, 'McGraw Hill Education', '5', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(386, '180386', 'Engineering Thermodynamics', 'E.Natarajan   ', 1, 1, 'Anuragam Publications', '2', 450, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(387, '180387', 'Manufacturing technology', 'P.N.Rao   ', 1, 1, 'McGraw Hill Education', '3', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(388, '180388', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '11', 510, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(389, '180389', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '8', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(390, '180390', 'Finite Element Analysis', 'S.Senthil R.Panneerdhass  ', 1, 1, 'Lakshmi Publications', '9', 430, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(391, '180391', 'Engineering Mechanics', 'N.Kottiswaran   ', 1, 1, 'Sri Balaji Publications', '12', 496, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(392, '180392', 'Engineering Mechanics', 'N.Kottiswaran   ', 1, 1, 'Sri Balaji Publications', '12', 469, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(393, '180393', 'Engineering Mechanics', 'V.Ramesh Babu   ', 1, 1, 'VRB Publications', '19', 550, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(394, '180394', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '9', 365, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(395, '180395', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '2', 245, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(396, '180396', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '7', 325, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(397, '180397', 'Thermal Engineering  1', 'A.Shanmugam T.Muthiah  ', 1, 1, 'Yuktha Publications', '1', 200, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(398, '180398', 'Engineering Mechanics', 'Vela Murali   ', 1, 1, 'Oxford University Press', '7', 295, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(399, '180399', 'Mechatronics', 'William Bolton   ', 1, 1, 'Pearson', '4', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(400, '180400', 'Strength of Materials', 'R.K.Rajput   ', 1, 1, 'S.Chand Publishing', '1', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(401, '180401', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '8', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(402, '180402', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '7', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(403, '180403', 'Vector Mechanics for Engineers', 'Ferdinand P.Beer E.Russell Johnston  ', 1, 1, 'Tata McGraw Hill', '9', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(404, '180404', 'Design of Transmission Systems', 'V.Jayakumar   ', 1, 1, 'Lakshmi Publications', '3', 275, 'Mechanical', 'No', 'Mechanical', 'D1'),
(405, '180405', 'Hydraulics and Fluid Mechanics', 'P.N.Modi S.M.Seth  ', 1, 1, 'Rajsons Publications', '20', 720, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(406, '180406', 'Engineering Fluid Mechanics', 'K.L.Kumar   ', 1, 1, 'S.Chand Publishing', '20', 400, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(407, '180407', 'Machine Drawing', 'K.R.Gopalakrishna   ', 1, 1, 'Subhas Stores', '22', 350, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(408, '180408', 'Machine Drawing', 'K.R.Gopalakrishna   ', 1, 1, 'Subhas Stores', '18', 0, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(409, '180409', 'Analog and Digital Communications', 'P.Chakrabarti   ', 1, 1, 'Dhanpat Rai Co', '2', 240, 'ECE', 'Yes', 'ECE', 'D1'),
(410, '180410', 'Microprocessors and Micro Controllers', 'B.P.Singh   ', 1, 1, 'Galgotia Publications', '2', 195, 'ECE', 'Yes', 'ECE', 'D1'),
(411, '180411', 'Microprocessors Comprehensive Studies', 'Naresh Grover   ', 1, 1, 'Dhanpat Rai Co', '5', 180, 'ECE', 'Yes', 'ECE', 'D1'),
(412, '180412', 'The Intel Microprocessors', 'Barry B.Brey   ', 1, 1, 'PHI Learning', '6', 350, 'ECE', 'Yes', 'ECE', 'D1'),
(413, '180413', 'The Intel Microprocessors', 'Barry B.Brey   ', 1, 1, 'PHI Learning', '6', 350, 'ECE', 'No', 'ECE', 'D1'),
(414, '180414', 'Applications and Design with Analog Integrated Circuits', 'J.Michael Jacob   ', 1, 1, 'PHI Learning', '2', 250, 'ECE', 'Yes', 'ECE', 'D1'),
(415, '180415', 'Question Bank in Electronics & Communication Engineering', 'B.R.Gupta V.Singhal  ', 1, 1, 'S.K.Kataria & Sons', '2', 250, 'ECE', 'Yes', 'ECE', 'D1'),
(416, '180416', 'Mechatronics', 'G.K.Vijayaraghavan R.Rajappan S.Ramalatha ', 1, 1, 'A.R.S Publications', '2', 120, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(417, '180417', 'The ABCs of the Internet', 'Christian Crumlish   ', 1, 1, 'BPB Publications', '2', 99, 'CSE', 'Yes', 'CSE', 'D1'),
(418, '180418', 'Mastering C', 'K.R.Venugopal S.R.Prasad  ', 1, 1, 'Tata McGraw Hill', '2', 0, 'CSE', 'Yes', 'CSE', 'D1'),
(419, '180419', 'Advanced Unix  A Programmer Guide', 'Stephen Prata   ', 1, 1, 'BPB Publications', '1', 150, 'CSE', 'Yes', 'CSE', 'D1'),
(420, '180420', 'Basic Electrical', 'Electronics and Computer Engineering\",R.Muthusubramanian S.Salivahanan K.A.Muraleedharan ', 1, 1, 'Tata McGraw Hill', '2', 0, 'EEE', 'Yes', 'EEE', 'D1'),
(421, '180421', 'Advanced Microprocessors and Peripherals', 'A.K.Ray K.M.Bhurchandi  ', 1, 1, 'Tata McGraw Hill', '2', 0, 'ECE', 'Yes', 'ECE', 'D1'),
(422, '180422', 'Embedded Systems', 'Raj Kamal   ', 1, 1, 'Tata McGraw Hill', '11', 0, 'ECE', 'Yes', 'ECE', 'D1'),
(423, '180423', 'Electric Drives', 'Vedam Subrahmanyam   ', 1, 1, 'Tata McGraw Hill', '19', 0, 'EEE', 'Yes', 'EEE', 'D1'),
(424, '180424', 'Electronic Instrumentation and Measurements', 'David A.Bell   ', 1, 1, 'PHI Learning', '2', 250, 'ECE', 'Yes', 'ECE', 'D1'),
(425, '180425', 'Traffic Engineering and Transport Planning', 'L.R.Kadiyali   ', 1, 1, 'Khanna Publishers', '3', 225, 'ECE', 'Yes', 'ECE', 'D1'),
(426, '180426', 'Vehicle Electronic Systems & Fault Diagnosis', 'Allan W.M.Bonnick   ', 1, 1, 'STS Press', '1', 0, 'ECE', 'Yes', 'ECE', 'D1'),
(427, '180427', 'Monochrome and Colour Television', 'R.R.Gulati   ', 1, 1, 'Wiley Eastern Limited', '2', 0, 'ECE', 'Yes', 'ECE', 'D1'),
(428, '180428', 'Control of Electrical Machines', 'S.K.Bhattacharya Brijinder Singh  ', 1, 1, 'New Age International Publishers', '1', 0, 'ECE', 'Yes', 'ECE', 'D1'),
(429, '180429', 'Microprocessor and Microcontroller', 'R.Theagarajan   ', 1, 1, 'Scitech Publications', '1', 233, 'ECE', 'Yes', 'ECE', 'D1'),
(430, '180430', 'Solid State Electronic Devices', 'Ben G.Streetman Sanjay Kumar Banerjee  ', 1, 1, 'PHI Learning', '6', 295, 'ECE', 'Yes', 'ECE', 'D1'),
(431, '180431', 'Highway Engineering', 'S.K.Khanna C.E.G.Justo  ', 1, 1, 'Nem Chand & Bros', '8', 200, 'Mechanical', 'Yes', 'Mechanical', 'D1'),
(432, '180432', 'Electronics Engineering', 'C.Aravind Vaithilingam   ', 1, 1, 'Charulatha Publications', '1', 75, 'EEE', 'Yes', 'EEE', 'D1'),
(433, '180433', 'Electrical Drives', 'S.K.Pillai   ', 1, 1, 'New Age International Publishers', '2', 0, 'EEE', 'Yes', 'EEE', 'D1'),
(434, '180434', 'Electric Gadgets and their Repairs', 'S.R.Rao S.P.Luthra  ', 1, 1, 'Pitambar Book Depot', '3', 0, 'EEE', 'Yes', 'EEE', 'D1'),
(435, '180435', 'Basic Electronics', 'J.B.Gupta   ', 1, 1, 'S.K.Kataria & Sons', '1', 175, 'EEE', 'Yes', 'EEE', 'D1'),
(436, '180436', 'Fundamentals of Electrical and Electronics Engineering', 'Smarajit Ghosh   ', 1, 1, 'PHI Learning', '2', 450, 'EEE', 'Yes', 'EEE', 'D2'),
(437, '180437', 'Electrical and Electronic Measurements and Instrumentation', 'A.K.Sawhney   ', 1, 1, 'Dhanpat Rai Co', '20', 260, 'EEE', 'Yes', 'EEE', 'D2'),
(438, '180438', 'Image Processing', 'Analysis and Machine Vision\",Milan Sonka Vaclav Hlavac Roger Boyle ', 1, 1, 'PWS Publishing', '2', 0, 'CSE', 'Yes', 'CSE', 'D2'),
(439, '180439', 'Electronic Communications Systems', 'Wayne Tomasi   ', 1, 1, 'Pearson', '4', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(440, '180440', 'Upgrading and Repairing PCs', 'Scott Mueller   ', 1, 1, 'Pearson', '13', 0, 'CSE', 'Yes', 'CSE', 'D2'),
(441, '180441', 'Mechatronics', 'M.D.Singh J.G.Joshi  ', 1, 1, 'PHI Learning', '1', 325, 'Mechanical', 'Yes', 'Mechanical', 'D2'),
(442, '180442', 'Electric Drives', 'Nisit K.De Prasanta K.Sen  ', 1, 1, 'PHI Learning', '1', 195, 'ECE', 'Yes', 'ECE', 'D2'),
(443, '180443', 'MEMS', 'Nitaigour Premchand Mahalik   ', 1, 1, 'Tata McGraw Hill', '1', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(444, '180444', 'The 8051 Microcontroller and Embedded Systems', 'Muhammad Ali Mazidi Janice Gillispie Mazidi Rolin D.McKinley ', 1, 1, 'Pearson', '2', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(445, '180445', 'Experimental Methods for Engineers', 'J.P.Holman   ', 1, 1, 'McGraw Hill Education', '7', 0, 'Mechanical', 'Yes', 'Mechanical', 'D2'),
(446, '180446', 'Digital Electronics', 'S.N.Ali   ', 1, 1, 'Galgotia Publications', '3', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(447, '180447', 'Digital Design', 'M.Morris Mano   ', 1, 1, 'PHI Learning', '3', 175, 'CSE', 'Yes', 'CSE', 'D2'),
(448, '180448', 'Fundamentals of Computing', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 145, 'CSE', 'Yes', 'CSE', 'D2'),
(449, '180449', 'Local Area Networks', 'Gerd Keiser   ', 1, 1, 'Tata McGraw Hill', '2', 0, 'CSE', 'Yes', 'CSE', 'D2'),
(450, '180450', 'Programming in C', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 150, 'CSE', 'Yes', 'CSE', 'D2'),
(451, '180451', 'Fundamentals of Computing', 'T.Jeyapoovan   ', 1, 1, 'Vikas Publishing House', '1', 195, 'CSE', 'Yes', 'CSE', 'D2'),
(452, '180452', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'Yes', 'Material Science', 'D2'),
(453, '180453', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'No', 'Material Science', 'D2'),
(454, '180454', 'Material Science', 'P.K.Palanisamy   ', 1, 1, 'Scitech Publications', '2', 400, 'Material Science', 'No', 'Material Science', 'D2'),
(455, '180455', 'Material Science and Engineering', 'William F.Smith Javad Hashemi Ravi Prakash ', 1, 1, 'McGraw Hill Education', '4', 0, 'Material Science', 'Yes', 'Material Science', 'D2'),
(456, '180456', 'Elaectric Drives', 'Nisit K.De Prasanta K sen  ', 1, 1, 'PHI Learning ', '15', 225, 'EEE', 'Yes', 'EEE', 'D2'),
(457, '180457', 'Electronic Principles', 'Albert Paul Malvino   ', 1, 1, 'Tata Mcgraw Hill ', '6', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(458, '180458', 'Electronic circuits 1', 'K.Balaji   ', 1, 1, 'ARS', '1', 215, 'EEE', 'Yes', 'EEE', 'D2'),
(459, '180459', 'Digital Electronics', 'A.P.Godse D.A.Godse  ', 1, 1, 'Technical publications', '4', 400, 'EEE', 'Yes', 'EEE', 'D2'),
(460, '180460', 'Engineering circuits analysis', 'W.H.Hayt J.E.Kemmerly S.M.Durbin ', 1, 1, 'Tata Mcgraw Hill ', '7', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(461, '180461', 'Basic electrical engineering', 'J.J.Cathey S.A.Nasar  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(462, '180462', 'Electronic circuits 1', 'A.P.Godse U.A.Bakshi  ', 1, 1, 'Technical publications', '2', 230, 'EEE', 'Yes', 'EEE', 'D2'),
(463, '180463', 'Theory and Design of Adaptive Filters', 'Jhon r.Treichler C.Richard Johnson Michael G.Larimore ', 1, 1, 'PHI Learning ', '1', 195, 'EEE', 'Yes', 'EEE', 'D2'),
(464, '180464', 'Signals and Systems', 'P.Ramesh Babu Ananda Natrajan  ', 1, 1, 'SciTech publication', '3', 325, 'EEE', 'Yes', 'EEE', 'D2'),
(465, '180465', 'Basic Electrical and Electronic Engineering', 'R.Muthu Subramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(466, '180466', 'Basic electrical engineering', 'Nageswararao   ', 1, 1, 'Meenakshi agency', '1', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(467, '180467', 'Electromagnetic Fields', 'U.A.Bakshi Late.A.V.Bakshi  ', 1, 1, 'Technical publications', '3', 380, 'EEE', 'Yes', 'EEE', 'D2'),
(468, '180468', 'Electric Circuit Analysis', 'Nageswararao   ', 1, 1, 'A.R.Publications', '9', 275, 'EEE', 'Yes', 'EEE', 'D2'),
(469, '180469', 'Signals and Systems', 'G.Meenakshi M.Suchetha S.Sumathi ', 1, 1, 'Sruthi Publications', '2', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(470, '180470', 'Basic Electrical and Electronic Engineering', 'R.Muthusubramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'No', 'EEE', 'D2'),
(471, '180471', 'Basic Electrical and Electronic Engineering', 'R.Muthusubramanian S.Salivahanan  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'No', 'EEE', 'D2'),
(472, '180472', 'Basic electrical engineering', 'V.N.Mittle Arvind Mittal  ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(473, '180473', 'Electronic Devices and Circuits', 'S.Salivahanan N.Suresh Kumar  ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(474, '180474', 'Electrical Engineering Fundamentals', 'Vincent Del Toro   ', 1, 1, 'PHI Learning ', '2', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(475, '180475', 'Signals and Systems', 'J.S.Chitode   ', 1, 1, 'Technical publications', '1', 320, 'EEE', 'Yes', 'EEE', 'D2'),
(476, '180476', 'Electronic Circuits', 'Donald.L.Schilling Charles Bellove  ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(477, '180477', 'Information System Control and Audit', 'Rom Weber   ', 1, 1, 'Pearson Publication', '12', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(478, '180478', 'Communication Electronics', 'Frenzel   ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(479, '180479', 'Electronic Devices and Circuits', 'David.A.Bell   ', 1, 1, 'Oxford Publication', '5', 395, 'EEE', 'Yes', 'EEE', 'D2'),
(480, '180480', 'Electronic Devices and Circuits', 'David.A.Bell   ', 1, 1, 'Oxford Publication', '5', 395, 'EEE', 'No', 'EEE', 'D2'),
(481, '180481', 'Measurement System', 'Ernest.O.Doebelin Dhanesh.N.Manik  ', 1, 1, 'Tata Mcgraw Hill ', '5', 0, 'EEE', 'Yes', 'EEE', 'D2'),
(482, '180482', 'Total Quality Management', 'Dale.H.Besterfield Carol BesterfieldMichna Glen.H.Besterfield Mary BesterfieldScare', 1, 1, 'Pearson Publication', '2', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(483, '180483', 'Electronics  systems approach', 'Neil Storey   ', 1, 1, 'Pearson Publication', '2', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(484, '180484', 'Digital Logic and Computer Design', 'Morris Mano   ', 1, 1, 'PHI Learning ', '29', 195, 'ECE', 'Yes', 'ECE', 'D2'),
(485, '180485', 'Principles of Power System', 'V.K.Mehta Rohit Mehta  ', 1, 1, 'S.Chand and company', '1', 1805, 'ECE', 'Yes', 'ECE', 'D2'),
(486, '180486', 'Principles of Geographical Information System for Land Resources Assesments', 'P.A.Burrough   ', 1, 1, 'Oxford Publication', '1', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(487, '180487', 'Integrated Technologies for Intelligent Machines', 'A.Smaili F.Mrad  ', 1, 1, 'Oxford Publication', '1', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(488, '180488', 'Basic principles  measurments (Instrumentation) and Control Systems', 'S.Bhaskar   ', 1, 1, 'Anuradha Publication', '1', 340, 'ECE', 'Yes', 'ECE', 'D2'),
(489, '180489', 'Basics of Electronic Communications', 'NIIT   ', 1, 1, 'PHI Learning ', '1', 275, 'ECE', 'Yes', 'ECE', 'D2'),
(490, '180490', 'Solid State Electronic Devices', 'Ben.G.Streetman Sanjay Banerjee  ', 1, 1, 'PHI Learning ', '5', 250, 'ECE', 'Yes', 'ECE', 'D2'),
(491, '180491', 'PCBased Instrumentation', 'N.Mathivanan   ', 1, 1, 'PHI Learning ', '1', 350, 'ECE', 'Yes', 'ECE', 'D2'),
(492, '180492', 'Micro Computers Servicing Practical Systems and Troubleshooting', 'Stuart Asser .P.E Vincent Stiglino.P.E Richard Bahrenburg ', 1, 1, 'Merrill Publication', '1', 90, 'ECE', 'Yes', 'ECE', 'D2'),
(493, '180493', 'Basics of wireless communications', 'NIIT   ', 1, 1, 'PHI Learning ', '1', 225, 'ECE', 'Yes', 'ECE', 'D2'),
(494, '180494', 'Wavelets Applications to image processing', '   ', 1, 1, '', '1', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(495, '180495', 'Radio Engineering applied Electronics', 'G.K.Mithal R.Mittal  ', 1, 1, 'Khanna Publication', '12', 35, 'ECE', 'Yes', 'ECE', 'D2'),
(496, '180496', 'OPAMPs and Liner Integrated Circuits', 'Pamakant.A.Gayakwad   ', 1, 1, 'PHI Learning ', '4', 195, 'ECE', 'Yes', 'ECE', 'D2'),
(497, '180497', 'Introduction to Mechatronics', 'Appu Kuttan.K.K   ', 1, 1, 'Oxford Publication', '1', 225, 'ECE', 'Yes', 'ECE', 'D2'),
(498, '180498', 'Mechatronics Principles', 'Concepts and Applications\",Nitaigour Premchand Mahalik   ', 1, 1, 'Tata Mcgraw Hill ', '1', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(499, '180499', 'The 8051 Micro Controller', 'Ayala   ', 1, 1, 'Thomson Delmar Learning', '3', 0, 'ECE', 'Yes', 'ECE', 'D2'),
(500, '180500', 'Electronic Communications', 'Dennis Roddy John Coolen  ', 1, 1, 'PHI Learning ', '4', 395, 'ECE', 'Yes', 'ECE', 'D2'),
(501, '180501', 'Communication Theory', 'Dr.J.S.Chitode   ', 1, 1, 'Technical Publications', '2', 275, 'ECE', 'YES', 'ECE', 'E1'),
(502, '180502', 'Mobile Communications', ' Jochen Schiller    ', 1, 1, 'Pearson', '2', 0, 'ECE', 'YES', 'ECE', 'E1'),
(503, '180503', 'Microprocessor Architecture Programming  and Applications with 8085', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'YES', 'ECE', 'E1'),
(504, '180504', 'Microprocessor Architecture Programming  and Applications with 8086', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', 'E1'),
(505, '180505', 'Microprocessor Architecture Programming  and Applications with 8087', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', 'E1'),
(506, '180506', 'Microprocessor Architecture Programming  and Applications with 8088', 'Ramesh Gaonkar   ', 1, 1, 'Penram International Publishing', '5', 0, 'ECE', 'NO', 'ECE', 'E1'),
(507, '180507', 'Microprocessors Interfacing and Applications', 'RenuSingh B.P.Singh  ', 1, 1, 'New Age International Publications', '1', 200, 'ECE', 'YES', 'ECE', 'E1'),
(508, '180508', 'Electronics and Microprocessors', 'K.S.Srinivasan M.Janaki Rani G.Sathiyabhama ', 1, 1, 'Anuradha Agencies', '1', 160, 'ECE', 'YES', 'ECE', 'E1'),
(509, '180509', 'Remote Sensing and Image Interpretation', 'Thomas M.Lillesand Ralph W.Kiefer  ', 1, 1, 'John Wiley & Sons Inc', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(510, '180510', 'Laser Technology and Applications', 'M.Mukunda Rao R.S.Sirohi  ', 1, 1, 'COSTED', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(511, '180511', 'Solar Cells Operating Principles', 'Technology and System Applications\",Martin A.Green   ', 1, 1, 'The University Of New South wales', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(512, '180512', 'Electrical Machines and Drives', 'P.Britto Corthis R.Dharma Prakash C.Aravindh Vaithilingam ', 1, 1, 'Charulatha Publications', '1', 90, 'ECE', 'YES', 'ECE', 'E1'),
(513, '180513', 'Fundamentals of Electrical and Electronics Engineering', 'T.Thyagarajan   ', 1, 1, 'Scitech Publications', '4', 165, 'EEE', 'YES', 'EEE', 'E1'),
(514, '180514', 'Instrumentation', 'Measurement and Analysis\",B C Nakra K K Chaudry  ', 1, 1, 'Tata McGrawHill Publishing', '2', 0, 'ECE', 'YES', 'ECE', 'E1'),
(515, '180515', 'Electronic Measurements and Instrumentation', 'Dr.Rajendra Prasad   ', 1, 1, 'Khanna Publishers', '3', 150, 'ECE', 'YES', 'ECE', 'E1'),
(516, '180516', 'Elements of Electrical Gadgets', 'K.B.Bhatia   ', 1, 1, 'Arya Book Depot', '4', 10, 'ECE', 'YES', 'ECE', 'E1'),
(517, '180517', 'Audio Amplifier Systems', 'M.D.Hull   ', 1, 1, 'Electronic Components and Materials Division', '3', 0, 'ECE', 'YES', 'ECE', 'E1'),
(518, '180518', 'Basic Electronics and Linear Circuits', '   ', 1, 1, '', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(519, '180519', 'Basic Electrical Engineering', 'Fitzgerald  Higginbotham  ', 1, 1, 'McGRAWHILL Book company', '2', 82, 'ECE', 'YES', 'ECE', 'E1'),
(520, '180520', 'Management Information System', 'G V Satya sekhar   ', 1, 1, 'Excel books', '1', 225, 'ECE', 'YES', 'ECE', 'E1'),
(521, '180521', 'Marketing Management', 'M Govindarajan   ', 1, 1, 'Prentice Hall of India', '2', 250, 'ECE', 'YES', 'ECE', 'E1'),
(522, '180522', 'Journal of the Indian Society of Remote sensing', '   ', 1, 1, 'Rolta India limited', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(523, '180523', 'Principles and Practice of Highway Engineering', 'L R Kadiyali   ', 1, 1, 'Khanna Tech Publicatioins', '2', 50, 'ECE', 'YES', 'ECE', 'E1'),
(524, '180524', 'Receiving Tube Manual', '   ', 1, 1, 'Radio corporation of America', '1', 32, 'ECE', 'YES', 'ECE', 'E1'),
(525, '180525', 'Introduction to Solid State Electronics', 'G I Yepifanov Yu A Moma  ', 1, 1, 'Mir Publishers', '1', 20, 'ECE', 'YES', 'ECE', 'E1'),
(526, '180526', 'Electronics Telecommunicaton and Physics', 'Anil Maini P Prabhakar  ', 1, 1, 'Khanna Publishers', '1', 22, 'ECE', 'YES', 'ECE', 'E1'),
(527, '180527', 'The Performance and Design of Direct Current Machines', 'A E Clayton N N Hancock  ', 1, 1, 'Pitman', '3', 15, 'ECE', 'YES', 'ECE', 'E1'),
(528, '180528', 'Elements of Photogrammetry', 'Paul R Wolf   ', 1, 1, 'McGRAWHILL International Book company', '2', 0, 'ECE ', 'YES', 'ECE ', 'E1'),
(529, '180529', 'Elements of Photogrammetry', 'Paul R Wolf   ', 1, 1, 'McGRAWHILL International Book company', '2', 0, 'ECE', 'YES', 'ECE', 'E1'),
(530, '180530', 'Industrial Engineering and Management', ' Er K Balasundaram   ', 1, 1, 'Shri Ramalinga Sowdeswari Publications', '2', 29, 'IE', 'YES', 'IE', 'E1'),
(531, '180531', 'Utilisation of Electric Power', 'N V Suryanarayana   ', 1, 1, 'New Age International Publications', '1', 150, 'ECE', 'YES', 'ECE', 'E1'),
(532, '180532', 'The 8051 Microcontroller', 'Kenneth Ayala   ', 1, 1, 'Thomsan Del Mar Learning', '3', 0, 'ECE', 'YES', 'ECE', 'E1'),
(533, '180533', 'Microcontroller and PLCs', 'Sanjay Attri   ', 1, 1, 'Dhanpat Rai & CO', '1', 110, 'ECE', 'YES', 'ECE', 'E1'),
(534, '180534', 'Advanced Microprocessors', 'Y Rajasree   ', 1, 1, 'New Age International Publications', '2', 120, 'ECE', 'YES', 'ECE', 'E1'),
(535, '180535', 'Microcontrollers', 'Ajay V Deshmukh   ', 1, 1, 'Tata McGrawHill Publishing Company', '7', 0, 'ECE', 'YES', 'ECE', 'E1'),
(536, '180536', 'Dbase 3 Plus', 'Ravi Kant Taxali   ', 1, 1, 'Tata McGrawHill Publishing Company', '1', 0, 'CSE', 'YES', 'CSE', 'E1'),
(537, '180537', 'Computer Practice 2', 'Bama Ilam G Umarani Sreekanth N Suresh Raja S Poonkuzhali', 1, 1, 'D D Publications', '1', 160, 'CSE', 'YES', 'CSE', 'E1'),
(538, '180538', 'Microprocessors and Microcontrollers  A Complete Text ', 'B P Singh   ', 1, 1, 'Gallota Publications', '1', 0, 'ECE ', 'YES', 'ECE ', 'E1'),
(539, '180539', 'Understanding Data Communications and Networks', 'William A Shay   ', 1, 1, 'Thomsan Brooks/Cole', '3', 0, 'CSE', 'YES', 'CSE', 'E1'),
(540, '180540', 'Introduction to Microprocessors and Microcontrollers', 'John Crisp   ', 1, 1, 'Elsevier', '2', 0, 'ECE', 'YES', 'ECE', 'E1'),
(541, '180541', 'Basic Electronic Solid State', 'B.L.Theraja   ', 1, 1, 'S.Chand and company', '1', 175, 'ECE', 'Yes', 'ECE', 'E1'),
(542, '180542', 'Advances in Materials Processing and Characterization', 'L.Karunamoorthy D.Viswanathan K.A.Padmanabhan ', 1, 1, 'I.K.International Publications', '1', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(543, '180543', 'Advances in Materials Processing and Characterization', 'L.Karunamoorthy D.Viswanathan K.A.Padmanabhan ', 1, 1, 'I.K.International Publications', '2', 0, 'ECE', 'No', 'ECE', 'E1'),
(544, '180544', 'Microprocessors', 'PC Hardware and Interfacing\",N.Mathivanan   ', 1, 1, 'PHI Learning ', '4', 295, 'ECE', 'Yes', 'ECE', 'E1'),
(545, '180545', 'Elements of Cartography', 'Arthur.H.Robinson Joel.L.Morrison Philip.C.Muehrcke A.Jon Kimerling', 1, 1, 'John Wiley and Sons', '6', 0, 'IRS', 'Yes', 'IRS', 'E1'),
(546, '180546', '0000 to 8085 Introduction to microprocessor for Engineers and Scientists', 'P.K.Ghosh P.R.Sridhar  ', 1, 1, 'PHI Learning ', '2', 225, 'ECE', 'Yes', 'ECE', 'E1'),
(547, '180547', 'Programming with C', 'Byron.S.Gottfried   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'CSE', 'Yes', 'CSE', 'E1'),
(548, '180548', 'Multimedi Production Planning and Delivery', 'John VillamilCasanova Louis Molina  ', 1, 1, 'PHI Learning ', '1', 250, 'Media science', 'Yes', 'Media science', 'E1'),
(549, '180549', 'Antenna and Wave Propagation', 'N.Gunasekaran   ', 1, 1, '', '', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(550, '180550', 'Rador Remote Sensing for Land Resources  A Review', 'S.Mohan N.S.Mehta Paruel Patel ', 1, 1, 'ISRO', '1', 0, 'IRS', 'Yes', 'IRS', 'E1'),
(551, '180551', 'Space and Developing Countries', '   ', 1, 1, 'World Space Congress', '1', 0, 'IRS', 'Yes', 'IRS', 'E1'),
(552, '180552', 'Mechatroincs', 'Sabri centinkunt   ', 1, 1, 'John Wiley and Sons', '1', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(553, '180553', 'Applied Electronics ', 'R.S.Sedha   ', 1, 1, 'S.Chand and company', '1', 180, 'ECE', 'Yes', 'ECE', 'E1'),
(554, '180554', 'Visual Basic 5', 'Nathan Gurewich Ori Gurewich  ', 1, 1, 'Techmedia publication', '4', 0, 'CSE', 'Yes', 'CSE', 'E1'),
(555, '180555', 'Experiments Methods for Engineers', 'J.P.Holman   ', 1, 1, 'Tata Mcgraw Hill ', '7', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(556, '180556', 'Introduction to Geographical Information Systems', 'Ian Heywood Sarah Cornelius Steve Carwell ', 1, 1, 'Pearson Publication', '1', 0, 'IRS', 'Yes', 'IRS', 'E1'),
(557, '180557', 'Introduction to Programmable Logic Controllers', 'Gary Denning   ', 1, 1, 'Thomson Delmar Learning', '2', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(558, '180558', '8086 Microprocessor Programming and Interfacing the PC', 'Kenneth.J.Ayala   ', 1, 1, 'Thomson Delmar Learning', '2', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(559, '180559', 'Microprocessor and Micro Controllers', 'R.Radhakrishnan G.Selvi S.Kumar ', 1, 1, 'Sonaversity', '1', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(560, '180560', 'Semi Conductors Physics And Devices', 'Donal.A.Neaman   ', 1, 1, 'Tata Mcgraw Hill ', '3', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(561, '180561', 'Digital Logic and Computer Organisation', 'V Rajaraman T Radhakrishnan  ', 1, 1, 'Prentice Hall of India', '1', 295, 'CSE', 'YES', 'CSE', 'E1'),
(562, '180562', 'Fundamentals of Information Technology', 'Alexix Leon Mathews Leon  ', 1, 1, 'Leon Techworld', '1', 150, 'IT', 'YES', 'IT', 'E1'),
(563, '180563', 'Introduction to Mechtronics and Measurement Systems', 'David G Alciatore Michael B Histard  ', 1, 1, 'Tata McGrawHill Publishing', '1', 0, 'MECH', 'YES', 'MECH', 'E1'),
(564, '180564', 'The 8051 Microcontroller and Embedded Systems', 'Muhammad Ali Mazidi Janice Gillispie Mazidi  ', 1, 1, 'Prentice Hall of India', '1', 325, 'ECE', 'YES', 'ECE', 'E1'),
(565, '180565', 'Electronics and Microprocessors', 'A P Godse D A Godse  ', 1, 1, 'Technical Publications', '1', 260, 'ECE', 'YES', 'ECE', 'E1'),
(566, '180566', 'Mechatronics', 'M D Singh J G Joshi  ', 1, 1, 'Prentice Hall of India', '1', 325, 'MECH', 'YES', 'MECH', 'E1'),
(567, '180567', 'Introduction to Programmable Logic Controllers', 'Gray Dunning   ', 1, 1, 'Thomsan Del Mar Learning', '2', 0, 'ECE', 'YES', 'ECE', 'E1'),
(568, '180568', 'Introduction to Digital Image Processing a Remote Sensing Perspective', 'John R Jensen   ', 1, 1, 'Prentice Hall ', '1', 0, 'ECE', 'YES', 'ECE', 'E1'),
(569, '180569', 'Mechatronics Principles and Applications', 'Godfrey C Onwubolu   ', 1, 1, 'ButterworthHeinemann', '1', 495, 'MECH', 'YES', 'MECH', 'E1'),
(570, '180570', 'Fundamentals of Digital Image Processing', 'Anil K Jain   ', 1, 1, 'Prentice Hall of India', '1', 225, 'ECE', 'YES', 'ECE', 'E1'),
(571, '180571', 'Electronic Devices and Circuits', 'Allen Mottershead   ', 1, 1, 'PHI Learning ', '1', 250, 'ECE', 'Yes', 'ECE', 'E1'),
(572, '180572', 'BioMedical Electronics and Instrumentation', 'S.K.Venkataram   ', 1, 1, 'Galgotia Publications', 'Revised', 160, 'Biomedical', 'Yes', 'Biomedical', 'E1'),
(573, '180573', 'Introduction to Microprocessor Software', 'Hardware Programming\",Lance.A.Leventhal   ', 1, 1, 'PHI Learning ', '4', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(574, '180574', 'Introduction to Microprocessor Software', 'Hardware Programming\",Aditya.p.Mathur   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(575, '180575', 'Electrical and Electronic Technology', 'John Hiley Keith Brown Ian Mckenzie Smith ', 1, 1, 'Pearson Publication', '9', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(576, '180576', 'Mechatronics ', 'N.Shanmugam   ', 1, 1, 'Anuradha Publication', '2', 200, 'ECE', 'Yes', 'ECE', 'E1'),
(577, '180577', 'Mechatronics Electronic Control Systems in Mechanical and Electrical Engineering', 'W.Bolton   ', 1, 1, 'Pearson Publication', '3', 0, 'ECE', 'Yes', 'ECE', 'E1'),
(578, '180578', 'The C Programming Language', 'Brian.W.Kernighan Dennis.M.Ritchie  ', 1, 1, 'PHI Learning ', '2', 89, 'CSE', 'Yes', 'CSE', 'E1'),
(579, '180579', 'Computer Graphics for Engineers', 'G.S.Asthana N.K.Sinha  ', 1, 1, 'Wiley Eastern Publications', '1', 0, 'CSE', 'Yes', 'CSE', 'E1'),
(580, '180580', 'Total Quality Management', 'R.S.Naagarazan A.A.Arivalagar  ', 1, 1, 'New age international Publication', '2', 145, 'Management', 'Yes', 'Management', 'E1'),
(581, '180581', 'Electrical Machines', 'J.Gnanavadivel N.Rathinaprabha C.SenthilKumar P.Kannan', 1, 1, 'Anuradha Publication', '1', 140, 'EEE', 'Yes', 'EEE', 'E1'),
(582, '180582', 'Autocad', '   ', 1, 1, 'Autodesk', 'Inc public', 0, 'Mech', 'Yes', 'Mech', 'E1'),
(583, '180583', 'Principles of management', 'R.Sivarethinamohan P.Aranganathan  ', 1, 1, 'CBA publications', '1', 0, 'Management', 'Yes', 'Management', 'E1'),
(584, '180584', 'Management', 'Stephen.P.Robbins Mary Coulter  ', 1, 1, 'PHI Learning ', '5', 325, 'Management', 'Yes', 'Management', 'E2'),
(585, '180585', 'Management Information Systems', 'W.S.Jawadekar   ', 1, 1, 'Tata Mcgraw Hill ', '2', 0, 'Management', 'Yes', 'Management', 'E2'),
(586, '180586', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'General aptitude', 'Yes', 'GATE / IES', 'E2'),
(587, '180587', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Heat Transfer', 'Yes', 'GATE / IES', 'E2'),
(588, '180588', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Fluid Mechanics', 'Yes', 'GATE / IES', 'E2'),
(589, '180589', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Production Engineering', 'Yes', 'GATE / IES', 'E2'),
(590, '180590', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Thermodynamics', 'Yes', 'GATE / IES', 'E2'),
(591, '180591', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Theory of Machines&Vibrations', 'Yes', 'GATE / IES', 'E2'),
(592, '180592', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Fluid Mechanics', 'Yes', 'GATE / IES', 'E2'),
(593, '180593', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Engineering Mechanics', 'Yes', 'GATE / IES', 'E2'),
(594, '180594', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Fluid Mechanics', 'Yes', 'GATE / IES', 'E2'),
(595, '180595', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Machine Design', 'Yes', 'GATE / IES', 'E2'),
(596, '180596', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Engineering Mathematics', 'Yes', 'GATE / IES', 'E2'),
(597, '180597', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Thermodynamics', 'Yes', 'GATE / IES', 'E2'),
(598, '180598', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'General aptitude', 'Yes', 'GATE / IES', 'E2'),
(599, '180599', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Mechanical', 'Yes', 'GATE / IES', 'E2'),
(600, '180600', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Engineering Mathematics', 'Yes', 'GATE / IES', 'E2'),
(601, '180601', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Heat Transfer', 'Yes', 'GATE / IES', 'E2'),
(602, '180602', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Production Engineering', 'Yes', 'GATE / IES', 'E2'),
(603, '180603', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'General aptitude', 'Yes', 'GATE / IES', 'E2'),
(604, '180604', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Production Engineering', 'Yes', 'GATE / IES', 'E2'),
(605, '180605', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Mathematics', 'Yes', 'GATE / IES', 'E2'),
(606, '180606', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Fluid Mechanics', 'Yes', 'GATE / IES', 'E2'),
(607, '180607', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Theory of Machines&Vibrations', 'Yes', 'GATE / IES', 'E2'),
(608, '180608', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Engineering Mechanics', 'Yes', 'GATE / IES', 'E2'),
(609, '180609', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Strength of Materials', 'Yes', 'GATE / IES', 'E2'),
(610, '180610', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Machine Design', 'Yes', 'GATE / IES', 'E2'),
(611, '180611', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Strength of Materials', 'Yes', 'GATE / IES', 'E2'),
(612, '180612', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Machine Design', 'Yes', 'GATE / IES', 'E2'),
(613, '180613', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Strength of Materials', 'Yes', 'GATE / IES', 'E2'),
(614, '180614', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Industrial Engineering and operations research', 'Yes', 'GATE / IES', 'E2'),
(615, '180615', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Production Engineering', 'Yes', 'GATE / IES', 'E2'),
(616, '180616', 'GATE / IES', 'IESGATE ACADEMY', 1, 1, 'IESGATE ACADEMY', '', 0, 'Thermodynamics & Applications', 'Yes', 'GATE / IES', 'E2'),
(617, '180617', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Strength of Materials', 'Yes', 'GATE / IES', 'E2'),
(618, '180618', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Heat Transfer', 'Yes', 'GATE / IES', 'E2'),
(619, '180619', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Thermodynamics', 'Yes', 'GATE / IES', 'E2'),
(620, '180620', 'GATE / IES', 'Vani Institute', 1, 1, 'Vani Publications', '', 0, 'Strength of Materials', 'Yes', 'GATE / IES', 'E2'),
(621, '180621', 'The Official GRE', 'ETS', 1, 1, 'McGraw Hill Education', '', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(622, '180622', 'The Official GRE', 'ETS', 1, 1, 'McGraw Hill Education', '', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(623, '180623', 'The Official GRE', 'ETS', 1, 1, 'McGraw Hill Education', '', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(624, '180624', 'Supplement to the GRE', 'Princeton', 1, 1, 'Manya ', '', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(625, '180625', 'GRE', ' Sharon Weiner Green', 1, 1, 'Galgotia Publications', '16', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(626, '180626', 'GRE', ' Sharon Weiner Green', 1, 1, 'Galgotia Publications', '12', 0, 'GRE', 'Yes', 'GRE', 'E2'),
(627, '180627', 'Veta English', 'V.Rajagopalan', 1, 1, 'Ahoma Education', '', 0, 'English', 'Yes', 'IELTS', 'E2'),
(628, '180628', 'General English', 'Race Institute', 1, 1, 'Race Publications', '', 0, 'English', 'Yes', 'IELTS', 'E2'),
(629, '180629', 'Cambridge IELTS', 'Paulin Cullen', 0, 1, 'Cambridge English', '', 0, 'IELTS', 'Yes', 'IELTS', 'E2'),
(630, '180630', 'IELTS Upgrade', 'Andrew Betsis', 1, 1, 'NEXGEN Educations', '', 0, 'IELTS', 'Yes', 'IELTS', 'E2'),
(631, '180631', 'IELTS', 'Cambridge', 1, 1, 'Cambridge University Press', '', 0, 'English', 'yes', 'English', 'E2'),
(632, '180632', 'Atlas', 'Orient BlackSwan', 1, 1, 'Orient BlackSwan', '', 0, 'Geography', 'yes', 'Geography', 'E2'),
(633, '180633', 'Those Small lil things', 'Rahul Saini', 1, 1, 'Srishti Publishers', '', 0, 'General', 'yes', 'General', 'E2'),
(634, '180634', 'Like it Happened Yesterday', 'Ravinder Singh', 1, 1, 'Penguin Publishers', '', 0, 'General', 'yes', 'General', 'E2'),
(635, '180635', 'Guide to places of the world', 'Reader\'s Digest', 1, 1, 'Reader\'s Digest', '', 0, 'General', 'yes', 'General', 'E2'),
(636, '180636', 'Bharathiyar Vazhvu', 'Ramanusan Vijayalakshmi', 1, 1, 'Sriram Bharathi Publications', '', 0, 'Tamil', 'yes', 'Tamil', 'E2'),
(637, '180637', '1001 inventions that changed the world', 'Jack Challoner', 1, 1, 'Impulse', '', 0, 'General', 'yes', 'General', 'E2'),
(638, '180638', 'Entrepreneurship', 'Rajeev Roy', 1, 1, 'Oxford University Press', '', 0, 'General', 'yes', 'General', 'E2'),
(639, '180639', 'Constitution of India', 'Devnath', 1, 1, 'Narmadha Press', '', 0, 'General', 'yes', 'General', 'E2'),
(640, '180640', 'Manorama year book 2017', 'Mammen Mathew', 1, 1, 'Manorama Yearbook', '', 0, 'General', 'yes', 'General', 'E2'),
(641, '180641', 'Geographical Indications of goods ', 'Shikha Arora', 1, 1, 'Professional Book Publishers', '', 0, 'General', 'yes', 'General', 'E2'),
(642, '180642', 'Questions are the Answers', 'Allan Pease', 1, 1, 'Manjul Publishing House', '', 0, 'General', 'yes', 'General', 'E2'),
(643, '180643', 'Oxford Dictionary', 'Oxford', 1, 1, 'Oxford University Press', '', 0, 'General', 'yes', 'General', 'E2'),
(644, '180644', 'Oxford reference dictionary', 'Oxford', 1, 1, 'Oxford University Press', '', 0, 'General', 'yes', 'General', 'E2'),
(645, '180645', 'Word power made easy', 'Norman Lewis', 1, 1, 'Pocket Books', '', 0, 'General', 'yes', 'General', 'E2'),
(646, '180646', 'Englishenglishtamil Dictionary', 'Mani', 1, 1, 'Aruna Publications', '', 0, 'General', 'yes', 'General', 'E2'),
(647, '180647', 'Engineering Physics', 'P.Mani', 1, 1, 'Dhanam Publications', '', 0, 'Physics', 'yes', 'Physics', 'E2'),
(648, '180648', 'Interchange', 'Jack C.Richards', 1, 1, 'Cambridge University Press', '', 0, 'English', 'yes', 'English', 'E2'),
(649, '180649', 'Fluid Mechanics and Hydraulics Mechanics', 'R.K.Bansal', 1, 1, 'Laxmi Publications', '', 0, 'Mechanical', 'yes', 'Mechanical', 'E2'),
(650, '180650', 'Mathematics', 'R.S.Agarwal', 1, 1, 'Bharathi Bhawan', '', 0, 'Mathematics', 'yes', 'Mathematics', 'E2'),
(651, '180651', 'Electronic Telecommunication and Physics', 'Maini Prabakar', 1, 1, 'Khanna Publications', '', 0, 'Electronics', 'yes', 'Electronics', 'E2'),
(652, '180652', 'Fundamentals of Data Structures', 'Ellis Horowits Sartajsahni', 1, 1, 'GB', '', 0, 'Computer Science', 'yes', 'Computer Science', 'E2'),
(653, '180653', 'Engineering Mathematics 1', 'G.Balaji', 1, 1, 'G.Balaji Publishers', '', 0, 'Mathematics', 'yes', 'Mathematics', 'E2'),
(654, '180654', 'Introduction to Microprocessors', 'Aditya P.Mathur', 1, 1, 'TATA McGraw Hill', '', 0, 'ECE', 'yes', 'ECE', 'E2'),
(655, '180655', 'Microcomputer Servicing', 'Steuart M.Asser Vincent J.Stigliano Richard F.Bahrenburg', 1, 1, 'Merril Publishers', '', 0, 'ECE', 'yes', 'ECE', 'E2'),
(656, '180656', 'Measurement Systems', 'Ernest O Doebelin Dhanesh N Manik', 1, 1, 'TATA McGraw Hill', '', 0, 'Mechanical', 'yes', 'Mechanical', 'E2'),
(657, '180657', 'Introduction to Microprocessors', 'Lance A.Leventhal', 1, 1, 'Eastern Economy Edition', '', 0, 'ECE', 'yes', 'ECE', 'E2');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--
-- Creation: Mar 01, 2019 at 05:32 AM
--

CREATE TABLE `config` (
  `key1` varchar(100) NOT NULL,
  `value1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`key1`, `value1`) VALUES
('borrow', '5'),
('returndays', '45'),
('fine', '3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--
-- Creation: Mar 01, 2019 at 05:32 AM
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL,
  `fine` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `history`
--
DELIMITER $$
CREATE TRIGGER `dec-remaining` BEFORE INSERT ON `history` FOR EACH ROW UPDATE book SET `remaining` = `remaining` + 1 WHERE ID = NEW.BOOKID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--
-- Creation: Mar 01, 2019 at 05:32 AM
--

CREATE TABLE `issued` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `issuedate` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `fine` int(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `issued`
--
DELIMITER $$
CREATE TRIGGER `history` AFTER DELETE ON `issued` FOR EACH ROW -- Edit trigger body code below this line. Do not edit lines above this one
BEGIN
INSERT into history VALUES (old.id,old.userid,old.bookid,old.issuedate,old.returndate,old.fine);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `inc-remaining` BEFORE INSERT ON `issued` FOR EACH ROW UPDATE book SET `remaining` = `remaining` - 1 WHERE ID = NEW.BOOKID
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Mar 01, 2019 at 05:47 AM
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'id for db access',
  `reg` varchar(16) NOT NULL COMMENT 'roll number given for each student in the college',
  `name` varchar(36) NOT NULL COMMENT 'name of the student',
  `password` varchar(300) NOT NULL COMMENT 'password assigned to the student',
  `course` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `year` varchar(8) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `reg`, `name`, `password`, `course`, `dept`, `year`, `mail`, `phone`) VALUES
(4, 'test', 'test', '$2y$10$hDPWeJNeGuZpC1.IpVVaA.YnUmV2jBwgm5rmOHB5AyYJBEfWJKyGi', 'M.E.', 'test', '2019', 'test', '0123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_borrow` (`userid`,`bookid`),
  ADD KEY `bookid` (`bookid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for db access', AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued`
--
ALTER TABLE `issued`
  ADD CONSTRAINT `issued_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `issued_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `temp` ON SCHEDULE EVERY 1 SECOND STARTS '2019-02-19 22:23:06' ON COMPLETION NOT PRESERVE ENABLE DO update issued set fine=10$$

CREATE DEFINER=`root`@`localhost` EVENT `fines` ON SCHEDULE EVERY 1 DAY STARTS '2019-02-19 22:23:06' ON COMPLETION NOT PRESERVE ENABLE DO update issued set fine=datediff(issued.returndate,curdate())*(SELECT value1 from config where `key1`='fine') where datediff(issued.returndate,curdate())>(SELECT value1 from config where `key1`='returndays')$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
