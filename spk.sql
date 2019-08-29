-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 02:25 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(10) NOT NULL,
  `control_access` varchar(50) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `control_access`, `date_created`, `time_created`) VALUES
(1, '@#godisgood', '20/04/2019', '2019-04-20 08:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
  `id` int(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `lga` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_of_reg` varchar(50) DEFAULT NULL,
  `time_of_reg` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountants`
--

INSERT INTO `accountants` (`id`, `title`, `fullname`, `address`, `phone`, `state`, `lga`, `nationality`, `email`, `password`, `date_of_reg`, `time_of_reg`) VALUES
(1, 'Mr', 'Casweeney Chisom', 'Michika', '07036798652', 'Anambra', 'Aguata', 'Nigerian', 'casweeno2000@gmail.com', 'godisgood', NULL, '2019-02-05 13:57:08');

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
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administratives`
--

INSERT INTO `administratives` (`id`, `school_name`, `school_motto`, `school_logo`, `school_stamp`, `upload_date`, `upload_time`) VALUES
(10, 'FEDERAL SCIENCE COLLEGE, SOKOTO', 'Illela Road, Sokoto', 'admin/logo.jpg', 'admin/logo.jpg', '12-Oct-2018', '2017-11-11 18:33:47');

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
  `time_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_season`
--

CREATE TABLE `current_season` (
  `id` int(10) NOT NULL,
  `current_session` varchar(20) DEFAULT NULL,
  `current_term` varchar(50) DEFAULT NULL,
  `date_declared` varchar(50) DEFAULT NULL,
  `time_declared` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current_season`
--

INSERT INTO `current_season` (`id`, `current_session`, `current_term`, `date_declared`, `time_declared`) VALUES
(1, '2017/2018', 'First Term', '30/Oct/2016', '2016-10-30 10:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(10) NOT NULL,
  `end_of_term` varchar(50) DEFAULT NULL,
  `next_term_begins` varchar(50) DEFAULT NULL,
  `date_declared` varchar(50) DEFAULT NULL,
  `time_declared` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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

--
-- Dumping data for table `debtors`
--

INSERT INTO `debtors` (`id`, `name`, `amount`, `phone`, `deadline`, `date`) VALUES
(8, 'Moriz Benson', 15000, '07036798652', '14th December 2017', '28-Nov-2017'),
(10, 'FGC Malali', 25000, '07036798652', 'December 2017', '28-Nov-2017');

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

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `paid_to`, `paid_for`, `amount_paid`, `phone`, `date`) VALUES
(1, 'Aliyu', 'Extension', 3200, '07036798652', '28-Nov-2017'),
(5, 'Amaka', 'Shoes', 4000, '08069469068', '30-Nov-2017');

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

--
-- Dumping data for table `fee_allocation`
--

INSERT INTO `fee_allocation` (`id`, `allocate_class`, `student_type`, `fee_amount`, `date_allocated`) VALUES
(8, 'JSS1', 'New Student', 32350, '27/Apr/2017'),
(9, 'JSS1', 'Old Student', 18000, '27/Apr/2017'),
(10, 'JSS2', 'New Student', 32350, '27/Apr/2017'),
(11, 'JSS2', 'Old Student', 18000, '27/Apr/2017'),
(12, 'JSS3', 'New Student', 32350, '27/Apr/2017'),
(13, 'JSS3', 'Old Student', 18000, '27/Apr/2017'),
(14, 'SSS1', 'New Student', 32350, '27/Apr/2017'),
(15, 'SSS1', 'Old Student', 18000, '27/Apr/2017'),
(16, 'SSS2', 'New Student', 32350, '27/Apr/2017'),
(17, 'SSS2', 'Old Student', 18000, '27/Apr/2017'),
(18, 'JSS1', 'New Student Scholarship', 18500, '28/Apr/2017'),
(19, 'JSS1', 'Old Student Scholarship', 6800, '28/Apr/2017'),
(20, 'SSS3', 'New Student', 40000, '28-Nov-2017'),
(21, 'SSS3', 'Old Student', 32000, '28-Nov-2017'),
(22, 'SSS3', 'New Student Scholarship', 30000, '28-Nov-2017');

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

--
-- Dumping data for table `fee_payment`
--

INSERT INTO `fee_payment` (`id`, `reg_number`, `student_name`, `student_class`, `student_type`, `fee_term`, `fee_session`, `amount_paid`, `student_balance`, `teller_no`, `payment_status`, `date_of_upload`) VALUES
(6, '20174JSS1SJSS1', 'Ezenwafor Ejike Anthony', 'JSS1', 'New Student', 'First Term', '2017/2018', 32350, 0, '885444', 'Cleared', '27/Apr/2017'),
(8, '20174JSS1SJSS2', 'Ojukwu Casweeney Chisom', 'JSS1', 'New Student', 'First Term', '2017/2018', 27350, 5000, '4544333', 'Not Cleared', '27/Apr/2017'),
(9, '20174JSS1SJSS3', 'Ojukwu Bianca Chiemerie', 'JSS1', 'Old Student', 'First Term', '2017/2018', 15000, 3000, '00663344', 'Not Cleared', '27/Apr/2017'),
(10, '20174JSS1SJSS4', 'Nwofor Ejike Joseph', 'JSS1', 'New Student', 'First Term', '2017/2018', 10000, 22350, '007766', 'Not Cleared', '27/Apr/2017'),
(11, '201514JSS1SJSS2', 'Ojukwu Ejike Anthony', 'JSS1', 'Old Student', 'First Term', '2016/2017', 10000, 8000, '885444', 'Not Cleared', '03/May/2017'),
(12, '201614JSS1SJSS1', 'Ojukwu Bianca Chiemerie', 'JSS1', 'New Student', 'First Term', '2016/2017', 20000, 12350, '45355', 'Not Cleared', '03/May/2017'),
(13, '201614JSS1SJSS1', 'Ojukwu Kelvin Nnamdi', 'JSS1', 'Old Student', 'First Term', '2017/2018', 5000, 13000, '36225', 'Not Cleared', '28-Nov-2017');

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
  `description` text,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `type`, `cost`, `name`, `quantity`, `description`, `date`) VALUES
(1, 'Items', 2000, 'Uniform', 20, 'Student Uniforms', '28-Nov-2017');

-- --------------------------------------------------------

--
-- Table structure for table `jss`
--

CREATE TABLE `jss` (
  `id` int(10) NOT NULL,
  `jss_subjects` varchar(100) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jss`
--

INSERT INTO `jss` (`id`, `jss_subjects`, `upload_date`, `upload_time`) VALUES
(6, 'Business Studies', '28/Oct/2016', '2016-10-28 03:53:55'),
(7, 'Social Studies', '28/Oct/2016', '2016-10-28 03:54:08'),
(8, 'Physical &amp; Health Education', '28/Oct/2016', '2016-10-28 03:54:14'),
(9, 'Computer Science', '28/Oct/2016', '2016-10-28 03:54:19'),
(10, 'Basic Education', '28/Oct/2016', '2016-10-28 03:54:26'),
(11, 'Civic Education', '28/Oct/2016', '2016-10-28 03:54:32'),
(13, 'Mathematics', '17/Jan/2017', '2017-01-17 17:14:12'),
(14, 'English Language', '17/Jan/2017', '2017-01-17 17:14:21'),
(16, 'Christian Religious Knowledge', '17/Jan/2017', '2017-01-17 17:14:47'),
(17, 'Home Economics', '17/Jan/2017', '2017-01-17 17:14:53'),
(19, 'Literature in English', '17/Jan/2017', '2017-01-17 17:15:37'),
(21, 'Agricultural Science', '16-Nov-2017', '2017-11-16 19:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `jss_subject_number`
--

CREATE TABLE `jss_subject_number` (
  `id` int(10) NOT NULL,
  `number_of_subject` int(10) DEFAULT NULL,
  `declared_date` varchar(20) DEFAULT NULL,
  `declared_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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
  `message` text,
  `mail_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `name`, `email`, `message`, `mail_date`) VALUES
(1, 'Casweeney', 'casweeno2000@gmail.com', 'Hello checking', '2018-03-12 22:21:24'),
(2, 'Casweeney', 'casweeno2000@gmail.com', 'Hello checking', '2018-03-12 22:21:57'),
(3, 'Casweeney', 'casweeno2000@gmail.com', 'Hello checking', '2018-03-12 22:23:38'),
(4, 'Casweeney', 'casweeno2000@gmail.com', 'Hello checking', '2018-03-12 22:26:39'),
(5, '&lt;p&gt;&lt;b&gt;Casweeney&lt;/b&gt;&lt;/p&gt;', 'ggg@pp.com', '&lt;script&gt;alert&quot;Hello World&quot;&lt;/script&gt;', '2018-03-12 22:30:25'),
(6, 'PortalNet Domain', 'noreply@portalnetdomain.com', 'Disclaimer: We are not responsible for any financial loss, data loss, downgrade in search engine rankings, missed customers, undeliverable email or any other damages that you may suffer upon the expiration of schoolportalkit.com. For more information please refer to section 17.c.1a of our User Agreement. \n\n This is your final notice to renew schoolportalkit.com: \n\n https://portalnetdomain.com/?n=schoolportalkit.com&amp;r=a \n\n In the event that schoolportalkit.com expires, we reserve the right to offer your listing to competing businesses in the same niche and region after 3 business days on an auction basis. \n\n This is the final communication that we are required to send out regarding the expiration of schoolportalkit.com \n\n Secure Online Payment: \n\n https://portalnetdomain.com/?n=schoolportalkit.com&amp;r=a \n\n All services will be automatically restored on schoolportalkit.com if payment is received in full before expiration. Thank you for your cooperation.', '2018-05-16 16:06:25'),
(7, 'Raph Chukwunyelu', 'mirajpress@gmail.com', 'I want to get this school management software.How can I buy it.  Thanks.', '2018-06-09 05:14:16'),
(8, 'Raph Chukwunyelu', 'mirajpress@gmail.com', 'I want to get this school management software.How can I buy it.  Thanks.', '2018-06-09 05:14:35'),
(9, 'Roridula', 'manishachavan001@gmail.com', 'Hi! Here is  an important offer for you. http://bit.ly/2runqkS', '2018-06-15 15:53:21'),
(10, 'DomainCenter Net', 'noreply@domaincenternet.com', 'Disclaimer: We are not liable for any financial loss, lost data, missed customers, loss of search engine rankings, undelivered email or any other damages that you may incur due to the expiration of schoolportalkit.com. For further information please refer to section 12.b.7a of our User Agreement. \n\n This is your final notification to renew schoolportalkit.com: \n\n https://domaincenternet.com/?n=schoolportalkit.com&amp;r=a \n\n In the event that you allow schoolportalkit.com to expire, the listing will be automatically deleted from our servers within 3 business days. After expiration, we reserve the right to offer your web listing to competing businesses or interested parties in the same category and state/region after 3 business days on an auction basis. \n\n This is the final notification that we are required to transmit for the expiration of schoolportalkit.com \n\n Secure Online Payment: \n\n https://domaincenternet.com/?n=schoolportalkit.com&amp;r=a \n\n All services will be restored automatically on schoolportalkit.com if payment is received in full on time before expiration. We thank you for your cooperation.', '2018-07-24 16:09:05'),
(11, 'DomainCenter Net', 'noreply@domaincenternet.com', 'Disclaimer: We are not liable for any financial loss, lost data, missed customers, loss of search engine rankings, undelivered email or any other damages that you may incur due to the expiration of schoolportalkit.com. For further information please refer to section 12.b.7a of our User Agreement. \n\n This is your final notification to renew schoolportalkit.com: \n\n https://domaincenternet.com/?n=schoolportalkit.com&amp;r=a \n\n In the event that you allow schoolportalkit.com to expire, the listing will be automatically deleted from our servers within 3 business days. After expiration, we reserve the right to offer your web listing to competing businesses or interested parties in the same category and state/region after 3 business days on an auction basis. \n\n This is the final notification that we are required to transmit for the expiration of schoolportalkit.com \n\n Secure Online Payment: \n\n https://domaincenternet.com/?n=schoolportalkit.com&amp;r=a \n\n All services will be restored automatically on schoolportalkit.com if payment is received in full on time before expiration. We thank you for your cooperation.', '2018-07-26 15:18:45'),
(12, 'Randy', 'Randy@TalkWithLead.com', 'Hi,\r\n\r\nMy name is Randy and I was looking at a few different sites online and came across your site schoolportalkit.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithLead is a widget which captures a website visitor&rsquo;s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website &mdash; while they\'re hot!\r\n  \r\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We do offer a 14 days free trial.  \r\n\r\nThanks and Best Regards,\r\nRandy', '2018-08-09 17:04:17'),
(13, 'Kendrick Abdullah', 'contact@bombillon-jm.com', 'Hi\r\n\r\nShop Ray-Ban Sunglasses 19.95 dollars only today @ https://isunglasseshop.online\r\n\r\nEnjoy,\r\n\r\n\r\nSchool Portal Kit - Manage Students Data Online schoolportalkit.com', '2018-08-19 23:47:23'),
(14, 'Michaelgrexy', 'gcrcompane@yandex.ru', 'Good afternoon, I would like to make an order. Here is a list of what I would like to buy. \r\nhttps://my.su/qpiw', '2018-09-20 23:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(50) NOT NULL,
  `header` varchar(100) DEFAULT NULL,
  `body` text,
  `news_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `header`, `body`, `news_date`) VALUES
(2, 'School Portal Installation', 'St Joseph Schools Atimaka has moved fully into a new IT driven way of operation. We are proud to introduce to you St Joseph Atimaka School Portal Management System in which the staff, students and parents are all part of the platform.', '03/Sep/2017'),
(4, 'School Resumption', 'At Johnbosco Institute of Technology, we use the cooperative team approach to jointly coordinate instruction and provide a nurturing environment to assure student success.', '03/Sep/2017'),
(5, 'Encode 1.0', 'Encode just started their training.', '12/Sep/2017');

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
  `upload_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin1`
--

INSERT INTO `pin1` (`id`, `term`, `first_term_pin`, `serial_number`, `upload_date`, `upload_time`) VALUES
(117, 'First Term', '5600421327308683', '201611150', '15/Nov/2016', '2016-11-15 13:49:42'),
(118, 'First Term', '5666700058567830', '201611151', '15/Nov/2016', '2016-11-15 13:49:42'),
(119, 'First Term', '5649491580100306', '201611152', '15/Nov/2016', '2016-11-15 13:49:42'),
(120, 'First Term', '5600340201035503', '201611153', '15/Nov/2016', '2016-11-15 13:49:42'),
(121, 'First Term', '5617802101056891', '201611154', '15/Nov/2016', '2016-11-15 13:49:42'),
(122, 'First Term', '2557006842043119', '201612285', '28/Dec/2016', '2016-12-28 21:33:32'),
(123, 'First Term', '2501820546091791', '201612286', '28/Dec/2016', '2016-12-28 21:33:32'),
(124, 'First Term', '2580984866674062', '201612287', '28/Dec/2016', '2016-12-28 21:33:32'),
(125, 'First Term', '2561773000326001', '201612288', '28/Dec/2016', '2016-12-28 21:33:32'),
(126, 'First Term', '2510656002096728', '201612289', '28/Dec/2016', '2016-12-28 21:33:32'),
(127, 'First Term', '2785362244459115', '2017010710', '07/Jan/2017', '2017-01-07 02:25:37'),
(128, 'First Term', '2740776892870355', '2017010711', '07/Jan/2017', '2017-01-07 02:25:38'),
(129, 'First Term', '2751734360310688', '2017010712', '07/Jan/2017', '2017-01-07 02:25:38'),
(130, 'First Term', '2707064901902435', '2017010713', '07/Jan/2017', '2017-01-07 02:25:38'),
(131, 'First Term', '2758847579452091', '2017010714', '07/Jan/2017', '2017-01-07 02:25:38'),
(132, 'First Term', '5531719086545420', '2017012515', '25/Jan/2017', '2017-01-25 12:01:02'),
(133, 'First Term', '5530270000145274', '2017012516', '25/Jan/2017', '2017-01-25 12:01:02'),
(134, 'First Term', '5500000056418799', '2017012517', '25/Jan/2017', '2017-01-25 12:01:03'),
(135, 'First Term', '5542418204395615', '2017012518', '25/Jan/2017', '2017-01-25 12:01:03'),
(136, 'First Term', '5560208189907387', '2017012519', '25/Jan/2017', '2017-01-25 12:01:03'),
(137, 'First Term', '0265690102141946', '2017012520', '25/Jan/2017', '2017-01-25 12:01:12'),
(138, 'First Term', '0266906965958684', '2017012521', '25/Jan/2017', '2017-01-25 12:01:12'),
(139, 'First Term', '0282499900376463', '2017012522', '25/Jan/2017', '2017-01-25 12:01:12'),
(140, 'First Term', '0271950649828806', '2017012523', '25/Jan/2017', '2017-01-25 12:01:12'),
(141, 'First Term', '0253671944916226', '2017012524', '25/Jan/2017', '2017-01-25 12:01:13'),
(142, 'First Term', '1850646898510464', '2017012525', '25/Jan/2017', '2017-01-25 12:01:26'),
(143, 'First Term', '1834200608723945', '2017012526', '25/Jan/2017', '2017-01-25 12:01:26'),
(144, 'First Term', '1874308051006666', '2017012527', '25/Jan/2017', '2017-01-25 12:01:26'),
(145, 'First Term', '1850929328187007', '2017012528', '25/Jan/2017', '2017-01-25 12:01:26'),
(146, 'First Term', '1816242336059955', '2017012529', '25/Jan/2017', '2017-01-25 12:01:27'),
(147, 'First Term', '1130150607703725', '2017091630', '16/Sep/2017', '2017-09-16 18:36:15'),
(148, 'First Term', '1185389563710060', '2017091631', '16/Sep/2017', '2017-09-16 18:36:15'),
(149, 'First Term', '1180867008051500', '2017091632', '16/Sep/2017', '2017-09-16 18:36:15'),
(150, 'First Term', '1160640830533754', '2017091633', '16/Sep/2017', '2017-09-16 18:36:15'),
(151, 'First Term', '1170182042328909', '2017091634', '16/Sep/2017', '2017-09-16 18:36:15'),
(152, 'First Term', '3507297173766268', '2018031935', '19/Mar/2018', '2018-03-19 12:22:15'),
(153, 'First Term', '3539732412323360', '2018031936', '19/Mar/2018', '2018-03-19 12:22:15'),
(154, 'First Term', '3570309707705561', '2018031937', '19/Mar/2018', '2018-03-19 12:22:16'),
(155, 'First Term', '3507089042983333', '2018031938', '19/Mar/2018', '2018-03-19 12:22:16'),
(156, 'First Term', '3504246573305103', '2018031939', '19/Mar/2018', '2018-03-19 12:22:16');

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
  `upload_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin2`
--

INSERT INTO `pin2` (`id`, `term`, `second_term_pin`, `serial_number`, `upload_date`, `upload_time`) VALUES
(1, 'Second Term', '5190146863528070', '201612280', '28/Dec/2016', '2016-12-28 19:30:00'),
(2, 'Second Term', '5110500357031177', '201612281', '28/Dec/2016', '2016-12-28 19:30:00'),
(3, 'Second Term', '5150806589009854', '201612282', '28/Dec/2016', '2016-12-28 19:30:00'),
(4, 'Second Term', '5131146222100300', '201612283', '28/Dec/2016', '2016-12-28 19:30:00'),
(5, 'Second Term', '5150980590303490', '201612284', '28/Dec/2016', '2016-12-28 19:30:01'),
(6, 'Second Term', '3380000514575370', '201803195', '19/Mar/2018', '2018-03-19 19:52:46'),
(7, 'Second Term', '3300830948072449', '201803196', '19/Mar/2018', '2018-03-19 19:52:46'),
(8, 'Second Term', '3328440903009787', '201803197', '19/Mar/2018', '2018-03-19 19:52:46'),
(9, 'Second Term', '3369718802540381', '201803198', '19/Mar/2018', '2018-03-19 19:52:46'),
(10, 'Second Term', '3348643797382064', '201803199', '19/Mar/2018', '2018-03-19 19:52:46');

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
  `upload_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin3`
--

INSERT INTO `pin3` (`id`, `term`, `third_term_pin`, `serial_number`, `upload_date`, `upload_time`) VALUES
(1, 'Third Term', '0800454004047740', '201612270', '27/Dec/2016', '2016-12-27 21:55:18'),
(2, 'Third Term', '0895194680531030', '201612271', '27/Dec/2016', '2016-12-27 21:55:18'),
(3, 'Third Term', '0871820060407711', '201612272', '27/Dec/2016', '2016-12-27 21:55:18'),
(4, 'Third Term', '0871811000228932', '201612273', '27/Dec/2016', '2016-12-27 21:55:18'),
(5, 'Third Term', '0848036229996587', '201612274', '27/Dec/2016', '2016-12-27 21:55:18'),
(6, 'Third Term', '0306000029210016', '201805125', '12/May/2018', '2018-05-12 19:09:07'),
(7, 'Third Term', '0331655421332753', '201805126', '12/May/2018', '2018-05-12 19:09:07'),
(8, 'Third Term', '0311498003713395', '201805127', '12/May/2018', '2018-05-12 19:09:08'),
(9, 'Third Term', '0349517725011450', '201805128', '12/May/2018', '2018-05-12 19:09:08'),
(10, 'Third Term', '0300831930019463', '201805129', '12/May/2018', '2018-05-12 19:09:08'),
(11, 'Third Term', '4205370511653526', '2018092710', '27/Sep/2018', '2018-09-27 17:09:50'),
(12, 'Third Term', '4260415318219876', '2018092711', '27/Sep/2018', '2018-09-27 17:09:50'),
(13, 'Third Term', '4207062399856080', '2018092712', '27/Sep/2018', '2018-09-27 17:09:50'),
(14, 'Third Term', '4240707090500519', '2018092713', '27/Sep/2018', '2018-09-27 17:09:50'),
(15, 'Third Term', '4298618409402874', '2018092714', '27/Sep/2018', '2018-09-27 17:09:50');

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
  `message` text,
  `request_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portal_request`
--

INSERT INTO `portal_request` (`id`, `name`, `school_name`, `position_held`, `email`, `phone`, `message`, `request_date`) VALUES
(1, 'Chibuike Daniel', 'Pure knowledge Modern Schools Nkpor Agu', 'Teacher', 'onyejesioge@gmail.com', '08103051763', 'Please I want to know how to get the source code. I have been in search for something like this for a long time to help the school', '2018-05-27 00:42:06'),
(2, 'Raph Chukwunyelu', 'Fastrackschools', 'Teacher', 'mirajpress@gmail.com', '07038220512', 'I want to have access to the demo', '2018-06-09 05:25:54');

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
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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
  `time_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `principal`
--

INSERT INTO `principal` (`id`, `username`, `password`, `firstname`, `lastname`, `position`, `sex`, `phone`, `email`, `next_of_kin`, `next_of_kin_relationship`, `next_of_kin_phone`, `date_registered`, `time_registered`) VALUES
(1, 'princi', 'ppp', 'Ojukwu', 'Casweeney', 'Vice Principal Admin', 'Male', '09060742529', 'chisom@gmail.com', 'Oliver Ojukwu', 'Father', '07033733232', '20-Nov-2017', '2017-11-20 14:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `results1`
--

CREATE TABLE `results1` (
  `id` int(10) NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
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
  `time_of_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 'English Language', '16-Nov-2017'),
