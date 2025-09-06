-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 04:24 PM
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
-- Database: `opd_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Rohit kumar', 'rohit123', 'rohit@gmail.com', '$2y$10$KZxoKvHwgwzN1ID0bsbGWe14/fwM1TlMyucTzJK3ZVojWTmMXyRae', '2025-03-19 15:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `license_no` varchar(50) DEFAULT NULL,
  `disease_type` varchar(255) NOT NULL,
  `degree` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `password`, `phone`, `specialization`, `license_no`, `disease_type`, `degree`) VALUES
(13, 'Elvishy', 'elvis@gmail.com', '', '02267169614', 'ennt', 'EL07786', 'ENT', '0'),
(14, 'ALEXA', 'wojag76237@birige.com', '$2y$10$J9XsP34kgz7oH3XbUv5fJeWI5LrJGm.Ruy0I.Foe3Zee66DqddKny', '1010101010', 'fever', 'ALE1121', 'FEVER', 'MD'),
(15, 'rohit123', 'rohit@gmail.com', '$2y$10$Cyn/CM99liuXcxanXFvxse4ITo5zcntYYSVx/auGWDYQYn.OmMcDS', '0750650000', NULL, 'aksks', 'Bone', '0'),
(16, 'sun', 'sun@gmail.com', '$2y$10$Y8euwXroIhydTiY6kcck9es5MqnsyQnWm7en362hiYA2aQx7jGxVy', '258794613', NULL, 'LASDEd', 'FEVER', '0');

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `report_name` varchar(100) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_reports`
--

INSERT INTO `lab_reports` (`id`, `patient_id`, `report_name`, `report_date`, `file_path`, `username`) VALUES
(20, NULL, 'maleria', '2025-03-19', '/OPD_Project/reports/uploads/example_blood_test.pdf', 'SAI861120325'),
(21, NULL, 'helo', '2025-03-19', '/OPD_Project/reports/uploads/Chp1.pdf', 'SAI861120325'),
(22, NULL, 'nice reprot', '2025-03-20', '/OPD_Project/reports/uploads/5_6338879839176495925 (1).pdf', 'SAI861120325'),
(23, NULL, 'maleria', '2025-03-21', '/OPD_Project/reports/uploads/TYadmsm_form.pdf', 'SAI861120325'),
(24, NULL, 'night', '2025-03-21', '/OPD_Project/reports/uploads/college_admisn_form.pdf', 'SAI861120325'),
(25, NULL, 'nighttt', '2025-03-21', '/OPD_Project/reports/uploads/college_admisn_form.pdf', 'SAI861120325'),
(26, NULL, 'www', '2025-04-21', '/OPD_Project/reports/uploads/RUDAYNAH SHAIKH (1).pptx', '5'),
(27, NULL, 'www', '2025-04-21', '/OPD_Project/reports/uploads/RUDAYNAH SHAIKH (2).pptx', 'SAI861120325');

-- --------------------------------------------------------

--
-- Table structure for table `old_prescption_table`
--

CREATE TABLE `old_prescption_table` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `doctor_name` varchar(255) NOT NULL,
  `reference_doctor` varchar(100) DEFAULT NULL,
  `reference_department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `old_prescption_table`
--

INSERT INTO `old_prescption_table` (`id`, `username`, `disease`, `medicine`, `created_at`, `doctor_name`, `reference_doctor`, `reference_department`) VALUES
(1, 'ROH978020325', 'you have ear problem ', 'abc drop 2 drop 1-0-1 ', '2025-03-07 15:33:48', 'mr.x', 'Rk', 'Skin'),
(2, 'ROH978020325', 'ear wax', 'HCl drop 1-0-1', '2025-03-07 16:26:36', 'mr.hii', NULL, NULL),
(3, 'ROH978020325', 'odssda', 'laso', '2025-03-08 16:00:15', 'HRX', NULL, NULL),
(4, '', '', '', '2025-03-08 16:00:15', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `operation_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `operation_date` date DEFAULT NULL,
  `operation_type` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`operation_id`, `patient_id`, `doctor_id`, `operation_date`, `operation_type`, `notes`, `doctor_name`, `patient_name`) VALUES
