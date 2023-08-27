-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 07:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matka_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`, `email`, `status`) VALUES
(1, 'admin', '$2y$10$yp6v7MeBgsJhTm3dUUk2uus8oQLW/PhpaFPcqV6gHBth/bxI2ixny', '1', 'piyushupadhyay830gamil.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `apk_manager`
--

CREATE TABLE `apk_manager` (
  `id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apk_manager`
--

INSERT INTO `apk_manager` (`id`, `created_at`) VALUES
(1, '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `app_image`
--

CREATE TABLE `app_image` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_deposite`
--

CREATE TABLE `auto_deposite` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auto_deposite`
--

INSERT INTO `auto_deposite` (`id`, `username`, `contact_no`, `amount`, `date`) VALUES
(1, 'piyush', '6355051444', '100000', '2023-08-23 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `bid_gali`
--

CREATE TABLE `bid_gali` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` text NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `left_digit` varchar(50) NOT NULL,
  `right_digit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bid_history`
--

CREATE TABLE `bid_history` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `panna` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bid_revert`
--

CREATE TABLE `bid_revert` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `game_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bid_revert`
--

INSERT INTO `bid_revert` (`id`, `username`, `date`, `game_type`) VALUES
(1, 'piyush', '2023-08-10', 'Single Digit');

-- --------------------------------------------------------

--
-- Table structure for table `declare_result`
--

CREATE TABLE `declare_result` (
  `S.No` int(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `open_result` varchar(50) NOT NULL,
  `close_result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `declare_result`
--

INSERT INTO `declare_result` (`S.No`, `game_name`, `open_time`, `close_time`, `open_result`, `close_result`) VALUES
(1, 'ludo', '00:00:00', '00:00:00', '290-1', '7-467');

-- --------------------------------------------------------

--
-- Table structure for table `fund_request`
--

CREATE TABLE `fund_request` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_request`
--

INSERT INTO `fund_request` (`id`, `username`, `contact_no`, `amount`, `date`) VALUES
(1, 'piyush', '6355051444', '100000', '2023-08-23 13:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `game_list`
--

CREATE TABLE `game_list` (
  `S.No` int(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `market_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_list`
--

INSERT INTO `game_list` (`S.No`, `game_name`, `open_time`, `close_time`, `status`, `market_status`) VALUES
(1, 'ludo', '00:00:00', '00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_list`
--

CREATE TABLE `notification_list` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_list`
--

INSERT INTO `notification_list` (`id`, `username`, `title`, `content`, `date`) VALUES
(1, 'all', 'RAJDHANI DAY', 'open330-6', '2023-08-23 14:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `result_history`
--

CREATE TABLE `result_history` (
  `id` int(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `result_date` date NOT NULL,
  `number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_list`
--

CREATE TABLE `slider_list` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `title` int(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `starline_prediction`
--

CREATE TABLE `starline_prediction` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `panna` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_point`
--

CREATE TABLE `transfer_point` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sender_name` varchar(50) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_point`
--

INSERT INTO `transfer_point` (`id`, `date`, `sender_name`, `receiver_name`, `amount`) VALUES
(1, '2023-08-09', 'piyush', 'sachin', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `registered_at` datetime NOT NULL DEFAULT current_timestamp(),
  `user_address` varchar(255) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 0,
  `whats_no` varchar(10) NOT NULL,
  `transfer_status` int(11) NOT NULL DEFAULT 0,
  `user_balance` int(50) NOT NULL,
  `user_ip` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `full_name`, `email`, `password`, `contact_no`, `registered_at`, `user_address`, `user_status`, `whats_no`, `transfer_status`, `user_balance`, `user_ip`) VALUES