(3, 'Agricultural Science', '16-Nov-2017'),
(4, 'Home Economics', '16-Nov-2017'),
(5, 'Biology', '16-Nov-2017'),
(6, 'Chemistry', '16-Nov-2017'),
(7, 'Physics', '16-Nov-2017'),
(8, 'Geography', '16-Nov-2017'),
(9, 'Further Mathematics', '16-Nov-2017'),
(10, 'Literature In English', '16-Nov-2017'),
(12, 'Technical Drawing', '16-Nov-2017'),
(13, 'Basic Technonology', '16-Nov-2017'),
(14, 'Basic Science', '16-Nov-2017'),
(15, 'Physical And Health Education', '16-Nov-2017'),
(16, 'Computer', '16-Nov-2017'),
(18, 'Data Processing', '20-Nov-2017'),
(19, 'Mathematics', '28-Nov-2017');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) NOT NULL,
  `sessions` varchar(20) DEFAULT NULL,
  `date_added` varchar(50) DEFAULT NULL,
  `time_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessions`, `date_added`, `time_added`) VALUES
(3, '2016/2017', '30/Oct/2016', '2016-10-30 09:23:14'),
(4, '2017/2018', '30/Oct/2016', '2016-10-30 09:30:37'),
(5, '2015/2016', '03/May/2017', '2017-05-03 05:44:41'),
(6, '2018/2019', '11-Nov-2017', '2017-11-11 18:59:17'),
(7, '2019/2020', '11-Nov-2017', '2017-11-11 18:59:30'),
(8, '2020/2021', '13-Nov-2017', '2017-11-12 23:07:05'),
(9, '2022/2023', '09-Oct-2018', '2018-10-09 08:25:05'),
(10, '2023/2024', '09-Oct-2018', '2018-10-09 08:25:41'),
(11, '2025/2026', '09-Oct-2018', '2018-10-09 08:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(10) NOT NULL,
  `sss_subjects` varchar(100) DEFAULT NULL,
  `upload_date` varchar(50) DEFAULT NULL,
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sss`
--

INSERT INTO `sss` (`id`, `sss_subjects`, `upload_date`, `upload_time`) VALUES
(6, 'Economics', '27/Oct/2016', '2016-10-27 18:42:13'),
(7, 'Government', '27/Oct/2016', '2016-10-27 18:42:30'),
(8, 'Physics', '27/Oct/2016', '2016-10-27 18:42:47'),
(10, 'Geography', '28/Oct/2016', '2016-10-28 12:21:51'),
(11, 'Commerce', '28/Oct/2016', '2016-10-28 12:21:58'),
(12, 'Christian Religious Education', '28/Oct/2016', '2016-10-28 12:22:02'),
(14, 'Accounting', '28/Oct/2016', '2016-10-28 12:22:21'),
(15, 'Mathematics', '29/Dec/2016', '2016-12-29 12:41:14'),
(16, 'English Language', '29/Dec/2016', '2016-12-29 12:41:23'),
(17, 'Biology', '29/Dec/2016', '2016-12-29 12:41:30'),
(18, 'Chemistry', '29/Dec/2016', '2016-12-29 12:41:37'),
(19, 'Agricultural Science', '16-Nov-2017', '2017-11-16 19:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `sss_subject_number`
--

CREATE TABLE `sss_subject_number` (
  `id` int(10) NOT NULL,
  `number_of_subject` int(10) DEFAULT NULL,
  `declared_date` varchar(20) DEFAULT NULL,
  `declared_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
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

--
-- Dumping data for table `staff_payroll`
--

INSERT INTO `staff_payroll` (`id`, `staff_name`, `salary`, `debit`, `debit_reason`, `bonus`, `bonus_reason`, `credit`, `date`) VALUES
(8, 'Dangana Isa', 40000, NULL, NULL, NULL, NULL, NULL, '07/Sep/2017'),
(10, 'Casweeney Chisom', 50000, NULL, NULL, NULL, NULL, NULL, '28-Nov-2017');

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
  `address` text,
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
  `time_of_reg` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `registration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `time_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `password`, `firstname`, `lastname`, `employment_date`, `teacher_position`, `subject_to_teach`, `lga`, `state`, `country`, `sex`, `dob`, `mob`, `yob`, `address`, `phone`, `email`, `status`, `date_registered`, `time_registered`) VALUES