(20, 5, 14, '2025-03-25', 'mind', 'add poer full mid', 'ALEXA', 'sairam ravirala'),
(21, 4, 14, '2025-04-15', 'jj', 'aa', 'ALEXA', 'nano ugi'),
(22, 5, 14, '2025-04-16', 'sadas', 'ds', 'ALEXA', 'sairam ravirala');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `phone` varchar(10) NOT NULL CHECK (octet_length(`phone`) = 10),
  `aadhaar` bigint(20) NOT NULL CHECK (octet_length(`aadhaar`) = 12),
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` enum('Ghatkopar','Sion','Dharavi') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `fname`, `lname`, `dob`, `gender`, `phone`, `aadhaar`, `email`, `username`, `password`, `address`, `created_at`) VALUES
(3, 'omkar', 'commerce', '2025-03-06', 'Male', '0226716961', 131313131313, '', 'OMK393120325', '$2y$10$v864ZX7JxFzYjxnNoPpQ0Othwp7OrXkpCzegkwGdUbLdQUpIqhVaa', 'Sion', '2025-03-12 05:52:05'),
(4, 'nano', 'ugi', '2025-03-07', 'Female', '0000000001', 191919191919, '', 'NAN375120325', '$2y$10$Bq9ksNTCCYIej6ZBtZMVgeNaiKeHffjxnSqMAjVeH0ARviJNQUUEu', 'Dharavi', '2025-03-12 05:55:33'),
(5, 'sairam', 'ravirala', '2004-03-26', 'Male', '9900472025', 333333333333, 'sairam@gmail.com', 'SAI861120325', '$2y$10$Z9a1RdXFn41kB655qkBfSe/R6Qx1hyfRMwjcJ1piS0cStUBLHO796', 'Sion', '2025-03-12 06:02:14'),
(7, 'opd', 'sun', '2025-04-16', 'Female', '9125879461', 580000000001, 'sun@gmail.com', 'OPD962210425', '$2y$10$8m6yqRYPhToN/BDqRJviiuR4Eh.E7VdTj3cBE2kQaxe/8i38K1pBW', 'Ghatkopar', '2025-04-21 06:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `consultation_notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `patient_id`, `doctor_id`, `disease`, `consultation_notes`, `created_at`) VALUES
(1, 3, 13, 'asd', 'asds', '2025-03-12 05:53:37'),
(2, 4, 14, 'fevr', 'tker regular hot water', '2025-03-12 05:59:06'),
(3, 5, 14, 'fevre', 'roj hot pani', '2025-03-12 06:04:20'),
(4, 5, 14, 'fever', 'take hot water', '2025-03-12 09:29:54'),
(5, 5, 14, 'chaolastrol ', 'sad', '2025-03-22 00:40:31'),
(6, 5, 14, 'flue', 'asd', '2025-04-22 09:21:16'),
(7, 4, 14, 'fever', 'take hot water', '2025-04-22 09:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicines`
--

CREATE TABLE `prescription_medicines` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_medicines`
--

INSERT INTO `prescription_medicines` (`id`, `prescription_id`, `medicine_name`, `dosage`, `duration`) VALUES
(1, 1, 'ttg', '2', '2'),
(2, 2, 'parcitamol', '2', '2'),
(3, 3, 'parcitamol', '1', '3'),
(4, 4, 'parcitamol', '2', '2'),
(5, 5, 'antoma', '3', '3'),
(6, 6, 'sasdds', '2', '3'),
(7, 6, 'asdasd', '2', '2'),
(8, 7, 'zibi', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referral_id` int(11) NOT NULL,
  `patient_username` varchar(100) DEFAULT NULL,
  `referring_doctor_id` int(11) DEFAULT NULL,
  `referred_doctor_id` int(11) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `referral_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renew_case`
--

CREATE TABLE `renew_case` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `visit_date` date NOT NULL,
  `reason` text NOT NULL,
  `disease_type` varchar(255) NOT NULL,
  `opd_room` varchar(50) NOT NULL,
  `payment_amount` int(11) DEFAULT NULL,
  `payment_validity` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `token_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `renew_case`
--

INSERT INTO `renew_case` (`id`, `patient_name`, `visit_date`, `reason`, `disease_type`, `opd_room`, `payment_amount`, `payment_validity`, `username`, `payment_id`, `payment_status`, `transaction_id`, `token_number`) VALUES
(24, 'omkar commerce', '2025-03-12', 'dqdkjjd', 'ENT', '21', 10, 7, 'OMK393120325', NULL, NULL, '', NULL),
(25, 'omkar commerce', '2025-03-12', 'asda', 'SKIN', '20', 10, 7, 'OMK393120325', NULL, NULL, '', NULL),
(26, 'nano ugi', '2025-03-12', 'ksodff', 'FEVER', '1', 10, 7, 'NAN375120325', NULL, NULL, '', NULL),
(43, 'sairam ravirala', '2025-04-22', 'new ', 'FEVER', '1', 10, 7, NULL, NULL, NULL, 'TXN_6807a17532213', 1),
(44, 'sairam ravirala', '2025-04-22', 'new 2', 'FEVER', '1', 10, 7, NULL, NULL, NULL, 'TXN_6807a188ca9be', 2),
(45, 'sairam ravirala', '2025-04-22', 'jjj', 'FEVER', '1', 10, 7, NULL, NULL, NULL, 'TXN_6807a2377989f', 3),
(46, 'sairam ravirala', '2025-04-22', 'sdsd', 'SKIN', '20', 10, 7, NULL, NULL, NULL, 'TXN_6807a3512b3e4', 4),
(47, 'sairam ravirala', '2025-04-22', 'asas', 'SKIN', '20', 10, 7, NULL, NULL, NULL, 'TXN_6807a43a3ac0c', 2),
(48, 'sairam ravirala', '2025-04-22', 'kka', 'Teeth', '21', 10, 7, NULL, NULL, NULL, 'TXN_6807a44b1ba08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `token_number` int(11) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `disease_type` varchar(100) DEFAULT NULL,
  `opd_room` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(10) DEFAULT NULL,
  `payment_validity` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `transaction_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `username`, `patient_name`, `visit_date`, `token_number`, `reason`, `disease_type`, `opd_room`, `payment_amount`, `payment_validity`, `created_at`, `transaction_id`) VALUES
