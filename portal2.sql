-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 12:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `michika_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(10) NOT NULL,
  `control_access` varchar(50) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `control_access`, `date_created`, `time_created`) VALUES
(1, 'abdul', '6/12/2018', '2018-12-06 07:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
  `id` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `lga` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_of_reg` varchar(50) DEFAULT NULL,
  `time_of_reg` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `administratives`
--

CREATE TABLE `administratives` (
  `id` int(10) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_motto` varchar(255) DEFAULT NULL,
  `school_logo` varchar(255) DEFAULT NULL,
  `school_stamp` varchar(255) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administratives`
--

INSERT INTO `administratives` (`id`, `school_name`, `school_motto`, `school_logo`, `school_stamp`, `upload_date`, `upload_time`) VALUES
(10, 'FEDERAL SCIENCE &amp; TECHNICAL COLLEGE - MICHIKA', 'MICHIKA - ADAMAWA', 'admin/logi.png', 'admin/FSTC Princi Signature.jpeg', '17-Dec-2018', '2017-11-11 18:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `annual_result`
--

CREATE TABLE `annual_result` (
  `id` int(11) NOT NULL,
  `class` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subjects` varchar(100) DEFAULT NULL,
  `ca1` int(10) DEFAULT NULL,
  `project1` int(10) DEFAULT NULL,
  `exam1` int(10) DEFAULT NULL,
  `total1` int(10) DEFAULT NULL,
  `ca2` int(10) DEFAULT NULL,
  `project2` int(10) DEFAULT NULL,
  `exam2` int(10) DEFAULT NULL,
  `total2` int(10) DEFAULT NULL,
  `ca3` int(10) DEFAULT NULL,
  `project3` int(10) DEFAULT NULL,
  `exam3` int(10) DEFAULT NULL,
  `total3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `behavioral`
--

CREATE TABLE `behavioral` (
  `id` int(11) NOT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `hand_writting` varchar(11) DEFAULT NULL,
  `musical_skills` varchar(11) DEFAULT NULL,
  `sports` varchar(11) DEFAULT NULL,
  `attentiveness` varchar(11) DEFAULT NULL,
  `attitude_to_work` varchar(11) DEFAULT NULL,
  `health` varchar(11) DEFAULT NULL,
  `politeness` varchar(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) NOT NULL,
  `classes` varchar(50) DEFAULT NULL,
  `date_added` varchar(50) DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `classes`, `date_added`, `time_added`) VALUES
(57, 'JSS1A', '05-Dec-2018', '2018-12-05 11:13:49'),
(58, 'JSS1B', '05-Dec-2018', '2018-12-05 11:13:57'),
(59, 'JSS2A', '05-Dec-2018', '2018-12-05 11:14:04'),
(60, 'JSS2B', '05-Dec-2018', '2018-12-05 11:14:11'),
(63, 'SSS1SCIENCE', '05-Dec-2018', '2018-12-05 11:14:49'),
(77, 'NTC1', '09-Dec-2018', '2018-12-09 19:46:25'),
(78, 'NBC1', '09-Dec-2018', '2018-12-09 19:46:32'),
(79, 'NTC2', '09-Dec-2018', '2018-12-09 19:46:38'),
(80, 'NBC2', '09-Dec-2018', '2018-12-09 19:46:45'),
(81, 'SSS2SCIENCE', '09-Dec-2018', '2018-12-09 19:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `current_season`
--

CREATE TABLE `current_season` (
  `id` int(10) NOT NULL,
  `current_session` varchar(20) DEFAULT NULL,
  `current_term` varchar(50) DEFAULT NULL,
  `date_declared` varchar(50) DEFAULT NULL,
  `time_declared` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_season`
--

INSERT INTO `current_season` (`id`, `current_session`, `current_term`, `date_declared`, `time_declared`) VALUES
(1, '2018/2019', 'First Term', '30/Oct/2016', '2016-10-30 10:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(10) NOT NULL,
  `end_of_term` varchar(50) DEFAULT NULL,
  `next_term_begins` varchar(50) DEFAULT NULL,
  `date_declared` varchar(50) DEFAULT NULL,
  `time_declared` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `end_of_term`, `next_term_begins`, `date_declared`, `time_declared`) VALUES
(2, '12/May/2018', '15/July/2018', '12-May-2018', '2016-12-25 11:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `debtors`
--

CREATE TABLE `debtors` (
  `id` int(100) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `deadline` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(100) NOT NULL,
  `paid_to` varchar(250) DEFAULT NULL,
  `paid_for` varchar(250) DEFAULT NULL,
  `amount_paid` int(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_allocation`
--

CREATE TABLE `fee_allocation` (
  `id` int(50) NOT NULL,
  `allocate_class` varchar(100) DEFAULT NULL,
  `student_type` varchar(100) DEFAULT NULL,
  `fee_amount` int(100) DEFAULT NULL,
  `date_allocated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment`
--

CREATE TABLE `fee_payment` (
  `id` int(100) NOT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `student_name` varchar(250) DEFAULT NULL,
  `student_class` varchar(50) DEFAULT NULL,
  `student_type` varchar(50) DEFAULT NULL,
  `fee_term` varchar(50) DEFAULT NULL,
  `fee_session` varchar(50) DEFAULT NULL,
  `amount_paid` int(100) DEFAULT NULL,
  `student_balance` int(100) DEFAULT NULL,
  `teller_no` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `date_of_upload` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(100) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `cost` int(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jss`
--

CREATE TABLE `jss` (
  `id` int(10) NOT NULL,
  `jss_subjects` varchar(100) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jss_subject_number`
--

CREATE TABLE `jss_subject_number` (
  `id` int(10) NOT NULL,
  `number_of_subject` int(10) DEFAULT NULL,
  `declared_date` varchar(20) DEFAULT NULL,
  `declared_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jss_subject_number`
--

INSERT INTO `jss_subject_number` (`id`, `number_of_subject`, `declared_date`, `declared_time`) VALUES
(1, 14, '01/Nov/2016', '2016-11-01 04:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `mail_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(50) NOT NULL,
  `header` varchar(100) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `news_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin1`
--

CREATE TABLE `pin1` (
  `id` int(10) NOT NULL,
  `term` varchar(20) DEFAULT NULL,
  `first_term_pin` varchar(100) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `upload_date` varchar(20) DEFAULT NULL,
  `upload_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin1`
--

INSERT INTO `pin1` (`id`, `term`, `first_term_pin`, `serial_number`, `upload_date`, `upload_time`) VALUES
(157, 'First Term', '2590332316401929', '201812060', '06/Dec/2018', '2018-12-06 08:45:33'),
(158, 'First Term', '2535671207944767', '201812061', '06/Dec/2018', '2018-12-06 08:45:33'),
(159, 'First Term', '2538440930705941', '201812062', '06/Dec/2018', '2018-12-06 08:45:33'),
(160, 'First Term', '2530960050034455', '201812063', '06/Dec/2018', '2018-12-06 08:45:33'),
(161, 'First Term', '2541093650958233', '201812064', '06/Dec/2018', '2018-12-06 08:45:33'),
(162, 'First Term', '3854763638594033', '201812065', '06/Dec/2018', '2018-12-06 08:46:02'),
(163, 'First Term', '3894270473953673', '201812066', '06/Dec/2018', '2018-12-06 08:46:02'),
(164, 'First Term', '3809460029260364', '201812067', '06/Dec/2018', '2018-12-06 08:46:02'),
(165, 'First Term', '3892986828540535', '201812068', '06/Dec/2018', '2018-12-06 08:46:02'),
(166, 'First Term', '3862338762901771', '201812069', '06/Dec/2018', '2018-12-06 08:46:02'),
(167, 'First Term', '0213840975503248', '2018120610', '06/Dec/2018', '2018-12-06 08:46:08'),
(168, 'First Term', '0206393962222961', '2018120611', '06/Dec/2018', '2018-12-06 08:46:08'),
(169, 'First Term', '0210007500042080', '2018120612', '06/Dec/2018', '2018-12-06 08:46:08'),
(170, 'First Term', '0210229286309890', '2018120613', '06/Dec/2018', '2018-12-06 08:46:08'),
(171, 'First Term', '0213036107333825', '2018120614', '06/Dec/2018', '2018-12-06 08:46:08'),
(172, 'First Term', '0887310075965060', '2018120615', '06/Dec/2018', '2018-12-06 08:46:15'),
(173, 'First Term', '0836979015950690', '2018120616', '06/Dec/2018', '2018-12-06 08:46:15'),
(174, 'First Term', '0803220164384922', '2018120617', '06/Dec/2018', '2018-12-06 08:46:15'),
(175, 'First Term', '0867543205976134', '2018120618', '06/Dec/2018', '2018-12-06 08:46:15'),
(176, 'First Term', '0893890670571250', '2018120619', '06/Dec/2018', '2018-12-06 08:46:15'),
(177, 'First Term', '1551145775558570', '2018120620', '06/Dec/2018', '2018-12-06 08:46:20'),
(178, 'First Term', '1550091024211530', '2018120621', '06/Dec/2018', '2018-12-06 08:46:20'),
(179, 'First Term', '1593492080315452', '2018120622', '06/Dec/2018', '2018-12-06 08:46:20'),
(180, 'First Term', '1575451035156292', '2018120623', '06/Dec/2018', '2018-12-06 08:46:20'),
(181, 'First Term', '1576308730975018', '2018120624', '06/Dec/2018', '2018-12-06 08:46:20'),
(182, 'First Term', '5494090027496046', '2018120925', '09/Dec/2018', '2018-12-09 01:23:01'),
(183, 'First Term', '5405601617207020', '2018120926', '09/Dec/2018', '2018-12-09 01:23:02'),
(184, 'First Term', '5435786359266390', '2018120927', '09/Dec/2018', '2018-12-09 01:23:02'),
(185, 'First Term', '5470641029300831', '2018120928', '09/Dec/2018', '2018-12-09 01:23:02'),
(186, 'First Term', '5415693042587260', '2018120929', '09/Dec/2018', '2018-12-09 01:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `pin2`
--

CREATE TABLE `pin2` (
  `id` int(10) NOT NULL,
  `term` varchar(20) DEFAULT NULL,
  `second_term_pin` varchar(100) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `upload_date` varchar(100) DEFAULT NULL,
  `upload_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin2`
--

INSERT INTO `pin2` (`id`, `term`, `second_term_pin`, `serial_number`, `upload_date`, `upload_time`) VALUES
(11, 'Second Term', '2670069784961241', '201812090', '09/Dec/2018', '2018-12-09 01:23:38'),
(12, 'Second Term', '2655014939743614', '201812091', '09/Dec/2018', '2018-12-09 01:23:38'),
(13, 'Second Term', '2637066820710150', '201812092', '09/Dec/2018', '2018-12-09 01:23:44'),
(14, 'Second Term', '2610085932844802', '201812093', '09/Dec/2018', '2018-12-09 01:23:44'),
(15, 'Second Term', '2616057444073308', '201812094', '09/Dec/2018', '2018-12-09 01:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `pin3`
--

CREATE TABLE `pin3` (
  `id` int(10) NOT NULL,
  `term` varchar(20) DEFAULT NULL,
  `third_term_pin` varchar(50) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portal_request`
--

CREATE TABLE `portal_request` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `position_held` varchar(150) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `request_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) NOT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `students_sub_total` int(50) DEFAULT NULL,
  `students_sub_average` float(11,3) DEFAULT NULL,
  `class_position` int(10) DEFAULT NULL,
  `upload_date` varchar(20) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `principal`
--

CREATE TABLE `principal` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `next_of_kin` varchar(100) DEFAULT NULL,
  `next_of_kin_relationship` varchar(100) DEFAULT NULL,
  `next_of_kin_phone` varchar(50) DEFAULT NULL,
  `date_registered` varchar(50) DEFAULT NULL,
  `time_registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `results1`
--

CREATE TABLE `results1` (
  `id` int(10) NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `term` varchar(10) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `reg_number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subjects` varchar(100) DEFAULT NULL,
  `ca` int(10) DEFAULT NULL,
  `project` int(10) DEFAULT NULL,
  `exam` int(10) DEFAULT NULL,
  `subject_total` int(10) DEFAULT NULL,
  `subject_rank` int(10) DEFAULT NULL,
  `date_of_upload` varchar(20) DEFAULT NULL,
  `time_of_upload` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results1`
--

INSERT INTO `results1` (`id`, `class`, `term`, `session`, `reg_number`, `name`, `subjects`, `ca`, `project`, `exam`, `subject_total`, `subject_rank`, `date_of_upload`, `time_of_upload`) VALUES
(22, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH49', 'Bitrus Fashe', 'Further Mathematics', 10, 20, 50, 80, 1, '16/Dec/2018', '2018-12-16 00:23:39'),
(23, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH229', 'Bulus Deborah', 'Further Mathematics', 10, 10, 30, 50, 7, '16/Dec/2018', '2018-12-16 00:23:39'),
(24, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH41', 'Dauda Queen', 'Further Mathematics', 10, 12, 33, 55, 6, '16/Dec/2018', '2018-12-16 00:23:39'),
(25, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH45', 'Kamale Katherine Jacob', 'Further Mathematics', 12, 10, 51, 73, 2, '16/Dec/2018', '2018-12-16 00:23:39'),
(26, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH39', 'Luka Yanchi', 'Further Mathematics', 10, 12, 46, 68, 3, '16/Dec/2018', '2018-12-16 00:23:39'),
(27, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH62', 'Ndupwa Janet', 'Further Mathematics', 10, 10, 38, 58, 5, '16/Dec/2018', '2018-12-16 00:23:39'),
(28, 'SSS2SCIENCE', 'First Term', '2018/2019', '20181FSTCMICH70', 'Usman Idris', 'Further Mathematics', 12, 10, 41, 63, 4, '16/Dec/2018', '2018-12-16 00:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` int(111) NOT NULL,
  `subjects` varchar(111) DEFAULT NULL,
  `date_saved` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `subjects`, `date_saved`) VALUES
(20, 'Mathematics', '05-Dec-2018'),
(21, 'English Language', '05-Dec-2018'),
(22, 'ICT', '05-Dec-2018'),
(23, 'Agricultural Science', '05-Dec-2018'),
(24, 'Biology', '05-Dec-2018'),
(25, 'Social Studies', '05-Dec-2018'),
(26, 'Government', '05-Dec-2018'),
(27, 'Basic Science', '05-Dec-2018'),
(28, 'Civic Education', '05-Dec-2018'),
(29, 'Chemistry', '05-Dec-2018'),
(30, 'Commerce', '05-Dec-2018'),
(32, 'Physics', '05-Dec-2018'),
(33, 'Type Writing', '05-Dec-2018'),
(34, 'Economics', '05-Dec-2018'),
(35, 'Christian Religious Studies', '05-Dec-2018'),
(36, 'Islamic Religious Studies', '05-Dec-2018'),
(37, 'Hausa', '05-Dec-2018'),
(38, 'Geography', '05-Dec-2018'),
(39, 'Financial Accounting', '05-Dec-2018'),
(40, 'Physical And Health Education', '05-Dec-2018'),
(41, 'Metal Works', '05-Dec-2018'),
(42, 'Technical Drawing', '05-Dec-2018'),
(43, 'Business Studies', '05-Dec-2018'),
(44, 'Further Mathematics', '05-Dec-2018'),
(45, 'Office Practice', '05-Dec-2018'),
(46, 'French', '05-Dec-2018'),
(47, 'Cultural And Creative Art', '05-Dec-2018'),
(48, 'Introduction To Building Construction', '05-Dec-2018'),
(49, 'Data Processing', '05-Dec-2018'),
(50, 'Basic Technology', '05-Dec-2018'),
(51, 'Brick Laying - Block Laying Construction', '05-Dec-2018'),
(52, 'Animal  Husbandry', '05-Dec-2018'),
(53, 'Building Drawing', '05-Dec-2018'),
(55, 'Electronics Works', '05-Dec-2018'),
(56, 'Motor Vehicle Mechanics', '05-Dec-2018'),
(57, 'Basic Electricity', '05-Dec-2018'),
(58, 'Electronics Installation And Maintenance', '13-Dec-2018');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) NOT NULL,
  `sessions` varchar(20) DEFAULT NULL,
  `date_added` varchar(50) DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessions`, `date_added`, `time_added`) VALUES
(12, '2016/2017', '05-Dec-2018', '2018-12-05 08:40:45'),
(13, '2017/2018', '05-Dec-2018', '2018-12-05 08:40:55'),
(14, '2018/2019', '05-Dec-2018', '2018-12-05 08:41:06'),
(15, '2019/2020', '06-Dec-2018', '2018-12-06 07:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(10) NOT NULL,
  `sss_subjects` varchar(100) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sss_subject_number`
--

CREATE TABLE `sss_subject_number` (
  `id` int(10) NOT NULL,
  `number_of_subject` int(10) DEFAULT NULL,
  `declared_date` varchar(20) DEFAULT NULL,
  `declared_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sss_subject_number`
--

INSERT INTO `sss_subject_number` (`id`, `number_of_subject`, `declared_date`, `declared_time`) VALUES
(1, 9, '01/Nov/2016', '2016-11-01 04:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(50) NOT NULL,
  `staff_name` varchar(250) DEFAULT NULL,
  `salary` int(100) DEFAULT NULL,
  `debit` int(100) DEFAULT NULL,
  `debit_reason` varchar(250) DEFAULT NULL,
  `bonus` int(100) DEFAULT NULL,
  `bonus_reason` varchar(250) DEFAULT NULL,
  `credit` int(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `othername` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `mob` varchar(50) DEFAULT NULL,
  `yob` varchar(50) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `nearest_contact1` varchar(100) DEFAULT NULL,
  `nearest_contact2` varchar(100) DEFAULT NULL,
  `nearest_contact3` varchar(100) DEFAULT NULL,
  `health_conditions` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_occupation` varchar(150) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_occupation` varchar(150) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `lga` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `sponsor_name` varchar(50) DEFAULT NULL,
  `sponsor_phone` varchar(20) DEFAULT NULL,
  `sponsor_address` varchar(200) DEFAULT NULL,
  `sponsor_occupation` varchar(200) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL,
  `previous_school` varchar(250) DEFAULT NULL,
  `last_class_passed` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `gen_password` varchar(20) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `date_of_reg` varchar(20) DEFAULT NULL,
  `time_of_reg` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `gender`, `firstname`, `lastname`, `othername`, `dob`, `mob`, `yob`, `contact_phone`, `nearest_contact1`, `nearest_contact2`, `nearest_contact3`, `health_conditions`, `address`, `father_name`, `father_occupation`, `father_phone`, `mother_name`, `mother_occupation`, `mother_phone`, `state`, `lga`, `city`, `nationality`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `sponsor_occupation`, `relationship`, `previous_school`, `last_class_passed`, `class`, `reg_number`, `gen_password`, `passport`, `date_of_reg`, `time_of_reg`) VALUES
(4, 'Male', 'Kwaha', 'Vaisah', 'James', '13', 'July', '2004', '09023016854', '07034232154', '09023016854', '09023016854', 'None', 'Yola Town Yolde Pate', 'James Daniel Kwaha', 'Retired Civil Servant', '07034232154', 'Maryamu James', 'Civil Servant', '07034232154', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James Daniel Kwaha', '07034232154', 'Maraba Mubi', 'Retired Civil Servant', 'Father', 'Zamaki Academy Yola', 'SSS1', 'NTC2', '20181FSTCMICH4', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 19:49:31'),
(5, 'Male', 'Peter', 'Between', '', '2', 'September', '1999', '08081137058', '07066008075', '07036500060', '08081137058', 'None', 'Michika', 'Peter Tumba', 'Farmer', '07066008075', 'Maryamu Peter', 'Business', '07036500060', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Peter Tumbia', '07066008075', 'Michika Blashata', 'Farmer', 'Father', 'GTSS Blashata Michika', 'SSS1', 'NTC2', '20181FSTCMICH5', 'fstc', 'image/avatar.png', '09/Dec/2018', '2018-12-09 19:56:10'),
(7, 'Female', 'Jatau', 'Hope', 'Alhaji', '4', 'November', '2002', '07063461508', '07063461508', '07063461508', '07063461508', 'None', 'Michika Kuburshosho', 'Alhaji Jatau', 'Farmer', '07063461508', 'Fransisca', 'Jatau', '09033122232', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Alhaji Jatau', '07063461508', 'Michika Kuburshosho', 'Farmer', 'F', 'Halibert English College, Mubi', 'SSS1', 'NTC2', '20181FSTCMICH7', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:05:54'),
(8, 'Male', 'Jabani', 'Hylegrayu', '', '30', 'August', '2002', '08028661203', '08028661203', '08028661203', '08028661203', 'None', 'Jos Bukuro', 'Jabani Adzebia', 'Pastor', '08028661203', 'Jummai Jabani', 'Farmer', '08028661203', 'Adamawa', 'Hong', 'Jos', 'Nigeria', 'Jabani Adzebia', '08028661203', 'Abuja Yanya', 'Pastor', 'Father', 'Effective International College, Jos', 'SSS1', 'NTC2', '20181FSTCMICH8', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:10:29'),
(9, 'Male', 'Bitrus', 'Zaphaniah', '', '1', 'October', '2002', '08163325216', '08082555562', '09066823645', '08163325216', 'None', 'Michika Futulis', 'Bitrus Tizhe', 'Business', '08082555562', 'Hadizia', 'Tailoring', '09066823645', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bitrus Tizhe', '08082555562', 'Michika Futules', 'Business', 'Father', 'GDJSS Bundigari, Damaturu', 'SSS1', 'NTC2', '20181FSTCMICH9', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:16:00'),
(10, 'Male', 'Ezekiel', 'Vaisa', '', '24', 'April', '2002', '08026674005', '08026674005', '08026674005', '08026674005', 'None', 'Michika Barki Dlaka', 'Ezekiel K. Zirit', 'Retired Police', '08026674005', 'Saraya Ezekiel', 'Farmer', '08026674005', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ezekiel K. Zirit', '08026674005', 'Michika Barki Dlaka', 'Retired Police', 'Father', 'Saint Anne\'s Secondary School Michika', 'SSS1', 'NTC2', '20181FSTCMICH10', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:20:34'),
(11, 'Male', 'Donatus', 'Wisdom', '', '20', 'December', '2002', '08080324160', '08131827007', '08066700957', '08080324160', 'None', 'Michika Tunduwada Bazza', 'Donatus Zira', 'Civil Servant', '08131827007', 'Olivia Dee', 'Civil Servant', '08066700957', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Donatus Zira', '08131827007', 'Michika Tunduwada Bazza', 'Civil Servant', 'Father', 'GDJSS Watu', 'SSS1', 'NTC2', '20181FSTCMICH11', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:25:12'),
(12, 'Male', 'Sailume', 'Jiri', 'Bitrus', '4', 'April', '2002', '00', '00', '00', '00', 'None', 'Michika Yukusule', 'Bitrus Tumba Sakume', 'Civil Servant', '00', 'Maritha Bitrus', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bitrus Tumba Sakume', '00', 'Michika Yukusule', 'Civil Servant', 'Father', 'Halibert English College, Mubi', 'SSS1', 'NTC2', '20181FSTCMICH12', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:29:27'),
(13, 'Male', 'Mathias', 'La,azurus', '', '17', 'July', '2002', '00', '08142090045', '08142090045', '08142090045', 'None', 'Michika', 'Mathias Zira Yanga', 'Business', '08142090045', 'Maryamu Mathias', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Mathias Zira Yanga', '08142090045', 'Michika Kuda', 'Business', 'Father', 'GDJSS Blashata Michika', 'SSS1', 'NTC2', '20181FSTCMICH13', 'fstc', 'image/avatar.png', '09/Dec/2018', '2018-12-09 20:33:52'),
(14, 'Male', 'Tumba', 'Israel', 'Yusuf', '28', 'March', '2003', '00', '07066097772', '07066101056', '00', 'None', 'GDJSS Bazza', 'Yusuf Tumba', 'Civil Servant', '07066097772', 'Hajara Yusuf', 'Civil Servant', '07066101056', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yusuf Tumba', '07066097772', 'Bazza', 'Civil Servant', 'Father', 'GDJSS Bazza', 'SSS1', 'NTC2', '20181FSTCMICH14', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:38:19'),
(15, 'Male', 'Kwaji', 'Julius', 'Ishaya', '15', 'April', '2002', '07019205828', '08027592412', '08027592412', '07019205828', 'None', 'Michika Futu', 'Ishaya Kwaji', 'Business', '08027592412', 'Monica Ishaya', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ishaya Kwaji', '08027592412', 'Maiduguri Musari', 'Business', 'Father', 'GDJSS JANG MICHIKA', 'SSS1', 'NTC2', '20181FSTCMICH15', 'fstc', 'image/avat.png', '09/Dec/2018', '2018-12-09 20:44:10'),
(16, 'Female', 'Babangida', 'Zainab', '', '7', 'August', '2003', '00', '09022627494', '08129256265', '08134678223', 'None', 'Behind Motor Park Zaibadari Michika', 'Babangida Yahya Adda', 'Business', '09022627494', 'Habiba Adullahi', 'Business', '08129256265', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Babangida Yahya Adda', '09022627494', 'Behind Motor Park Zaibadari Michika', 'Business', 'Father', 'Government Girls Yaskule', 'NBC1', 'NBC2', '20181FSTCMICH16', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:18:07'),
(17, 'Female', 'Christian', 'Promise', '', '3', 'November', '2000', '09028934194', '09020781766', '00', '00', 'None', 'Opposite E.Y.N No. 1 Michika', 'Christian Nnegbo', 'Business', '09020781766', 'Bridget Christian', 'Business', '00', 'Anambra', 'Dunukofia', 'Dunukofia', 'Nigeria', 'Christian Nnegbo', '09020781766', 'Opposite E.Y.N No. 1 Michika', 'Business', 'Father', 'St Ann\'s Secondary School Michika', 'NBC1', 'NBC2', '20181FSTCMICH17', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:25:47'),
(18, 'Female', 'Musa', 'Aisha', '', '3', 'September', '2002', '09031116268', '08035795487', '00', '00', 'None', 'Yaskule, Michika', 'Musa Mohammed', 'Business', '08035795487', 'Ummukulsum', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Musa Mohammed', '08035795487', 'Yaskule, Michika', 'Business', 'Father', 'Government Girls Yaskule', 'NBC1', 'NBC2', '20181FSTCMICH18', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:30:16'),
(19, 'Male', 'Abali', 'Abubakar', 'Usman', '6', 'April', '2002', '08146247583', '00', '00', '00', 'None', 'Zaibadari Michika', 'Usman Abali', 'Business', '08146247583', 'Maryamu Buba Wambai', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Usman Abali', '08146247583', 'Zaibadari Michika', 'Civil Servant', 'Mother', 'General Murtala Mohammed College, Yola', 'NBC1', 'NBC2', '20181FSTCMICH19', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:35:57'),
(20, 'Male', 'Abubakar', 'Salim', '', '10', 'June', '2003', '00', '00', '00', '00', 'None', 'Zaibadari Michika', 'Abubakar Ibrahim', 'Business', '00', 'Hauwa\'u Abubakar', 'Civil Servant', '09011928160', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Hauwa\'u Abubakar', '09011928160', 'Zaibadari Michika', 'Civil Servant', 'Mother', 'GDSS Zaibadari', 'NBC1', 'NBC2', '20181FSTCMICH20', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:40:38'),
(21, 'Female', 'Ishaya', 'Ruth', '', '15', 'April', '2003', '00', '00', '00', '00', 'None', 'Dibiki Futu Michika', 'Ishaya Kwaji', 'Business', '08027592412', 'Monica Kwaji', 'Farmer', '00', 'Abia', 'Michika', 'Michika', 'Nigeria', 'Ishaya Kwaji', '08027592412', 'Polo Maiduguri, Borno State', 'Business', 'Father', 'Government Day Secondary School Jang', 'NBC1', 'NBC2', '20181FSTCMICH21', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:50:53'),
(22, 'Male', 'Bulanga', 'Mivanyi', 'Philemon', '15', 'September', '2004', '08101513462', '000', '000', '000', 'None', 'Shiwa Kala\'a, Hong LGA', 'Philemon Bulanga', 'Business', '08064150645', 'Abihu Philemon Gideon', 'Civil Servant', '07035165607', 'Adamawa', 'Hong', 'Hong', 'Nigeria', 'Abihu Philemon Gideon', '07035165607', 'Shiwa Kala\'a, Hong LGA', 'Civil Servant', 'Mother', 'E.Y.N Kwarti', 'NBC1', 'NBC2', '20181FSTCMICH22', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 08:58:03'),
(23, 'Female', 'Tijani', 'Ladidi', 'Pembi', '17', 'April', '2006', '08124504175', '00', '00', '00', 'None', 'Yaskule, Michika', 'Tijani Pembi', 'Business', '08030415940', 'Rebecca Tijani', 'Farmer', '08125221462', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Tijani Pembi', '08030415940', 'Yaskule, Michika', 'Business', 'Father', 'I.P.S Michika', 'NBC1', 'NBC2', '20181FSTCMICH23', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 09:02:00'),
(24, 'Male', 'Bitrus', 'Kwada', '', '1', 'June', '2000', '00', '00', '00', '00', 'None', 'Yaskule, Michika', 'Bitrus Tumba', 'Business', '08030415940', 'Laraba Bitrus', 'Civil Servant', '09073397632', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bitrus Tumba', '08030415940', 'Yaskule, Michika', 'Civil Servant', 'Uncle', 'GDJSS Michika', 'NBC1', 'NBC2', '20181FSTCMICH24', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 09:07:20'),
(25, 'Male', 'Peter', 'Joseph', '', '20', 'August', '2003', '07031839425', '00', '00', '00', 'None', 'Kuda, Michika', 'Peter Tilize', 'Civil Servant', '08103439425', 'Victoria Peter', 'Civil Servant', '08023730374', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Peter Tilize', '08103439425', 'Kuda, Michika', 'Civil Servant', 'Father', 'F.G.C Ganye', 'NBC1', 'NBC2', '20181FSTCMICH25', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 09:12:24'),
(26, 'Female', 'Emmanuel', 'Jemimah', '', '12', 'April', '2002', '08100391173', '00', '00', '00', 'None', 'Lughu Michika', 'Emmanuel Vangilisi', 'Civil Servant', '08127997498', 'Tabitha Dauda Nyampa', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Vangilisi', '08127997498', 'Lughu Michika', 'Civil Servant', 'Father', 'Queen Amina College, Kaduna State', 'NBC1', 'NBC2', '20181FSTCMICH26', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 09:28:57'),
(27, 'Female', 'Barau', 'Jemimah', '', '24', 'June', '2001', '00', '00', '00', '00', 'None', 'Sengere Near Post Office Michika', 'Barau Markus', 'Civil Servant', '07016018500', 'Hanatu', 'Civil Servant', '09022406072', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Barau Markus', '07016018500', 'Sengere Near Post Office Michika', 'Civil Servant', 'Father', 'GJSS Michika', 'NBC1', 'NBC2', '20181FSTCMICH27', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:08:23'),
(28, 'Female', 'James', 'Eliet', '', '4', 'November', '2004', '00', '00', '00', '00', 'None', 'Hausari, Michika', 'James Chinda', 'Civil Servant', '07065757515', 'Ruth James', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James Chinda', '07065757515', 'Hausari, Michika', 'Civil Servant', 'Father', 'A.J.S Yola', 'NBC1', 'NBC2', '20181FSTCMICH28', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:11:50'),
(29, 'Female', 'Isuwa', 'Esther', '', '21', 'October', '2002', '00', '000', '00', '00', 'None', 'Thraze, Michika', 'Isuwa Kwada', 'Doctor(Civil Servant)', '08038870293', 'Hanatu Isuwa', 'Teacher(Civil Servant)', '07010092841', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Isuwa Kwada', '08038870293', 'Thraze, Michika', 'Doctor', 'Father', 'Government Girls Yaskule, Michika', 'NBC1', 'NBC2', '20181FSTCMICH29', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:15:36'),
(30, 'Female', 'Tijani', 'Blessing', 'Pembi', '17', 'August', '2006', '00', '00', '00', '00', 'None', 'Yaskule, Michika', 'Tijani Pembi', 'Business', '08030415940', 'Suzana Tijani', 'Civil Servant', '09073397632', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Tijani Pembi', '08030415940', 'Yaskule, Michika', 'Business', 'Father', 'I.P.S Michika', 'NBC1', 'NBC2', '20181FSTCMICH30', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:18:29'),
(31, 'Male', 'Abdullahi', 'Salisu', 'Alhaji', '21', 'March', '2000', '08131624728', '0000000', '00000', '0000', 'None', 'Hausari, Michika', 'Abdullahi A. Yakubu', 'Business', '07037705525', 'Hadiza Mohammed', 'Business', '08131624728', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Abdullahi A. Yakubu', '07037705525', 'Hausari, Michika', 'Business', 'Father', 'V.C.T College Geanye', 'NBC1', 'NBC2', '20181FSTCMICH31', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:23:56'),
(32, 'Female', 'Bappa', 'Zainab', '', '20', 'August', '2002', '09072093666', '000', '000', '000', 'None', 'Zaibadari Michika', 'Bappa Kota', 'Business', '07068115252', 'Asmau Buba Wambai', 'Business', '07088310379', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bappa Kota', '07068115252', 'Zaibadari Michika', 'Business', 'Father', 'Zaibadari College Michika', 'NBC1', 'NBC2', '20181FSTCMICH32', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:28:17'),
(33, 'Male', 'Mathias', 'Barnabas', '', '1', 'October', '2000', '000', '000', '000', '000', 'None', 'Wula/mango, Madagali LGA', 'Mathias Duwas', 'Business', '09035222035', 'Maryamu Mathias', 'Farmer', '08129855265', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Mathias Duwas', '09035222035', 'Wula/mango, Madagali LGA', 'Business', 'Father', 'GDJSS Wula Mango', 'NBC1', 'NBC2', '20181FSTCMICH33', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:31:50'),
(34, 'Male', 'Bapetel', 'Ahmed', '', '19', 'August', '2002', '07034684560', '00', '00', '00', 'None', 'Zaibadari Michika', 'Bapetel Mala', 'Civil Servant', '07069541130', 'Maryamu Bapetel', 'Civil Servant', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bapetel Mala', '07069541130', 'Zaibadari Michika', 'Civil Servant', 'Father', 'Zaibadari College Michika', 'NBC1', 'NBC2', '20181FSTCMICH34', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:37:06'),
(35, 'Male', 'Bilal', 'Aliyu', 'Abrahim', '24', 'May', '2001', '09038380681', '00', '00', '00', 'None', 'Shagari, Yola Town, Adamawa', 'Ibrahim Bilal', 'Business', '07012618456', 'Aisha Bappa', 'Business', '09020255152', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Bilal', '07012618456', 'Shagari, Yola Town, Adamawa', 'Shagari, Yola Town, Adamawa', 'Father', 'Yola Model School', 'NBC1', 'NBC2', '20181FSTCMICH35', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:42:12'),
(36, 'Male', 'Ali', 'Alloysius', '', '6', 'May', '2001', '07068900226', '00', '00', '00', 'None', 'Jigalamu Primary School, Michika', 'Ali Vanze', 'Nigerian Custom', '000', 'Fraisical', 'Civil Servant', '07068900226', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ali Vanze', '07068900226', 'Jigalamu Primary School, Michika', 'Nigerian Custom', 'Father', 'Day Secondary School Jigalambu', 'NBC1', 'NBC2', '20181FSTCMICH36', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 15:46:48'),
(37, 'Male', 'Dauda', 'Markus', '', '8', 'June', '1999', '08020786913', '08064278733', '00', '00', 'None', 'Behind First Bank Michika', 'Dauda T. Vandi', 'Business', '08020786913', 'Maryamu Daudu', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda T. Vandi', '08020786913', 'Behind First Bank Michika', 'Business', 'Father', 'EYN Day Sec. School Michika', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH37', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 16:32:07'),
(38, 'Male', 'Mamza', 'Jafiya', 'Shaibu', '4', 'April', '2003', '0084463944', '08083025500', '00', '00', 'None', 'Opposite barka Clinic Near Market Uba/Askira', 'Shaibu Mamza', 'Civil', '08083025500', 'Hannatu Shaibu', 'C', '00', 'Borno', 'Askira/uba', 'Uba', 'Nigeria', 'Shaibu Mamza', '08083025500', 'Opposite barka Clinic Near Market Uba/Askira', 'Civil Servant', 'Father', 'Brightest Future International School Uba Borno', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH38', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 16:39:51'),
(39, 'Male', 'Luka', 'Yanchi', '', '17', 'August', '2002', '09022731697', '09022731697', '00', '00', 'None', 'Opposite Police Station Maraba Mubi', 'Luka Zira', 'Farmer', '08164496937', 'Esther Luka', 'Farmer', '09074193051', 'Adamawa', 'Hong', 'Maraba Mubi', 'Nigeria', 'Luka Zira', '09074193051', 'Maraba Mubi', 'Farmer', 'Father', 'Kwarhi A. Sec School Mararaba Mubi', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH39', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 16:45:28'),
(40, 'Female', 'David', 'Mbrasawa', '', '23', 'September', '2002', '08059059941', '08082943990', '00', '00', 'None', 'Yamwe Michika', 'David Fayas', 'Civil Servant', '08082943990', 'Liyatu David', 'House Wife', '08059095941', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'David Fayas', '08082943990', 'Yamwe Michika', 'Civil Servant', 'Father', 'Khour-Ui Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH40', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 16:50:36'),
(41, 'Female', 'Dauda', 'Queen', '', '26', 'January', '2004', '00', '0703868449', '08065161266', '00', 'None', 'Sina Kwande Michika', 'Dauda V. Bello', 'Civil Servant', '0703868449', 'Martha Dauda', 'Civil Servant', '08030684499', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda V. Bello', '0703868449', 'Sina Kwande Michika', 'Civil Servant', 'Father', 'EYN Brethren Academy Michika', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH41', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 16:55:27'),
(43, 'Male', 'Hosea', 'Joel', '', '15', 'November', '2001', '08163290214', '07061127570', '00', '00', 'None', 'Koleri Ward Mubi', 'Hosea Bitrus', 'Civil Servant', '07061127570', 'Elizabeth Bamako', 'Civil Servant', '07083824472', 'Adamawa', 'Michika', 'mubi', 'Nigeria', 'Hosea Bitrus', '07061127570', 'Kolera  Ward Mubi', 'Civil Servant', 'Father', 'Adsu Mubi', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH43', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 17:03:39'),
(44, 'Male', 'Jeroboam', 'Joseph', '', '4', 'February', '2003', '0902715899', '08111037339', '00', '00', 'None', 'Watu Muchika', 'Joseph Graba', 'Civil Servant', '08111037339', 'Patience Joseph', 'Civil Servant', '0902715899', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Joseph Graba', '08111037339', 'Watu', 'Civil Servant', 'Father', 'EYN Day Sec. School Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH44', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 17:07:08'),
(45, 'Female', 'Kamale', 'Katherine', 'Jacob', '7', 'July', '2005', '09021440013', '07067744691', '09021440013', '00', 'None', 'Chessdawol Primary School Michika', 'Jacob Ishaku', 'Civil Servant', '07067744691', 'Laraba Jacob', 'Civil Servant', '07088411130', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jacob Ishaku', '07067744691', 'Chessdawol Primary School Michika', 'Civil Servant', 'Father', 'Gdss Yaskule Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH45', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 17:11:45'),
(46, 'Male', 'Akura', 'Innocent', 'Daniel', '19', 'April', '2003', '00', '08062310966', '00', '00', 'None', 'Sabo Gari Mubi', 'Daniel Akura', 'Retired Civil Servant', '08062310966', 'Celina Daniel', 'Civil Servant', '08062310966', 'Adamawa', 'Mubi  North', 'Mubi', 'Nigeria', 'Celina Daniel', '08062310966', 'Sabo Gari Mubi', 'Civil Servant', 'Mother', 'Adsu Mubi', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH46', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 17:15:47'),
(47, 'Male', 'Dali', 'Jesse', 'Kwaji', '11', 'May', '2003', '09028952870', '09028952870', '07066144501', '0766433387', 'None', 'Jiddel Michika', 'Kwaji Dali', 'Farmer', '07066144501', 'Ruth Kwaji', 'Civil Servant', '09028952870', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Kwaji Dali', '07066144501', 'Jiddel Michika', 'Farmer', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH47', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 18:54:03'),
(48, 'Female', 'Samuel', 'Rose', '', '26', 'May', '2004', '08014322318', '09022660551', '08014322318', '09026417231', 'None', 'EYN Watu Michika', 'Samuel Z. Manager', 'Farmer/Business', '09022660551', 'Hannatu Samuel', 'Farmer/Tailor', '08014322318', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Samuel Z. Manager', '09022660551', 'EYN Watu Michika', 'Farmer/Business', 'Father', 'GDJSS Watu', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH48', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 19:00:18'),
(49, 'Male', 'Bitrus', 'Fashe', '', '11', 'November', '1999', '08133438665', '08137795485', '09021464045', '07060434686', 'None', 'Opposite EYN Church Yamwa,Michika', 'Bitrus Kwada', 'Farmer', '08137795485', 'Murna Bitrus', 'Farmer', '07011760627', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bitrus kwada', '07011760627', 'Opposite E.Y.N Church Yamwe', 'Farmer', 'Father', 'Khour - VI Junior Secondary School', 'SS1', 'SSS2SCIENCE', '20181FSTCMICH49', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 19:25:27'),
(50, 'Male', 'Samuel', 'Feriwa', '', '10', 'June', '2002', '08021357229', '07069579130', '09020285985', '08021357229', 'None', 'Opposite Yaskule, Michika', 'Samuel Ndianga', 'Professor(Civil Servant)', '08021357229', 'Ruth Samuel', 'Teacher', '09020285985', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Samuel Ndianga', '08021357229', 'Opposite Yaskule, Michika', 'Professor(Civil Servant)', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH50', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 19:30:28'),
(51, 'Female', 'Monday', 'Bester', '', '23', 'February', '2002', '08109345275', '08087358191', '08109345275', '08157570402', 'None', 'Jiddel Michika', 'Monday Tumba', 'Business', '08087358191', 'Rose Monday', 'Business', '08109345275', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Monday Tumba', '08087358191', 'Jiddel Michika', 'Business', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH51', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 19:35:19'),
(52, 'Male', 'Ibrahim', 'Asaph', '', '13', 'February', '2003', '08035352013', '000', '000', '000', 'None', 'Tilli Michika', 'Ibrahim Tizhe', 'Business', '08035352013', 'Grace Bitrus', 'Doctor', '08035352013', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Tizhe', '08035352013', 'Tilli Michika', 'Business', 'Father', 'EYN Academy Yola, Town Adamawa', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH52', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 20:36:46'),
(53, 'Male', 'Tada', 'Yakubu', 'Bala', '6', 'May', '2003', '09026288486', '08122113767', '0902628848', '000', 'None', 'Near Police Station Maraba Mubi', 'Yakubu Tada', 'Teacher', '07084806932', 'Mary Yakubu', 'Farmer', '07084806932', 'Adamawa', 'Hong', 'Maraba Mubi', 'Nigeria', 'Yakubu Tada', '07084806932', 'Kubaru Nasarawa State', 'Teacher', 'Father', 'GDSS Kwarhi A.', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH53', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 20:44:07'),
(54, 'Male', 'Ijabani', 'Mas ud', 'Yakubu', '28', 'December', '2002', '07017793251', '08023238783', '07017793251', '07063466616', 'None', 'Near Izala Mosque, Zaibadari II Michika', 'Alh. Yakubu Ijabani', 'Trader', '07063466616', 'Aisha Yakubu', 'Business', '07033606695', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Alh. Yakubu Ijabani', '07063466616', 'Near Izala Mosque, Zaibadari II Michika', 'Trader', 'Father', 'I.P.S Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH54', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 20:52:11'),
(55, 'Male', 'Umar', 'Ibrahim', 'Bello', '20', 'June', '2002', '0810342690', '00', '00', '00', 'None', 'Hausari, Michika', 'Bello Umar', 'Business', '08039573035', 'Maimuna Bello', 'House Wife', '08100180956', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bello Umar', '08039573035', 'Hausari, Michika', 'Business', 'Father', 'Ansar Uddeen College, Yola', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH55', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 20:56:03'),
(56, 'Male', 'Abdullahi', 'Zakari', '', '1', 'February', '2000', '08103426960', '00', '00', '00', 'None', 'Jigalambu Michika', 'Zakari Abdulrahman', 'Civil Servant', '07068900226', 'Amina', 'Zakari', '07068900226', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Zakari Abdulrahman', '07068900226', 'Jigalambu Michika', 'Civil Servant', 'Father', 'GDSS Jigalambu Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH56', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 21:00:51'),
(57, 'Female', 'Saleh', 'Salima', '', '25', 'April', '2004', '08080802416', '08080802416', '08057771109', '000', 'None', 'Zaibadari II Michika', 'Saleh Musa Koji', 'Business', '08057771109', 'Zainab Saleh', 'Business', '08057771109', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Saleh Musa Koji', '08057771109', 'Zaibadari II Michika', 'Business', 'Father', 'I.P.S Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH57', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 21:06:25'),
(58, 'Female', 'Kwada', 'Wangye', 'Emmanuel', '4', 'August', '2003', '000', '08037173701', '07063268802', '000', 'None', 'GSS Michika Quaters', 'Emmanuel Kwada', 'Civil Servant', '08037173701', 'Adarju Dennis', 'Civil Servant', '07063268802', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Kwada', '08037173701', 'GSS Michika Quaters', 'Civil Servant', 'Father', 'GDJSS Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH58', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 21:17:09'),
(59, 'Male', 'Mathias', 'Innocent', '', '1', 'November', '2009', '000', '08142090045', '08126171127', '000', 'None', 'Opposite Jonathan Clinic Near Church Blashafa', 'Mathias Z. Yange', 'Business', '08142090045', 'Maryamu Mathias', 'Farmer', '08126171127', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Mathias Z. Yange', '08142090045', 'Blashafa Michika', 'Business', 'Father', 'GDJSS Blashata Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH59', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 21:22:28'),
(60, 'Female', 'James', 'Vawa', '', '4', 'February', '2004', '07087803296', '07087803296', '000', '000', 'None', 'Mubi North', 'James K. Adandi', 'Civil Servant', '07087803296', 'Laraba James', 'Business', '00', 'Adamawa', 'Mubi  North', 'Uba', 'Nigeria', 'James K. Adandi', '07087803296', 'Mayo Bani', 'Civil Servant', 'Father', 'GDSS Mayo-Bani Mubi North', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH60', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 21:28:33'),
(61, 'Male', 'Abali', 'Ibrahim', 'Muhammad', '26', 'April', '2004', '08148087859', '07068290268', '08107122652', '000', 'None', 'Behind Motor Park Michika', 'Ibrahim Usman', 'Civil Servant', '07068290269', 'Hadiza Ibrahim', 'House Wife', '08107122652', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Usman', '07068290269', 'Behind Motor Park Michika', 'Civil Servant', 'Father', 'Al-Heedaye Science Sec Sch', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH61', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 21:34:35'),
(62, 'Female', 'Ndupwa', 'Janet', '', '14', 'December', '2004', '08165042942', '08165042942', '09071141476', '07065042886', 'None', 'Jiddel Michika', 'Ndupwa Zirashikul Kadzai', 'Civil Servant', '0907141476', 'Ruth Ishaya Yantre', 'Civil Servant', '07065042886', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ndupwa Zirashikul Kadzai', '0907141476', 'Jiddel Michika', 'Civil Servant', 'Father', 'GDSS Vundlang/Zamaki Academy', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH62', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 21:40:14'),
(63, 'Male', 'John', 'Jonathan', '', '24', 'August', '2002', '08018805752', '08086446115', '000', '000', 'None', 'Water Board Michika', 'John Giwa Timude', 'Civil Servant', '08086446115', 'Ladi John', 'Business', '08086446115', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John Giwa Timude', '08086446115', 'Water Board Michika', 'Civil Servant', 'Father', 'FSTC Dayi Katsina State', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH63', 'fstc', 'image/avat.png', '10/Dec/2018', '2018-12-10 21:46:07'),
(64, 'Male', 'Samaila', 'Barka', '', '24', 'November', '2001', '08083498671', '08138726025', '09024410059', '08127146819', 'None', 'Jigalambu Bazza Michika', 'Dauda Samaila', 'Civil Servant', '08083498671', 'Hanatu Samaila', 'Business', '07014642106', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda Samaila', '08083498671', 'Jigalambu Bazza Michika', 'Civil Servant', 'Father', 'GDSS Jigalambu Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH64', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:15:01'),
(65, 'Male', 'Uba', 'Suleiman', 'Umar', '27', 'December', '2002', '07089794528', '07089794528', '08122373932', '07061136356', 'None', 'Jiddel Michika', 'Umar Yahya Uba', 'Business', '08084530336', 'Hafsat Abdulhamid', 'House Wife', '07085383975', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Umar Yahya Uba', '08084530336', 'Lagos', 'Civil Servant', 'Uncle', 'Tarbiyatu Islam Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH65', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:21:56'),
(66, 'Male', 'Zakariya', 'Allahyaji', '', '6', 'November', '2002', '000', '08103522148', '00', '00', 'None', 'Waranki Michika', 'Zakariya Sani', 'Civil Servant', '07010867708', 'Esther Zakariya', 'Farmer', '09071767747', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Zakariya Sani', '07010867708', 'Waranki Michika', 'Civil Servant', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH66', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:26:04'),
(67, 'Male', 'Yante', 'Musa', 'Ibrahim', '23', 'November', '2003', '08034222769', '08100720300', '08057170530', '08034222769', 'None', 'Beside Central Primary School Michika', 'Ibrahim Musa Yante', 'Business', '08100720300', 'Suzana Ibrahim', 'Teacher', '08057170530', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Musa Yante', '08100720300', 'Beside Central Primary School Michika', 'Business', 'Father', 'Bolori Day Junior Secondary School Maiduguri', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH67', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:31:25'),
(68, 'Female', 'Philemon', 'Favour', '', '24', 'October', '2004', '00', '00', '00', '00', 'None', 'Yaskule Ward II Michika', 'Philemon Zira Vante', 'Civil Servant', '08123571647', 'Rebecca John', 'Civil Servant', '08123571647', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Philemon Zira Vante', '08123571647', 'Yaskule Ward II Michika', 'Civil Servant', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH68', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:37:32'),
(69, 'Male', 'James', 'Alfred', 'Bright', '1', 'October', '2005', '07016686951', '08034415450', '07016686951', '00', 'None', 'Lowcust Michika', 'James Wanti', 'Civil Servant', '08034415450', 'Martha James', 'House Wife', '07016686951', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James Wanti', '08034415450', 'Lowcust Michika', 'Civil Servant', 'Father', 'EYN Brethren Academy Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH69', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:41:12'),
(70, 'Male', 'Usman', 'Idris', '', '9', 'September', '2003', '09020484943', '08100826600', '09020484943', '00', 'None', 'Jiddel Michika', 'Usman', 'Business', '08100826600', 'Bilkisu', 'House Wife', '09020484943', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Usman', '08100826600', 'Jiddel Michika', 'Business', 'Father', 'Jiddel Primary/Secondary School Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH70', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:46:17'),
(71, 'Female', 'Yawate', 'Maryamu', 'Samuel', '11', 'December', '2002', '08144541105', '08124824685', '08144541105', '000', 'None', 'Moda A Michika', 'Samuel Yawate', 'Doctor(Civil Servant)', '08124824685', 'Godiya Samuel', 'Business', '08144541105', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Samuel Yawate', '08124824685', 'Moda A Michika', 'Doctor(Civil Servant)', 'Father', 'GJSS Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH71', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:50:55'),
(72, 'Female', 'Adzira', 'Janet', 'Jabani', '24', 'March', '2006', '07062866448', '08028661023', '08065655213', '07062866448', 'None', 'EYN LCC Barkin Dlaka DCC Nkata Michika', 'Jabani Adzebia', 'Pastor', '08028661203', 'Jummai Jabani', 'Farmer', '08065655213', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jabani Adzebia', '08028661203', 'EYN LCC Barkin Dlaka DCC Nkata Michika', 'Pastor', 'Father', 'Central Secondary School Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH72', 'fstc', 'image/avatar.png', '10/Dec/2018', '2018-12-10 22:56:08'),
(73, 'Female', 'Maigari', 'Fadimatu', 'Bappa', '28', 'September', '2004', '07063303521', '07063303521', '08082913555', '07011227500', 'None', 'Behind Motor Park Michika', 'Bappa Maigari', 'Business', '08082913555', 'Aisha Bappa', 'Business', '07011227500', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bappa Maigari', '08082913555', 'Behind Motor Park Michika', 'Business', 'Father', 'I.P.S Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH73', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-10 23:00:40'),
(74, 'Male', 'Kwaha', 'Jeremiah', 'James', '1', 'August', '2003', '000', '07034232154', '00', '00', 'None', 'Yolde-Pate, Yola Town.', 'James', 'Civil Servant', '07034232154', 'Mariyamu', 'Civil Servant', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James', '07034232154', 'Maraba Mubi, Hong LGA', 'Civil Servant', 'Father', 'Aliyu Mustafa College, Yola', 'JSS3', 'NBC1', '20181FSTCMICH74', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 06:52:17'),
(75, 'Female', 'Jacob', 'Jemimah', '', '7', 'September', '2002', '00', '00', '00000', '00', 'None', 'Tsukuma - Bazza', 'Jacob', 'Civil Servant', '08060814937', 'Rebecca', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jacob', '08060814937', 'Tsukuma - Bazza', 'Civil Servant', 'Father', '', 'JSS3', 'NBC1', '20181FSTCMICH75', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 06:55:08'),
(76, 'Female', 'Lawrence', 'Shecktra', '', '28', 'January', '2004', '00', '08142441475', '07038077000', '08067048000', 'None', 'Close OLC Catholic Church, Bazza', 'Lawrence', 'Civil Servant', '08067048000', 'Eunice', 'Civil Servant', '07038077000', 'Adamawa', 'Michika', 'Bazza', 'Nigeria', 'Grand Mother', '08142441475', 'Tsukuma - Bazza', 'Business', 'Grand Mother', 'DLC Secondary School Bazza', 'JSS3', 'NBC1', '20181FSTCMICH76', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 07:02:26'),
(77, 'Male', 'Aguli', 'Amana', '', '6', 'June', '2003', '0084463944', '07031208885', '00', '00', 'None', 'Uba - Margi, Askira LGA', 'Aguli', 'Civil Servant', '07031208885', 'Nancy', 'Civil Servant', '000', 'Adamawa', 'Askira - Uba', 'Uba', 'Nigeria', 'Aguli', '07031208885', 'Uba - Margi, Askira LGA', 'Civil Servant', 'Father', 'Jesus Kids College, Uba - Borno', 'JSS3', 'NBC1', '20181FSTCMICH77', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 07:05:52'),
(78, 'Male', 'Sambo', 'Abdullahi', 'Kawu', '13', 'April', '2003', '00', '09028777868', '00', '00', 'None', 'Zaibadari II Michika', 'Kawu Sambo', 'Business', '09028777868', 'Kaltume', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Kawu Sambo', '09028777868', 'Zaibadari II Michika', 'Business', 'Father', 'GJSS Zaibadari Michika', 'JSS3', 'NBC1', '20181FSTCMICH78', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:09:38'),
(79, 'Female', 'Bitrus', 'Kauna', '', '26', 'January', '2004', '00', '07084035850', '00', '00', 'None', 'Jiddel Michika', 'Bitrus', 'Civil Servant', '07084035850', 'Hajaratu', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bitrus', '07084035850', 'Jiddel Michika', 'Civil Servant', 'Father', 'Zamake International Christian Academy, Michika', 'JSS3', 'NBC1', '20181FSTCMICH79', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 07:12:55'),
(80, 'Female', 'Gambo', 'Hellen', 'Gambo', '7', 'January', '2004', '00', '08061683515', '00', '00', 'None', 'Sengere - Michika LGA', 'Peter Gambo', 'Business', '08061683515', 'Agnes', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Peter Gambo', '08061683515', 'Sengere - Michika LGA', 'Business', 'Father', 'Nana Ainaba Academy, Gombe', 'JSS3', 'NBC1', '20181FSTCMICH80', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:16:10'),
(81, 'Male', 'Ya\'uba', 'Bello', '', '11', 'January', '2002', '08063118781', '08063118781', '00', '00', 'None', 'Ubare - Michika', 'Ya\'uba', 'Driving', '08063118781', 'Huraira', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ya\'uba', '08063118781', 'Ubare - Michika', 'Driving', 'Father', 'GJSS Michika', 'JSS3', 'NBC1', '20181FSTCMICH81', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:19:12'),
(82, 'Female', 'Dahiru', 'Khadija', 'Mohammed', '8', 'January', '2005', '00', '08036954465', '00', '00', 'None', 'Opposite Yaskule Pri. Sch. Michika', 'Dahiru', 'Business', '00', 'Aisha', 'Civil Servant', '08036954465', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Aisha', '08036954465', 'Opposite Yaskule Pri. Sch. Michika', 'Civil Servant', 'Mother', 'GDSS Zaibadari Michika', 'JSS3', 'NBC1', '20181FSTCMICH82', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:23:27'),
(83, 'Female', 'Monday', 'Ketura', '', '6', 'May', '2006', '00', '08087358191', '00', '00', 'None', 'C/O EYN LCC, Jiddel, Michika', 'Monday (MR)', 'Business', '08087358191', 'Rose Monday', 'Business', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Monday (MR)', '08087358191', 'Jiddel Michika', 'Business', 'Father', 'Good Shepherd Anglican Academy, Michika', 'JSS3', 'NBC1', '20181FSTCMICH83', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:26:48'),
(84, 'Female', 'Dauda', 'Kwagwe', '', '27', 'April', '2004', '09021106953', '09020786913', '09021191558', '00', 'None', 'Opp. Secretariat Michika LGA', 'Dauda', 'Business', '09020786913', 'Esther', 'Farmer', '09021191558', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda', '09020786913', 'Opp. Secretariat Michika LGA', 'Business', 'Father', 'EYN Brethren Academy Michika', 'JSS3', 'NBC1', '20181FSTCMICH84', 'fstc', 'image/avatar.png', '11/Dec/2018', '2018-12-11 07:31:09'),
(85, 'Male', 'Aliyu', 'Kamaludeen', '', '1', 'February', '2001', '00', '08033742497', '00', '00', 'None', 'Rafin - Sanyi, Michika LGA', 'Aliyu', 'Business', '08033742497', 'Semira', 'House Wife', '09063780849', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Aliyu', '08033742497', 'Rafin - Sanyi, Michika LGA', 'Business', 'Father', 'Central Secondary School Michika', 'JSS3', 'NBC1', '20181FSTCMICH85', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 07:34:26'),
(86, 'Male', 'Linus', 'Useiju', '', '3', 'August', '2002', '09074360053', '00', '00', '00', 'None', 'Mararaba Mubi', 'Linus Garu', 'Agric Officer', '00', 'Martina Linus', 'Farmer', '08085234676', 'Adamawa', 'Hong', 'Hong', 'Nigeria', 'Martina Linus', '08085234676', 'Kwarhi Mararaba Mubi', 'Farmer', 'Mother', 'Kwarhi A. Sec School Mararaba Mubi', 'JSS3', 'NTC1', '20181FSTCMICH86', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 08:06:16'),
(87, 'Male', 'Taringey', 'Joel', 'Bulus', '15', 'March', '2003', '00', '08118961895', '000', '000', 'None', 'Watu Muchika', 'Bulus Taringey', 'Teacher', '08118961895', 'Maryamu', 'Nurse', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bulus Taringey', '08118961895', 'Watu Muchika', 'Teacher', 'Father', 'Mubi High School', 'JSS3', 'NTC1', '20181FSTCMICH87', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 08:11:38'),
(88, 'Male', 'Tari', 'Simon', '', '5', 'December', '2001', '00', '08026690043', '00', '00', 'None', 'Wanne, Michika', 'Tari Vandi', 'Bakery', '08026690043', 'Rahila', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Tari Vandi', '08026690043', 'Wanne, Michika', 'Bakery', 'Father', 'EYN No.1 Michika', 'JSS3', 'NTC1', '20181FSTCMICH88', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 08:15:41'),
(89, 'Male', 'Bapatel', 'Yakubu', '', '20', 'April', '2003', '07069541130', '00', '00', '00', 'None', 'Zaibadari I Michika', 'Bapatel Mala', 'Judiciary', '00', 'Zulai', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bapatel Mala', '00', 'Zaibadari 1 Opp. Motor Park Michika', 'Judiciary', 'Father', 'GDSS Zaibadari', 'JSS3', 'NTC1', '20181FSTCMICH89', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 08:19:17'),
(90, 'Male', 'Fedelis', 'Obidah', '', '1', 'October', '2000', '000', '09023403167', '00', '00', 'None', 'Kreya Kudzum Michika LGA', 'Fedelis Rabiu', 'Farmer', '09023403167', 'Monica Fedelis', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Fedelis Rabiu', '09023403167', 'Kreya Kudzum Michika LGA', 'Farmer', 'Father', 'EYN Kudzum', 'JSS3', 'NTC1', '20181FSTCMICH90', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 08:33:04'),
(91, 'Male', 'Joseph', 'Jesse', '', '28', 'September', '2003', '00', '08036164095', '00', '00', 'None', 'Shagari, Lelwaji', 'Joseph Augustine', 'Teacher', '00', 'Elizabeth Augustine', 'NBS', '08036164095', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Elizabeth Augustine', '08036164095', 'Yola Town', 'NBS', 'Mother', 'Best Center Yola', 'JSS3', 'NTC1', '20181FSTCMICH91', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 09:09:48'),
(92, 'Male', 'Emmanuel', 'Innocent', '', '14', 'April', '2004', '00', '07066339919', '00', '00', 'None', 'Michika Central', 'Emmanuel Ibrahim', 'Business', '00', 'Kwasini Adamu', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Uncle', '07066339919', 'Michika Centra', 'Business', 'Uncle', 'Zamake International Christian Academy, Michika', 'JSS3', 'NTC1', '20181FSTCMICH92', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 09:12:38'),
(93, 'Male', 'Sini', 'Ayuba', 'Ishaya', '5', 'August', '2004', '000', '07084361966', '00', '00', 'None', 'Sabon layi Lugau, Michika', 'Ishaya Sini', 'Doctor', '07084361966', 'Habiba Ishaya', 'Nurse', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ishaya Sini', '07084361966', 'Sabon layi Lugau, Michika', 'Doctor', 'Father', 'GDSS Central Michika', 'JSS3', 'NTC1', '20181FSTCMICH93', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 09:16:45'),
(94, 'Male', 'Yohanna', 'Ibrahim', '', '7', 'August', '2002', '09063328038', '08054048444', '000', '000', 'None', 'Angwan Kashen, Michika LGA', 'Yohanna Kakaya', 'Business', '08054048444', 'Rebecca Yohanna', 'Farmer', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yohanna Kakaya', '08054048444', 'Angwan Kashen, Michika LGA', 'Business', 'Father', 'EYN Brethren Academy Michika', 'JSS3', 'NTC1', '20181FSTCMICH94', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 09:20:00'),
(95, 'Male', 'Salama', 'Elisha', '', '4', 'April', '2000', '00', '08122657906', '00', '00', 'None', 'Tsukumu - Bazza', 'Elisha Hassan', 'Judiciary', '000', 'Cecelia Elisha', 'Farmer', '08122657906', 'Adamawa', 'Michika', 'Tsukumu', 'Nigeria', 'Elisha Hassan', '000', 'Tsukumu - Bazza', 'Judiciary', 'Father', 'OLC Bazza', 'JSS3', 'NTC1', '20181FSTCMICH95', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 09:22:58'),
(96, 'Male', 'Luka', 'Musa', '', '1', 'April', '2002', '000', '08081253054', '08149894058', '000', 'None', 'Mutsi Michika', 'Luka Tumba', 'Business', '08081253054', 'Monica Luka', 'Business', '08149894058', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Luka Tumba', '08081253054', 'Mutsi Michika', 'Business', 'Father', 'Saint Anne\'s Secondary School Michika', 'JSS3', 'NTC1', '20181FSTCMICH96', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:15:42'),
(97, 'Male', 'Markus', 'Elisha', '', '20', 'July', '2002', '00', '000', '000', '000', 'None', 'Shagari, Sabon Pegi Yola Town', 'Markus Zira', 'Business', '000', 'Esther Markus', 'Business', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Markus Zira', '000', 'Shagari, Sabon Pegi Yola Town', 'Business', 'Father', 'EYN Yola, Adamawa', 'JSS3', 'NTC1', '20181FSTCMICH97', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:19:43'),
(98, 'Male', 'Emmanuel', 'Ransome', 'Kwaha', '23', 'November', '2004', '000', '08065624691', '000', '000', 'None', 'Jiddel', 'Emmanuel Peter', 'Agric Officer', '08065624691', 'Victoria Emmanuel', 'Teacher', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Peter', '08065624691', 'Jiddel', 'Agric Officer', 'Father', 'EYN No.1 Michika', 'JSS3', 'NTC1', '20181FSTCMICH98', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:29:21'),
(99, 'Male', 'Alexander', 'Godwin', '', '5', 'April', '2002', '000', '000', '00', '00', 'None', 'Sabon Layi, Bazza', 'Alexander Zira', 'Farmer', '000', 'Anna Alexander', 'Business', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Alexander Zira', '000', 'Sabon Layi, Bazza', 'Farmer', 'Father', 'GDJSS Bazza', 'JSS3', 'NTC1', '20181FSTCMICH99', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:32:50'),
(100, 'Male', 'Emmanuel', 'Richard', '', '17', 'June', '2002', '000', '08065624691', '000', '000', 'None', 'Jiddel', 'Emmanuel Peter', 'Agric Officer', '08065624691', 'Victoria Emmanuel', 'Teacher', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Peter', '08065624691', 'Jiddel', 'Agric Officer', 'Father', 'EYN No.1 Michika', 'JSS3', 'NTC1', '20181FSTCMICH100', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:35:26'),
(101, 'Male', 'Haruna', 'Shamsudeen', '', '15', 'May', '2003', '08062282750', '07066424379', '00', '00', 'None', 'Zaibadari I Michika LGA', 'Haruna Buba', 'Business', '07066424379', 'Ummi Haruna', '', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Haruna Buba', '07066424379', 'Zaibadari I Michika LGA', 'Business', 'Father', 'I.P.S Michika', 'JSS3', 'NTC1', '20181FSTCMICH101', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:38:44'),
(102, 'Male', 'Kwarti', 'Tony', 'Emmanuel', '14', 'May', '2002', '00', '00', '00', '00', 'None', 'Rafisanye, Michika LGA', 'Emmanuel Kwarti', 'ITF', '00', 'Hadiza Emmanuel', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Kwarti', '000', 'Rafisanye, Michika LGA', 'ITF', 'Father', 'Hausari GDSS', 'JSS3', 'NTC1', '20181FSTCMICH102', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:41:40'),
(103, 'Male', 'Tumba', 'Adonijah', 'James', '7', 'October', '2004', '00', '07069049430', '00', '00', 'None', 'Kuburshosho, Michika LGA', 'James Tumba', 'Teacher', '07069049430', 'Magrate', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James Tumba', '07069049430', 'Kuburshosho, Michika LGA', 'Teacher', 'Father', 'GDSS Kuburshosho', 'JSS3', 'NTC1', '20181FSTCMICH103', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:46:48'),
(104, 'Male', 'Bitrus', 'Huta', '', '7', 'November', '2002', '07070879787', '08137795485', '09021464045', '00', 'None', 'Ndalmi, Madagali LGA', 'Bitrus Gari', 'Farmer', '08137795485', 'Christiana Bitrus', 'Farmer', '00', 'Adamawa', 'Madagali', 'Ndalmi', 'Nigeria', 'Bitrus Gari', '08137795485', 'Ndalmi, Madagali LGA', 'Farmer', 'Father', 'GSS Michika', 'JSS3', 'NTC1', '20181FSTCMICH104', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:51:28'),
(105, 'Male', 'Joseph', 'Nathaniel', '', '7', 'September', '2002', '00', '07086386438', '00', '00', 'None', 'Thradze Michika LGA', 'Joseph Zira', 'Farmer', '00', 'Monica Joseph', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Grand Mother', '07086386438', 'Thradze Michika LGA', 'Agric Officer', 'Grand Mother', 'Saint Anne\'s Secondary School Michika', 'JSS3', 'NTC1', '20181FSTCMICH105', 'fstc', 'image/avat.png', '11/Dec/2018', '2018-12-11 15:54:50'),
(106, 'Male', 'Usa', 'Enoch', '', '17', 'January', '2004', '08080563775', '00', '00', '00', 'None', 'Kwagon Near Police Station Mararaba Mubi', 'Usa Dauda', 'Business', '08080563775', 'Sarah Usa', 'Farmer', '07017383420', 'Adamawa', 'Michika', 'Mararaba Mubi', 'Nigeria', 'Usa Dauda', '08080563775', 'Kwagon Near Police Station Mararaba Mubi', 'Business', 'Father', 'Government Junior Secondary School Kwarhi', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH106', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:13:19'),
(107, 'Female', 'Zirakaye', 'Deborah', 'Kwaji', '25', 'October', '2003', '08035277243', '00', '00', '00', 'None', 'EYN Angwa Betso Mararaba Mubi', 'Kwaji Zirakaye', 'Farmer', '08035277243', 'Jumai Zirakaye', '', '08035277243', 'Adamawa', 'Michika', 'Mararaba Mubi', 'Nigeria', 'Kwaji Zirakaye', '08035277243', 'EYN Angwa Betso Mararaba Mubi', 'Farmer', 'Father', 'Government Junior Secondary School Kwarhi', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH107', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:19:01'),
(108, 'Male', 'Daniel', 'Barka', '', '25', 'December', '2002', '08087734311', '00', '00', '00', 'None', 'EYN LCC Yamwe', 'Daniel K. Kwaya', 'Civil Servant', '08087734311', 'Agnes Daniel', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Daniel K. Kwaya', '08087734311', 'EYN LCC Yamwe', 'Civil Servant', 'Father', 'Government Day Junior Secondary School, Khourvi', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH108', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:23:13'),
(109, 'Female', 'Timothy', 'Betty', '', '11', 'January', '2003', '07086065921', '000', '00', '00', 'None', 'EYN LCC Yamwe', 'Timothy Joseph', 'Civil Servant', '07086065921', 'Dinana', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Timothy Joseph', '07086065921', 'EYN LCC Yamwe', 'Civil Servant', 'Father', 'EYN Brethren Academy Michika', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH109', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:27:20');
INSERT INTO `students` (`id`, `gender`, `firstname`, `lastname`, `othername`, `dob`, `mob`, `yob`, `contact_phone`, `nearest_contact1`, `nearest_contact2`, `nearest_contact3`, `health_conditions`, `address`, `father_name`, `father_occupation`, `father_phone`, `mother_name`, `mother_occupation`, `mother_phone`, `state`, `lga`, `city`, `nationality`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `sponsor_occupation`, `relationship`, `previous_school`, `last_class_passed`, `class`, `reg_number`, `gen_password`, `passport`, `date_of_reg`, `time_of_reg`) VALUES
(110, 'Male', 'Williams', 'Moses', '', '24', 'February', '2004', '08066164570', '00', '00', '00', 'None', 'LCC No.2 Kwarda Rumirgo', 'Williams Tsagwa', 'Civil Servant', '08066164570', 'Ladi Williams', 'Civil Servant', '08066164570', 'Borno', 'Askira Uba', 'Rumirgo', 'Nigeria', 'Williams Tsagwa', '08066164570', 'LCC No.2 Kwarda Rumirgo', 'Civil Servant', 'Father', 'Baptis High School Mubi', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH110', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:31:51'),
(111, 'Male', 'Daniel', 'Ganya', '', '2', 'January', '2002', '07084252486', '000', '000', '000', 'None', 'EYN Ndalme Madagali', 'Daniel Barka', 'Farmer', '07084252486', 'Amina Daniel', 'Farmer', '000', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Daniel Barka', '07084252486', 'EYN Ndalme Madagali', 'Farmer', 'Father', 'First Baptist Academy Mubi', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH111', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:35:30'),
(112, 'Male', 'Danladi', 'Hilary', '', '15', 'May', '2004', '08165576585', '00', '00', '00', 'None', 'Moda \'A\' Along Kwale Road', 'Danladi Daglie', 'Business', '08165576585', 'Rebecca Hyalwa', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Moda', 'Nigeria', 'Danladi Daglie', '08165576585', 'Moda \'A\' Along Kwale Road', 'Business', 'Father', 'Zamaki International Christian Academy Michika', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH112', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:39:30'),
(113, 'Male', 'Angelo', 'Felix', '', '14', 'September', '2002', '08081030613', '00', '00', '00', 'None', 'Angwa Mayanka, Behind Bazza Market', 'Angelo Yarwa', 'Business', '08081030613', 'Victoria Angelo', 'Farmer', '00', 'Adamawa', 'Michika', 'Bazza', 'Nigeria', 'Angelo Yarwa', '08081030613', 'Angwa Mayanka, Behind Bazza Market', 'Business', 'Father', 'Government Day Junior Secondary School, Baza', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH113', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:45:08'),
(114, 'Male', 'Yakubu', 'Michael', '', '1', 'January', '2003', '08089809827', '00', '00', '00', 'None', 'Kuburshosho, Michika LGA', 'Yakubu Luka', 'Civil Servant', '08089809827', 'Felicia Bitrus', 'Farmer', '09071442018', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yakubu Luka', '08089809827', 'Kuburshosho, Michika LGA', 'Civil Servant', 'Father', 'Government Day Junior Secondary School, Blashafa', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH114', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:50:18'),
(115, 'Male', 'Ishaku', 'Emmanuel', '', '27', 'August', '2004', '08122670569', '00', '000', '00', 'None', 'Bila Audu 2, Whuntaku Chibok', 'Ishaku Wakil', 'Civil Servant', '08122670569', 'Ladi Goni', 'Civil Servant', '00', 'Borno', 'Chibok', 'Chibok', 'Nigeria', 'Ishaku Wakil', '08122670569', 'Bila Audu 2, Whuntaku Chibok', 'Civil Servant', 'Father', 'Anchor Model School Chibok', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH115', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:54:53'),
(116, 'Male', 'Joshua', 'Istifanus', 'Pastor', '12', 'July', '2002', '08124934144', '00', '00', '00', 'None', 'Muvur Near Market', 'Joshua Dashken', 'Farmer', '08124934144', 'Juliana Joshua', 'Farmer', '00', 'Adamawa', 'Mubi North', 'Mubi', 'Nigeria', 'Joshua Dashken', '08124934144', 'Muvur Near Market', 'Farmer', 'Father', 'Anchor Model School Mbalala', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH116', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 05:58:35'),
(117, 'Male', 'Yola', 'Isaac', '', '7', 'November', '2003', '08100826600', '00', '00', '00', 'None', 'Giwwhigi Near EYN Church Madagali', 'Yola Mullam', 'Civil Servant', '08100826600', 'Hauwa Yola', 'Farmer', '00', 'Adamawa', 'Madagali', 'Midlo', 'Nigeria', 'Giwwhigi Near EYN Church Madagali', '08100826600', 'Giwwhigi Near EYN Church Madagali', 'Civil Servant', 'Father', 'Government Junior Secondary School Mafir', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH117', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:02:13'),
(118, 'Male', 'Yusuf', 'Isaac', '', '29', 'September', '2004', '08078738925', '000', '00', '00', 'None', 'Monza Near Deeper Life Church Kamale', 'Yusuf Daliva', 'Farmer', '08078738925', 'Rahila Yusuf', 'Farmer', '00', 'Adamawa', 'Michika', 'Kamale', 'Nigeria', 'Yusuf Daliva', '08078738925', 'Monza Near Deeper Life Church Kamale', 'Farmer', 'Father', 'Government Junior Secondary School, Kamale', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH118', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:06:56'),
(119, 'Female', 'Peter', 'Ighe', '', '7', 'January', '2005', '08025714109', '00', '00', '00', 'None', 'Angwa Fulani Girei Local Government', 'Peter Purnaja', 'Civil Servant', '08025714109', 'Ladi Ayuba', 'Civil Servant', '08091248545', 'Adamawa', 'Girei', 'Yola', 'Nigeria', 'Peter Purnaja', '08025714109', 'Angwa Fulani Girei Local Government', 'Civil Servant', 'Father', 'Devine Academy Vunklang Yola', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH119', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:11:16'),
(120, 'Female', 'Sunday', 'Indagiju', '', '22', 'August', '2004', '08028786773', '00', '00', '00', 'None', 'Wudumullmu Behind National Evangelical Mission Palom', 'Sunday Mamadu', 'Civil Servant', '08028786773', 'Stella Sunday', 'Farmer', '08085590871', 'Adamawa', 'Madagali', 'Pallam', 'Nigeria', 'Sunday Mamadu', '08028786773', 'Wudumullmu Behind National Evangelical Mission Palom', 'Civil Servant', 'Father', 'Government Day Junior Secondary School, Ballam', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH120', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:19:09'),
(121, 'Female', 'Ahmed', 'Joda', '', '24', 'August', '2003', '08068879132', '00', '00', '00', 'None', 'Garta Near Sina Kwade Road', 'Ahmed S Garta', 'Civil Servant', '08068879132', 'Fatima Ahmed', 'Civil Servant', '08160919143', 'Adamawa', 'Michika', 'Moda', 'Nigeria', 'Ahmed S Garta', '08068879132', 'Garta Near Sina Kwade Road', 'Civil Servant', 'Father', 'Government Junior Secondary School, Uba', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH121', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:23:49'),
(122, 'Male', 'Daniel', 'Meshach', '', '9', 'November', '2004', '07068263291', '00', '00', '00', 'None', 'Saving the Adventis Church Zullumtum', 'Daniel Francie', 'Civil Servant', '07068263291', 'Martha Daniel', 'Farmer', '00', 'Adamawa', 'Madagali', 'Wullam', 'Nigeria', 'Daniel Francie', '07068263291', 'Saving the Adventis Church Zullumtum', 'Civil Servant', 'Father', 'Government Day Junior Secondary School, Wulamango', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH122', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:28:54'),
(123, 'Male', 'Murtala', 'Nurudeen', '', '7', 'February', '2003', '08138037882', '00', '00', '00', 'None', 'Moda Angwa Sarki Near Juma\'at Mosque', 'Murtala Zubairu', 'Business', '08138037882', 'Aisha Mohammad', 'House Wife', '09063384509', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Murtala Zubairu', '08138037882', 'Moda Angwa Sarki Near Juma\'at Mosque', 'Business', 'Father', 'Zaibari Junior Secondary School, Michika', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH123', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:34:13'),
(124, 'Male', 'Sunday', 'Sarki', 'Philip', '16', 'January', '2005', '08034040451', '00', '00', '00', 'None', 'Opposite Yaskule Primary School', 'Sunday Yakubu', 'Civil Servant', '08034040451', 'Sarah Sunday', 'Civil Servant', '08141194039', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Sunday Yakubu', '08034040451', 'Opposite Yaskule Primary School', 'Civil Servant', 'Father', 'Brethren Academy Michika', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH124', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:40:00'),
(125, 'Male', 'Irimiya', 'Allen', 'Vandi', '9', 'March', '2003', '08174167662', '00', '00', '00', 'None', 'Near Government Technical College, Yola Town.', 'Irimiya Vandi', 'Civil Servant', '08174167662', 'Hajara Irimiya', 'Business', '08070748311', 'Adamawa', 'Michika', 'Yola', 'Nigeria', 'Irimiya Vandi', '08174167662', 'Near Government Technical College, Yola Town.', 'Civil Servant', 'Father', 'Base Centre Yola', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH125', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:44:00'),
(126, 'Male', 'Wadzanda', 'Shadrach', 'Apagu', '17', 'September', '2003', '08100826600', '00', '00', '00', 'None', 'Giwwhiggi EYN Midlo', 'Wadzanda Apagu', 'Civil Servant', '08100826600', 'Cicilia Apagu Wadzanda', 'Farmer', '00', 'Adamawa', 'Madagali', 'Midlo', 'Nigeria', 'Wadzanda Apagu', '08100826600', 'Giwwhiggi EYN Midlo', 'Civil Servant', 'Father', 'Government Junior Secondary School, Mafor', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH126', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:47:46'),
(127, 'Female', 'Luka', 'Usa', '', '10', 'September', '2003', '09025750193', '00', '00', '00', 'None', 'Moda \'A\' Behind GSS Michika', 'Luka Tumba', 'Farmer', '09025750193', 'Lydia Luka', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Luka Tumba', '09025750193', 'Moda \'A\' Behind GSS Michika', 'Farmer', 'Father', 'EYN Brethren Academy Michika', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH127', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:50:54'),
(128, 'Male', 'Joseph', 'Somson', '', '24', 'August', '2003', '07030574491', '00', '00', '00', 'None', 'Opposite Barka Clinic Uba', 'Joseph Tizhe', 'Civil Servant', '07030574491', 'Naomi Joseph', 'Farmer', '00', 'Adamawa', 'Michika', 'Uba', 'Nigeria', 'Joseph Tizhe', '07030574491', 'Opposite Barka Clinic Uba', 'Civil Servant', 'Father', 'Government Junior Secondary School, Dumde', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH128', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 06:55:43'),
(129, 'Female', 'Amos', 'Rifkatu', 'Yaga', '2', 'September', '2001', '08029734176', '00', '00', '00', 'None', 'Whuntaku EYN Church Chibok', 'Amos L. Yaga', 'Civil Servant', '08029734176', 'Esther Amos', 'Civil Servant', '07086467102', 'Borno', 'Chibok', 'Chibok', 'Nigeria', 'Amos L. Yaga', '08029734176', 'Whuntaku EYN Church Chibok', 'Civil Servant', 'Father', 'Anchor Model School Chibok', 'JSS3', 'SSS1SCIENCE', '20181FSTCMICH129', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 07:07:22'),
(130, 'Male', 'baban Gida', 'Yahaya', '', '14', 'June', '2004', '00', '00', '00', '00', 'None', 'Zaibadari I Michika', 'Babangida', 'Business', '09022627497', 'Habiba', 'Business', '08129256265', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Babangida', '08129256265', 'Behind Motor Park Zaibadari Michika', 'Business', 'Father', 'Zaibadari Primary School Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH130', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 07:17:52'),
(131, 'Female', 'Sabo', 'Zainab', 'Mohammed', '4', 'July', '2004', '00', '00', '00', '00', 'None', 'Central Michika', 'Mohammed', 'Business', '08063304496', 'Yafanta', 'Business', '09024240425', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Mohammed', '08063304496', 'Central Michika', 'Business', 'Father', 'Darul Islam Primary School Michika', 'PRIMARY 5', 'JSS2A', '20181FSTCMICH131', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:21:14'),
(132, 'Male', 'Usman', 'Umar', '', '2', 'August', '2003', '00', '00', '00', '00', 'None', 'Shuwa Madagali Michika', 'Usman', 'Business', '08060034925', 'Maryam', 'Business', '00', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Usman', '08060034925', 'Shuwa Madagali Adamawa', 'Business', 'Father', 'I.P.S International School Shuwa', 'JSS1', 'JSS2A', '20181FSTCMICH132', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:25:03'),
(133, 'Female', 'John', 'Raya', '', '26', 'September', '2003', '00', '00', '00', '00', 'None', 'Jimeta Yola Adamawa State', 'John', 'Civil Servant', '09066224697', 'Hannatu', 'Business', '09029708802', 'Adamawa', 'Michika', 'Yola', 'Nigeria', 'Hannatu', '09029708802', 'Jimeta Yola', 'Business', 'Mother', 'Bishop Lawte Primary School Jameta Yola', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH133', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:28:39'),
(134, 'Female', 'Patrick', 'Rahap', '', '20', 'September', '2003', '00', '00', '00', '00', 'None', 'Ghuwa Shike Bazza Michika', 'Patrick', 'Farmer', '08081255540', 'Elizabeth', 'Farmer', '08082291651', 'Adamawa', 'Michika', 'Bazza', 'Nigeria', 'Patrick', '08081255540', 'Ghuwa Shike Bazza Michika', 'Farmer', 'Father', 'Demonstration Primary School Bazza Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH134', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:33:27'),
(135, 'Male', 'John', 'Paul', '', '27', 'September', '2003', '00', '00', '00', '00', 'None', 'Lidle', 'John', 'Civil Servant', '08140928088', 'Victoria', 'Civil Servant', '09024013088', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John', '09024013088', 'Lidle Michika', 'Civil Servant', 'Father', 'Lidle Primary School Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH135', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:37:41'),
(136, 'Female', 'Emmanuel', 'Ndzagwa', '', '4', 'March', '2005', '000', '00', '00', '00', 'None', 'Gss Michika Quaters Michika', 'Emmanuel', 'Civil Servant', '08037173701', 'Adarju', 'Civil Servant', '07063268802', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel', '08037173701', 'GSS Michika Quarters Michika', 'Civil Servant', 'Father', 'St. Annes Primary Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH136', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:41:49'),
(137, 'Male', 'Peter', 'Ndokula', 'Ngaluwa', '2', 'January', '2006', '00', '00', '0000', '00', 'None', 'Gada Uku Bazza Michika', 'Peter', 'Business', '00', 'Jamila', 'Business', '09033001539', 'Adamawa', 'Michika', 'Bazza', 'Nigeria', 'Peter', '00', 'Gada Uku Bazza Mickika', 'Business', 'Father', 'Our Lady Of Councilation (OLC) Bazza, Michika', 'PRIMARY 5', 'JSS2A', '20181FSTCMICH137', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:45:54'),
(138, 'Male', 'Sunday', 'Musa', '', '5', 'February', '2004', '00', '00', '00', '00', 'None', 'Dibiki Futu Michika', 'Sunday', 'Business', '00', 'Hajaratu', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Brother', '08064615509', 'Dibiki Futu Michika', 'Business', 'Brother', 'EYN Primary School Futu, Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH138', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:51:32'),
(139, 'Female', 'Tari', 'Magadaline', '', '21', 'May', '2005', '00', '09027335929', '00', '00', 'None', 'Jiddel Michika Adamawa', 'Tari', 'Business', '08026690043', 'Rahila', 'Business', '08026690043', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Tari', '08026690043', 'Jiddel, Michika Adamawa', 'Business', 'Father', 'St. Annes Primary Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH139', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:55:18'),
(140, 'Male', 'Daniel', 'Lawrence', '', '14', 'September', '2005', '00', '00', '00', '00', 'None', 'Angwan Kashuw', 'Daniel', 'Civil Servant', '08059538978', 'Rubbecca', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Rubbecca', '00', 'Agwan Kashuw', 'Civil Servant', 'm', 'EYN Primary Secondary No1 Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH140', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 07:59:17'),
(141, 'Female', 'Mathew', 'Joy', '', '17', 'July', '2003', '07068879121', '07068879121', '00', '00', 'None', 'Watu Michika Adamawa', 'Mathew', 'Military', '00', 'Afiniki', 'Military', '07068484611', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Afiniki', '07068484611', '', 'Military', 'Mother', 'EYN Primary School Watu', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH141', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:03:13'),
(142, 'Male', 'James', 'Joseph', '', '23', 'November', '2006', '00', '00', '00', '00', 'None', 'Bajabure Federal Housing Jimeta Yola', 'James', 'Civil Servant', '08031327885', 'Lidia', 'Civil Servant', '00', 'Adamawa', 'Gerie', 'Jimeta', 'Nigeria', 'James', '08031327885', 'Bajabure Federal Housing,Jimeta Yola', 'Civil Servant', 'Father', 'EYN Academic Vinikla Jimeta Yola', 'JSS1', 'JSS2A', '20181FSTCMICH142', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:09:56'),
(143, 'Female', 'Ayuba', 'Janet', '', '27', 'September', '2006', '00', '08163325216', '00', '00', 'None', 'Barkin Dlaka Michika', 'Ayuba', 'Business', '08055116920', 'Mary', 'Business', '07065963778', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ayuba', '08055116920', 'Barkin Dlaka Michika', 'Business', 'F', 'Kurmi Memorial Group School Michika', 'PRIMARY 5', 'JSS2A', '20181FSTCMICH143', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:16:47'),
(144, 'Male', 'Suleiman', 'Isa', 'Dahiru', '5', 'September', '2003', '00', '00', '00', '00', 'None', 'Shuare Ward Mubi North', 'Suleiman', 'Politician', '08033011850', 'Fatima', 'Civil Servant', '09032229994', 'Adamawa', 'Mubi North', 'Mubi', 'Nigeria', 'Suleiman', '08033011850', 'Cabo Mubi South', 'Politician', 'F', 'Halibert Primary School Mubi', 'JSS1', 'JSS2A', '20181FSTCMICH144', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:21:00'),
(145, 'Male', 'Timothy', 'Godwin', '', '15', 'July', '2006', '00', '08163424534', '00', '00', 'None', 'Jigalambu Bazza Michika', 'Timothy', 'Civil Servant', '09031261137', 'Rubbecca', 'Business', '00', 'Adamawa', 'Michika', 'Jigalambu', 'Nigeria', 'Timothy', '09031261137', 'Jigalambu Bazza Michika', 'Civil Servant', 'Father', 'Jigalambu Primary School Bazza Michika', 'JSS1', 'JSS2A', '20181FSTCMICH145', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:25:30'),
(146, 'Male', 'Yama', 'Galia', '', '12', 'November', '2005', '00', '00', '00', '00', 'None', 'Yaskule, Michika', 'Yama', 'Traditional Leader', '00', 'Saira', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yama', '00', 'Yaskule, Michika', 'Traditional Leader', 'Father', 'Evangel Model School Michika', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH146', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:28:23'),
(147, 'Male', 'Tashara', 'Emmanuel', 'Patrick', '5', 'July', '2002', '00', '00', '00', '00', 'None', 'Sabon Gari Mubi Adamawa State', 'Patrick', 'Civil Servant', '00', 'Chagzaida', 'Civil Servant', '08085518543', 'Adamawa', 'Hong', 'Hong', 'Nigeria', 'Patrick', '00', '', 'Civil Servant', 'Father', 'Sardauna Memorial School Mubi', 'PRIMARY 5', 'JSS2A', '20181FSTCMICH147', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:32:13'),
(148, 'Male', 'Jacob', 'Elisha', '', '10', 'September', '2004', '00', '00', '00', '00', 'None', 'Kubrishosho Michika Adamawa', 'Jacob', 'Pastor', '00', 'Mary', 'Farmer', '08078280190', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jacob', '08078280190', 'Kubrishosho Michika Adamawa', 'Pastor', 'Father', 'Nakowa Primary School Askira Uba Borno', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH148', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:36:13'),
(149, 'Male', 'Kwagga', 'Ldama', 'Mark', '10', 'October', '2005', '00', '00', '00', '00', 'None', 'Rafisanye, Michika LGA', 'Mark', 'Politician', '00', 'Masi', 'Civil Servant', '07085818257', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Masi', '07085818257', '', 'Civil Servant', 'Mother', 'Kurmi Memorial Group Of School Primary', 'JSS1', 'JSS2A', '20181FSTCMICH149', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:40:14'),
(150, 'Female', 'Samaila', 'Comfort', '', '3', 'May', '2003', '00', '00', '00', '00', 'None', 'Jigalambu Bazza Michika', 'Samaila', 'Civil Servant', '08030849963', 'Hannatu', 'Business', '09014642106', 'Abia', 'Michika', 'Jigalambu', 'Nigeria', 'Samaila', '08030849963', 'Jigalambu Bazza Michika', 'Civil Servant', 'Father', 'Jigalambu Primary School', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH150', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:45:15'),
(151, 'Female', 'David', 'Christiana', '', '25', 'December', '2005', '00', '00', '00', '00', 'None', 'Yamue Michika Adamawa State', 'David', 'Business', '08028448685', 'Maryamu', 'Farmer', '08080873725', 'Adamawa', 'Michika', 'Yamue', 'Nigeria', 'David', '000', 'Yamue Michicka', 'Business', 'Father', 'EYN Primary School Watu', 'PRIMARY 6', 'JSS2A', '20181FSTCMICH151', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:49:47'),
(152, 'Male', 'Sabo', 'Abdulrasheed', 'Mohammed', '1', 'January', '2005', '00', '08035553551', '00', '00', 'None', 'Central Michika', 'Mohammed', 'Business', '08063304496', 'Yafanta', 'Business', '09024240425', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Mohammed', '08063304496', 'Central Michika', 'Business', 'Father', 'Islamic Foundation Primary School', 'PRIMARY 5', 'JSS2A', '20181FSTCMICH152', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 08:54:13'),
(153, 'Female', 'Kwadabea', 'Mbushe', '', '21', 'November', '2007', '00', '00', '00', '00', 'None', 'Watu, Michika L.G.A', 'Kwadabea Elijah', 'Rtd Civil Servant', '07067616297', 'Rubecca Kwadabea', 'Civil Servant', '07025301100', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Kwadabea Elijah', '07067616297', 'Watu Michika', 'Rtd Civil Servant', 'Father', 'EYN Primary School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH153', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 09:03:00'),
(154, 'Female', 'Ibrahim', 'Amina', '', '11', 'February', '2005', '00', '00', '00', '00', 'None', 'Hausari, Michika', 'Ibrahim Mohammed Jika', 'Civil Servant', '07066367595', 'Hauwa Ibrahim', 'House Wife', '08024409611', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Mohammed Jika', '07066367595', 'Hausari Michika', 'Civil Servant', 'Father', 'Tarbiyata Islam Model Academy School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH154', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:07:44'),
(155, 'Female', 'Haruna', 'Fadimatu', '', '16', 'August', '2006', '00', '00', '00', '00', 'None', 'Zaibadari Michika', 'Haruna Buba', 'Business', '07066434279', 'Adama Haruna', 'House Wife', '07066434279', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Haruna Buba', '07066434279', 'Zaibadari Michika', 'Business', 'Father', 'Taribiyatu Islam Model Academy Michika', 'JSS1', 'JSS2B', '20181FSTCMICH155', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:12:26'),
(156, 'Male', 'Haruna', 'Abbas', '', '21', 'September', '2002', '00', '00', '00', '00', 'None', 'Zaibadari Michika', 'Haruna Usman', 'Business', '08133538524', 'Fadimatu Haruna', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Haruna Usman', '08133538524', 'Zaibadari Michika', 'Business', 'Father', 'Zaibadari Primary School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH156', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:18:59'),
(157, 'Female', 'Mamza', 'Bilkisu', 'Bashiru', '2', 'November', '2004', '00', '00', '0000', '00', 'None', 'Madzi,Michika Lga', 'Mamza Bashiru', 'Business', '08025646923', 'Hadiza Bashiru', 'Business', '08142356284', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Mamza bashiru', '08025646923', 'Mamza, Michika', 'Business', 'Father', 'Yambule Pri. School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH157', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 09:26:47'),
(158, 'Female', 'Donatus', 'Beatitude', '', '28', 'February', '2006', '00', '00', '00', '00', 'None', 'Tudunwada bazza,michika', 'Donatus Zira', 'Civil Servant', '08066700957', 'Olivia Donatus', 'Civil Servant', '08066700957', 'Adamawa', 'Michika', '', 'Nigeria', 'Donatus Zira', '08131827007', 'Tudunwada bazza, michika', 'Civil Servant', 'Father', 'Judunwada Pri. Sch Bazza,  Michika', 'JSS1', 'JSS2B', '20181FSTCMICH158', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:31:54'),
(159, 'Male', 'Bello', 'Umar', 'FAruk', '18', 'September', '2005', '00', '00', '00', '00', 'None', 'Hausari, Michika', 'Bello Alhaji Yoro', 'Business', '08039573035', 'Maimuna Bello', 'House Wife', '00', 'Adamawa', 'Michika', '', 'Nigeria', 'Bello Alhaji Yoro', '08039573035', 'Hausari Michika', 'Business', 'Father', 'Nuruhuda Primary Sch Jimeta Yola.', 'JSS1', 'JSS2B', '20181FSTCMICH159', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:35:47'),
(160, 'Male', 'Njabari', 'Mujahid', '', '25', 'February', '2005', '00', '00', '00', '00', 'None', 'Jiddil, Michika', 'Njabari Umar', 'Civil Servant', '07065655882', 'Maryam Njabari', 'House Wife', '07065655882', 'Adamawa', 'Michika', '', 'Nigeria', 'Njabari Umar', '07065655882', 'Jiddil, Michika', 'Civil Servant', 'Father', 'Jidil Pri.Sch. Michika', 'JSS1', 'JSS2B', '20181FSTCMICH160', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:41:37'),
(161, 'Male', 'David', 'Musa', '', '14', 'July', '2002', '09028924069', '00', '00', '00', 'None', 'Watu Behnd EYN Church', 'Musa Tizhe', 'Farmer', '07033937944', 'Rita', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Brother', '07033937944', 'Watu Michika', 'Business', 'Brother', 'Lumen Christi Basic Science Sch Abuja', 'JSS1', 'JSS2B', '20181FSTCMICH161', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 09:46:03'),
(162, 'Female', 'Saleh', 'Kadijar', '', '2', 'August', '2005', '00', '00', '00', '00', 'None', 'Zaibadari,Michika', 'Saleh Musa', 'Business', '08057771109', 'Zainab Saleh', 'House Wife', '08080802416', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Saleh Musa', '08057771109', 'Zaibadari Michika', 'Business', 'Father', 'I.P.S Michika', 'JSS1', 'JSS2B', '20181FSTCMICH162', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 09:57:10'),
(163, 'Male', 'Moses', 'Robert', '', '6', 'June', '2002', '00', '00', '00', '00', 'None', 'Dzrouk1 catholic Church, Michika', 'Moses Tizhe', 'Farmer', '09022580732', 'Mary Moses', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Moses Tizhe', '09022580732', 'Dzrouk Catholic Church,Michika', 'Farmer', 'Father', 'Dzrous Pri. Sch Michika', 'JSS1', 'JSS2B', '20181FSTCMICH163', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:00:58'),
(164, 'Male', 'Yusuf', 'Jonah', '', '29', 'January', '2004', '00', '00', '00', '00', 'None', 'Chika v12,Michika', 'Yusuf Yohanna', 'Business', '08123277126', 'Joseline Yusuf', 'Farmer', '07067234072', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yusuf Yohanna', '08123277126', 'Kunga1 Jos,Plateu state', 'Business', 'Father', 'Kanza Pri Sch Michika', 'JSS1', 'JSS2B', '20181FSTCMICH164', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:03:56'),
(165, 'Female', 'Daniel', 'Comfort', '', '10', 'September', '2002', '00', '00', '00', '00', 'None', 'Dzrouk1 catholic Church, Michika', 'Daniel Gondi', 'Civil Servant', '0808463915', 'Suzana Daniel', 'Farmer', '08086916602', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Daniel Gondi', '0808463915', 'Dzrouk Michika', 'Civil Servant', 'Father', 'Dzrous Pri. Sch Michika', 'JSS1', 'JSS2B', '20181FSTCMICH165', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 10:07:01'),
(166, 'Male', 'Ibrahim', 'Godfrey', '', '15', 'September', '2005', '00', '00', '00', '00', 'None', 'Barkin Dlaka Michika', 'Ibrahim Bitrus', 'Business', '0808653319', 'Helen Ibrahim', 'Civil Servant', '08128724319', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Bitrus', '0808653319', 'Barkin Dlaka Michika', 'Business', 'Father', 'Good Shepard Anglican Academy Michika', 'JSS1', 'JSS2B', '20181FSTCMICH166', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:10:49'),
(167, 'Male', 'Suleiman', 'Dahiru', '', '2', 'February', '2002', '09033919372', '0000', '00', '00', 'None', 'Shuwari, Mubi North', 'Suleiman', 'Civil Servant', '00', 'Fatima Suleiman', 'Civil Servant', '00', 'Adamawa', 'Mubi North', 'Mubi North', 'Nigeria', 'Sulieman', '00', 'Shuwari,Mubi North', 'Politician', 'Fa', 'Haliberth Pri Sch Mubi North', 'JSS1', 'JSS2B', '20181FSTCMICH167', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:14:12'),
(168, 'Female', 'Markus', 'Patience', '', '16', 'June', '2005', '00', '00', '00', '00', 'None', 'Michika', 'Markus Muvi', 'Civil Servant', '08026935693', 'Rose Mary Markus', 'Farmer', '08085727350', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Markus Muvi', '08026935693', 'Moda, Barkun Dlaka, Michika', 'Civil Servant', 'Father', 'St. Annes Primary Michika', 'JSS1', 'JSS2B', '20181FSTCMICH168', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:22:18'),
(169, 'Female', 'Bulus', 'Deborah', '', '6', 'June', '2004', '00', '00', '0000', '00', 'None', 'Michika', 'Bulus Peter', 'Farmer', '0708499198', 'Saratu Bulus', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bulus Peter', '0708499198', 'EYN Church Lughwu Michika', 'Farmer', 'Father', 'Lughu Pri Sch Michika', 'JSS1', 'JSS2B', '20181FSTCMICH169', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:25:33'),
(170, 'Male', 'Jabani', 'Hyleuda', '', '23', 'February', '2006', '00', '000', '00', '00', 'None', 'Barkin Dlaka, Michika', 'Jabani Adzibya', 'Pastor', '08028661203', 'Jummai Jabani', 'House Wife', '08965655213', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jabani Adzibya', '08028661203', 'Barkin Dlaka, Michika', 'Pastor', 'Father', 'Good Shepard Anglican Academy', 'JSS1', 'JSS2B', '20181FSTCMICH170', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:29:55'),
(171, 'Male', 'Yakubu', 'Jethro', '', '24', 'January', '2003', '08036668440', '00', '00', '00', 'None', 'Futu, MIchika L.g.a', 'Yakubu Tumba', 'Business', '08010932253', 'Ladi Yakubu', 'Business', '07010932253', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Yakubu Tumba', '08010932253', 'Yola,Adamawa,State', 'Business', 'Father', 'Futuless Pri. Sch. Michika', 'JSS1', 'JSS2B', '20181FSTCMICH171', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:33:34'),
(172, 'Female', 'Yasmin', 'Abubakar', '', '22', 'April', '2006', '00', '00', '00', '00', 'None', 'Ubare,Michika', 'Abubakar Mohammed', 'Business', '08137818172', 'Azumi Abubakar', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Abubakar Mohammed', '08137818172', 'Ubare,Michika', 'Business', 'Father', 'Zaibadari Primary School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH172', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:36:38'),
(173, 'Male', 'Martine', 'Ijusini', '', '1', 'August', '2004', '00', '00', '00', '00', 'None', 'Lowcost,Michika lga', 'Martine Mamza', 'Civil Servant', '08126263696', 'Christiana', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Martine Mamza', '08126263696', 'Lowcost,Michika LGA.', 'Civil Servant', 'Father', 'Unity Nursery Pri.Sch', 'JSS1', 'JSS2B', '20181FSTCMICH173', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:40:05'),
(174, 'Male', 'Sulieman', 'Mahmud', 'Dahiru', '5', 'August', '2005', '00', '00', '00', '00', 'None', 'Shuwari,Mubi North', 'Sulieman Dahiru', 'Civil Servant', '08033011850', 'Fadimatu Suleiman', 'Business', '0903222994', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Sulieman Dahiru', '08033011850', 'Shuwari,Mubi North LGA', 'Civil Servant', 'Father', 'Halibert Science College, Mubi', 'JSS1', 'JSS2B', '20181FSTCMICH174', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:43:57'),
(175, 'Male', 'Abdulmumuni', 'Abdulrahman', 'Alhaji', '1', 'November', '2003', '00', '00', '00', '00', 'None', 'Michika', 'Abdulmumuni', 'Business', '00', 'Halima Abdulrahman', 'Business', '09025104604', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Abdulmumuni', '00', 'Zaibadari,Michika', 'Business', 'Father', 'Zaibadari Pri.Sch.Michika', 'JSS1', 'JSS2B', '20181FSTCMICH175', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:46:57'),
(176, 'Male', 'Abdulmumuni', 'Mohammed', 'Alhaji', '1', 'January', '2006', '00', '000', '00', '00', 'None', 'Zaibadari 1 opposite Hausari,Michika', 'Abdulmumuni Umaru', 'Business', '00', 'Halima Abdulmumuni', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Abdulmumuni Umaru', '09025104604', 'Zaibadari Michika', 'Business', 'Father', 'Zaibadari Primary School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH176', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:50:17'),
(177, 'Female', 'John', 'Helen', 'Kwangye', '12', 'June', '2003', '09029189355', '00', '00', '00', 'None', 'Central Michika', 'John Kwangye', 'Civil Servant', '08122233780', 'Lydia John', 'Farmer', '09025493197', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John Kwangye', '08122233780', 'Central Michika', 'Civil Servant', 'Father', 'Saint Anne\'s Secondary School Michika', 'JSS1', 'JSS2B', '20181FSTCMICH177', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:53:19'),
(178, 'Female', 'Yahi', 'Tabitha', '', '26', 'April', '2006', '00', '00', '00', '00', 'None', 'EYN church Chibok', 'Yahi Yaga', 'Civil Servant', '09078989820', 'Lydia Yahi', 'Civil Servant', '09078989820', 'Borno', 'Chibok', 'Chibok', 'Nigeria', 'Yahi Yaga', '09078989820', 'Chibok  EYN Church', 'Civil Servant', 'Father', 'Tarbiyata  Model School, Chibok', 'JSS1', 'JSS2B', '20181FSTCMICH178', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 10:57:33'),
(179, 'Male', 'Alex', 'Joconiah', '', '27', 'February', '2004', '00', '00', '00', '00', 'None', 'Kuburshosho, michika', 'Alex', 'Farmer', '07010408163', 'Saratu', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Alex', '07010408163', 'Kuburshosho', 'Farmer', 'Father', 'Kuburshosho Primary School', 'JSS1', 'JSS2B', '20181FSTCMICH179', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 11:00:24'),
(180, 'Male', 'Christine', 'Silvester', '', '13', 'June', '2004', '00', '00', '00', '00', 'None', 'Behind Gen,Hospital Michika', 'Christine Amacomu', 'Business', '08125756207', 'Rubecca Christine', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Christine Amacomu', '08125756207', 'Behind General Hospital, Michika', 'Business', 'Father', 'Sure Foundation Lowcost, Michika', 'JSS1', 'JSS2B', '20181FSTCMICH180', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 11:03:52'),
(181, 'Female', 'Royal', 'Peace', 'Lazarus', '17', 'October', '2006', '0000', '00', '00', '00', 'None', 'Lughu Michika, Adamawa State.', 'Lazarus Royal', 'Civil Servant', '08029750911', 'Kuveya Tizhe', 'Civil Servant', '000', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Lazarus Royal', '07030995878', 'Lughu Michika, Adamawa State.', 'Civil Servant', 'Father', 'EYN Lughu Pri School, Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH181', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:33:42'),
(182, 'Female', 'Hammawa', 'Sandra', 'Christopher', '8', 'July', '2006', '00', '00', '00', '00', 'None', 'Anguwan Layi Lasa Road, Hausari', 'Christopher Hammawa', 'Road Safety Corp', '07064702166', 'Agenes Tumba', 'Civil Servant', '08088212664', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Christopher Hammawa', '07064702166', 'Jiddel, Michika', 'Road Safety Corp', 'Father', 'Yaskulu', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH182', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:37:59'),
(183, 'Male', 'Saleh', 'Yahya', 'Emmanuel', '11', 'February', '2007', '00', '00', '00', '00', 'None', 'Anguwan Kashu Michika', 'Emmanuel Saleh', 'Business', '08121951985', 'Rufkatu', 'Teaching', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Emmanuel Saleh', '08121951985', 'Barikin Laka Michika', 'Business', 'Father', 'Durimi Primary School, Abuja', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH183', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:40:57'),
(184, 'Male', 'Jadaman', 'Vatsama', 'Boyi', '26', 'May', '2006', '00', '00', '00', '00', 'None', 'Anguwan Layi Michika', 'Boyi Jadaman', 'Civil Servant', '07064276679', 'Esther', 'Civil Servant', '07064276679', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Boyi Jadaman', '07064276679', 'Anguwan Layi Michika', 'Civil Servant', 'Father', 'Air Force Primary School Yola', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH184', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:44:45'),
(185, 'Female', 'Zira', 'Precious', 'Paul', '1', 'March', '2008', '08059083311', '07066594001', '07039192273', '08102728622', 'None', 'Off Lassa Road Michika', 'Zira Paul Peter', 'Civil Servant', '07066594001', 'Salomi Paul', 'Civil Servant', '07039192273', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Zira Paul Peter', '07066594001', 'Off Lassa Road Michika', 'Civil Servant', 'Father', 'Saint Anne\'s Primary School Michika', 'PRIMARY 5', 'JSS1A', '20181FSTCMICH185', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:49:18'),
(186, 'Female', 'John', 'Thlama', '', '13', 'January', '2007', '00', '00', '00', '0', 'None', 'Anguwan Mayanka Bazza', 'John', 'Civil Servant', '00', 'Asabe Musa', 'House Wife', '08125256356', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John', '00', 'Anguwan Mayanka Bazza', 'Civil Servant', 'Father', 'Our Lady Of Councilation (OLC) Bazza, Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH186', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:52:36'),
(187, 'Male', 'Abdulkareem', 'Abdullahi', '', '20', 'October', '2006', '08168586340', '00', '00', '00', 'None', 'Janbutu Asorock Jimeta Yola', 'Abdulkareem Dona', 'Doctor F.M.C', '08168586340', 'Ummul Khumtum', 'Teaching', '00', 'Adamawa', 'Ganye', 'Yola', 'Nigeria', 'Abdulkareem Dona', '08168586340', 'F.M.C Hospital Yola', 'Doctor F.M.C', 'Father', 'Air Force Primary School Yola', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH187', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 18:57:13'),
(188, 'Female', 'Usman', 'Zainab', '', '3', 'November', '2007', '07037420508', '00', '00', '00', 'None', 'Wuro Hausa Yola South', 'Usman Umar', 'Business', '07037420508', 'Hassana Usman', 'House Wife', '00', 'Adamawa', 'Yola', 'Yola', 'Nigeria', 'Usman Umar', '07037420508', 'Mubi Main Market', 'Business', 'Father', 'Darul Arcram Islamic Institute Yola', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH188', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:01:11'),
(189, 'Male', 'Nuhu', 'Theophilus', '', '9', 'March', '2006', '00', '00', '00', '00', 'None', 'EYN/LCC Watu Michika', 'Nuhu M. Abba', 'Pastor', '00', 'Rhoda Joshua', 'Teaching', '00', 'Borno', 'Chibok', 'Maiduguri', 'Nigeria', 'Nuhu M. Abba', '00', 'EYN/LCC Watu Michika', 'Pastor', 'Father', 'EYN Primary School Wutu', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH189', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:04:38'),
(190, 'Male', 'Luka', 'Abraham', '', '9', 'June', '2004', '00', '00', '0000', '00', 'None', 'Barikin Laka Muti Michika', 'Luka Tumba', 'Business', '08081253054', 'Laraba Kambi', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Luka Tumba', '08081253054', 'Barikin Laka Muti Michika', 'Business', 'Father', 'St. Annes Primary Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH190', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:07:27'),
(191, 'Male', 'Hebrews', 'Israel', '', '12', 'December', '2008', '00', '00', '00', '00', 'None', 'Watu, Michika L.G.A', 'Hebrews', 'Business', '08121508544', 'Rahab Bawure', 'Teaching', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Hebrews', '08121508544', 'Watu, Michika L.G.A', 'Business', 'Father', 'Mugwa Academic School Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH191', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:11:21'),
(192, 'Male', 'Hamman', 'Dlama', 'Vandu', '5', 'July', '2005', '00', '00', '00', '00', 'None', 'Kubi Michika', 'Vandu Samuel Hamman', 'Civil Servant', '07084244228', 'Elezebet Savastin', 'Business', '08100543940', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Vandu Samuel Hamman', '07084244228', 'Kubi Michika', 'Civil Servant', 'Father', 'Kuburshosho Primary School, Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH192', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:15:55'),
(193, 'Male', 'Amos', 'Bakma', '', '2', 'January', '2005', '00', '00', '00', '00', 'None', 'Dzurock Michika', 'Amos Vandi', 'Farmer', '08140108760', 'Martina', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Amos Vandi', '08140108760', 'Dzurock Michika', 'Farmer', 'Father', 'Dzurok Primary School Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH193', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:19:23'),
(194, 'Male', 'Luka', 'Barka', '', '2', 'January', '2005', '00', '00', '00', '00', 'None', 'Kwarhi Mararaba Hong', 'Luka T. Kwaya', 'Business', '00', 'Hajara Dauda', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Luka T. Kwaya', '00', 'Kwarhi Mararaba Hong', 'Business', 'Father', 'Z.M.E School Mararaba Honh', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH194', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:22:57'),
(195, 'Female', 'James', 'Abigail', '', '2', 'February', '2003', '00', '00', '00', '00', 'None', 'Futu Anguwan Hannatu Michika', 'James Zira', 'Business', '08151766034', 'Rahila Nde', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'James Zira', '08151766034', 'Futu Anguwan Hannatu Michika', 'Business', 'Father', 'Tasco Futu Primary School Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH195', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:26:44'),
(196, 'Male', 'Dauda', 'Peter', '', '7', 'September', '2007', '00', '00', '00', '00', 'None', 'Watu, Michika L.G.A', 'Dauda', 'Nigerian Army', '09027882819', 'Rose James', 'Teaching', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda', '09027882819', 'Watu, Michika L.G.A', 'Nigerian Army', 'Father', 'EYN Primary School Watu', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH196', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:29:18'),
(197, 'Male', 'Muhammed', 'Zakar Yau', '', '2', 'February', '2005', '00', '00', '00', '00', 'None', 'Zaibadari Michika', 'Muhammed Yakubu', 'Business', '00', 'Hasiya', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Muhammed Yakubu', '00', 'Zaibadari Michika', 'Business', 'Father', 'Zaibadari Primary School Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH197', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:32:16'),
(198, 'Female', 'Zira', 'Dorathy', 'David', '28', 'July', '2005', '00', '00', '0000', '00', 'None', 'Anguwan Sarki Bazza', 'David Zira', 'Civil Servant', '00', 'Naomi Chinda', 'Civil Servant', '08082155580', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Naomi Chinda', '08082155580', 'Anguwan Sarki Bazza', 'Civil Servant', 'Mother', 'St. Annes Primary Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH198', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:35:24'),
(199, 'Male', 'Usman', 'Mustapha', 'Abubakar', '2', 'February', '2005', '00', '00', '00', '00', 'None', 'Anguwan Sarki Shuwa', 'Usman Abubakar', 'Business', '08060034925', 'Fadimatu Usman', 'House Wife', '00', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Usman Abubakar', '08060034925', 'Anguwan Sarki Shuwa', 'Business', 'Father', 'I.P.S Pri Sch Shuwa', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH199', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:39:55'),
(200, 'Male', 'Mamza', 'Bitrus', 'Joshua', '2', 'February', '2006', '00', '00', '0000', '00', 'None', 'Watu, Michika L.G.A', 'Joshua', 'Business', '00', 'Hannatu Shefele', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Joshua', '00', 'Watu, Michika L.G.A', 'Business', 'Father', 'EYN Primary School Watu, Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH200', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:42:56'),
(201, 'Male', 'Ibrahim', 'Isa', '', '15', 'December', '2006', '00', '0000', '00', '00', 'None', 'Muda A Michika', 'Ibrahim Muhammed', 'Business', '08064757307', 'Fadimatu Aliyu', 'House Wife', '09024311121', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Ibrahim Muhammed', '08064757307', 'Muda A Michika', 'Business', 'Father', 'I.P.S Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH201', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:46:31'),
(202, 'Male', 'Jakada', 'Jafar', 'Adam', '2', 'February', '2008', '00', '000', '00', '00', 'None', 'Anguwan Sarki Michika', 'Adam Jakada', 'Civil Servant', '08064012278', 'Aisha Yusuf', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Adam Jakada', '08064012278', 'Anguwan Sarki Michika', 'Civil Servant', 'Father', 'IQRA Nur/Pri School Michika', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH202', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:49:39'),
(203, 'Male', 'Bashir', 'Dahiru', 'Tukur', '25', 'April', '2008', '00', '00', '00', '00', 'None', 'Army Barrack Yola', 'Bashir Tukur', 'Public Servant', '08034222711', 'Amina Bashir', 'Civil Servant', '07015823716', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bashir Tukur', '08034222711', 'Malamre Jemeta Opp. FCE', 'Public Servant', 'Father', 'NAAI International School Yola', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH203', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 19:56:17'),
(204, 'Female', 'Andrawus', 'Grace', '', '25', 'March', '2006', '08021471882', '00', '00', '00', 'None', 'Anguwan Haske Michika', 'Andrawus Indiwa', 'Pastor', '08021471882', 'Elcy', 'Teaching', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Andrawus Indiwa', '08021471882', 'EYN Jiddel Michika', 'Pastor', 'Father', 'Optimism Academic School Jiddil', 'PRIMARY 6', 'JSS1A', '20181FSTCMICH204', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 20:05:30'),
(205, 'Male', 'Abdulmumini', 'Adamu', 'Musa', '2', 'September', '2001', '09023123319', '00', '00', '00', 'None', 'New Junction Potiskum, Yobe State', 'Abdulmumini Musa', 'Business', '08038314958', 'Sa\'adatu Abdulmumini', 'House Wife', '08163002554', 'Yobe', 'Potiskum', 'Potiskum', 'Nigeria', 'Abdulmumini Musa', '08038314958', 'New Junction Potiskum, Yobe State', 'Business', 'Father', 'Asasul Islam, Potiskum Yobe State', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH205', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 20:38:11'),
(206, 'Male', 'Satu', 'Damian', 'Peter', '17', 'August', '2006', '07060706048', '00', '00', '00', 'None', 'Lokuwa II Mubi', 'Peter Augustine Satu', 'Civil Servant', '07060706048', 'Saratu Zira', 'Business', '08120853900', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Peter Augustine Satu', '07060706048', 'Lokuwa II Mubi', 'Civil Servant', 'Father', 'Lokuwa II Primary School Mubi', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH206', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 20:41:40'),
(207, 'Male', 'John', 'Emmanuel', '', '2', 'February', '2006', '00', '00', '00', '00', 'None', 'Barikin Lakah, Michika', 'John Gabye', 'Federal Road Safety Corp', '07063220423', 'Victoria Koji', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John Gabye', '07063220423', 'Barikin Lakah, Michika', 'Federal Road Safety Corp', 'Father', 'Good Shepard Primary School Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH207', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 20:48:46'),
(208, 'Male', 'John', 'Intuwa', '', '2', 'February', '2005', '00', '00', '00', '00', 'None', 'Kuburshosho, Michika LGA', 'John Tizhe', 'Civil Servant', '00', 'Ruth John', 'Civil Servant', '07014446467', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John Tizhe', '00', 'Kuburshosho, Michika LGA', 'Civil Servant', 'Father', 'Kuburshosho Primary School', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH208', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 20:51:36'),
(209, 'Male', 'Yakubu', 'Yunusa', '', '26', 'October', '2007', '00', '00', '00', '00', 'None', 'Anguwa Margi Michika', 'Alh. Yakubu Ijabani', 'Business', '07063466616', 'Aisha Yakubu', 'Business', '00', 'Adamawa', 'Michika', 'Madagali', 'Nigeria', 'Alh. Yakubu Ijabani', '07063466616', 'Anguwa Margi Michika', 'Business', 'Father', 'IPS Anguwan Kashu, Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH209', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 20:55:24'),
(210, 'Male', 'Vandy', 'Alheri', '', '2', 'February', '2006', '00', '00', '00', '00', 'None', 'Kila Quarters Song Adamawa State', 'Vandy Yakubu', 'Business', '00', 'Mary Vandy', 'Farmer', '00', 'Adamawa', 'Song', 'Song', 'Nigeria', 'Vandy Yakubu', '00', 'Kila Quarters Song Adamawa State', 'Business', 'Father', 'Galana Primary School, Song Adamawa State', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH210', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 20:58:20'),
(211, 'Male', 'Haruna', 'Auwal', '', '16', 'December', '2005', '00', '00', '00', '00', 'None', 'Zaibadari Michika', 'Haruna Buba', 'Business', '07066424379', 'Aisha Haruna', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Haruna Buba', '07066424379', 'Zaibadari Michika', 'Business', 'Father', 'Helebeth English College Mubi', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH211', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:01:23'),
(212, 'Male', 'Daniel', 'Julius', '', '14', 'November', '2003', '00', '00', '00', '00', 'None', 'Jambutu Geriyo Jimeta Yola', 'Daniel T. Tumba', 'Pastor', '07088335000', 'Hajaratu Daniel', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Daniel T. Tumba', '00', 'Jambutu Geriyo Jimeta Yola', 'Politician', 'Father', 'Brethren Academy Yola', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH212', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 21:04:47'),
(213, 'Male', 'Jorome', 'Justice', '', '31', 'December', '2005', '00', '00', '00', '00', 'None', 'Kankirya Sama, Michika', 'Jorome Tuntu', 'NDLEA Officer', '08088292710', 'Anna Jorome', 'Civil Servant', '08088686300', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Jorome Tuntu', '08088292710', 'Kankirya Sama, Michika', 'NDLEA Officer', 'Father', 'Ivan Primary School, Maiduguri Borno State', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH213', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:08:20'),
(214, 'Male', 'John', 'Mada', '', '13', 'January', '2007', '00', '0000', '00', '00', 'None', 'Bazza Michika LGA', 'John Dami', 'Civil Servant', '00', 'Asabe John', 'House Wife', '08125256356', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'John Dami', '00', 'Bazza Michika LGA', 'Civil Servant', 'Father', 'Our Lady Of Councilation (OLC) Bazza, Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH214', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:11:28');
INSERT INTO `students` (`id`, `gender`, `firstname`, `lastname`, `othername`, `dob`, `mob`, `yob`, `contact_phone`, `nearest_contact1`, `nearest_contact2`, `nearest_contact3`, `health_conditions`, `address`, `father_name`, `father_occupation`, `father_phone`, `mother_name`, `mother_occupation`, `mother_phone`, `state`, `lga`, `city`, `nationality`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `sponsor_occupation`, `relationship`, `previous_school`, `last_class_passed`, `class`, `reg_number`, `gen_password`, `passport`, `date_of_reg`, `time_of_reg`) VALUES
(215, 'Male', 'Alhamdu', 'Peter', '', '3', 'April', '2007', '00', '00', '00', '00', 'None', 'Watu, Michika L.G.A', 'Father', 'Civil Servant', '08123071972', 'Hannatu Anthony', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Father', '08123071972', 'Watu, Michika L.G.A', 'Civil Servant', 'Father', 'St Ann\'s  School Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH215', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:16:55'),
(216, 'Male', 'Tukur', 'Mubarak', 'Bashir', '11', 'October', '2008', '00', '00', '00', '00', 'None', 'Near Nybango Primary School Yola', 'Bashir Tukur', 'Civil Servant', '08034222711', 'Amina Ahmed', 'Civil Servant', '00', 'Adamawa', 'Yola North', 'Yola', 'Nigeria', 'Bashir Tukur', '08034222711', 'Near Nybango Primary School Yola', 'Civil Servant', 'Father', 'Nadi 8Unit Primary School Yola', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH216', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 21:21:18'),
(217, 'Male', 'Solomon', 'Paul', '', '30', 'May', '2005', '00', '00', '00', '00', 'None', 'Shagari Phasi I Yola, Adamawa State', 'Solomon Akaw', 'Civil Servant', '08088480382', 'Fotawa Solomon', 'House Wife', '00', 'Borno', 'Biu', 'Biu', 'Nigeria', 'Solomon Akaw', '08088480382', 'Shagari Phasi I Yola, Adamawa State', 'Civil Servant', 'Father', 'Yola Model, Yola Adamawa State', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH217', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 21:24:51'),
(218, 'Female', 'Usman', 'Aisha', '', '12', 'February', '2006', '00', '00', '00', '00', 'None', 'Jiddel Michika Adamawa', 'Usman Umar', 'Business', '07037420508', 'Hassana Usman', 'House Wife', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Usman Umar', '07037420508', 'Mubi Main Market, Adamawa', 'Business', 'Father', 'Darul Arqam Yola', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH218', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:28:29'),
(219, 'Female', 'Peter', 'Celina', '', '3', 'August', '2005', '00', '00', '00', '00', 'None', 'Shuwa Madagali Michika', 'Peter Tizhe', 'Civil Servant', '00', 'Victoria Tumba', 'Civil Servant', '08123730373', 'Adamawa', 'Madagali', 'Gulak', 'Nigeria', 'Victoria Tumba', '08123730373', 'Shuwa Madagali Michika', 'Civil Servant', 'Mother', 'Our Lady Of Mountain Camel Nursery And Primary, Shuwa', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH219', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 21:33:58'),
(220, 'Female', 'Stephen', 'Dorcas', '', '7', 'July', '2007', '00', '00', '00', '00', 'None', 'Jiddel B Michika', 'Stephen Yazuba', 'Lawyer', '08169426216', 'Mariya Stephen', 'Business', '07064407151', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Stephen Yazuba', '08169426216', 'Jiddel B Michika', 'Lawyer', 'Father', 'Optimism Academic School Jiddel', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH220', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:37:58'),
(221, 'Male', 'Trunhe', 'Isuwa', '', '2', 'February', '2005', '00', '00', '00', '00', 'None', 'Sina Kwade Michika', 'Trunhe Dzama', 'Farmer', '00', 'Mary Trunhe', 'Civil Servant', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Trunhe Dzama', '00', 'Sina Kwade Michika', 'Farmer', 'Father', 'Nibur Primary School Sina Kwade, Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH221', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:46:51'),
(222, 'Female', 'Anthony', 'Esther', '', '17', 'April', '2006', '00', '00', '00', '00', 'None', 'Wuro Gandi, Shuwa Adamawa State', 'Anthony Glanda', 'Civil Servant', '08084979699', 'Mary Vanye', 'Civil Servant', '00', 'Adamawa', 'Madagali', 'Gulak', 'Nigeria', 'Anthony Glanda', '08084979699', 'Wuro Gandi, Shuwa Adamawa State', 'Civil Servant', 'Father', 'CRI, Shuwa Madagali LGA', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH222', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:52:05'),
(223, 'Female', 'Paul', 'Grace', '', '7', 'January', '2007', '00', '00', '00', '00', 'None', 'Bazza Michika LGA', 'Paul Tumba', 'Business', '08083356093', 'Mary Paul', 'Civil Servant', '08073435598', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Paul Tumba', '08083356093', 'Bazza Michika LGA', 'Business', 'Father', 'IPS Uba, Hong LGA', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH223', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 21:55:37'),
(224, 'Female', 'Dauda', 'Jamimah', '', '7', 'October', '2007', '00', '00', '000', '000', 'None', 'Luhu, Michika, Adamawa', 'Dauda Gemu', 'Business', '08026327780', 'Habiba Dauda', 'Business', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Dauda Gemu', '08026327780', 'Luhu, Michika, Adamawa', 'Business', 'Father', 'EYN Primary School Luhu, Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH224', 'fstc', 'image/avat.png', '12/Dec/2018', '2018-12-12 22:00:08'),
(225, 'Female', 'Titus', 'Olivia', '', '25', 'April', '2006', '00', '00', '00', '00', 'None', 'Shuwa Madagali LGA', 'Titus James', 'Civil Servant', '00', 'Maryamu Titus', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Titus James', '00', 'Shuwa Madagali LGA', 'Civil Servant', 'Father', 'Our Lady Of Mountain Camel Nursery And Primary, Shuwa', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH225', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 22:02:42'),
(226, 'Female', 'Iliya', 'Serah', '', '26', 'February', '2006', '00', '0000', '000', '000', 'None', 'Central Michika', 'Iliya Danyaro', 'Civil Servant', '08131122076', 'Hannatu Iliya', 'Civil Servant', '08131122076', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Iliya Danyaro', '08131122076', 'Central Michika', 'Civil Servant', 'Father', 'St Ann\'s  School Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH226', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 22:05:41'),
(227, 'Male', 'Wazamda', 'Marcel', '', '2', 'February', '2005', '00', '00', '00', '00', 'None', 'Mission, Gulak, Madagali LGA', 'Wazamda Ijeduwa (Late)', 'Farmer', '08169231364', 'Hauwa Ijeduwa', 'Farmer', '00', 'Adamawa', 'Madagali', 'Madagali', 'Nigeria', 'Hauwa Ijeduwa', '08169231364', 'Mission, Gulak, Madagali LGA', 'Farmer', 'Mother', 'IPS Gulak, Madagali LGA', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH227', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 22:09:46'),
(228, 'Male', 'Varwa', 'Meshack', '', '2', 'February', '2005', '00', '000', '00', '00', 'None', 'Futu, Michika LGA', 'Varwa Tizhe', 'Business', '00', 'Rebecah Varwa', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Varwa Tizhe', '00', 'Futu, Michika LGA', 'Business', 'Father', 'Futu Pri. Sch. Michika', 'PRIMARY 6', 'JSS1B', '20181FSTCMICH228', 'fstc', 'image/avatar.png', '12/Dec/2018', '2018-12-12 22:12:48'),
(229, 'Female', 'Bulus', 'Deborah', '', '2', 'February', '2002', '00', '00', '00', '00', 'None', 'Watu, Michika L.G.A', 'Bulus', 'Farmer', '00', 'Bulus', 'Farmer', '00', 'Adamawa', 'Michika', 'Michika', 'Nigeria', 'Bulus Peter', '00', 'Michika', 'Farmer', 'Father', 'Saint Anne\'s Secondary School Michika', 'SSS1', 'SSS2SCIENCE', '20181FSTCMICH229', 'fstc', 'image/avatar.png', '14/Dec/2018', '2018-12-14 07:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `term` varchar(20) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `roll_call` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `reg_number` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `subjects` varchar(100) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `registration_date` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(1, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(2, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(3, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(4, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(5, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(6, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(7, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(8, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(9, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(10, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(11, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(12, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(13, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(14, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(15, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(16, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:49'),
(17, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(18, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(19, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(20, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(21, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(22, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(23, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:03:50'),
(24, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(25, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(26, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(27, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(28, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(29, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(30, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(31, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(32, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(33, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(34, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(35, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(36, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(37, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(38, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(39, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(40, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(41, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(42, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(43, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:22'),
(44, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:23'),
(45, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:23'),
(46, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:23'),
(47, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:52'),
(48, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:52'),
(49, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:52'),
(50, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:52'),
(51, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:52'),
(52, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(53, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(54, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(55, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(56, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(57, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(58, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(59, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(60, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(61, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(62, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(63, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(64, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(65, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(66, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(67, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(68, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(69, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:04:53'),
(70, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:05'),
(71, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(72, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(73, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(74, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(75, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(76, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(77, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(78, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(79, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(80, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(81, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(82, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(83, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(84, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(85, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(86, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(87, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:06'),
(88, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:07'),
(89, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:07'),
(90, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:07'),
(91, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:07'),
(92, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:07'),
(93, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(94, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(95, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(96, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(97, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(98, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(99, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(100, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(101, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(102, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(103, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(104, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(105, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(106, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:35'),
(107, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(108, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(109, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(110, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(111, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(112, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(113, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(114, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(115, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:08:36'),
(116, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:09'),
(117, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:09'),
(118, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:09'),
(119, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(120, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(121, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(122, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(123, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(124, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(125, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(126, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(127, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(128, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(129, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(130, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(131, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(132, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(133, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:10'),
(134, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:09:10'),
(135, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:09:10'),
(136, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:09:10'),
(137, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:09:10'),
(138, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:09:11'),
(139, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(140, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(141, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(142, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(143, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(144, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(145, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(146, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(147, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(148, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(149, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(150, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(151, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:38'),
(152, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(153, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(154, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(155, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(156, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(157, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(158, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(159, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(160, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(161, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:09:39'),
(162, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(163, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(164, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(165, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(166, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(167, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(168, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(169, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(170, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(171, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(172, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(173, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(174, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(175, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:17'),
(176, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(177, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(178, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(179, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(180, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(181, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(182, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(183, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(184, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:18'),
(185, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(186, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(187, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(188, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(189, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(190, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(191, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(192, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(193, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(194, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(195, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(196, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(197, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(198, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(199, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(200, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(201, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(202, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(203, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(204, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(205, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:41'),
(206, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:42'),
(207, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:10:42'),
(208, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:03'),
(209, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:03'),
(210, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:03'),
(211, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:03'),
(212, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:03'),
(213, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(214, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(215, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(216, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(217, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(218, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:03'),
(219, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(220, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(221, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(222, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(223, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(224, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(225, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(226, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(227, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(228, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(229, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:11:04'),
(230, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:30'),
(231, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:30'),
(232, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:30'),
(233, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:30'),
(234, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(235, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(236, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(237, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(238, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(239, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(240, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(241, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(242, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(243, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(244, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(245, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(246, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(247, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(248, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(249, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(250, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(251, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(252, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:31'),
(253, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(254, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(255, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(256, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(257, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(258, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(259, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(260, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(261, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(262, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(263, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:49'),
(264, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(265, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(266, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(267, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(268, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(269, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(270, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(271, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(272, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(273, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(274, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(275, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:11:50'),
(276, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(277, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(278, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(279, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(280, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(281, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(282, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(283, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(284, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(285, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(286, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(287, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(288, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(289, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:10'),
(290, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(291, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(292, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(293, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(294, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(295, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(296, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(297, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(298, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:12:11'),
(299, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(300, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(301, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(302, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(303, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(304, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(305, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(306, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(307, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(308, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:07'),
(309, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(310, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(311, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(312, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(313, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(314, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(315, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(316, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(317, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(318, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(319, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(320, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(321, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(322, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(323, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(324, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(325, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(326, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:08'),
(327, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(328, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(329, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(330, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(331, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(332, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(333, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(334, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(335, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:31'),
(336, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(337, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(338, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(339, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(340, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(341, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(342, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(343, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(344, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(345, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(346, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(347, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(348, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(349, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(350, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(351, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(352, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(353, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(354, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:32'),
(355, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(356, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(357, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(358, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(359, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(360, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(361, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(362, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(363, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(364, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(365, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(366, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(367, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(368, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(369, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(370, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(371, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(372, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(373, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(374, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(375, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(376, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(377, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:53'),
(378, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:54'),
(379, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:54'),
(380, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:54'),
(381, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:54'),
(382, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:42:54'),
(383, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:15'),
(384, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(385, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(386, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(387, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(388, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(389, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(390, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(391, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(392, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(393, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(394, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(395, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(396, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(397, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(398, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(399, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(400, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(401, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(402, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(403, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(404, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(405, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(406, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:16'),
(407, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:17'),
(408, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:17'),
(409, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:17'),
(410, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:17'),
(411, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(412, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(413, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(414, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(415, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(416, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(417, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(418, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(419, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(420, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(421, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:34'),
(422, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(423, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(424, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(425, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(426, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(427, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(428, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(429, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(430, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(431, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(432, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(433, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(434, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(435, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(436, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(437, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(438, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:43:35'),
(439, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(440, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(441, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(442, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(443, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(444, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(445, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(446, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(447, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(448, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(449, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(450, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(451, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(452, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(453, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(454, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:02'),
(455, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:02'),
(456, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:02'),
(457, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(458, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(459, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(460, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(461, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(462, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:44:03'),
(463, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(464, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(465, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(466, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(467, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(468, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(469, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(470, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(471, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(472, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(473, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(474, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(475, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:22'),
(476, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(477, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(478, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(479, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(480, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(481, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(482, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(483, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(484, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(485, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(486, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(487, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(488, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:23'),
(489, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:24'),
(490, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:24'),
(491, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(492, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(493, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(494, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(495, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(496, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(497, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(498, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(499, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:44'),
(500, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(501, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(502, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(503, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(504, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(505, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(506, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(507, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(508, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(509, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(510, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(511, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(512, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(513, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(514, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(515, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(516, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(517, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(518, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:44:45'),
(519, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(520, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(521, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(522, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(523, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(524, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(525, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(526, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(527, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(528, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(529, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:10'),
(530, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(531, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(532, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(533, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(534, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(535, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(536, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(537, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(538, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(539, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(540, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(541, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(542, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(543, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(544, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(545, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(546, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:11'),
(547, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:32'),
(548, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:32'),
(549, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:32'),
(550, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:32'),
(551, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:32'),
(552, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:32'),
(553, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(554, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(555, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(556, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(557, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(558, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(559, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:33'),
(560, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(561, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(562, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(563, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(564, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(565, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(566, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(567, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(568, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(569, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(570, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(571, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(572, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(573, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(574, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 07:45:33'),
(575, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(576, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(577, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(578, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(579, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(580, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(581, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(582, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(583, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(584, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(585, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:49'),
(586, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(587, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(588, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(589, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(590, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(591, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(592, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(593, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(594, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(595, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(596, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(597, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(598, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(599, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(600, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(601, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(602, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:45:50'),
(603, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(604, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(605, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(606, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(607, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(608, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(609, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(610, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(611, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(612, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(613, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(614, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(615, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(616, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(617, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:09'),
(618, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(619, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(620, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(621, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(622, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(623, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(624, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(625, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(626, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(627, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(628, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(629, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(630, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:10'),
(631, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(632, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(633, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(634, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(635, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(636, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(637, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(638, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(639, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(640, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(641, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(642, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(643, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(644, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(645, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(646, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(647, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(648, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(649, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(650, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(651, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(652, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:54'),
(653, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(654, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(655, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(656, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(657, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(658, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 07:46:55'),
(659, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(660, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(661, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(662, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(663, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(664, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(665, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(666, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(667, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(668, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(669, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(670, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(671, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(672, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(673, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(674, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(675, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(676, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:51'),
(677, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(678, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(679, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(680, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(681, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(682, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:06:52'),
(683, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(684, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(685, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(686, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(687, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(688, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(689, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(690, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(691, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(692, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(693, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(694, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(695, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(696, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(697, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(698, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(699, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(700, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:14'),
(701, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(702, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(703, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(704, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(705, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(706, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:15'),
(707, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:40'),
(708, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:40'),
(709, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:40'),
(710, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(711, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(712, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(713, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(714, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(715, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(716, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(717, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(718, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(719, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(720, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(721, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(722, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(723, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(724, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(725, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(726, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(727, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(728, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(729, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(730, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:07:41'),
(731, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(732, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(733, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(734, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(735, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(736, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(737, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(738, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:03'),
(739, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(740, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(741, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(742, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(743, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(744, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(745, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(746, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(747, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(748, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(749, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(750, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(751, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(752, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(753, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(754, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:04'),
(755, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:24'),
(756, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:24'),
(757, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:24'),
(758, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:24'),
(759, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:24'),
(760, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(761, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(762, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(763, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(764, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(765, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(766, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(767, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(768, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(769, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(770, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(771, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(772, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(773, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(774, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(775, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(776, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(777, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(778, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:25'),
(779, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(780, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(781, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(782, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(783, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(784, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(785, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(786, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(787, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(788, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(789, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(790, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(791, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(792, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(793, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(794, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:53'),
(795, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:53'),
(796, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:53'),
(797, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:53'),
(798, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:53'),
(799, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:53'),
(800, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:54'),
(801, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:08:54'),
(802, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:08:54'),
(803, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:10'),
(804, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:10'),
(805, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(806, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(807, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(808, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(809, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(810, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(811, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(812, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(813, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:11'),
(814, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(815, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(816, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(817, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(818, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(819, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(820, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(821, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(822, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(823, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(824, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(825, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(826, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:12'),
(827, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(828, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(829, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(830, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(831, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(832, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(833, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(834, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(835, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(836, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(837, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(838, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(839, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:29'),
(840, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(841, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(842, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(843, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(844, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(845, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(846, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(847, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(848, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(849, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(850, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:30'),
(851, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(852, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(853, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(854, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(855, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(856, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(857, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(858, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(859, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(860, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(861, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(862, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(863, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(864, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(865, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:46'),
(866, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(867, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(868, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(869, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(870, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(871, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(872, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(873, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(874, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:09:47'),
(875, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(876, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(877, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(878, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(879, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(880, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(881, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:05'),
(882, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:05'),
(883, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:05'),
(884, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:05'),
(885, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(886, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(887, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(888, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(889, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(890, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(891, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(892, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(893, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(894, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(895, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(896, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(897, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(898, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 09:10:06'),
(899, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(900, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(901, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(902, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(903, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(904, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(905, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(906, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(907, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:21'),
(908, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(909, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(910, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(911, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(912, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(913, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(914, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(915, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(916, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(917, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(918, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(919, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(920, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(921, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(922, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:22'),
(923, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(924, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(925, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(926, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(927, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(928, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(929, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(930, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(931, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(932, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(933, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(934, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(935, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(936, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(937, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(938, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(939, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(940, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(941, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(942, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(943, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(944, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(945, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(946, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:10:41'),
(947, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(948, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(949, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(950, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(951, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(952, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(953, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(954, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(955, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(956, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(957, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(958, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(959, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:05'),
(960, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(961, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(962, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(963, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(964, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(965, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(966, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(967, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(968, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(969, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(970, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 09:11:06'),
(971, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:18'),
(972, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(973, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(974, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(975, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(976, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(977, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(978, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(979, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(980, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(981, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(982, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(983, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(984, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(985, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(986, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(987, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(988, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(989, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(990, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(991, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(992, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(993, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(994, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:19'),
(995, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(996, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(997, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(998, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(999, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1000, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1001, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1002, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1003, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1004, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1005, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1006, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1007, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1008, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1009, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:39'),
(1010, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1011, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1012, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1013, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1014, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1015, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1016, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1017, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1018, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Basic Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:20:40'),
(1019, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1020, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1021, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1022, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1023, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1024, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1025, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1026, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1027, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1028, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1029, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1030, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:00'),
(1031, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1032, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1033, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1034, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1035, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1036, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1037, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1038, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1039, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1040, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1041, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1042, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Basic Technology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:01'),
(1043, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1044, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1045, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1046, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1047, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1048, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1049, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1050, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1051, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1052, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1053, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1054, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1055, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1056, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1057, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1058, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:18'),
(1059, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1060, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1061, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1062, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1063, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1064, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1065, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1066, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Business Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:19'),
(1067, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1068, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1069, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1070, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1071, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1072, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1073, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1074, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1075, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1076, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1077, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1078, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1079, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1080, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1081, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1082, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1083, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1084, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:36'),
(1085, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1086, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1087, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1088, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1089, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1090, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:37'),
(1091, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1092, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1093, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1094, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1095, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1096, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1097, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1098, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1099, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1100, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1101, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1102, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1103, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1104, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1105, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1106, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1107, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1108, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1109, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Christian Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:21:58'),
(1110, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1111, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1112, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1113, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1114, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1115, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1116, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1117, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:32'),
(1118, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(1119, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1120, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1121, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1122, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1123, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1124, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1125, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1126, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1127, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1128, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1129, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1130, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1131, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1132, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1133, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:22:33'),
(1134, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1135, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1136, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1137, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1138, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1139, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1140, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1141, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1142, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1143, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1144, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1145, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1146, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1147, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1148, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1149, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1150, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1151, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1152, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1153, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1154, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1155, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1156, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:05'),
(1157, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Hausa', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:06'),
(1158, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1159, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1160, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1161, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1162, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1163, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1164, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:24'),
(1165, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1166, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1167, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1168, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1169, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1170, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1171, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1172, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1173, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1174, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1175, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1176, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1177, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1178, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1179, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1180, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1181, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:25'),
(1182, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:45'),
(1183, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:45'),
(1184, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:45'),
(1185, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:45'),
(1186, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Islamic Religious Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:23:45'),
(1187, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:45'),
(1188, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1189, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1190, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1191, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1192, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1193, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1194, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1195, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1196, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1197, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1198, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1199, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1200, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1201, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1202, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1203, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1204, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1205, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 10:23:46'),
(1206, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1207, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1208, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1209, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1210, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1211, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1212, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1213, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1214, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1215, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1216, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1217, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1218, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1219, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1220, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1221, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1222, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:06'),
(1223, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1224, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1225, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1226, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1227, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1228, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1229, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:07'),
(1230, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1231, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1232, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1233, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1234, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1235, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1236, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1237, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1238, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1239, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1240, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1241, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:22'),
(1242, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1243, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1244, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1245, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1246, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1247, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1248, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1249, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1250, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1251, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1252, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1253, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Physical And Health Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:23'),
(1254, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1255, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1256, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1257, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1258, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1259, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1260, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1261, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1262, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1263, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1264, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:42'),
(1265, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1266, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1267, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1268, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1269, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1270, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1271, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1272, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1273, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1274, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1275, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1276, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1277, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Social Studies', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:24:43'),
(1278, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:51'),
(1279, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1280, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1281, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1282, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1283, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1284, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1285, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1286, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1287, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1288, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1289, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1290, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1291, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1292, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1293, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1294, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1295, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1296, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1297, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1298, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1299, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1300, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1301, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:29:52'),
(1302, '20181FSTCMICH205', 'Abdulmumini Adamu Musa', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:31'),
(1303, '20181FSTCMICH206', 'Satu Damian Peter', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:31'),
(1304, '20181FSTCMICH207', 'John Emmanuel', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:31'),
(1305, '20181FSTCMICH208', 'John Intuwa', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1306, '20181FSTCMICH209', 'Yakubu Yunusa', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1307, '20181FSTCMICH210', 'Vandy Alheri', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1308, '20181FSTCMICH211', 'Haruna Auwal', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1309, '20181FSTCMICH212', 'Daniel Julius', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1310, '20181FSTCMICH213', 'Jorome Justice', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1311, '20181FSTCMICH214', 'John Mada', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1312, '20181FSTCMICH215', 'Alhamdu Peter', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1313, '20181FSTCMICH216', 'Tukur Mubarak Bashir', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1314, '20181FSTCMICH217', 'Solomon Paul', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1315, '20181FSTCMICH218', 'Usman Aisha', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1316, '20181FSTCMICH219', 'Peter Celina', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1317, '20181FSTCMICH220', 'Stephen Dorcas', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1318, '20181FSTCMICH221', 'Trunhe Isuwa', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1319, '20181FSTCMICH222', 'Anthony Esther', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1320, '20181FSTCMICH223', 'Paul Grace', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1321, '20181FSTCMICH224', 'Dauda Jamimah', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1322, '20181FSTCMICH225', 'Titus Olivia', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1323, '20181FSTCMICH226', 'Iliya Serah', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1324, '20181FSTCMICH227', 'Wazamda Marcel', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1325, '20181FSTCMICH228', 'Varwa Meshack', 'JSS1B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:30:32'),
(1326, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1327, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1328, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1329, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1330, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1331, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1332, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1333, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1334, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1335, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1336, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1337, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1338, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1339, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1340, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1341, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1342, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:31'),
(1343, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1344, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1345, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1346, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1347, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1348, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1349, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:32'),
(1350, '20181FSTCMICH181', 'Royal Peace Lazarus', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1351, '20181FSTCMICH182', 'Hammawa Sandra Christopher', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1352, '20181FSTCMICH183', 'Saleh Yahya Emmanuel', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1353, '20181FSTCMICH184', 'Jadaman Vatsama Boyi', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1354, '20181FSTCMICH185', 'Zira Precious Paul', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1355, '20181FSTCMICH186', 'John Thlama', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1356, '20181FSTCMICH187', 'Abdulkareem Abdullahi', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1357, '20181FSTCMICH188', 'Usman Zainab', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1358, '20181FSTCMICH189', 'Nuhu Theophilus', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1359, '20181FSTCMICH190', 'Luka Abraham', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1360, '20181FSTCMICH191', 'Hebrews Israel', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1361, '20181FSTCMICH192', 'Hamman Dlama Vandu', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1362, '20181FSTCMICH193', 'Amos Bakma', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1363, '20181FSTCMICH194', 'Luka Barka', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1364, '20181FSTCMICH195', 'James Abigail', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1365, '20181FSTCMICH196', 'Dauda Peter', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1366, '20181FSTCMICH197', 'Muhammed Zakar Yau', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1367, '20181FSTCMICH198', 'Zira Dorathy David', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1368, '20181FSTCMICH199', 'Usman Mustapha Abubakar', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1369, '20181FSTCMICH200', 'Mamza Bitrus Joshua', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1370, '20181FSTCMICH201', 'Ibrahim Isa', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1371, '20181FSTCMICH202', 'Jakada Jafar Adam', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1372, '20181FSTCMICH203', 'Bashir Dahiru Tukur', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1373, '20181FSTCMICH204', 'Andrawus Grace', 'JSS1A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:32:51'),
(1374, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1375, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1376, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1377, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1378, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1379, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1380, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1381, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1382, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1383, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1384, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1385, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1386, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1387, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1388, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1389, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:07'),
(1390, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1391, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1392, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1393, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1394, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1395, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1396, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:08'),
(1397, '20181FSTCMICH130', 'baban Gida Yahaya', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1398, '20181FSTCMICH131', 'Sabo Zainab Mohammed', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1399, '20181FSTCMICH132', 'Usman Umar', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1400, '20181FSTCMICH133', 'John Raya', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1401, '20181FSTCMICH134', 'Patrick Rahap', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1402, '20181FSTCMICH135', 'John Paul', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1403, '20181FSTCMICH136', 'Emmanuel Ndzagwa', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1404, '20181FSTCMICH137', 'Peter Ndokula Ngaluwa', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1405, '20181FSTCMICH138', 'Sunday Musa', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1406, '20181FSTCMICH139', 'Tari Magadaline', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:28'),
(1407, '20181FSTCMICH140', 'Daniel Lawrence', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1408, '20181FSTCMICH141', 'Mathew Joy', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1409, '20181FSTCMICH142', 'James Joseph', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1410, '20181FSTCMICH143', 'Ayuba Janet', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1411, '20181FSTCMICH144', 'Suleiman Isa Dahiru', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1412, '20181FSTCMICH145', 'Timothy Godwin', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1413, '20181FSTCMICH146', 'Yama Galia', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1414, '20181FSTCMICH147', 'Tashara Emmanuel Patrick', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1415, '20181FSTCMICH148', 'Jacob Elisha', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1416, '20181FSTCMICH149', 'Kwagga Ldama Mark', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1417, '20181FSTCMICH150', 'Samaila Comfort', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1418, '20181FSTCMICH151', 'David Christiana', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1419, '20181FSTCMICH152', 'Sabo Abdulrasheed Mohammed', 'JSS2A', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:35:29'),
(1420, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:11'),
(1421, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:11'),
(1422, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:11'),
(1423, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1424, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1425, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1426, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1427, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1428, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1429, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1430, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1431, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1432, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1433, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1434, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1435, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1436, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1437, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1438, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:12'),
(1439, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1440, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1441, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1442, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1443, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1444, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1445, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1446, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1447, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'Cultural And Creative Art', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:13'),
(1448, '20181FSTCMICH153', 'Kwadabea Mbushe', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:32'),
(1449, '20181FSTCMICH154', 'Ibrahim Amina', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:32'),
(1450, '20181FSTCMICH155', 'Haruna Fadimatu', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:32'),
(1451, '20181FSTCMICH156', 'Haruna Abbas', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1452, '20181FSTCMICH157', 'Mamza Bilkisu Bashiru', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1453, '20181FSTCMICH158', 'Donatus Beatitude', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1454, '20181FSTCMICH159', 'Bello Umar FAruk', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1455, '20181FSTCMICH160', 'Njabari Mujahid', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1456, '20181FSTCMICH161', 'David Musa', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1457, '20181FSTCMICH162', 'Saleh Kadijar', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1458, '20181FSTCMICH163', 'Moses Robert', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1459, '20181FSTCMICH164', 'Yusuf Jonah', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1460, '20181FSTCMICH165', 'Daniel Comfort', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1461, '20181FSTCMICH166', 'Ibrahim Godfrey', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1462, '20181FSTCMICH167', 'Suleiman Dahiru', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1463, '20181FSTCMICH168', 'Markus Patience', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1464, '20181FSTCMICH169', 'Bulus Deborah', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1465, '20181FSTCMICH170', 'Jabani Hyleuda', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1466, '20181FSTCMICH171', 'Yakubu Jethro', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1467, '20181FSTCMICH172', 'Yasmin Abubakar', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1468, '20181FSTCMICH173', 'Martine Ijusini', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:33'),
(1469, '20181FSTCMICH174', 'Sulieman Mahmud Dahiru', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1470, '20181FSTCMICH175', 'Abdulmumuni Abdulrahman Alhaji', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1471, '20181FSTCMICH176', 'Abdulmumuni Mohammed Alhaji', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1472, '20181FSTCMICH177', 'John Helen Kwangye', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1473, '20181FSTCMICH178', 'Yahi Tabitha', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1474, '20181FSTCMICH179', 'Alex Joconiah', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1475, '20181FSTCMICH180', 'Christine Silvester', 'JSS2B', 'French', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 10:37:34'),
(1476, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1477, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1478, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1479, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1480, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1481, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1482, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1483, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1484, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1485, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:44'),
(1486, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1487, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1488, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1489, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1490, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(1491, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1492, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1493, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1494, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1495, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1496, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1497, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1498, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1499, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:18:45'),
(1500, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1501, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1502, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1503, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1504, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1505, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1506, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1507, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1508, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1509, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1510, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1511, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1512, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:01'),
(1513, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1514, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1515, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1516, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1517, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1518, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1519, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1520, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1521, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1522, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1523, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:02'),
(1524, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1525, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1526, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1527, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1528, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1529, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1530, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1531, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1532, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1533, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1534, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1535, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1536, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1537, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1538, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1539, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1540, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1541, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1542, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1543, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:18'),
(1544, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:19'),
(1545, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:19'),
(1546, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:19'),
(1547, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:19'),
(1548, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:50'),
(1549, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:50'),
(1550, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:50'),
(1551, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:50'),
(1552, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1553, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1554, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1555, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1556, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1557, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1558, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1559, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1560, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1561, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1562, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1563, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1564, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1565, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1566, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1567, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1568, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1569, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1570, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1571, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:19:51'),
(1572, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1573, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1574, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1575, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1576, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1577, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:15'),
(1578, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1579, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1580, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1581, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1582, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1583, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1584, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1585, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1586, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1587, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1588, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1589, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1590, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1591, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1592, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1593, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1594, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1595, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:16'),
(1596, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:39'),
(1597, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1598, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1599, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1600, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1601, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1602, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1603, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1604, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1605, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1606, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1607, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1608, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1609, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1610, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1611, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1612, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1613, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1614, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1615, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1616, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1617, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1618, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1619, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Geography', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:40'),
(1620, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1621, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1622, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1623, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1624, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1625, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1626, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1627, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:57'),
(1628, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1629, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1630, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1631, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1632, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1633, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1634, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1635, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1636, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1637, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1638, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1639, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1640, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1641, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1642, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1643, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:20:58'),
(1644, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1645, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1646, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1647, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1648, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1649, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1650, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1651, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1652, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1653, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1654, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1655, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1656, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1657, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1658, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1659, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:12'),
(1660, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1661, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1662, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1663, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1664, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1665, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1666, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1667, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:13'),
(1668, '20181FSTCMICH106', 'Usa Enoch', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1669, '20181FSTCMICH107', 'Zirakaye Deborah Kwaji', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1670, '20181FSTCMICH108', 'Daniel Barka', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1671, '20181FSTCMICH109', 'Timothy Betty', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1672, '20181FSTCMICH110', 'Williams Moses', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1673, '20181FSTCMICH111', 'Daniel Ganya', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1674, '20181FSTCMICH112', 'Danladi Hilary', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1675, '20181FSTCMICH113', 'Angelo Felix', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1676, '20181FSTCMICH114', 'Yakubu Michael', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1677, '20181FSTCMICH115', 'Ishaku Emmanuel', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1678, '20181FSTCMICH116', 'Joshua Istifanus Pastor', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1679, '20181FSTCMICH117', 'Yola Isaac', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1680, '20181FSTCMICH118', 'Yusuf Isaac', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1681, '20181FSTCMICH119', 'Peter Ighe', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1682, '20181FSTCMICH120', 'Sunday Indagiju', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1683, '20181FSTCMICH121', 'Ahmed Joda', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1684, '20181FSTCMICH122', 'Daniel Meshach', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1685, '20181FSTCMICH123', 'Murtala Nurudeen', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1686, '20181FSTCMICH124', 'Sunday Sarki Philip', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1687, '20181FSTCMICH125', 'Irimiya Allen Vandi', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1688, '20181FSTCMICH126', 'Wadzanda Shadrach Apagu', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:30'),
(1689, '20181FSTCMICH127', 'Luka Usa', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:31'),
(1690, '20181FSTCMICH128', 'Joseph Somson', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:31'),
(1691, '20181FSTCMICH129', 'Amos Rifkatu Yaga', 'SSS1SCIENCE', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:21:31'),
(1692, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1693, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1694, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1695, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1696, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1697, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1698, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1699, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1700, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1701, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1702, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Biology', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:34:42'),
(1703, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1704, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1705, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1706, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1707, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1708, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1709, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1710, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1711, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1712, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1713, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Commerce', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:12'),
(1714, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1715, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1716, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1717, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1718, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1719, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1720, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1721, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1722, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1723, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1724, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Economics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:30'),
(1725, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1726, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1727, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1728, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1729, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1730, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1731, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1732, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1733, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1734, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1735, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:35:48'),
(1736, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1737, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1738, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1739, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1740, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1741, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1742, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Financial Accounting', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:04'),
(1743, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 11:36:04'),
(1744, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 11:36:04'),
(1745, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1746, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1747, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1748, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1749, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1750, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1751, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1752, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1753, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1754, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1755, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Government', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:19'),
(1756, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1757, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1758, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1759, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1760, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1761, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1762, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1763, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1764, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1765, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1766, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:35'),
(1767, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:50'),
(1768, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:50'),
(1769, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:50'),
(1770, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:50'),
(1771, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1772, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1773, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1774, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1775, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1776, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1777, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:36:51'),
(1778, '20181FSTCMICH74', 'Kwaha Jeremiah James', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1779, '20181FSTCMICH75', 'Jacob Jemimah', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1780, '20181FSTCMICH76', 'Lawrence Shecktra', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1781, '20181FSTCMICH77', 'Aguli Amana', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1782, '20181FSTCMICH78', 'Sambo Abdullahi Kawu', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1783, '20181FSTCMICH79', 'Bitrus Kauna', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:23'),
(1784, '20181FSTCMICH80', 'Gambo Hellen Gambo', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:24'),
(1785, '20181FSTCMICH82', 'Dahiru Khadija Mohammed', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:24'),
(1786, '20181FSTCMICH83', 'Monday Ketura', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:24'),
(1787, '20181FSTCMICH84', 'Dauda Kwagwe', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:24'),
(1788, '20181FSTCMICH85', 'Aliyu Kamaludeen', 'NBC1', 'Office Practice', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 11:38:24'),
(1789, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1790, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1791, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1792, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1793, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1794, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1795, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1796, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1797, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1798, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1799, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1800, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1801, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1802, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1803, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1804, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1805, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:28'),
(1806, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Brick Laying - Block Laying Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:59'),
(1807, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Brick Laying - Block Laying Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:59'),
(1808, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Brick Laying - Block Laying Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:41:59'),
(1809, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1810, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1811, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1812, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1813, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1814, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1815, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1816, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1817, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1818, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1819, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1820, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1821, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1822, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1823, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1824, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1825, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:41:59'),
(1826, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:16'),
(1827, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:16'),
(1828, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:16'),
(1829, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:16'),
(1830, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:16'),
(1831, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1832, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1833, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1834, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1835, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1836, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1837, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1838, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1839, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1840, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1841, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1842, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1843, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1844, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1845, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:17'),
(1846, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1847, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1848, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1849, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1850, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1851, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1852, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1853, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1854, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1855, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:42:58'),
(1856, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:42:58'),
(1857, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:42:58'),
(1858, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:42:59'),
(1859, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:42:59'),
(1860, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:42:59'),
(1861, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Electronics Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:17'),
(1862, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Electronics Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:17'),
(1863, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17'),
(1864, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17'),
(1865, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17'),
(1866, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17'),
(1867, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(1868, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:17'),
(1869, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1870, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1871, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1872, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1873, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1874, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1875, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1876, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1877, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1878, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1879, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1880, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:43:18'),
(1881, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:36'),
(1882, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:36'),
(1883, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1884, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1885, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1886, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1887, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1888, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1889, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1890, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1891, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1892, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1893, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1894, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1895, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1896, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1897, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1898, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1899, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1900, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:43:37'),
(1901, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1902, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1903, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1904, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1905, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1906, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1907, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:02'),
(1908, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1909, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1910, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1911, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1912, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1913, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1914, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1915, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1916, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1917, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1918, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1919, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1920, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:03'),
(1921, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Introduction To Building Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:29'),
(1922, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Introduction To Building Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:29'),
(1923, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Introduction To Building Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:29'),
(1924, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1925, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1926, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1927, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1928, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1929, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1930, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1931, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1932, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1933, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1934, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1935, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1936, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1937, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1938, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1939, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1940, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:44:29'),
(1941, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1942, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1943, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1944, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1945, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1946, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1947, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1948, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1949, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1950, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1951, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1952, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1953, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1954, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1955, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1956, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1957, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1958, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1959, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1960, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:44:49'),
(1961, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1962, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1963, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1964, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1965, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1966, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1967, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1968, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1969, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1970, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1971, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:12'),
(1972, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1973, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1974, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1975, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1976, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1977, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1978, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1979, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1980, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:13'),
(1981, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:33'),
(1982, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1983, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1984, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1985, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1986, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1987, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1988, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1989, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1990, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1991, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1992, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1993, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1994, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1995, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1996, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1997, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:34'),
(1998, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:52'),
(1999, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:52'),
(2000, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:52'),
(2001, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:52'),
(2002, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:45:52'),
(2003, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2004, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2005, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2006, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2007, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2008, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2009, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2010, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:52'),
(2011, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2012, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2013, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2014, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2015, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2016, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 12:45:53'),
(2017, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2018, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2019, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2020, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2021, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2022, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2023, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2024, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2025, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2026, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2027, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2028, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2029, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2030, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2031, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2032, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2033, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2034, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2035, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:13'),
(2036, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:14'),
(2037, '20181FSTCMICH86', 'Linus Useiju', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2038, '20181FSTCMICH87', 'Taringey Joel Bulus', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2039, '20181FSTCMICH88', 'Tari Simon', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2040, '20181FSTCMICH89', 'Bapatel Yakubu', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2041, '20181FSTCMICH90', 'Fedelis Obidah', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2042, '20181FSTCMICH91', 'Joseph Jesse', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:39'),
(2043, '20181FSTCMICH92', 'Emmanuel Innocent', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2044, '20181FSTCMICH93', 'Sini Ayuba Ishaya', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2045, '20181FSTCMICH94', 'Yohanna Ibrahim', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2046, '20181FSTCMICH95', 'Salama Elisha', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2047, '20181FSTCMICH96', 'Luka Musa', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2048, '20181FSTCMICH97', 'Markus Elisha', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2049, '20181FSTCMICH98', 'Emmanuel Ransome Kwaha', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2050, '20181FSTCMICH99', 'Alexander Godwin', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2051, '20181FSTCMICH100', 'Emmanuel Richard', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2052, '20181FSTCMICH101', 'Haruna Shamsudeen', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2053, '20181FSTCMICH102', 'Kwarti Tony Emmanuel', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2054, '20181FSTCMICH103', 'Tumba Adonijah James', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2055, '20181FSTCMICH104', 'Bitrus Huta', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2056, '20181FSTCMICH105', 'Joseph Nathaniel', 'NTC1', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 12:46:40'),
(2057, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2058, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2059, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2060, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2061, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2062, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2063, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Basic Electricity', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:16'),
(2064, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:16'),
(2065, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Brick Laying - Block Laying Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:45'),
(2066, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Brick Laying - Block Laying Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:02:45'),
(2067, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:45'),
(2068, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:45'),
(2069, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:45'),
(2070, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2071, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2072, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2073, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2074, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2075, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:02:46'),
(2076, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Building Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:08'),
(2077, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Building Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:08'),
(2078, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:08'),
(2079, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:08'),
(2080, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:08'),
(2081, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2082, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2083, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2084, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2085, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2086, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:03:09'),
(2087, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2088, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2089, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2090, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2091, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2092, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2093, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2094, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2095, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2096, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2097, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Chemistry', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:03:41'),
(2098, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:12'),
(2099, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:12'),
(2100, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2101, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2102, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2103, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2104, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2105, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2106, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2107, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2108, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Civic Education', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:13'),
(2109, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:38'),
(2110, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:38'),
(2111, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:38'),
(2112, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:38'),
(2113, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Electronics Installation And Maintenance', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:38'),
(2114, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:38'),
(2115, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:38'),
(2116, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:38'),
(2117, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:38'),
(2118, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:38'),
(2119, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:39'),
(2120, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Electronics Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:58'),
(2121, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Electronics Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:05:58'),
(2122, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:58'),
(2123, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2124, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2125, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2126, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2127, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2128, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2129, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:05:59'),
(2130, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:24'),
(2131, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:24'),
(2132, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2133, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2134, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2135, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2136, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2137, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2138, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2139, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2140, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'English Language', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:25'),
(2141, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2142, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2143, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2144, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2145, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2146, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2147, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2148, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2149, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2150, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2151, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Further Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:06:46'),
(2152, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Introduction To Building Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:14'),
(2153, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Introduction To Building Construction', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:14'),
(2154, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:14'),
(2155, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:14'),
(2156, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:14'),
(2157, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2158, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2159, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2160, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2161, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2162, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:07:15'),
(2163, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:35'),
(2164, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2165, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2166, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2167, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2168, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2169, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2170, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2171, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2172, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2173, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'ICT', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:07:36'),
(2174, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2175, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2176, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2177, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2178, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2179, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2180, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2181, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2182, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2183, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2184, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Mathematics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:08:44'),
(2185, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:09:38'),
(2186, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Metal Works', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:09:38'),
(2187, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2188, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2189, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2190, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2191, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2192, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2193, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2194, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2195, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:38'),
(2196, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:09:59'),
(2197, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Motor Vehicle Mechanics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:09:59'),
(2198, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2199, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2200, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2201, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2202, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2203, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2204, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2205, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2206, '', '', '', '', '', '', '13-Dec-2018', '2018-12-13 14:09:59'),
(2207, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2208, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2209, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2210, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2211, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2212, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2213, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2214, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2215, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:22'),
(2216, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:23'),
(2217, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Physics', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:23'),
(2218, '20181FSTCMICH4', 'Kwaha Vaisah James', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:42'),
(2219, '20181FSTCMICH5', 'Peter Between', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:42'),
(2220, '20181FSTCMICH7', 'Jatau Hope Alhaji', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:42'),
(2221, '20181FSTCMICH8', 'Jabani Hylegrayu', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2222, '20181FSTCMICH9', 'Bitrus Zaphaniah', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2223, '20181FSTCMICH10', 'Ezekiel Vaisa', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2224, '20181FSTCMICH11', 'Donatus Wisdom', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2225, '20181FSTCMICH12', 'Sailume Jiri Bitrus', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2226, '20181FSTCMICH13', 'Mathias La,azurus', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2227, '20181FSTCMICH14', 'Tumba Israel Yusuf', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2228, '20181FSTCMICH15', 'Kwaji Julius Ishaya', 'NTC2', 'Technical Drawing', 'First Term', '2018/2019', '13-Dec-2018', '2018-12-13 14:10:43'),
(2229, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2230, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2231, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2232, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2233, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2234, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2235, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:12'),
(2236, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2237, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2238, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2239, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2240, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2241, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2242, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2243, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2244, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2245, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2246, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2247, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2248, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2249, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Biology', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:13'),
(2250, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2251, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2252, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2253, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2254, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2255, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2256, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2257, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2258, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:37'),
(2259, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2260, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2261, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2262, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2263, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2264, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2265, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2266, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2267, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2268, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2269, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2270, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Civic Education', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:26:38'),
(2271, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:02'),
(2272, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2273, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2274, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2275, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2276, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2277, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2278, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2279, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2280, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2281, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2282, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2283, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2284, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2285, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2286, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2287, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2288, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(2289, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2290, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Commerce', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:03'),
(2291, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2292, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2293, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2294, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2295, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2296, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2297, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2298, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2299, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2300, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2301, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2302, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2303, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:47'),
(2304, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2305, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2306, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2307, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2308, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2309, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2310, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2311, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Economics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:27:48'),
(2312, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2313, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2314, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2315, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2316, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2317, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2318, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2319, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2320, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:30'),
(2321, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2322, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2323, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2324, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2325, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2326, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2327, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2328, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2329, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2330, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2331, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2332, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'English Language', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:31'),
(2333, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2334, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2335, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2336, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2337, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2338, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2339, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2340, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2341, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2342, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2343, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Financial Accounting', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:28:51'),
(2344, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:51'),
(2345, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:51'),
(2346, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:51'),
(2347, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:51'),
(2348, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:51'),
(2349, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:52'),
(2350, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:28:52'),
(2351, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2352, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2353, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2354, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2355, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2356, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2357, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2358, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2359, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2360, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Government', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:13'),
(2361, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:13'),
(2362, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:13'),
(2363, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:13'),
(2364, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2365, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2366, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2367, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2368, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2369, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2370, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2371, '', '', '', '', '', '', '14-Dec-2018', '2018-12-13 23:29:14'),
(2372, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2373, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2374, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2375, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2376, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2377, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2378, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2379, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2380, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2381, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2382, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2383, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2384, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2385, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2386, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:30'),
(2387, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2388, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2389, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2390, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2391, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2392, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'ICT', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:31'),
(2393, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:44'),
(2394, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:44'),
(2395, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:44'),
(2396, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:44'),
(2397, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:44'),
(2398, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2399, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2400, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2401, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2402, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2403, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2404, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2405, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2406, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2407, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2408, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2409, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2410, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2411, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2412, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2413, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Mathematics', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:29:45'),
(2414, '20181FSTCMICH16', 'Babangida Zainab', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2415, '20181FSTCMICH17', 'Christian Promise', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2416, '20181FSTCMICH18', 'Musa Aisha', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2417, '20181FSTCMICH19', 'Abali Abubakar Usman', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2418, '20181FSTCMICH20', 'Abubakar Salim', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2419, '20181FSTCMICH21', 'Ishaya Ruth', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2420, '20181FSTCMICH22', 'Bulanga Mivanyi Philemon', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2421, '20181FSTCMICH23', 'Tijani Ladidi Pembi', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2422, '20181FSTCMICH24', 'Bitrus Kwada', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2423, '20181FSTCMICH25', 'Peter Joseph', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2424, '20181FSTCMICH26', 'Emmanuel Jemimah', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2425, '20181FSTCMICH27', 'Barau Jemimah', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2426, '20181FSTCMICH28', 'James Eliet', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2427, '20181FSTCMICH29', 'Isuwa Esther', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2428, '20181FSTCMICH30', 'Tijani Blessing Pembi', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2429, '20181FSTCMICH31', 'Abdullahi Salisu Alhaji', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2430, '20181FSTCMICH32', 'Bappa Zainab', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2431, '20181FSTCMICH33', 'Mathias Barnabas', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2432, '20181FSTCMICH34', 'Bapetel Ahmed', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:07'),
(2433, '20181FSTCMICH35', 'Bilal Aliyu Abrahim', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:08'),
(2434, '20181FSTCMICH36', 'Ali Alloysius', 'NBC2', 'Office Practice', 'First Term', '2018/2019', '14-Dec-2018', '2018-12-13 23:30:08'),
(2586, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2587, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2588, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2589, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2590, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2591, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2592, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2593, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2594, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:00'),
(2595, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2596, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2597, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2598, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2599, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2600, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2601, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2602, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2603, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2604, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2605, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2606, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2607, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2608, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2609, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2610, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2611, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2612, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:01'),
(2613, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:02'),
(2614, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:02'),
(2615, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:00:02'),
(2659, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2660, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2661, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2662, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2663, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2664, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2665, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:40'),
(2666, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2667, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2668, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2669, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2670, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2671, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2672, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2673, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2674, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2675, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:41'),
(2698, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:01:59'),
(2699, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2700, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2701, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2702, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2703, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2704, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2705, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2706, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2707, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2708, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2709, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2710, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2711, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2712, '', '', '', '', '', '', '14-Dec-2018', '2018-12-14 10:02:00'),
(2821, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2822, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2823, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2824, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2825, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2826, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2827, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2828, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:32'),
(2829, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2830, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2831, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2832, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2833, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2834, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2835, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2836, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2837, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2838, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2839, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2840, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:33'),
(2841, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2842, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2843, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2844, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2845, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2846, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2847, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2848, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2849, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2850, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2851, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2852, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2853, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2854, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2855, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2856, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2857, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Agricultural Science', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:35:34'),
(2858, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:00'),
(2859, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:00'),
(2860, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:00'),
(2861, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:00'),
(2862, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:00'),
(2863, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2864, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2865, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2866, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2867, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2868, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2869, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2870, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2871, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2872, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2873, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2874, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2875, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2876, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2877, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2878, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2879, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2880, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2881, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:01'),
(2882, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2883, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2884, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2885, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2886, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2887, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2888, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2889, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2890, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2891, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2892, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2893, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2894, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Biology', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:02'),
(2895, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2896, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2897, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2898, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2899, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2900, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2901, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2902, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2903, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2904, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2905, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2906, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2907, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2908, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2909, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2910, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:28'),
(2911, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2912, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2913, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2914, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2915, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2916, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2917, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2918, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2919, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2920, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2921, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2922, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2923, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2924, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2925, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2926, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:29'),
(2927, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:30'),
(2928, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:30'),
(2929, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:30'),
(2930, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:30'),
(2931, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Chemistry', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:30'),
(2932, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:50'),
(2933, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2934, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2935, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2936, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2937, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2938, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2939, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2940, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2941, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2942, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2943, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2944, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2945, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2946, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2947, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2948, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2949, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2950, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:51'),
(2951, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2952, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2953, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2954, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2955, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2956, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2957, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2958, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2959, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2960, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2961, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2962, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2963, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2964, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2965, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2966, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2967, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2968, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Civic Education', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:36:52'),
(2969, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2970, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2971, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2972, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2973, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2974, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2975, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Economics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:37:11'),
(2976, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:11'),
(2977, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2978, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2979, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2980, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2981, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2982, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2983, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2984, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2985, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2986, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2987, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2988, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2989, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2990, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2991, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2992, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2993, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2994, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:12'),
(2995, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(2996, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(2997, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(2998, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(2999, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3000, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3001, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3002, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3003, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3004, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3005, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:37:13'),
(3006, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3007, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3008, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3009, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3010, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3011, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3012, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3013, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3014, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3015, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3016, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3017, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3018, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3019, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3020, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:09'),
(3021, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3022, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3023, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3024, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3025, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3026, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3027, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3028, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3029, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10');
INSERT INTO `subjects` (`id`, `reg_number`, `name`, `class`, `subjects`, `term`, `session`, `registration_date`, `registration_time`) VALUES
(3030, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3031, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3032, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3033, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3034, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3035, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3036, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3037, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3038, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3039, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:10'),
(3040, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:11'),
(3041, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:11'),
(3042, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'English Language', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:11'),
(3043, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:38'),
(3044, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:38'),
(3045, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:38'),
(3046, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:38'),
(3047, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:39'),
(3048, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:39'),
(3049, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Further Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:38:39'),
(3050, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3051, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3052, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3053, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3054, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3055, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3056, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3057, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3058, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3059, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3060, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3061, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3062, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3063, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3064, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3065, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:39'),
(3066, '', '', '', '', '', '', '15-Dec-2018', '2018-12-15 10:38:40'),
(3067, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3068, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3069, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3070, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3071, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3072, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3073, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3074, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3075, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3076, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3077, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3078, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3079, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3080, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3081, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3082, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:05'),
(3083, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3084, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3085, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3086, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3087, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3088, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3089, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Geography', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:06'),
(3090, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3091, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3092, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3093, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3094, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3095, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3096, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3097, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3098, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3099, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3100, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3101, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3102, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3103, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3104, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:32'),
(3105, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3106, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3107, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3108, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3109, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3110, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3111, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3112, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3113, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3114, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3115, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3116, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3117, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3118, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3119, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:33'),
(3120, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3121, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3122, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3123, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3124, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3125, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3126, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'ICT', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:34'),
(3127, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3128, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3129, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3130, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3131, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3132, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3133, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3134, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3135, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3136, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3137, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3138, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3139, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3140, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3141, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3142, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3143, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3144, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:46'),
(3145, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3146, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3147, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3148, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3149, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3150, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3151, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3152, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3153, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3154, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3155, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3156, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3157, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3158, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3159, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3160, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3161, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3162, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3163, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Mathematics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:39:47'),
(3164, '20181FSTCMICH37', 'Dauda Markus', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3165, '20181FSTCMICH38', 'Mamza Jafiya Shaibu', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3166, '20181FSTCMICH39', 'Luka Yanchi', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3167, '20181FSTCMICH40', 'David Mbrasawa', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3168, '20181FSTCMICH41', 'Dauda Queen', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3169, '20181FSTCMICH43', 'Hosea Joel', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3170, '20181FSTCMICH44', 'Jeroboam Joseph', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3171, '20181FSTCMICH45', 'Kamale Katherine Jacob', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3172, '20181FSTCMICH46', 'Akura Innocent Daniel', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3173, '20181FSTCMICH47', 'Dali Jesse Kwaji', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3174, '20181FSTCMICH48', 'Samuel Rose', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3175, '20181FSTCMICH49', 'Bitrus Fashe', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3176, '20181FSTCMICH50', 'Samuel Feriwa', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3177, '20181FSTCMICH51', 'Monday Bester', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3178, '20181FSTCMICH52', 'Ibrahim Asaph', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3179, '20181FSTCMICH53', 'Tada Yakubu Bala', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:04'),
(3180, '20181FSTCMICH54', 'Ijabani Mas ud Yakubu', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3181, '20181FSTCMICH55', 'Umar Ibrahim Bello', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3182, '20181FSTCMICH56', 'Abdullahi Zakari', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3183, '20181FSTCMICH57', 'Saleh Salima', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3184, '20181FSTCMICH58', 'Kwada Wangye Emmanuel', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3185, '20181FSTCMICH59', 'Mathias Innocent', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3186, '20181FSTCMICH60', 'James Vawa', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3187, '20181FSTCMICH61', 'Abali Ibrahim Muhammad', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3188, '20181FSTCMICH62', 'Ndupwa Janet', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3189, '20181FSTCMICH63', 'John Jonathan', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3190, '20181FSTCMICH64', 'Samaila Barka', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3191, '20181FSTCMICH65', 'Uba Suleiman Umar', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3192, '20181FSTCMICH66', 'Zakariya Allahyaji', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3193, '20181FSTCMICH67', 'Yante Musa Ibrahim', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3194, '20181FSTCMICH68', 'Philemon Favour', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3195, '20181FSTCMICH69', 'James Alfred Bright', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3196, '20181FSTCMICH70', 'Usman Idris', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3197, '20181FSTCMICH71', 'Yawate Maryamu Samuel', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3198, '20181FSTCMICH72', 'Adzira Janet Jabani', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3199, '20181FSTCMICH73', 'Maigari Fadimatu Bappa', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05'),
(3200, '20181FSTCMICH229', 'Bulus Deborah', 'SSS2SCIENCE', 'Physics', 'First Term', '2018/2019', '15-Dec-2018', '2018-12-15 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `employment_date` varchar(50) DEFAULT NULL,
  `teacher_position` varchar(100) DEFAULT NULL,
  `subject_to_teach` varchar(100) DEFAULT NULL,
  `lga` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `mob` varchar(50) DEFAULT NULL,
  `yob` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_registered` varchar(50) DEFAULT NULL,
  `time_registered` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers_classes`
--

CREATE TABLE `teachers_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unused_pins`
--

CREATE TABLE `unused_pins` (
  `id` int(20) NOT NULL,
  `term` varchar(50) DEFAULT NULL,
  `unused_pins` varchar(100) DEFAULT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `upload_date` varchar(30) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unused_pins`
--

INSERT INTO `unused_pins` (`id`, `term`, `unused_pins`, `serial_number`, `upload_date`, `upload_time`) VALUES
(80, 'First Term', '2590332316401929', '201812060', '06/Dec/2018', '2018-12-06 07:45:33'),
(81, 'First Term', '2535671207944767', '201812061', '06/Dec/2018', '2018-12-06 07:45:33'),
(82, 'First Term', '2538440930705941', '201812062', '06/Dec/2018', '2018-12-06 07:45:33'),
(83, 'First Term', '2530960050034455', '201812063', '06/Dec/2018', '2018-12-06 07:45:33'),
(84, 'First Term', '2541093650958233', '201812064', '06/Dec/2018', '2018-12-06 07:45:33'),
(85, 'First Term', '3854763638594033', '201812065', '06/Dec/2018', '2018-12-06 07:46:02'),
(86, 'First Term', '3894270473953673', '201812066', '06/Dec/2018', '2018-12-06 07:46:02'),
(87, 'First Term', '3809460029260364', '201812067', '06/Dec/2018', '2018-12-06 07:46:02'),
(88, 'First Term', '3892986828540535', '201812068', '06/Dec/2018', '2018-12-06 07:46:02'),
(89, 'First Term', '3862338762901771', '201812069', '06/Dec/2018', '2018-12-06 07:46:02'),
(90, 'First Term', '0213840975503248', '2018120610', '06/Dec/2018', '2018-12-06 07:46:08'),
(91, 'First Term', '0206393962222961', '2018120611', '06/Dec/2018', '2018-12-06 07:46:08'),
(92, 'First Term', '0210007500042080', '2018120612', '06/Dec/2018', '2018-12-06 07:46:08'),
(93, 'First Term', '0210229286309890', '2018120613', '06/Dec/2018', '2018-12-06 07:46:08'),
(94, 'First Term', '0213036107333825', '2018120614', '06/Dec/2018', '2018-12-06 07:46:08'),
(95, 'First Term', '0887310075965060', '2018120615', '06/Dec/2018', '2018-12-06 07:46:15'),
(96, 'First Term', '0836979015950690', '2018120616', '06/Dec/2018', '2018-12-06 07:46:15'),
(97, 'First Term', '0803220164384922', '2018120617', '06/Dec/2018', '2018-12-06 07:46:15'),
(98, 'First Term', '0867543205976134', '2018120618', '06/Dec/2018', '2018-12-06 07:46:15'),
(99, 'First Term', '0893890670571250', '2018120619', '06/Dec/2018', '2018-12-06 07:46:15'),
(100, 'First Term', '1551145775558570', '2018120620', '06/Dec/2018', '2018-12-06 07:46:20'),
(101, 'First Term', '1550091024211530', '2018120621', '06/Dec/2018', '2018-12-06 07:46:20'),
(102, 'First Term', '1593492080315452', '2018120622', '06/Dec/2018', '2018-12-06 07:46:20'),
(103, 'First Term', '1575451035156292', '2018120623', '06/Dec/2018', '2018-12-06 07:46:20'),
(104, 'First Term', '1576308730975018', '2018120624', '06/Dec/2018', '2018-12-06 07:46:20'),
(105, 'First Term', '5494090027496046', '2018120925', '09/Dec/2018', '2018-12-09 00:23:01'),
(106, 'First Term', '5405601617207020', '2018120926', '09/Dec/2018', '2018-12-09 00:23:02'),
(107, 'First Term', '5435786359266390', '2018120927', '09/Dec/2018', '2018-12-09 00:23:02'),
(108, 'First Term', '5470641029300831', '2018120928', '09/Dec/2018', '2018-12-09 00:23:02'),
(109, 'First Term', '5415693042587260', '2018120929', '09/Dec/2018', '2018-12-09 00:23:03'),
(110, 'Second Term', '2670069784961241', '201812090', '09/Dec/2018', '2018-12-09 00:23:38'),
(111, 'Second Term', '2655014939743614', '201812091', '09/Dec/2018', '2018-12-09 00:23:38'),
(112, 'Second Term', '2637066820710150', '201812092', '09/Dec/2018', '2018-12-09 00:23:44'),
(113, 'Second Term', '2610085932844802', '201812093', '09/Dec/2018', '2018-12-09 00:23:44'),
(114, 'Second Term', '2616057444073308', '201812094', '09/Dec/2018', '2018-12-09 00:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `used_pins`
--

CREATE TABLE `used_pins` (
  `id` int(20) NOT NULL,
  `used_pins` varchar(50) DEFAULT NULL,
  `user_reg_number` varchar(50) DEFAULT NULL,
  `used_count` int(10) DEFAULT NULL,
  `user_class` varchar(50) DEFAULT NULL,
  `used_term` varchar(50) DEFAULT NULL,
  `used_session` varchar(50) DEFAULT NULL,
  `date_used` varchar(50) DEFAULT NULL,
  `time_used` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `lga` text DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_of_reg` varchar(50) DEFAULT NULL,
  `time_of_reg` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `fullname`, `address`, `phone`, `state`, `lga`, `nationality`, `email`, `password`, `date_of_reg`, `time_of_reg`) VALUES
(15, 'mr', 'Casweeney Chisom', 'Ifite Awka', '07036798652', 'Anambra', 'Aguata', 'Nigerian', 'casweeno2000@gmail.com', 'godisgood', '24/Oct/2016', '2016-10-24 17:38:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administratives`
--
ALTER TABLE `administratives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_result`
--
ALTER TABLE `annual_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `behavioral`
--
ALTER TABLE `behavioral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_season`
--
ALTER TABLE `current_season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debtors`
--
ALTER TABLE `debtors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_allocation`
--
ALTER TABLE `fee_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_payment`
--
ALTER TABLE `fee_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jss`
--
ALTER TABLE `jss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jss_subject_number`
--
ALTER TABLE `jss_subject_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin1`
--
ALTER TABLE `pin1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin2`
--
ALTER TABLE `pin2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin3`
--
ALTER TABLE `pin3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_request`
--
ALTER TABLE `portal_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results1`
--
ALTER TABLE `results1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss_subject_number`
--
ALTER TABLE `sss_subject_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_classes`
--
ALTER TABLE `teachers_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unused_pins`
--
ALTER TABLE `unused_pins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_pins`
--
ALTER TABLE `used_pins`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administratives`
--
ALTER TABLE `administratives`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `annual_result`
--
ALTER TABLE `annual_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `behavioral`
--
ALTER TABLE `behavioral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `current_season`
--
ALTER TABLE `current_season`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `debtors`
--
ALTER TABLE `debtors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_allocation`
--
ALTER TABLE `fee_allocation`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_payment`
--
ALTER TABLE `fee_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jss`
--
ALTER TABLE `jss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jss_subject_number`
--
ALTER TABLE `jss_subject_number`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin1`
--
ALTER TABLE `pin1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `pin2`
--
ALTER TABLE `pin2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pin3`
--
ALTER TABLE `pin3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_request`
--
ALTER TABLE `portal_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `principal`
--
ALTER TABLE `principal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results1`
--
ALTER TABLE `results1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sss_subject_number`
--
ALTER TABLE `sss_subject_number`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3201;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers_classes`
--
ALTER TABLE `teachers_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unused_pins`
--
ALTER TABLE `unused_pins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `used_pins`
--
ALTER TABLE `used_pins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
