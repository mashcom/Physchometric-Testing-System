-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 02:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pts`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `incorrect` int(11) NOT NULL,
  `skipped` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `test_id`, `correct`, `incorrect`, `skipped`, `created_at`, `updated_at`) VALUES
(8, 3, 1, 1, 6, 1, '2017-08-20 09:19:56', '2017-08-20 07:19:56'),
(9, 4, 1, 2, 7, 0, '2017-08-20 09:19:56', '2017-08-20 07:19:56'),
(10, 4, 2, 0, 1, 0, '2017-08-12 11:27:57', '2017-08-12 11:27:57'),
(11, 1, 1, 1, 6, 2, '2017-08-20 09:19:55', '2017-08-20 07:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `test_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(71, 3, 1, 1, 'skipped', '2017-08-12 10:12:36', '2017-08-12 10:12:36'),
(72, 3, 1, 3, 'C', '2017-08-12 10:12:58', '2017-08-12 10:12:58'),
(73, 3, 1, 4, 'E', '2017-08-12 10:13:00', '2017-08-12 10:13:00'),
(74, 3, 1, 9, 'D', '2017-08-12 10:13:01', '2017-08-12 10:13:01'),
(75, 3, 1, 10, 'E', '2017-08-12 10:13:02', '2017-08-12 10:13:02'),
(76, 3, 1, 11, 'C', '2017-08-12 10:13:04', '2017-08-12 10:13:04'),
(77, 3, 1, 12, 'E', '2017-08-12 10:13:05', '2017-08-12 10:13:05'),
(78, 3, 1, 30, 'C', '2017-08-12 10:13:09', '2017-08-12 10:13:09'),
(87, 4, 1, 1, 'B', '2017-08-12 10:24:15', '2017-08-12 10:24:15'),
(89, 4, 1, 2, 'C', '2017-08-12 10:24:31', '2017-08-12 10:24:31'),
(90, 4, 1, 3, 'E', '2017-08-12 10:24:34', '2017-08-12 10:24:34'),
(92, 4, 1, 4, 'D', '2017-08-12 10:24:38', '2017-08-12 10:24:38'),
(93, 4, 1, 9, 'D', '2017-08-12 10:24:42', '2017-08-12 10:24:42'),
(94, 4, 1, 10, 'E', '2017-08-12 10:24:44', '2017-08-12 10:24:44'),
(95, 4, 1, 11, 'B', '2017-08-12 10:24:46', '2017-08-12 10:24:46'),
(96, 4, 1, 12, 'C', '2017-08-12 10:24:47', '2017-08-12 10:24:47'),
(97, 4, 1, 30, 'C', '2017-08-12 10:24:50', '2017-08-12 10:24:50'),
(98, 4, 2, 25, 'B', '2017-08-12 11:27:39', '2017-08-12 11:27:39'),
(108, 1, 1, 1, 'skipped', '2017-08-20 07:15:18', '2017-08-20 07:15:18'),
(109, 1, 1, 2, 'skipped', '2017-08-20 07:19:16', '2017-08-20 07:19:16'),
(110, 1, 1, 3, 'D', '2017-08-20 07:19:19', '2017-08-20 07:19:19'),
(111, 1, 1, 4, 'C', '2017-08-20 07:19:22', '2017-08-20 07:19:22'),
(112, 1, 1, 9, 'D', '2017-08-20 07:19:26', '2017-08-20 07:19:26'),
(113, 1, 1, 10, 'C', '2017-08-20 07:19:32', '2017-08-20 07:19:32'),
(114, 1, 1, 11, 'A', '2017-08-20 07:19:33', '2017-08-20 07:19:33'),
(115, 1, 1, 12, 'C', '2017-08-20 07:19:35', '2017-08-20 07:19:35'),
(116, 1, 1, 30, 'B', '2017-08-20 07:19:39', '2017-08-20 07:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` int(11) DEFAULT '30'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `description`, `created_at`, `updated_at`, `duration`) VALUES
(1, 'Numeric Reasoning Test', 'The intention of this test is to provide a glimpse into the nature of a very popular numerical test format \r\nthat is based on graph, chartand table interpretation. In these tests, as well as in our practice packs, \r\nthe number of data sets can vary to include one to three graphs and/or tables for each question, and \r\nup to 4 questions per each data set.', '2017-08-06 12:39:41', '2017-08-06 12:39:41', 30),
(2, 'Verbal Critical Reasoning', '', '2017-08-06 12:39:41', '2017-08-06 12:39:41', 30),
(12, 'Computer Skills Test', '', '2017-08-07 16:16:30', '2017-08-07 16:16:30', 30),
(13, 'Mashcom Testor', '', '2017-08-09 06:16:49', '2017-08-09 06:16:49', 30),
(14, 'Logical Reasoning', 'In this series the 1st, 3rd and 5th object consist of a square that has 4 lines moving \r\ntowards each other creating eventually an X. In the 2nd and 4th square the lines \r\nare moving towards each other as well, expected to form a diamond in the 6th \r\nmissing object.', '2017-08-11 09:58:25', '2017-08-11 09:58:25', 30),
(15, 'Tiko Modise Football Test', 'Can you score the penalty neh!', '2017-08-11 11:01:10', '2017-08-11 11:01:10', 30),
(16, 'Time Mgt Test', '', '2017-08-16 10:56:16', '2017-08-16 10:56:16', 60),
(17, 'IQ Test', '', '2017-08-16 11:02:00', '2017-08-16 11:02:00', 90);

-- --------------------------------------------------------

--
-- Table structure for table `test_questions`
--

CREATE TABLE IF NOT EXISTS `test_questions` (
`id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `answers` text NOT NULL,
  `illustration` text NOT NULL,
  `correct_answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_questions`
--

INSERT INTO `test_questions` (`id`, `test_id`, `content`, `answers`, `illustration`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mass immigration leading to multicultural societ ies has contributed to \r\nincreased racism in Western Europe.', '{"A":"true","B":"false","C":"cant say"}', '', 'B', NULL, NULL),
(2, 1, 'Sea delivery per car (either SUV or minivan) costs $25. What were the sea \r\ndelivery costs for large family cars in 2008? ', '{"A":"19 million","B":"42.5 million","C":"45.5 million","D":"47.5 million","E":"Cannot say"}', '', 'D', NULL, NULL),
(3, 1, 'In 2009, there were 667,284 unemployed in Netherlan ds, whose population \r\nwas 27.53% of the UK for that year. With a fixed annual population increase of \r\n0.639%, approximately how many unemployed are in th e UK in 2011?', '{"A":"19 million","B":"42.5 million","C":"45.5 million","D":"47.5 million","E":"4,296,108"}', '', 'E', NULL, NULL),
(4, 1, 'i9i9i9i9i9', '{"A":"99","B":"9999","C":"99999999","D":"9999999999999999","E":"9999999999999999999999999"}', '', 'B', '2017-08-07 14:49:02', '2017-08-07 14:49:02'),
(6, 12, 'what is the best hard drive', '{"A":"SSD","B":"Analog","C":"Digital","D":"Mechanical","E":"None of the above"}', '', 'A', '2017-08-07 16:19:34', '2017-08-07 16:19:34'),
(7, 12, 'sjhdjdhjshdjh', '{"A":"jhsdjhadjhj","B":"hjdshjdhsj","C":"hjdshsjdhsj","D":"hjdhsjdhsjh","E":"jdshjsdhsjhdsj"}', '', 'E', '2017-08-08 05:15:36', '2017-08-08 05:15:36'),
(8, 12, '', '{"A":"","B":"","C":"","D":"","E":""}', '', 'A', '2017-08-08 05:15:37', '2017-08-08 05:15:37'),
(9, 1, ' How many grams of dietary fibre should a person who follows a 2000 calorie diet consume if he already ate an entire container  of product x today?', '{"A":"22","B":"13","C":"18","D":"12","E":"56"}', '', 'B', '2017-08-08 09:04:51', '2017-08-08 09:04:51'),
(10, 1, 'In which of the following years did over 2/3 of  the students who took the exam \r\nnot pass it? ', '{"A":"2006","B":"2007","C":"2008","D":"2009","E":"2010"}', '', 'C', '2017-08-08 09:05:22', '2017-08-08 09:05:22'),
(11, 1, 'It is known that a quarter of the students who p assed the exam in 2007, passed \r\nit at the first trial. Assuming each exam has two t rials, what percent age of all the \r\nstudents who took the exam that year passed it in t he second trial?', '{"A":"12","B":"15","C":"10","D":"43","E":"20"}', '', 'C', '2017-08-08 09:05:54', '2017-08-08 09:05:54'),
(12, 1, 'If the number of Chinese Insurance stocks represent ed 3.5% of all Insurance \r\nsecurities, approximately how many Insurance bonds  were Chinese?', '{"A":"1000000","B":"20008909","C":"67263761","D":"5000200","E":"12000000"}', '', 'D', '2017-08-08 09:06:51', '2017-08-08 09:06:51'),
(25, 2, 'Approximately, what is the percentage growth in final energy consumption for \r\nthe domestic sector in million tonnes of oil equiva lent?', '{"A":"jdshjas","B":"kjksdajks","C":"18","D":"Mechanical","E":"None of the above"}', 'illustration_.jpg', 'C', '2017-08-09 06:07:03', '2017-08-09 06:07:03'),
(27, 13, 'Approximately, what is the percentage growth in final energy consumption for \r\nthe domestic sector in million tonnes of oil equivalent? ', '{"A":"2","B":"2.08","C":"20.88","D":"23.81","E":"18.96"}', 'illustration_b28dd7311647eea7aa156021a45ac12f171b2fa5c765cc9bc3ce3515887b6a09f2def86d0df07319.PNG', 'E', '2017-08-09 08:04:53', '2017-08-09 08:04:53'),
(28, 13, 'If the value of the company’s cash flow from operat ions decreased by 2.7% in \r\n2012, and 63% of their total cash flow was from ope rations, what would be the \r\ntotal balance of the company, in millions? ', '{"A":"12","B":"9999","C":"18","D":"12","E":"46.33"}', 'illustration_12e763552d7fc4395775c958b0855bcf50a43f26ed44907ae7d716bbcd25a5136abd37ea616ce01b.PNG', 'E', '2017-08-09 08:19:01', '2017-08-09 08:19:01'),
(29, 14, 'Each of the objects in the series consists of triangles and circles. Each object has \r\neither 1 triangle and 2 circles or 2 triangles and 1 circle –and these alternate. In \r\naddition whenever there are 2 triangles or circles in an object one of them is black \r\nand the other white. Since the 4th object consists of 2 circles and a triangle the \r\nmissing object in the series should consist of 2 triangles (one black and one white) \r\nand a circle (options 2 and 4 only). Further, the black shape in each object moves \r\nin clockwise direction between objects therefore the black triangle in the missing \r\nobject should be in the bottom spot. ', '{"A":"99","B":"9999","C":"99999999","D":"9999999999999999","E":"9999999999999999999999999"}', 'illustration_d1163c46e6658741739e8ca62536c4125be1fefacda93dda2118437f548982751e7fd9daf0239f84.PNG', 'C', '2017-08-11 10:25:54', '2017-08-11 10:25:54'),
(30, 1, 'wwww', '{"A":"ww","B":"wwww","C":"wwwww","D":"wwwwww","E":"wwwwwwww"}', 'illustration_4a431e2d8b42c97ec05c85b2897691f9e661236d9a2c7018dce053cb4a345d75a1befa691276bca5.PNG', 'D', '2017-08-11 10:55:10', '2017-08-11 10:55:10'),
(31, 15, 'Gogo muloyi will stop the ball', '{"A":"yes","B":"no","C":"dont know","D":"she will die","E":"tiku will miss"}', 'illustration_9a1646a6221530ad0b696beafc67c93393229ca51b0134797b2f26be48c7a93d427d9e23f4602938.png', 'A', '2017-08-11 11:06:24', '2017-08-11 11:06:24'),
(32, 18, 'rds', '{"A":"dsds","B":"assa","C":"qq","D":"sa","E":"sa"}', 'illustration_02abf3ea6343927a18384937758f6e4f729e754335cfe9d3987caaeab3bf9c14134eef52ad359484.JPG', 'D', '2017-08-16 11:03:33', '2017-08-16 11:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `timers`
--

CREATE TABLE IF NOT EXISTS `timers` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `expiry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timers`
--

INSERT INTO `timers` (`id`, `user_id`, `test_id`, `expiry_time`, `created_at`, `updated_at`) VALUES
(10, 1, 1, '2017-08-20 07:45:15', '2017-08-16 10:27:52', '2017-08-20 07:15:15'),
(11, 1, 14, '2017-08-16 11:11:54', '2017-08-16 10:41:54', '2017-08-16 10:41:54'),
(12, 1, 15, '2017-08-18 08:23:52', '2017-08-16 10:42:11', '2017-08-18 07:53:52'),
(13, 1, 16, '2017-08-16 11:27:01', '2017-08-16 10:57:01', '2017-08-16 10:57:01'),
(14, 1, 12, '2017-08-18 08:24:33', '2017-08-18 07:54:33', '2017-08-18 07:54:33'),
(15, 4, 13, '2017-08-20 07:51:05', '2017-08-20 07:21:05', '2017-08-20 07:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Blessing Mashoko', 'bmashcom@hotmail.com', '$2y$10$plOMc82pQico2Org0/8mtuNV2/5KizO.S9HkvtVPBZfcd/XSjaDyK', 1, 'THPSyrvogIyPdTOvog0BrGDB71Luosoe4qI0M039EA92nys7fmm4TPPxKmdL', '2017-08-03 07:59:57', '2017-08-20 07:20:13'),
(2, 'Mashcom Mashoko', 'bmashcom@gmail.com', '$2y$10$zA.CzvolObcxXLgLx.JCNOh8LpQiHkMJckeP.KfKx99iwbHkaBKBK', 0, 'hdYKH6LixaNGGWT2Zb4BALWfHoxwUkv7ss6hDEIBf4vvkWVXH0x4Z1qWNCB3', '2017-08-06 09:13:42', '2017-08-12 09:41:47'),
(3, 'Noel Shava', 'noelshava@gmail.com', '$2y$10$Pl8XAufzCfBhpKbI2qUtG.GQWRTkRJNdsdeuD5c6NDUVzmo/aMzcu', 0, '3BsthWRqz55t2dNmVa2YrzJzxZ2pVa7QYWKbjp1gP0gbBlEfhJXSZW3xq3Ah', '2017-08-12 09:35:43', '2017-08-12 10:21:55'),
(4, 'Hulisani Ndou', 'hulisani@gmail.com', '$2y$10$hUYsVwrWlp90ht9W9/irdONVY0MaH1S8HevfKZ2rOCVXLk/F/g8fy', 0, '1YqlpzIuZLG9qcnkXLbCGD5Tz28xGQXwWfimvCUY0G0AmqxNl1UpFg8xZ3Ig', '2017-08-12 10:22:41', '2017-08-12 11:30:11'),
(5, 'Tinotenda Moyo', 'tino@gmail.com', '$2y$10$KLs5vy7ajYBue93mKBkWfOaySZAQ2KKabH2cXaYh7QRscGPFdLOTa', 0, NULL, '2017-08-16 04:31:22', '2017-08-16 04:31:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_questions`
--
ALTER TABLE `test_questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timers`
--
ALTER TABLE `timers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `test_questions`
--
ALTER TABLE `test_questions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `timers`
--
ALTER TABLE `timers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
