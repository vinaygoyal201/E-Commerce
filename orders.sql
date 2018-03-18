-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2017 at 07:02 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_name` text NOT NULL,
  `order_email` text NOT NULL,
  `order_contact` int(11) NOT NULL,
  `order_state` text NOT NULL,
  `order_delivery_address` text NOT NULL,
  `order_checkout_ref` text NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `return_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_email`, `order_contact`, `order_state`, `order_delivery_address`, `order_checkout_ref`, `order_total`, `order_status`, `return_status`) VALUES
(1, 'mnf', 'kgf@gfnd.cjk', 65455, 'New York', 'cfhjch', '2017-07-28 06:27:59_986936382', 4118, 1, 0),
(2, 'jfk', 'nkjfh@huri.com', 1455, 'Washington', 'fjilf', '2017-07-30 11:51:14_770331751', 13610, 0, 1),
(3, '', '', 0, '', '', '2017-08-14 09:24:56_14058940', 0, 0, 1),
(4, '', '', 0, '', '', '2017-08-14 09:24:56_14058940', 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
