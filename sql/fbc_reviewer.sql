-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 03:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fbc_reviewer`
--

-- --------------------------------------------------------

--
-- Table structure for table `examproper`
--

CREATE TABLE `examproper` (
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `passing_rate` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `access_code` text NOT NULL,
  `test_desc` text NOT NULL,
  `category_exam` text NOT NULL,
  `date_time` datetime NOT NULL,
  `date_expired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examproper`
--

INSERT INTO `examproper` (`test_id`, `user_id`, `total_questions`, `passing_rate`, `time_limit`, `access_code`, `test_desc`, `category_exam`, `date_time`, `date_expired`) VALUES
(1, 62, 1, 100, 60, 'U87MRX', 'Architect', 'Mathematics, Surveying and Transportation Engineering', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 25, 1, 100, 60, '6EUGPC', 'Architect', 'Mathematics, Surveying and Transportation Engineering', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `q_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_desc` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_answer` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_questions`
--

CREATE TABLE `pre_questions` (
  `q_id` int(10) NOT NULL,
  `test_id` int(10) NOT NULL,
  `question_desc` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_answer` text NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre_questions`
--

INSERT INTO `pre_questions` (`q_id`, `test_id`, `question_desc`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `user_id`) VALUES
(0, 0, 'qw', 'qwe', 's', 'qwe', 'qe', 'qwe', 25),
(0, 3, 'wqe', 'qwe', 'wqe', 'qwe', 'qwe', 'qwe', 25);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `question_desc` text NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `correct_answer` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `attachment_file` varchar(90) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `subject` varchar(90) NOT NULL,
  `Course` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `test_id`, `question_desc`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `user_id`, `attachment_file`, `difficulty_id`, `subject`, `Course`) VALUES
(250, 0, 'try', 'a', 's', 'f', 'x', 'f', 25, 'files/', 1, 'Mathematics, Surveying and Transportation Engineering', 'Architect'),
(252, 0, 'try', '3', 's', 'a', 'w', '3', 63, 'files/', 1, 'Geotech', 'Architect'),
(253, 0, 'ret', 'e', 's', 'w', 's', 'e', 25, 'files/', 1, 'Electronics Engineering', 'Architect'),
(254, 0, 'st3', 'e', 's', 'aw', 'w', 'e', 25, 'files/', 1, 'Electronics Engineering', 'Architect'),
(255, 0, 'treter', '4', '5', 'r', 'fd', '4', 62, 'files/', 1, 'Mathematics, Surveying and Transportation Engineering', 'Architect');

-- --------------------------------------------------------

--
-- Table structure for table `studentdata_exams`
--

CREATE TABLE `studentdata_exams` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `access_code` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdata_exams`
--

INSERT INTO `studentdata_exams` (`id`, `test_id`, `q_id`, `answer`, `status`, `student_id`, `access_code`) VALUES
(1, 2, 250, 'a', 0, 62, '6EUGPC');

-- --------------------------------------------------------

--
-- Table structure for table `studentdata_tests`
--

