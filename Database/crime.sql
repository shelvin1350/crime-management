-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2023 at 03:31 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crime`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `compid` int(11) NOT NULL AUTO_INCREMENT,
  `stationid` int(11) NOT NULL,
  `comptitle` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `cusid` int(11) NOT NULL,
  `reply` varchar(50) NOT NULL,
  PRIMARY KEY (`compid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`compid`, `stationid`, `comptitle`, `description`, `file`, `status`, `date`, `cusid`, `reply`) VALUES
(5, 1, 'ff', 'scsd', 'static/MEDIA/photogrphr_588Mi9n.jpg', 'rejected', '2020-02-10', 1, 'dont know about this case'),
(6, 1, 'bbb', 'mm', 'static/MEDIA/legal.jpg', 'pending', '2020-02-10', 1, 'on going'),
(7, 2, 'Bullying', 'fyguguguyghj', '/MEDIA/banner1_23vOESA.jpg', 'rejected', '2023-03-22', 1, ''),
(8, 2, 'gggg', 'jkjhjhjhjh', '/MEDIA/banner1_beWg7s5.jpg', 'not approved', '2023-03-22', 1, ''),
(9, 2, 'wp', 'ggggg', '/MEDIA/banner1_C4R9jHH.jpg', 'not approved', '2023-03-22', 2, ''),
(10, 2, 'Rape', 'a student tried to rape', '/MEDIA/1665047396120.JPG', 'not approved', '2023-03-22', 3, ''),
(11, 1, 'Bullying', 'a student tried to bully me', '/MEDIA/papers.co-aq13-spiderman-hero-dark-bw-art-i', 'not approved', '2023-03-27', 5, ''),
(12, 2, 'Bullying', 'a student tried to rape', '/MEDIA/semi%20front%20final.pdf', 'not approved', '2023-05-03', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `crimedetails`
--

CREATE TABLE IF NOT EXISTS `crimedetails` (
  `crimeid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `ipc` varchar(50) NOT NULL,
  `victimname` varchar(50) NOT NULL,
  `suspectname` varchar(50) NOT NULL,
  `f1` varchar(300) NOT NULL,
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`crimeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `crimedetails`
--

INSERT INTO `crimedetails` (`crimeid`, `type`, `description`, `date`, `location`, `ipc`, `victimname`, `suspectname`, `f1`, `stationid`) VALUES
(1, 'robbery', 'robbery done by vinu,vhgv', '2020-02-04', '45', '45', 'ann', 'priya', 'static/MEDIA/legal_jLeA4se.jpg', 1),
(2, 'illegal', 'sahgjhdgajhg', '2023-03-21', '143', '143', 'ramu', 'raju', '/MEDIA/banner1.jpg', 1),
(3, 'blasting', 'njghssj', '2023-03-11', '143', '143', 'susheelan', 'ramanam', '/MEDIA/banner1_AXsdFzI.jpg', 2),
(4, 'kidnapping', 'fgfsjhsvhvabn', '2023-03-16', '143', '143', 'ravi', 'santhosh', '/MEDIA/Dark-Anime-HD-Wallpaper-4K-Laptop.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `criminaldetails`
--

CREATE TABLE IF NOT EXISTS `criminaldetails` (
  `criminalid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `complexion` varchar(50) NOT NULL,
  `crimetype` varchar(50) NOT NULL,
  `moperation` varchar(50) NOT NULL,
  `identification` varchar(50) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `thumb` varchar(300) NOT NULL,
  `languages` varchar(50) NOT NULL,
  `nocrime` varchar(50) NOT NULL,
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`criminalid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `criminaldetails`
--

INSERT INTO `criminaldetails` (`criminalid`, `name`, `age`, `height`, `weight`, `gender`, `addr`, `phno`, `nickname`, `complexion`, `crimetype`, `moperation`, `identification`, `photo`, `thumb`, `languages`, `nocrime`, `stationid`) VALUES
(1, 'vinu', 35, '6.4', 'vinubhai', 'male', 'aaa', '9658745263', 'vinubhai', 'wheatish', 'robbery', 'bbb', 'mmm', 'static/MEDIA/professional-photographer_v0ji0qG.jpg', 'static/MEDIA/cap%20img3_mici1Cz.jpg', 'malayalam', '2', 1),
(2, 'hanock', 20, '6.2', 'hank', 'male', 'fgjjhvjbvjhvhgy', '5698326545', 'hank', 'hdahgjhahjd', 'kidnapping', 'car', 'gajhgdhjag', '/MEDIA/close.png', '/MEDIA/g3.jpg', 'malayalam', '13', 1),
(3, 'hanock', 20, '6.2', 'hank', 'male', 'fgjjhvjbvjhvhgy', '5698326545', 'hank', 'hdahgjhahjd', 'kidnapping', 'car', 'gajhgdhjag', '/MEDIA/close_32YO3Xx.png', '/MEDIA/g3_9u7R0qu.jpg', 'malayalam', '13', 1),
(4, 'hanock', 20, '6.2', 'hank', 'male', 'jhghjghgvbv', '5698326545', 'hank', 'hdahgjhahjd', 'kidnapping', 'car', 'gajhgdhjag', '/MEDIA/banner3.jpg', '/MEDIA/banner2.jpg', 'malayalam', '13', 1),
(5, 'amal', 21, '6.2', 'ambi', 'male', 'kurishumootil ', '1234567891', 'ambi', 'hdahgjhahjd', 'kidnapping', 'car', 'black spot on face', '/MEDIA/wallpaperflare-cropped.jpg', '/MEDIA/wallpaperflare-cropped_0FJM2qy.jpg', 'malayalam', '12', 1),
(6, 'amal', 21, '6.2', 'ambi', 'male', 'kurishumootil ', '1234567891', 'ambi', 'hdahgjhahjd', 'kidnapping', 'car', 'black spot on face', '/MEDIA/wallpaperflare-cropped_FnDEkwr.jpg', '/MEDIA/wallpaperflare-cropped_axRCkzX.jpg', 'malayalam', '12', 1),
(7, 'rohan', 22, '6.4', 'rohan', 'male', 'gta v', '5236456435', 'rohan', 'hdahgjhahjd', 'kidnapping', 'car', 'black', '/MEDIA/Dark-Anime-HD-Wallpaper-4K-Laptop_Kl4hut0.jpg', '/MEDIA/papers.co-aq13-spiderman-hero-dark-bw-art-illustration-35-3840x2160-4k-wallpaper_TDousTK.jpg', 'english', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cusreg`
--

CREATE TABLE IF NOT EXISTS `cusreg` (
  `cusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cusreg`
--

INSERT INTO `cusreg` (`cusid`, `name`, `addr`, `dob`, `gender`, `dis`, `email`, `phno`, `username`) VALUES
(1, 'manu', 'gggg', '2020-01-02', 'male', 'Ernakulam', 'manu@gmail.com', '9874563254', 'manu'),
(2, 'shelvin', 'hagjghs', '2005-04-11', 'male', 'Ernakulam', 'shelvin@gmail.com', '9876543212', 'shelvin'),
(3, 'alimola', 'alimolavilla', '2023-03-30', 'male', 'kannur', 'ali.mola@gmail.com', '9876543212', 'alimola'),
(4, '', '', '', 'None', '--Select District--', '', '', ''),
(5, 'firoz', 'njjhgjgj', '2023-03-11', 'male', 'kottayam', 'firoz@gmail.com', '8129421480', 'firoz'),
(6, 'dq', 'ZDfvasdfv', '2023-05-03', 'female', 'kasargod', 'dq@gmail.com', '9876543210', 'dq');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pdate` date NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `filesendstation`
--

CREATE TABLE IF NOT EXISTS `filesendstation` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `fromuser` varchar(50) NOT NULL,
  `touser` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `file` varchar(300) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `filesendstation`
--

INSERT INTO `filesendstation` (`fileid`, `fromuser`, `touser`, `sub`, `file`, `date`) VALUES
(1, '1', '1', 'regarding a case', 'static/MEDIA/frontpages.output_eIyflLf.pdf', '2020-03-06'),
(2, '2', '1', 'ggwp', '/MEDIA/banner1_JEgZYyz.jpg', '2023-03-22'),
(3, '1', '2', 'suspect', '/MEDIA/Dark-Anime-HD-Wallpaper-4K-Laptop_10C29bZ.jpg', '2023-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`, `status`) VALUES
('manu', 'manu', 'customer', 'not approved'),
('admin', 'admin', 'admin', 'approved'),
('south', 'south', 'station', 'approved'),
('john', 'john', 'DGP', 'approved'),
('north', 'north', 'station', 'approved'),
('gopal', 'gopal', 'DGP', 'approved'),
('shelvin', 'shelvin', 'customer', 'not approved'),
('alimola', 'ali@mola', 'customer', 'not approved'),
('', '', 'customer', 'not approved'),
('firoz', 'firoz', 'customer', 'not approved'),
('east', 'east', 'station', 'approved'),
('soni', 'soni', 'DGP', 'approved'),
('dq', '1234', 'customer', 'not approved');

-- --------------------------------------------------------

--
-- Table structure for table `missingitem`
--

CREATE TABLE IF NOT EXISTS `missingitem` (
  `missid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) NOT NULL,
  `missingdate` date NOT NULL,
  `description` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `cdate` date NOT NULL,
  `cid` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  `reply` varchar(50) NOT NULL,
  PRIMARY KEY (`missid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `missingitem`
--

INSERT INTO `missingitem` (`missid`, `itemname`, `missingdate`, `description`, `phno`, `cdate`, `cid`, `status`, `sid`, `reply`) VALUES
(1, 'bag', '2020-03-03', 'missing bag from bus', '9856326587', '2020-03-06', 1, 'pending', 0, 'no use'),
(2, 'bag', '2020-03-03', 'missing bag from bus', '9856326587', '2020-03-06', 1, 'not approved', 0, ''),
(3, 'watch', '2023-09-11', 'ffjhhjgjggh', '123456789', '2023-03-22', 1, 'not approved', 0, ''),
(4, 'watch', '2023-04-11', 'ffjhhjgjggh', '9876543212', '2023-03-22', 1, 'not approved', 0, ''),
(5, 'i watch', '2023-03-16', 'black', '8129421480', '2023-03-22', 2, 'not approved', 0, ''),
(6, 'Kidney', '2023-03-17', 'white kidney', '1234567891', '2023-03-22', 3, 'not approved', 0, ''),
(7, 'watch', '2023-03-11', 'black titan watch', '1234567819', '2023-03-27', 5, 'not approved', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `stationcharge` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`sid`, `name`, `stationcharge`, `addr`, `district`, `phno`, `email`, `username`) VALUES
(1, 'south', 'manu', 'south ps ernakulam', 'Ernakulam', '9874526326', 'south@gmail.com', 'south'),
(2, 'North', 'jim', 'ghgjhfkjh', 'Ernakulam', '123456789', 'gyfghhhj@gmail.com', 'north'),
(3, 'east', 'john', 'alimolavilla', 'kottayam', '9876543212', 'joseph123@gmail.com', 'east');

-- --------------------------------------------------------

--
-- Table structure for table `wantedlist`
--

CREATE TABLE IF NOT EXISTS `wantedlist` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `criminalid` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `stationid` int(11) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wantedlist`
--

INSERT INTO `wantedlist` (`wid`, `criminalid`, `description`, `stationid`) VALUES
(1, 1, 'Included in Wanted list', 1),
(2, 3, 'immediate', 1),
(3, 3, 'immediate', 1);
