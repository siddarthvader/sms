-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2014 at 03:36 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--
CREATE DATABASE IF NOT EXISTS `sms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_sch`
--

CREATE TABLE IF NOT EXISTS `admin_sch` (
  `uname` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `p_num` int(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_sch`
--

INSERT INTO `admin_sch` (`uname`, `pwd`, `type`, `Name`, `p_num`) VALUES
('anurag', '4a7d1ed414474e4033ac29ccb8653d9b', 'Admin', 'anurag', 2147483647),
('jindal', '174d43714e3e034559217732eacb63b0', 'School', 'jindal', 8980),
('lunia', 'cb48139637a7962310ba2275bccdc8db', 'College', 'sumit', 890809),
('mojo', 'ad3699fc55569233903c3c98602e5e65', 'Admin', 'mojo', 2147483647),
('sid', 'b8c1a3069167247e3503f0daba6c5723', 'Admin', '007', 890);

-- --------------------------------------------------------

--
-- Table structure for table `clg_class`
--

CREATE TABLE IF NOT EXISTS `clg_class` (
  `Medium` varchar(100) NOT NULL DEFAULT '',
  `Course` varchar(100) NOT NULL DEFAULT '',
  `Std` varchar(40) NOT NULL DEFAULT '',
  `no_of_div` varchar(50) DEFAULT NULL,
  `timestamp` time DEFAULT NULL,
  PRIMARY KEY (`Medium`,`Course`,`Std`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clg_class`
--

INSERT INTO `clg_class` (`Medium`, `Course`, `Std`, `no_of_div`, `timestamp`) VALUES
('English', 'B.A.', 'first', '2', '00:20:14'),
('English', 'B.A.', 'second', '1', '00:20:14'),
('English', 'B.A.', 'three', '1', '00:20:14'),
('English', 'B.Com', 'first', '2', '00:20:14'),
('English', 'B.Com', 'second', '2', '00:20:14'),
('English', 'B.Com', 'three', '1', '00:20:14'),
('English', 'B.Sc.', 'fifth', '1', '00:20:14'),
('English', 'B.Sc.', 'first', '2', '00:20:14'),
('English', 'B.Sc.', 'four', '1', '00:20:14'),
('English', 'B.Sc.', 'three', '1', '00:20:14'),
('English', 'B.Tech', 'first', '2', '00:20:14'),
('English', 'B.Tech', 'three', '2', '00:20:14'),
('English', 'MBA', 'first', '2', '00:20:14'),
('Marathi', 'B.A.', 'first', '2', '00:20:14'),
('Marathi', 'B.A.', 'three', '1', '00:20:14'),
('Marathi', 'B.Com', 'second', '1', '00:20:14'),
('Marathi', 'B.Sc.', 'first', '1', '00:20:14'),
('Marathi', 'B.Tech', 'four', '2', '00:20:14'),
('Marathi', 'B.Tech', 'three', '2', '00:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `clg_cls_fee`
--

CREATE TABLE IF NOT EXISTS `clg_cls_fee` (
  `Medium` varchar(100) NOT NULL DEFAULT '',
  `Course` varchar(100) NOT NULL DEFAULT '',
  `Std` varchar(40) NOT NULL DEFAULT '',
  `fee_type` varchar(50) NOT NULL DEFAULT '',
  `fee` int(10) DEFAULT NULL,
  `lfee` int(10) DEFAULT NULL,
  `one_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Medium`,`Course`,`Std`,`fee_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clg_cls_fee`
--

INSERT INTO `clg_cls_fee` (`Medium`, `Course`, `Std`, `fee_type`, `fee`, `lfee`, `one_time`) VALUES
('English', 'B.A.', 'first', 'Admission Fee', 150000, 1000, 'Per Year'),
('English', 'B.A.', 'first', 'End Term Fee', 1000, 100, 'Per Year'),
('English', 'B.A.', 'first', 'Mid term 1 fee', 1000, 100, 'Per Year'),
('English', 'B.A.', 'first', 'Mid term 2 fee', 1000, 100, 'Per Year'),
('English', 'B.A.', 'first', 'Monthly Fee', 1000, 100, 'Per Month'),
('English', 'B.A.', 'first', 'Sports', 1000, 100, 'Per Year'),
('English', 'B.A.', 'second', 'Admission Fee', 100000, 1000, 'Per Year'),
('English', 'B.A.', 'second', 'Mid term 2 fee', 1000, 10, 'Per Year'),
('English', 'B.A.', 'three', 'Mid term 1 fee', 1000, 100, 'Per Month'),
('English', 'B.A.', 'three', 'Mid term 2 fee', 1000, 100, 'Per Month'),
('English', 'B.A.', 'three', 'Monthly Fee', 1000, 100, 'Per Month'),
('English', 'B.Com', 'first', 'Admission Fee', 120000, 100, 'Per Year'),
('English', 'B.Com', 'first', 'Mid term 1 fee', 10000, 100, 'Per Year'),
('English', 'B.Com', 'first', 'Monthly Fee', 120000, 100, 'Per Year'),
('English', 'B.Com', 'second', 'Admission Fee', 150000, 1000, 'Per Year'),
('English', 'B.Com', 'three', 'Mid term 1 fee', 1000, 10, 'Per Year'),
('Marathi', 'B.Com', 'second', 'Admission Fee', 150000, 1000, 'Per Year');

-- --------------------------------------------------------

--
-- Table structure for table `clg_details`
--

CREATE TABLE IF NOT EXISTS `clg_details` (
  `Enroll` varchar(100) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `course` varchar(200) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `cont_num` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `docs` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `sub_caste` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `last_school` varchar(200) NOT NULL,
  `progress` varchar(100) NOT NULL,
  `adhar_num` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Enroll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clg_details`
--

INSERT INTO `clg_details` (`Enroll`, `Gr_num`, `name`, `f_name`, `m_name`, `sex`, `course`, `DOB`, `birth_place`, `cont_num`, `address`, `docs`, `religion`, `caste`, `sub_caste`, `nationality`, `last_school`, `progress`, `adhar_num`, `status`, `timestamp`) VALUES
('007', '007', 'Vatsla Sanguri', 'ankil', 'anty', 'female', 'B.A.', '1995-07-06', '90', '9099099090', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:20:44.361378'),
('008', '890', 'ui', 'ui', 'ui', 'male', 'B.Com', '2014-12-31', '', '8090909090', 'uouo', '', '', '', '', '', '', '', '', 'default', '2014-07-23 18:04:46.518913'),
('122', '123', 'Jash', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:04:53.908810'),
('12212', '2333', 'Anurag', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:04:55.786613'),
('123', '2121', 'siddharth', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:04:57.892070'),
('124', '124', 'anurag', 'sid', 'sid', 'male', 'B.Com', '2014-12-31', '90', '909', '09', '09', '09', '09', '0909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:03.935402'),
('125', '125', 'yash', 'sid', 'sid', 'male', 'B.Com', '2014-12-31', '90', '909', '09', '09', '09', '09', '0909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:06.081553'),
('126', '126', 'v', 'sid', 'sid', 'male', 'B.Com', '2014-12-31', '90', '909', '09', '09', '09', '09', '0909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:08.357222'),
('5672', '789', 'Jindal', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:18.277801'),
('6787', '676', 'lunia', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:22.346336'),
('890', '809', '80', '89', '890', 'male', 'B.A.', '2014-12-31', 'jkl', '8089898989', '890', '', '', '', '', '', '', '', '', 'default', '2014-07-23 18:05:24.509202'),
('9090', '9091', 'porwal', '90', '909', 'male', 'B.A.', '2014-12-31', '90', '909', '09', '09', '090', '90', '909', '090', '90', '90', '90', 'paying', '2014-07-23 18:05:26.732297');

-- --------------------------------------------------------

--
-- Table structure for table `clg_tran`
--

CREATE TABLE IF NOT EXISTS `clg_tran` (
  `Reciept` varchar(100) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `Amount` int(100) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `year` int(10) NOT NULL,
  `fee_type` varchar(30) NOT NULL,
  `pay_mode` varchar(20) NOT NULL,
  `cheque_num` int(20) NOT NULL,
  `lflag` varchar(10) NOT NULL,
  `late_fee` int(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`Reciept`,`Gr_num`,`Month`,`fee_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clg_tran`
--

INSERT INTO `clg_tran` (`Reciept`, `Gr_num`, `Amount`, `Month`, `year`, `fee_type`, `pay_mode`, `cheque_num`, `lflag`, `late_fee`, `date`) VALUES
('RC41XPP', '2333', 5000, 'Aug', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RC41XPP', '2333', 5000, 'Jul', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RC41XPP', '2333', 5000, 'Nov', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RC41XPP', '2333', 5000, 'Oct', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RC41XPP', '2333', 5000, 'Sep', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RC740IX', '789', 1000, 'One time', 2014, 'Mid term 2 fee', 'cheque', 123, 'yes', 0, '2014-07-24'),
('RC74PJN', '123', 150000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 1000, '2014-07-22'),
('RC860KV', '123', 1000, 'Jun', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCAVPCR', '007', 5000, 'Dec', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-20'),
('RCAVPCR', '007', 5000, 'Feb', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-20'),
('RCAVPCR', '007', 5000, 'Jan', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-20'),
('RCAVPCR', '007', 5000, 'Mar', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-20'),
('RCAVPCR', '007', 5000, 'Nov', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-20'),
('RCCK4K2', '007', 1000, 'One time', 2014, 'End Term Fee', 'cash', 0, 'no', 100, '2014-07-24'),
('RCFDZMT', '123', 5000, 'Apr', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RCFDZMT', '123', 5000, 'Feb', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCFDZMT', '123', 5000, 'Jan', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCFDZMT', '123', 5000, 'Mar', 2014, 'Monthly Fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCFDZMT', '123', 5000, 'May', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RCHE4DV', '007', 3000, 'Apr', 2014, 'Monthly Fee', 'cheque', 123, 'no', 100, '2014-07-22'),
('RCHE4DV', '007', 3000, 'Jun', 2014, 'Monthly Fee', 'cheque', 123, 'yes', 0, '2014-07-22'),
('RCHE4DV', '007', 3000, 'May', 2014, 'Monthly Fee', 'cheque', 123, 'no', 100, '2014-07-22'),
('RCHL8HR', '676', 150000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'yes', 0, '2014-07-24'),
('RCIGNLT', '007', 4000, 'Aug', 2014, 'Monthly Fee', 'cheque', 212, 'yes', 0, '2014-07-20'),
('RCIGNLT', '007', 4000, 'Jul', 2014, 'Monthly Fee', 'cheque', 212, 'yes', 0, '2014-07-20'),
('RCIGNLT', '007', 4000, 'Oct', 2014, 'Monthly Fee', 'cheque', 212, 'yes', 0, '2014-07-20'),
('RCIGNLT', '007', 4000, 'Sep', 2014, 'Monthly Fee', 'cheque', 212, 'yes', 0, '2014-07-20'),
('RCIY7XI', '789', 5000, 'Aug', 2014, 'Monthly Fee', 'cheque', 123, 'no', 100, '2014-07-24'),
('RCIY7XI', '789', 5000, 'Jul', 2014, 'Monthly Fee', 'cheque', 123, 'no', 100, '2014-07-24'),
('RCIY7XI', '789', 5000, 'Nov', 2014, 'Monthly Fee', 'cheque', 123, 'no', 100, '2014-07-24'),
('RCIY7XI', '789', 5000, 'Oct', 2014, 'Monthly Fee', 'cheque', 123, 'yes', 0, '2014-07-24'),
('RCIY7XI', '789', 5000, 'Sep', 2014, 'Monthly Fee', 'cheque', 123, 'yes', 0, '2014-07-24'),
('RCKJ2JW', '2333', 1000, 'One time', 2014, 'End Term Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RCL0R96', '2333', 1000, 'One time', 2014, 'Mid term 2 fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCOGM3A', '2333', 1000, 'One time', 2014, 'Mid term 1 fee', 'cash', 0, 'no', 100, '2014-07-22'),
('RCORALZ', '789', 1000, 'One time', 2014, 'End Term Fee', 'cash', 0, 'no', 100, '2014-07-24'),
('RCQWQW1', '676', 1000, 'One time', 2014, 'Mid term 1 fee', 'cash', 0, 'yes', 0, '2014-07-24'),
('RCSK48I', '789', 150000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'yes', 0, '2014-07-24'),
('RCTIRI3', '2333', 4000, 'Dec', 2014, 'Monthly Fee', 'cheque', 890, 'yes', 0, '2014-07-22'),
('RCTIRI3', '2333', 4000, 'Feb', 2014, 'Monthly Fee', 'cheque', 890, 'no', 100, '2014-07-22'),
('RCTIRI3', '2333', 4000, 'Jan', 2014, 'Monthly Fee', 'cheque', 890, 'yes', 0, '2014-07-22'),
('RCTIRI3', '2333', 4000, 'Mar', 2014, 'Monthly Fee', 'cheque', 890, 'yes', 0, '2014-07-22'),
('RCTTBOZ', '007', 150000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 1000, '2014-07-20'),
('RCUPX6X', '007', 1000, 'One time', 2014, 'Sports', 'cash', 0, 'yes', 0, '2014-07-24'),
('RCWPIGN', '123', 6000, 'Aug', 2014, 'Monthly Fee', 'cheque', 1211, 'yes', 0, '2014-07-22'),
('RCWPIGN', '123', 6000, 'Dec', 2014, 'Monthly Fee', 'cheque', 1211, 'yes', 0, '2014-07-22'),
('RCWPIGN', '123', 6000, 'Jul', 2014, 'Monthly Fee', 'cheque', 1211, 'no', 100, '2014-07-22'),
('RCWPIGN', '123', 6000, 'Nov', 2014, 'Monthly Fee', 'cheque', 1211, 'no', 100, '2014-07-22'),
('RCWPIGN', '123', 6000, 'Oct', 2014, 'Monthly Fee', 'cheque', 1211, 'no', 100, '2014-07-22'),
('RCWPIGN', '123', 6000, 'Sep', 2014, 'Monthly Fee', 'cheque', 1211, 'no', 100, '2014-07-22'),
('RCXB65C', '2333', 150000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 1000, '2014-07-22'),
('RCY8MFR', '2333', 3000, 'Apr', 2014, 'Monthly Fee', 'cheque', 1212, 'no', 100, '2014-07-22'),
('RCY8MFR', '2333', 3000, 'Jun', 2014, 'Monthly Fee', 'cheque', 1212, 'no', 100, '2014-07-22'),
('RCY8MFR', '2333', 3000, 'May', 2014, 'Monthly Fee', 'cheque', 1212, 'yes', 0, '2014-07-22'),
('RCYDIOO', '789', 1000, 'One time', 2014, 'Mid term 1 fee', 'cash', 0, 'yes', 0, '2014-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `Key_p` varchar(100) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Logo` varchar(300) NOT NULL,
  PRIMARY KEY (`Key_p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`Key_p`, `Name`, `Logo`) VALUES
('007', 'Delhi Public School', 'uploads/1404435191.png'),
('008', 'Mumbai University', 'uploads/1404452748.png');

-- --------------------------------------------------------

--
-- Table structure for table `sch_class`
--

CREATE TABLE IF NOT EXISTS `sch_class` (
  `Medium` varchar(50) NOT NULL DEFAULT '',
  `Std` varchar(50) NOT NULL DEFAULT '',
  `no_of_div` int(11) DEFAULT NULL,
  `timestamp` time DEFAULT NULL,
  PRIMARY KEY (`Medium`,`Std`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_class`
--

INSERT INTO `sch_class` (`Medium`, `Std`, `no_of_div`, `timestamp`) VALUES
('English', 'first', 1, '00:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `sch_cls_fee`
--

CREATE TABLE IF NOT EXISTS `sch_cls_fee` (
  `Medium` varchar(50) NOT NULL DEFAULT '',
  `Std` varchar(50) NOT NULL DEFAULT '',
  `fee_type` varchar(50) NOT NULL DEFAULT '',
  `fee` int(11) DEFAULT NULL,
  `lfee` int(11) DEFAULT NULL,
  `one_time` varchar(10) NOT NULL,
  `late_date` date NOT NULL,
  PRIMARY KEY (`Medium`,`Std`,`fee_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_cls_fee`
--

INSERT INTO `sch_cls_fee` (`Medium`, `Std`, `fee_type`, `fee`, `lfee`, `one_time`, `late_date`) VALUES
('English', 'first', 'Admission Fee', 890000, 80, 'Per Year', '2014-12-31'),
('English', 'first', 'Computer Lab', 10000, 10, 'Per Year', '2014-12-31'),
('English', 'first', 'End Term Fee', 10000, 80, 'Per Year', '0000-00-00'),
('English', 'first', 'Mid term 1 fee', 10000, 80, 'Per Year', '0000-00-00'),
('English', 'first', 'Mid term 2 fee', 10000, 80, 'Per Year', '0000-00-00'),
('English', 'first', 'Monthly Fee', 100, 10, 'Per Month', '2014-09-24'),
('English', 'first', 'Practical', 1000, 10, 'Per Year', '2014-12-31'),
('English', 'first', 'Sports', 10000, 80, 'Per Year', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sch_details`
--

CREATE TABLE IF NOT EXISTS `sch_details` (
  `Enroll` varchar(100) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `cont_num` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `docs` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `sub_caste` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `last_school` varchar(200) NOT NULL,
  `progress` varchar(100) NOT NULL,
  `adhar_num` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Enroll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_details`
--

INSERT INTO `sch_details` (`Enroll`, `Gr_num`, `name`, `f_name`, `m_name`, `sex`, `DOB`, `birth_place`, `cont_num`, `address`, `docs`, `religion`, `caste`, `sub_caste`, `nationality`, `last_school`, `progress`, `adhar_num`, `status`, `timestamp`) VALUES
('1212', '1212', 'anurag', 'KK Lal', 'aunrty', 'male', '2014-01-05', 'Kanpur', '9090909090', 'mumbai', 'ID', 'Hindu', 'no', 'no', 'Indian', 'RN', 'Pelam', 'ADHAR', 'paying', '2014-07-23 17:19:23.979088'),
('121211', '9090', '90', '90', '90', 'male', '2014-12-31', 'uiou', '8908908908', 'jkhkjh', 'hk', 'hkh', 'khk', 'hk', '', '', '', '', 'default', '2014-07-12 18:30:00.000000'),
('1212121', '100', 'sumit lunia', 'uncle', 'aunty', 'male', '2014-12-31', 'pakistan', '9090', 'banglasesh', 'ID', 'ui', 'uiu', 'iu', 'iui', 'ui', 'ui', 'ui', 'non-paying', '2014-07-04 07:33:54.401245'),
('1221', '889', 'jindal', 'uncle', 'aunty', 'male', '2014-12-31', 'pakistan', '9090', 'banglasesh', 'ID', 'ui', 'uiu', 'iu', 'iui', 'ui', 'ui', 'ui', 'non-paying', '2014-07-04 07:34:54.598421'),
('123', '90', 'abi', 'hi', 'hi', 'male', '2014-12-31', 'hjk', '9090909090', '909090', '', '', '', '', '', '', '', '', 'default', '2014-07-04 07:35:08.644090'),
('123456', 'GN1993', 'Sid', 'Subhash', 'Neeru', 'male', '', 'Gwalior', '8302669560', '`MNIT', 'ID', 'Jain', 'Jain', 'Jain', 'Indian', 'AVM', 'no progress', 'ASDHF9090', 'paying', '2014-07-23 18:11:13.346783'),
('124321', '8329', 'saini', 'uncle', 'aunty', 'male', '2014-12-31', 'pakistan', '9090', 'banglasesh', 'ID', 'ui', 'uiu', 'iu', 'iui', 'ui', 'ui', 'ui', 'non-paying', '2014-07-04 07:35:34.421773'),
('gypsy92', '123321', 'Vatsla', 'uncle', 'aunty', 'female', '1995-06-06', 'UK', '9090909090', 'Noida', '90', '90', '90io', 'io', 'io', 'io', 'io', 'io', 'non-paying', '2014-07-23 17:41:40.423813'),
('rohan', 'rohan', 'roha', 'oo', 'pop', 'male', '2014-12-31', 'hjk', '9090909090', 'hkj', '', '', '', '', '', '', '', '', 'default', '2014-07-04 07:36:13.352041'),
('rohan1', '1234567', 'Battery', 'oo', 'pop', 'male', '2014-12-31', 'hjk', '9090909090', 'hkj', '', '', '', '', '', '', '', '', 'default', '2014-07-04 07:38:13.618417');

-- --------------------------------------------------------

--
-- Table structure for table `sch_tran`
--

CREATE TABLE IF NOT EXISTS `sch_tran` (
  `Reciept` varchar(100) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `Amount` int(100) NOT NULL,
  `Month` varchar(20) NOT NULL,
  `year` int(10) NOT NULL,
  `fee_type` varchar(30) NOT NULL,
  `pay_mode` varchar(20) NOT NULL,
  `cheque_num` int(20) NOT NULL,
  `lflag` varchar(10) NOT NULL,
  `late_fee` int(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`Reciept`,`Gr_num`,`Month`,`fee_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_tran`
--

INSERT INTO `sch_tran` (`Reciept`, `Gr_num`, `Amount`, `Month`, `year`, `fee_type`, `pay_mode`, `cheque_num`, `lflag`, `late_fee`, `date`) VALUES
('RC0D6PX', '90', 100, 'Jul', 2014, 'Monthly Fee', 'cheque', 9090, 'no', 610, '2014-09-24'),
('RC0D6PX', '90', 100, 'Oct', 2014, 'Monthly Fee', 'cheque', 9090, 'yes', 0, '2014-09-24'),
('RC0D6PX', '90', 100, 'Sep', 2014, 'Monthly Fee', 'cheque', 9090, 'yes', 0, '2014-09-24'),
('RC0F7HL', 'rohan', 890000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 80, '2014-07-24'),
('RC0MZ8I', '90', 100, 'Apr', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Dec', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Feb', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Jan', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Jun', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Mar', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'May', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC0MZ8I', '90', 100, 'Nov', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RC2VHEN', 'GN1993', 10000, 'Aug', 2014, 'Monthly Fee', 'cash', 0, 'no', 80, '2014-07-22'),
('RC2VHEN', 'GN1993', 10000, 'Jul', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RC2VHEN', 'GN1993', 10000, 'Oct', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-07-22'),
('RC2VHEN', 'GN1993', 10000, 'Sep', 2014, 'Monthly Fee', 'cash', 0, 'no', 80, '2014-07-22'),
('RC6IT8J', '123321', 100, 'Aug', 2014, 'Monthly Fee', 'cash', 0, 'no', 70, '2014-10-19'),
('RC6IT8J', '123321', 100, 'Jul', 2014, 'Monthly Fee', 'cash', 0, 'no', 70, '2014-10-19'),
('RC6IT8J', '123321', 100, 'Sep', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-10-19'),
('RC6R48E', 'GN1993', 10000, 'One time', 2014, 'Mid term 1 fee', 'cash', 0, 'no', 80, '2014-07-22'),
('RCCMUK2', 'rohan', 10000, 'Aug', 2014, 'Monthly Fee', 'cheque', 0, 'no', 80, '2014-07-24'),
('RCCMUK2', 'rohan', 10000, 'Jul', 2014, 'Monthly Fee', 'cheque', 0, 'yes', 0, '2014-07-24'),
('RCCMUK2', 'rohan', 10000, 'Nov', 2014, 'Monthly Fee', 'cheque', 0, 'yes', 0, '2014-07-24'),
('RCCMUK2', 'rohan', 10000, 'Oct', 2014, 'Monthly Fee', 'cheque', 0, 'yes', 0, '2014-07-24'),
('RCCMUK2', 'rohan', 10000, 'Sep', 2014, 'Monthly Fee', 'cheque', 0, 'no', 80, '2014-07-24'),
('RCE1J7X', '90', 890000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 7760, '2014-09-24'),
('RCFH09B', '1212', 100, 'Aug', 2014, 'Monthly Fee', 'cheque', 0, 'no', 0, '2014-09-23'),
('RCFH09B', '1212', 100, 'Jul', 2014, 'Monthly Fee', 'cheque', 0, 'no', 0, '2014-09-23'),
('RCFH09B', '1212', 100, 'Sep', 2014, 'Monthly Fee', 'cheque', 0, 'yes', 0, '2014-09-23'),
('RCIWVLA', 'GN1993', 890000, 'One time', 2014, 'Admission Fee', 'cash', 0, 'no', 80, '2014-07-22'),
('RCJZI5A', '889', 100, 'Aug', 2014, 'Monthly Fee', 'cash', 0, 'no', 330, '2014-09-25'),
('RCJZI5A', '889', 100, 'Jul', 2014, 'Monthly Fee', 'cash', 0, 'no', 640, '2014-09-25'),
('RCKHQFA', '90', 10000, 'One time', 2014, 'Computer Lab', 'cheque', 890, 'no', 970, '2014-09-24'),
('RCR0GSD', 'GN1993', 10000, 'One time', 2014, 'End Term Fee', 'cash', 0, 'yes', 0, '2014-07-24'),
('RCRVHMU', '90', 100, 'Aug', 2014, 'Monthly Fee', 'cash', 0, 'yes', 0, '2014-09-24'),
('RCXBE5H', 'GN1993', 10000, 'Dec', 2014, 'Monthly Fee', 'cheque', 1233, 'no', 80, '2014-07-22'),
('RCXBE5H', 'GN1993', 10000, 'Feb', 2014, 'Monthly Fee', 'cheque', 1233, 'yes', 0, '2014-07-22'),
('RCXBE5H', 'GN1993', 10000, 'Jan', 2014, 'Monthly Fee', 'cheque', 1233, 'yes', 0, '2014-07-22'),
('RCXBE5H', 'GN1993', 10000, 'Mar', 2014, 'Monthly Fee', 'cheque', 1233, 'no', 80, '2014-07-22'),
('RCXBE5H', 'GN1993', 10000, 'Nov', 2014, 'Monthly Fee', 'cheque', 1233, 'no', 80, '2014-07-22'),
('RCY53QO', '1212', 100, 'Dec', 2014, 'Monthly Fee', 'cash', 0, 'no', 0, '2014-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `user_clg`
--

CREATE TABLE IF NOT EXISTS `user_clg` (
  `Enroll` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Medium` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL,
  `Std` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Enroll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_clg`
--

INSERT INTO `user_clg` (`Enroll`, `Name`, `Medium`, `course`, `Std`, `Section`, `Gr_num`, `timestamp`) VALUES
('007', 'Vatsla Sanguri', 'English', 'B.A.', 'first', 'A', '007', '2014-07-23 18:14:50.133180'),
('008', 'ui', 'Marathi', 'B.Com', 'second', 'A', '890', '2014-07-04 04:31:41.242427'),
('122', 'Jash', 'English', 'B.A.', 'first', 'A', '123', '2014-07-04 07:42:50.547193'),
('12212', 'Anurag', 'English', 'B.A.', 'first', 'A', '2333', '2014-07-04 05:28:54.084617'),
('123', 'siddharth', 'English', 'B.A.', 'first', 'A', '2121', '2014-07-04 05:28:54.272695'),
('124', 'anurag', 'Marathi', 'B.Com', 'second', 'A', '124', '2014-07-04 05:06:26.757839'),
('125', 'yash', 'Marathi', 'B.Com', 'second', 'A', '125', '2014-07-04 04:31:41.296885'),
('126', 'v', 'Marathi', 'B.Com', 'second', 'A', '126', '2014-07-04 04:31:41.272693'),
('5672', 'Jindal', 'English', 'B.A.', 'first', 'A', '789', '2014-07-04 05:28:54.185465'),
('6787', 'lunia', 'English', 'B.A.', 'first', 'A', '676', '2014-07-04 05:28:54.206239'),
('890', '80', 'English', 'B.A.', 'first', '', '809', '2014-07-19 18:30:00.000000'),
('9090', 'porwal', 'English', 'B.A.', 'first', 'A', '9091', '2014-07-04 05:28:54.230309');

-- --------------------------------------------------------

--
-- Table structure for table `user_sch`
--

CREATE TABLE IF NOT EXISTS `user_sch` (
  `Enroll` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Medium` varchar(50) NOT NULL,
  `Std` varchar(50) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Gr_num` varchar(100) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Enroll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sch`
--

INSERT INTO `user_sch` (`Enroll`, `Name`, `Medium`, `Std`, `Section`, `Gr_num`, `timestamp`) VALUES
('1212', 'anurag', 'English', 'first', 'A', '1212', '2014-07-23 17:18:45.993207'),
('121211', '90', 'English', 'second', 'A', '9090', '2014-07-12 18:30:00.000000'),
('1212121', 'sumit lunia', 'English', 'second', 'A', '100', '2014-07-02 16:02:57.666210'),
('1221', 'jindal', 'English', 'first', 'A', '889', '2014-07-22 19:48:53.937404'),
('123', 'abi', 'English', 'first', 'A', '90', '2014-07-22 19:48:53.744262'),
('123456', 'Sid', 'English', 'first', 'A', 'GN1993', '2014-07-22 19:48:54.023959'),
('124321', 'saini', 'English', 'first', 'A', '8329', '2014-07-22 19:48:53.993377'),
('gypsy92', 'Vatsla', 'English', 'first', 'B', '123321', '2014-07-23 17:41:00.328495'),
('rohan', 'rohan', 'English', 'first', 'A', 'rohan', '2014-07-22 19:48:53.967261'),
('rohan1', 'Battery', 'English', 'first', 'A', '1234567', '2014-07-22 19:48:53.912075');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
