-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2015 at 06:57 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nightlybuilds`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_articles`
--

CREATE TABLE IF NOT EXISTS `blog_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(140) NOT NULL,
  `main_image` varchar(500) NOT NULL,
  `description` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog_articles`
--

INSERT INTO `blog_articles` (`id`, `title`, `main_image`, `description`, `content`, `flag`, `created_date`) VALUES
(2, 'dfgdfg', '05ddc-270068_388960787847747_1597635513_n.png', 'dfgdfg', '<p>\n	dfgdfgdfgdf</p>\n', 0, '2015-01-17 07:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_gallery`
--

CREATE TABLE IF NOT EXISTS `blog_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `blog_gallery`
--

INSERT INTO `blog_gallery` (`id`, `url`, `category_id`, `priority`) VALUES
(172, 'a48d-88.jpg', 22, NULL),
(173, '5e32-89.jpg', 22, NULL),
(174, '7628-90.jpg', 22, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1426688576, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `work_articles`
--

CREATE TABLE IF NOT EXISTS `work_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(140) NOT NULL,
  `main_image` varchar(500) NOT NULL,
  `description` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `work_articles`
--

INSERT INTO `work_articles` (`id`, `title`, `main_image`, `description`, `content`, `flag`, `created_date`) VALUES
(5, 'Pink Mud', '60a49-screen-shot-2015-03-18-at-11.06.29-pm.png', '...', '<p>\n	test content</p>\n', 0, '2015-03-18 15:31:00'),
(6, 'MaskaPav', '758f6-screen-shot-2015-03-18-at-11.07.52-pm.png', '...', '', 0, '2015-03-18 18:25:16'),
(7, 'Audi A List', '204e4-screen-shot-2015-03-18-at-11.13.23-pm.png', '...', '', 0, '2015-03-18 18:26:08'),
(8, 'Doodle Creatives', '0f536-screen-shot-2015-03-18-at-11.15.41-pm.png', '...', '', 0, '2015-03-18 18:26:42'),
(9, 'cornetto youtube gadget', '9158d-screen-shot-2015-03-19-at-12.27.28-am.png', 'test', '', 0, '2015-03-18 22:03:45'),
(10, 'Adventure Survey by Debolin Sen', '5b3fb-screen-shot-2015-03-19-at-12.09.18-am.png', 'test', '', 0, '2015-03-18 22:05:51'),
(11, 'Glitch Website', 'bb37e-screen-shot-2015-03-19-at-3.53.14-am.jpg', 'test', '', 0, '2015-03-18 22:52:49'),
(12, 'Hammer and Mop', '8928c-screen-shot-2015-03-19-at-4.14.31-am.jpg', 'test', '', 0, '2015-03-18 22:53:22'),
(13, 'Lumens Education', '141b0-screen-shot-2015-03-19-at-3.50.51-am.jpg', 'test', '', 0, '2015-03-18 22:53:52'),
(14, 'Maven Magnet', '2848f-screen-shot-2015-03-19-at-4.00.32-am.jpg', 'test', '', 0, '2015-03-18 22:55:12'),
(15, 'Vaseline Lippsyche', '0aded-screen-shot-2015-03-19-at-12.30.15-am.png', 'test', '', 0, '2015-03-18 22:55:54'),
(16, 'Vim Youtube Gadget', 'dd57a-screen-shot-2015-03-19-at-4.04.04-am.jpg', 'test', '', 0, '2015-03-18 23:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `work_gallery`
--

CREATE TABLE IF NOT EXISTS `work_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=180 ;

--
-- Dumping data for table `work_gallery`
--

INSERT INTO `work_gallery` (`id`, `url`, `category_id`, `priority`) VALUES
(172, 'a48d-88.jpg', 22, NULL),
(173, '5e32-89.jpg', 22, NULL),
(174, '7628-90.jpg', 22, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_images`
--

CREATE TABLE IF NOT EXISTS `work_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=335 ;

--
-- Dumping data for table `work_images`
--

INSERT INTO `work_images` (`id`, `url`, `item_id`, `priority`) VALUES
(284, '5069c-Screen-Shot-2015-03-18-at-11.07.56-PM.png', 6, NULL),
(283, '10fe7-Screen-Shot-2015-03-18-at-11.07.01-PM.png', 5, 3),
(281, 'a5b87-Screen-Shot-2015-03-18-at-11.06.49-PM.png', 5, 2),
(285, 'abdf4-Screen-Shot-2015-03-18-at-11.08.18-PM.png', 6, NULL),
(280, 'b34c5-Screen-Shot-2015-03-18-at-11.06.46-PM.png', 5, 1),
(286, 'b5f82-Screen-Shot-2015-03-18-at-11.08.10-PM.png', 6, NULL),
(287, '9128a-Screen-Shot-2015-03-18-at-11.08.24-PM.png', 6, NULL),
(288, 'e087c-Screen-Shot-2015-03-18-at-11.08.28-PM.png', 6, NULL),
(289, 'd4911-Screen-Shot-2015-03-18-at-11.08.31-PM.png', 6, NULL),
(290, 'b08d2-Screen-Shot-2015-03-18-at-11.08.36-PM.png', 6, NULL),
(291, '63177-Screen-Shot-2015-03-18-at-11.13.25-PM.png', 7, NULL),
(292, '991f5-Screen-Shot-2015-03-18-at-11.13.30-PM.png', 7, NULL),
(293, 'aa447-Screen-Shot-2015-03-18-at-11.13.36-PM.png', 7, NULL),
(294, '400e2-Screen-Shot-2015-03-18-at-11.13.41-PM.png', 7, NULL),
(295, '2c6d2-Screen-Shot-2015-03-18-at-11.13.48-PM.png', 7, NULL),
(296, 'a7848-Screen-Shot-2015-03-18-at-11.15.43-PM.png', 8, NULL),
(297, '0776f-Screen-Shot-2015-03-18-at-11.15.50-PM.png', 8, NULL),
(298, 'ef627-Screen-Shot-2015-03-18-at-11.15.46-PM.png', 8, NULL),
(299, 'ce0a8-Screen-Shot-2015-03-18-at-11.16.06-PM.png', 8, NULL),
(300, '662a9-Screen-Shot-2015-03-18-at-11.15.55-PM.png', 8, NULL),
(301, 'cd62b-Screen-Shot-2015-03-18-at-11.16.02-PM.png', 8, NULL),
(302, '6e335-Screen-Shot-2015-03-18-at-11.16.08-PM.png', 8, NULL),
(303, 'acf3d-Screen-Shot-2015-03-19-at-12.27.49-AM.png', 9, NULL),
(304, 'cf1c0-Screen-Shot-2015-03-19-at-12.10.09-AM.png', 10, NULL),
(305, 'd7fa2-Screen-Shot-2015-03-19-at-12.10.04-AM.png', 10, NULL),
(306, '1d6a9-Screen-Shot-2015-03-19-at-12.09.27-AM.png', 10, NULL),
(307, '3c01c-Screen-Shot-2015-03-19-at-12.10.54-AM.png', 10, NULL),
(308, '7e20e-Screen-Shot-2015-03-19-at-12.10.58-AM.png', 10, NULL),
(309, '091fe-Screen-Shot-2015-03-19-at-3.55.59-AM.jpg', 11, NULL),
(310, '30d3f-Screen-Shot-2015-03-19-at-3.56.09-AM.jpg', 11, NULL),
(311, '3d1b7-Screen-Shot-2015-03-19-at-3.56.12-AM.jpg', 11, NULL),
(312, '668cc-Screen-Shot-2015-03-19-at-3.56.19-AM.jpg', 11, NULL),
(313, '914f8-Screen-Shot-2015-03-19-at-3.56.24-AM.jpg', 11, NULL),
(314, 'c12fe-Screen-Shot-2015-03-19-at-3.56.32-AM.jpg', 11, NULL),
(315, '29d8c-Screen-Shot-2015-03-19-at-3.56.40-AM.jpg', 11, NULL),
(316, '300da-Screen-Shot-2015-03-19-at-3.56.51-AM.jpg', 11, NULL),
(317, '42354-Screen-Shot-2015-03-19-at-3.56.58-AM.jpg', 11, NULL),
(318, '6989c-Screen-Shot-2015-03-19-at-3.57.04-AM.jpg', 11, NULL),
(319, '8c264-Screen-Shot-2015-03-19-at-3.57.11-AM.jpg', 11, NULL),
(320, 'a3e21-Screen-Shot-2015-03-19-at-3.57.08-AM.jpg', 11, NULL),
(321, '58874-Screen-Shot-2015-03-19-at-4.14.41-AM.jpg', 12, NULL),
(322, '76c4e-Screen-Shot-2015-03-19-at-4.14.45-AM.jpg', 12, NULL),
(323, '84118-Screen-Shot-2015-03-19-at-4.14.49-AM.jpg', 12, NULL),
(324, '9ff97-Screen-Shot-2015-03-19-at-4.14.57-AM.jpg', 12, NULL),
(325, '0d2ee-Screen-Shot-2015-03-19-at-4.00.44-AM.jpg', 14, NULL),
(326, '42949-Screen-Shot-2015-03-19-at-4.00.59-AM.jpg', 14, NULL),
(327, '47cfa-Screen-Shot-2015-03-19-at-4.00.48-AM.jpg', 14, NULL),
(328, '10f04-Screen-Shot-2015-03-19-at-12.30.34-AM.png', 15, NULL),
(329, '18f43-Screen-Shot-2015-03-19-at-12.30.24-AM.png', 15, NULL),
(330, '41dc2-Screen-Shot-2015-03-19-at-12.31.00-AM.png', 15, NULL),
(331, '49c9e-Screen-Shot-2015-03-19-at-4.03.53-AM.jpg', 16, NULL),
(332, '73c00-Screen-Shot-2015-03-19-at-4.04.25-AM.jpg', 16, NULL),
(333, '780e4-Screen-Shot-2015-03-19-at-4.04.15-AM.jpg', 16, NULL),
(334, 'a1aa8-Screen-Shot-2015-03-19-at-4.06.42-AM.jpg', 16, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