CREATE TABLE `studentdata_tests` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `status` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdata_tests`
--

INSERT INTO `studentdata_tests` (`id`, `test_id`, `q_id`, `answer`, `status`, `student_id`) VALUES
(31, 167, 250, 'a', 1, 62),
(32, 167, 251, 'g', 1, 62),
(33, 168, 252, '3', 1, 62),
(34, 168, 252, '3', 1, 62),
(35, 168, 252, 's', 0, 62),
(36, 168, 252, 'w', 0, 62),
(37, 167, 250, 'x', 0, 62),
(38, 167, 251, 's', 0, 62),
(39, 169, 253, 's', 0, 62),
(40, 169, 254, 'e', 1, 62),
(41, 167, 250, 'a', 0, 62),
(42, 167, 250, 's', 0, 62),
(43, 168, 252, '3', 1, 62),
(44, 167, 250, 'a', 0, 62),
(45, 168, 252, '3', 1, 62);

-- --------------------------------------------------------

--
-- Table structure for table `studentresult_exams`
--

CREATE TABLE `studentresult_exams` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_taken` text NOT NULL,
  `access_code` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentresult_exams`
--

INSERT INTO `studentresult_exams` (`id`, `student_id`, `test_id`, `score`, `percentage`, `remarks`, `date_taken`, `access_code`) VALUES
(221, 62, 167, 2, 100, 'PASSED', 'Sep, 03 2025', ''),
(222, 62, 168, 1, 100, 'PASSED', 'Sep, 03 2025', ''),
(223, 62, 168, 1, 100, 'PASSED', 'Sep, 03 2025', ''),
(224, 62, 168, 1, 100, 'PASSED', 'Sep, 03 2025', ''),
(225, 62, 168, 1, 100, 'PASSED', 'Sep, 03 2025', ''),
(226, 62, 167, 2, 100, 'PASSED', 'Sep, 03 2025', ''),
(227, 62, 169, 1, 50, 'FAILED', 'Sep, 03 2025', ''),
(228, 62, 2, 0, 0, 'FAILED', 'Sep, 04 2025', ''),
(229, 62, 167, 1, 50, 'FAILED', 'Sep, 04 2025', ''),
(230, 62, 167, 1, 50, 'FAILED', 'Sep, 04 2025', ''),
(231, 62, 168, 1, 100, 'PASSED', 'Sep, 04 2025', ''),
(232, 62, 167, 1, 50, 'FAILED', 'Sep, 05 2025', ''),
(233, 62, 168, 1, 100, 'PASSED', 'Sep, 05 2025', '');

-- --------------------------------------------------------

--
-- Table structure for table `studentresult_test`
--

CREATE TABLE `studentresult_test` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_taken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblexamquestion`
--

CREATE TABLE `tblexamquestion` (
  `eq_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `access_code` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexamquestion`
--

INSERT INTO `tblexamquestion` (`eq_id`, `q_id`, `access_code`) VALUES
(1, 255, 'U87MRX'),
(2, 250, '6EUGPC');

-- --------------------------------------------------------

--
-- Table structure for table `tblprequestion`
--

CREATE TABLE `tblprequestion` (
  `pq_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprequestion`
--

INSERT INTO `tblprequestion` (`pq_id`, `q_id`, `test_id`) VALUES
(61, 252, 168),
(62, 254, 169),
(63, 253, 169);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `passing_rate` int(11) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `test_desc` text NOT NULL,
  `test_subject` text NOT NULL,
  `access_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`test_id`, `user_id`, `difficulty_id`, `total_questions`, `passing_rate`, `time_limit`, `test_desc`, `test_subject`, `access_code`) VALUES
(167, 25, 1, 1, 100, 60, 'Architect', 'Architect', ''),
(168, 63, 1, 1, 100, 5, 'Architect', 'Geotech', ''),
(169, 25, 1, 2, 100, 5, 'Architect', 'Electronics Engineering', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `user_type` text NOT NULL,
  `course` text NOT NULL,
  `year` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `usertype_id`, `fname`, `mname`, `lname`, `username`, `password`, `user_type`, `course`, `year`) VALUES
(25, 1, 'admin', 'admin', 'admin', 'admin', 'admin', 'Admin', '', ''),
(62, 3, 'Mariglen', 'G.', 'Dabu', 'Mariglen', '123', 'Student', 'Architect', '1ST SEMESTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examproper`
--
ALTER TABLE `examproper`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `studentdata_exams`
--
ALTER TABLE `studentdata_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdata_tests`
--
ALTER TABLE `studentdata_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentresult_exams`
--
ALTER TABLE `studentresult_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentresult_test`
--
ALTER TABLE `studentresult_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexamquestion`
--
ALTER TABLE `tblexamquestion`
  ADD PRIMARY KEY (`eq_id`);

--
-- Indexes for table `tblprequestion`
--
ALTER TABLE `tblprequestion`
  ADD PRIMARY KEY (`pq_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examproper`
--
ALTER TABLE `examproper`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `studentdata_exams`
--
ALTER TABLE `studentdata_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentdata_tests`
--
ALTER TABLE `studentdata_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `studentresult_exams`
--
ALTER TABLE `studentresult_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `studentresult_test`
--
ALTER TABLE `studentresult_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexamquestion`
--
ALTER TABLE `tblexamquestion`
  MODIFY `eq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblprequestion`
--
ALTER TABLE `tblprequestion`
  MODIFY `pq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
