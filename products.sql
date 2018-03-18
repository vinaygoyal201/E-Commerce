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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_image` text NOT NULL,
  `prod_title` text NOT NULL,
  `prod_desc` text NOT NULL,
  `prod_cat` text NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `prod_cost` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_disc` int(11) NOT NULL,
  `prod_del_chrg` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_image`, `prod_title`, `prod_desc`, `prod_cat`, `prod_quantity`, `prod_cost`, `prod_price`, `prod_disc`, `prod_del_chrg`) VALUES
(1, 'images/product/watch1.jpg', 'Beautiful Brown Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\n						<ul>\n							<li>It''s Beautiful</li>\n							<li>Made of Metal</li>\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'watches', 50, 400, 500, 50, 0),
(2, 'images/product/watch2.jpg', 'Dark Black Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\r\n						<ul>\r\n							<li>It''s Beautiful</li>\r\n							<li>Made of Metal</li>\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'watches', 80, 890, 1000, 70, 60),
(3, 'images/product/glasses1.jpg', 'Men wear glasses', '<p>This Glasses are very good in looking. You can read very small writing by wearing these glasses.</p>\r\n						<ul>\r\n							<li>It''s Beautiful</li>\r\n							<li>Made of Metal</li>\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'men', 200, 469, 546, 30, 0),
(4, 'images/product/shoes1.jpg', 'Best Summer Shoes', '<p>This Best ever summer shoes will yourself in sun.</p>\n						<ul>\n							<li>It''s Awesome</li>\n					\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'shoes', 78, 1467, 1590, 50, 40),
(17, 'images/product/1583652355_shoes2.jpeg', 'Black Formal Shoes', '<p>This Best ever Formal shoes.Makes you a complete gentleman.</p>\r\n						<ul>\r\n							<li>It''s Awesome</li>\r\n					\r\n							<li>An original and branded quality</li>\r\n							<li>Free shipping overall the country</li>\r\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n						</ul>', 'shoes', 100, 900, 1100, 55, 20),
(18, 'images/product/1881450466_watch3.jpg', 'Golden Watch', '<p>This is a beautiful watch. Its purely made of metal. You can buy this watch by click on the buy button.</p>\n						<ul>\n							<li>It''s Beautiful</li>\n							<li>Made of Metal</li>\n							<li>An original and branded quality</li>\n							<li>Free shipping overall the country</li>\n							<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\n						</ul>', 'watches', 150, 2100, 2500, 99, 35);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