(2, 'rasho', 'rasheedy', 'Azi', 'Abdulrasheed', '17/11/2017', 'Class Teacher', 'Computer', 'Gusua', 'Plateau', 'Nigeria', 'Male', '21', 'February', '1988', 'FGC Malali', '07036798652', 'azi@gmail.com', 'Active', '20-Nov-2017', '2017-11-20 15:32:56'),
(3, 'casweeno2000', 'godisgood', 'Casweeney', 'Chisom', '15/11/2017', 'Head Of Subject', 'Data Processing', 'Aguata', 'Anambra', 'Nigeria', 'Male', '21', 'March', '1992', 'NIPI Kaduna', '07036798652', 'toxaswift2000@gmail.com', 'Active', '20-Nov-2017', '2017-11-20 15:45:42'),
(4, 'kistyman', 'king', 'Oha', 'Kingsley', '21/11/2017', 'Head Of Subject', 'Geography', 'Nkwere', 'Imo', 'Nigeria', 'Male', '21', 'March', '1994', 'Lagos Nigeria', '07036798652', 'kisty@gmail.com', 'Active', '29-Nov-2017', '2017-11-29 07:39:17');

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

--
-- Dumping data for table `teachers_classes`
--

INSERT INTO `teachers_classes` (`id`, `name`, `subject`, `class`, `term`) VALUES
(1, 'Casweeney Chisom', 'Data Processing', 'SSS3', 'First Term'),
(3, 'Azi Abdulrasheed', 'Computer', 'JSS3', 'First Term');

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
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unused_pins`
--

INSERT INTO `unused_pins` (`id`, `term`, `unused_pins`, `serial_number`, `upload_date`, `upload_time`) VALUES
(24, 'Third Term', '0871811000228932', '201612273', '27/Dec/2016', '2016-12-27 20:55:18'),
(25, 'Third Term', '0848036229996587', '201612274', '27/Dec/2016', '2016-12-27 20:55:18'),
(26, 'Second Term', '5190146863528070', '201612280', '28/Dec/2016', '2016-12-28 18:30:00'),
(27, 'Second Term', '5110500357031177', '201612281', '28/Dec/2016', '2016-12-28 18:30:00'),
(28, 'Second Term', '5150806589009854', '201612282', '28/Dec/2016', '2016-12-28 18:30:00'),
(29, 'Second Term', '5131146222100300', '201612283', '28/Dec/2016', '2016-12-28 18:30:01'),
(30, 'Second Term', '5150980590303490', '201612284', '28/Dec/2016', '2016-12-28 18:30:01'),
(41, 'First Term', '5531719086545420', '2017012515', '25/Jan/2017', '2017-01-25 11:01:02'),
(42, 'First Term', '5530270000145274', '2017012516', '25/Jan/2017', '2017-01-25 11:01:03'),
(43, 'First Term', '5500000056418799', '2017012517', '25/Jan/2017', '2017-01-25 11:01:03'),
(44, 'First Term', '5542418204395615', '2017012518', '25/Jan/2017', '2017-01-25 11:01:03'),
(45, 'First Term', '5560208189907387', '2017012519', '25/Jan/2017', '2017-01-25 11:01:03'),
(46, 'First Term', '0265690102141946', '2017012520', '25/Jan/2017', '2017-01-25 11:01:12'),
(47, 'First Term', '0266906965958684', '2017012521', '25/Jan/2017', '2017-01-25 11:01:12'),
(48, 'First Term', '0282499900376463', '2017012522', '25/Jan/2017', '2017-01-25 11:01:12'),
(49, 'First Term', '0271950649828806', '2017012523', '25/Jan/2017', '2017-01-25 11:01:12'),
(50, 'First Term', '0253671944916226', '2017012524', '25/Jan/2017', '2017-01-25 11:01:13'),
(51, 'First Term', '1850646898510464', '2017012525', '25/Jan/2017', '2017-01-25 11:01:26'),
(52, 'First Term', '1834200608723945', '2017012526', '25/Jan/2017', '2017-01-25 11:01:26'),
(53, 'First Term', '1874308051006666', '2017012527', '25/Jan/2017', '2017-01-25 11:01:26'),
(54, 'First Term', '1850929328187007', '2017012528', '25/Jan/2017', '2017-01-25 11:01:27'),
(55, 'First Term', '1816242336059955', '2017012529', '25/Jan/2017', '2017-01-25 11:01:27'),
(56, 'First Term', '1130150607703725', '2017091630', '16/Sep/2017', '2017-09-16 17:36:15'),
(57, 'First Term', '1185389563710060', '2017091631', '16/Sep/2017', '2017-09-16 17:36:15'),
(58, 'First Term', '1180867008051500', '2017091632', '16/Sep/2017', '2017-09-16 17:36:15'),
(59, 'First Term', '1160640830533754', '2017091633', '16/Sep/2017', '2017-09-16 17:36:15'),
(60, 'First Term', '1170182042328909', '2017091634', '16/Sep/2017', '2017-09-16 17:36:15'),
(61, 'First Term', '3507297173766268', '2018031935', '19/Mar/2018', '2018-03-19 11:22:15'),
(62, 'First Term', '3539732412323360', '2018031936', '19/Mar/2018', '2018-03-19 11:22:15'),
(63, 'First Term', '3570309707705561', '2018031937', '19/Mar/2018', '2018-03-19 11:22:16'),
(64, 'First Term', '3507089042983333', '2018031938', '19/Mar/2018', '2018-03-19 11:22:16'),
(65, 'First Term', '3504246573305103', '2018031939', '19/Mar/2018', '2018-03-19 11:22:16'),
(66, 'Second Term', '3380000514575370', '201803195', '19/Mar/2018', '2018-03-19 18:52:46'),
(67, 'Second Term', '3300830948072449', '201803196', '19/Mar/2018', '2018-03-19 18:52:46'),
(68, 'Second Term', '3328440903009787', '201803197', '19/Mar/2018', '2018-03-19 18:52:46'),
(69, 'Second Term', '3369718802540381', '201803198', '19/Mar/2018', '2018-03-19 18:52:46'),
(70, 'Second Term', '3348643797382064', '201803199', '19/Mar/2018', '2018-03-19 18:52:46'),
(71, 'Third Term', '0306000029210016', '201805125', '12/May/2018', '2018-05-12 18:09:07'),
(72, 'Third Term', '0331655421332753', '201805126', '12/May/2018', '2018-05-12 18:09:07'),
(73, 'Third Term', '0311498003713395', '201805127', '12/May/2018', '2018-05-12 18:09:08'),
(74, 'Third Term', '0349517725011450', '201805128', '12/May/2018', '2018-05-12 18:09:08'),
(75, 'Third Term', '0300831930019463', '201805129', '12/May/2018', '2018-05-12 18:09:08'),
(76, 'Third Term', '4205370511653526', '2018092710', '27/Sep/2018', '2018-09-27 16:09:50'),
(77, 'Third Term', '4260415318219876', '2018092711', '27/Sep/2018', '2018-09-27 16:09:50'),
(78, 'Third Term', '4207062399856080', '2018092712', '27/Sep/2018', '2018-09-27 16:09:50'),
(79, 'Third Term', '4240707090500519', '2018092713', '27/Sep/2018', '2018-09-27 16:09:50');

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
  `time_used` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `lga` text,
  `nationality` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `date_of_reg` varchar(50) DEFAULT NULL,
  `time_of_reg` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `title`, `fullname`, `address`, `phone`, `state`, `lga`, `nationality`, `email`, `password`, `date_of_reg`, `time_of_reg`) VALUES
(15, 'mr', 'Casweeney Chisom', 'Ifite Awka', '07036798652', 'Anambra', 'Aguata', 'Nigerian', 'casweeno2000@gmail.com', 'godisgood', '24/Oct/2016', '2016-10-24 17:38:25'),
(16, 'mr', 'SPK Guest', 'NIPI, Kinshasha Road, Kaduna State', '07036798652', 'Kaduna', 'Kaduna North', 'Nigerian', 'guest@spk.com', 'password', '29/Dec/2016', '2016-12-29 17:39:26');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fee_allocation`
--
ALTER TABLE `fee_allocation`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `fee_payment`
--
ALTER TABLE `fee_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jss`
--
ALTER TABLE `jss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `jss_subject_number`
--
ALTER TABLE `jss_subject_number`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pin1`
--
ALTER TABLE `pin1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `pin2`
--
ALTER TABLE `pin2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pin3`
--
ALTER TABLE `pin3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `portal_request`
--
ALTER TABLE `portal_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `principal`
--
ALTER TABLE `principal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `results1`
--
ALTER TABLE `results1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sss_subject_number`
--
ALTER TABLE `sss_subject_number`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teachers_classes`
--
ALTER TABLE `teachers_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unused_pins`
--
ALTER TABLE `unused_pins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `used_pins`
--
ALTER TABLE `used_pins`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