(5, 'SAI861120325', 'sairam ravirala', '2025-04-22', 1, 'new ', 'FEVER', '1', '10', '7 days', '2025-04-22 14:02:29', 'TXN_6807a17532213'),
(6, 'SAI861120325', 'sairam ravirala', '2025-04-22', 2, 'new 2', 'FEVER', '1', '10', '7 days', '2025-04-22 14:02:48', 'TXN_6807a188ca9be'),
(7, 'SAI861120325', 'sairam ravirala', '2025-04-22', 3, 'jjj', 'FEVER', '1', '10', '7 days', '2025-04-22 14:05:43', 'TXN_6807a2377989f'),
(8, 'SAI861120325', 'sairam ravirala', '2025-04-22', 4, 'sdsd', 'SKIN', '20', '10', '7 days', '2025-04-22 14:10:25', 'TXN_6807a3512b3e4'),
(9, 'SAI861120325', 'sairam ravirala', '2025-04-22', 2, 'asas', 'SKIN', '20', '10', '7 days', '2025-04-22 14:14:18', 'TXN_6807a43a3ac0c'),
(10, 'SAI861120325', 'sairam ravirala', '2025-04-22', 1, 'kka', 'Teeth', '21', '10', '7 days', '2025-04-22 14:14:35', 'TXN_6807a44b1ba08');

-- --------------------------------------------------------

--
-- Table structure for table `website_visits`
--

CREATE TABLE `website_visits` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `page_visited` varchar(255) DEFAULT NULL,
  `visit_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website_visits`
--

INSERT INTO `website_visits` (`id`, `ip_address`, `page_visited`, `visit_time`) VALUES
(21, '::1', '/newOPD_Project_v/', '2025-04-22 14:27:15'),
(22, '::1', '/newOPD_Project_v/', '2025-04-22 14:44:26'),
(23, '::1', '/newOPD_Project_v/', '2025-04-22 14:51:31'),
(24, '::1', '/newOPD_Project_v/index.php', '2025-04-22 14:55:57'),
(25, '::1', '/newOPD_Project_v/index.php', '2025-04-22 14:56:33'),
(26, '::1', '/newOPD_Project_v/', '2025-04-22 15:12:27'),
(27, '::1', '/newOPD_Project_v/', '2025-04-22 15:58:50'),
(28, '::1', '/newOPD_Project_v/', '2025-04-22 19:05:32'),
(29, '::1', '/newOPD_Project_v/', '2025-04-22 19:52:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `license_no` (`license_no`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_prescption_table`
--
ALTER TABLE `old_prescption_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`operation_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `aadhaar` (`aadhaar`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_id` (`prescription_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referral_id`),
  ADD KEY `referring_doctor_id` (`referring_doctor_id`),
  ADD KEY `referred_doctor_id` (`referred_doctor_id`);

--
-- Indexes for table `renew_case`
--
ALTER TABLE `renew_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_visits`
--
ALTER TABLE `website_visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `old_prescption_table`
--
ALTER TABLE `old_prescption_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `operation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `renew_case`
--
ALTER TABLE `renew_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `website_visits`
--
ALTER TABLE `website_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD CONSTRAINT `prescription_medicines_ibfk_1` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`referring_doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`referred_doctor_id`) REFERENCES `doctors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