(1, 'piyush1', 'piyush upadhyay', 'piyushupadhyay830gmail.com', 'piyush', '6355051444', '2023-08-20 10:51:01', 'vadodara', 1, '6355051444', 1, 10000, 45),
(2, 'sachin1', 'sachin soni', 'sachinsoni@gmail.com', 'sachin', '9654814725', '2023-08-20 18:34:57', 'vadodara', 1, '6355051444', 1, 10000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `query` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `winning_gali`
--

CREATE TABLE `winning_gali` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `right_digit` varchar(50) NOT NULL,
  `left_digit` varchar(50) NOT NULL,
  `winning_amount` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `winning_prediction`
--

CREATE TABLE `winning_prediction` (
  `S.No` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `session` int(50) NOT NULL,
  `open_pana` int(50) NOT NULL,
  `open_result` int(50) NOT NULL,
  `close_pana` int(50) NOT NULL,
  `close_result` int(50) NOT NULL,
  `bid_points` float NOT NULL,
  `win_points` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winning_prediction`
--

INSERT INTO `winning_prediction` (`S.No`, `username`, `date`, `user_phone`, `game_name`, `game_type`, `session`, `open_pana`, `open_result`, `close_pana`, `close_result`, `bid_points`, `win_points`) VALUES
(1, 'piyush1', '0000-00-00', '6355051444', 'ludo', 'full time', 3, 64, 5000, 23, 6000, 500, 250);

-- --------------------------------------------------------

--
-- Table structure for table `winning_report`
--

CREATE TABLE `winning_report` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `open_pana` varchar(50) NOT NULL,
  `open_digit` varchar(50) NOT NULL,
  `close_pana` varchar(50) NOT NULL,
  `close_digit` varchar(50) NOT NULL,
  `winning_amount` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `pana` varchar(50) NOT NULL,
  `digit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_report`
--

CREATE TABLE `withdraw_report` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_report`
--

INSERT INTO `withdraw_report` (`id`, `username`, `contact_no`, `amount`, `date`) VALUES
(1, 'piyush', '6355051444', '100000', '2023-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `amount` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `withdraw_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw_request`
--

INSERT INTO `withdraw_request` (`id`, `username`, `amount`, `date`, `withdraw_status`) VALUES
(1, 'piyush1', '100000', '0000-00-00', 0),
(2, 'piyush1', '100000', '2023-08-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apk_manager`
--
ALTER TABLE `apk_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_image`
--
ALTER TABLE `app_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_deposite`
--
ALTER TABLE `auto_deposite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_gali`
--
ALTER TABLE `bid_gali`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_history`
--
ALTER TABLE `bid_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_revert`
--
ALTER TABLE `bid_revert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `declare_result`
--
ALTER TABLE `declare_result`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `fund_request`
--
ALTER TABLE `fund_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_list`
--
ALTER TABLE `game_list`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `notification_list`
--
ALTER TABLE `notification_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_history`
--
ALTER TABLE `result_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_list`
--
ALTER TABLE `slider_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starline_prediction`
--
ALTER TABLE `starline_prediction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_point`
--
ALTER TABLE `transfer_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winning_gali`
--
ALTER TABLE `winning_gali`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winning_prediction`
--
ALTER TABLE `winning_prediction`
  ADD PRIMARY KEY (`S.No`);

--
-- Indexes for table `winning_report`
--
ALTER TABLE `winning_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_report`
--
ALTER TABLE `withdraw_report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apk_manager`
--
ALTER TABLE `apk_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_image`
--
ALTER TABLE `app_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_deposite`
--
ALTER TABLE `auto_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bid_gali`
--
ALTER TABLE `bid_gali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bid_history`
--
ALTER TABLE `bid_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bid_revert`
--
ALTER TABLE `bid_revert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `declare_result`
--
ALTER TABLE `declare_result`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fund_request`
--
ALTER TABLE `fund_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `game_list`
--
ALTER TABLE `game_list`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_list`
--
ALTER TABLE `notification_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result_history`
--
ALTER TABLE `result_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_list`
--
ALTER TABLE `slider_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `starline_prediction`
--
ALTER TABLE `starline_prediction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_point`
--
ALTER TABLE `transfer_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `winning_gali`
--
ALTER TABLE `winning_gali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `winning_prediction`
--
ALTER TABLE `winning_prediction`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winning_report`
--
ALTER TABLE `winning_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_report`
--
ALTER TABLE `withdraw_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
