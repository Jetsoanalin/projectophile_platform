-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2017 at 07:16 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `my_friend_id` int(11) NOT NULL,
  `my_id` int(11) NOT NULL,
  `friends_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`my_friend_id`, `my_id`, `friends_id`) VALUES
(10, 11, 0),
(11, 15, 0),
(14, 10, 0),
(15, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `work` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `firstname`, `lastname`, `middlename`, `address`, `email`, `contact_no`, `age`, `gender`, `username`, `password`, `image`, `birthdate`, `mobile`, `status`, `work`, `religion`, `category`) VALUES
(1, 'Projectophile', 'Team', '', '', '', '', 0, '', 'projectophile', 'projectophile', 'images/logo-black.png', '', '', '', '', '', 'Admin'),
(10, 'Jetso', 'Analin', '', '', '', '', 0, 'Male', 'jetsoanalin', '123456', 'images/Jetso1.jpg', '8/9/1997', '', '', '', '', 'Developer'),
(11, 'Milind', 'Dholakia', '', '', '', '', 0, 'Male', 'milind', '123456', 'images/IMG-20170716-WA0006.jpg', '', '', '', '', '', 'Developer'),
(14, 'Francis', 'Dcruz', '', '', '', '', 0, 'Male', 'francis', '123456', 'images/IMG_20170222_121246.jpg', '', '', '', '', '', 'Investor'),
(15, 'laksh', 'ukani', '', '', '', '', 0, 'Male', 'lakshit', '123456', 'images/1.jpg', '', '', '', '', '', 'Investor');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date_sended` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `reciever_id`, `content`, `date_sended`) VALUES
(1, 11, 10, 'hey ', '2017-10-14 20:12:52'),
(2, 11, 10, 'hey nigga milind', '2017-10-14 21:11:35'),
(3, 10, 11, 'hey nigga wassup', '2017-10-14 21:13:15'),
(4, 10, 14, 'hey francis', '2017-10-15 20:00:45'),
(5, 10, 11, 'hey this is jetso', '2017-10-16 14:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `note_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`note_id`, `date`, `message`) VALUES
(6, '', 'Doc terry will be  out on august 3 2013');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `photos_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photos_id`, `location`, `member_id`) VALUES
(1, 'upload/7918240442_4471d5b11e_b.jpg', 1),
(2, 'upload/WhatsApp Image 2017-08-06 at 11.34.02 PM.jpeg', 10),
(3, 'upload/8.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_posted` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `photos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `member_id`, `content`, `date_posted`, `location`, `photos_id`) VALUES
(3, 10, 'hey nigga', '2017-10-14 19:05:03', '', 0),
(14, 14, 'Hey Team Projectophile', '2017-10-15 16:23:14', '', 0),
(18, 11, 'heya', '2017-10-16 15:06:11', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `postwall`
--

CREATE TABLE `postwall` (
  `post_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_posted` varchar(100) NOT NULL,
  `photos_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `service_id` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `member_id`, `date`, `service_id`, `Number`, `status`) VALUES
(76, 1, '11/09/2013', 1, 1, 'Done'),
(77, 1, '11/09/2013', 1, 1, 'Pending'),
(78, 1, '10/09/2013', 1, 1, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_offer` varchar(100) NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_offer`, `price`) VALUES
(1, 'Cleaning', '700.00'),
(2, 'q', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(5, 'admin', 'admin'),
(9, 'teph', 'teph'),
(10, 'teph', 'teph');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`my_friend_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photos_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `postwall`
--
ALTER TABLE `postwall`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `my_friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `postwall`
--
ALTER TABLE `postwall`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
