-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2014 at 06:51 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `columbandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE IF NOT EXISTS `ay` (
  `AY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACADYR` varchar(40) NOT NULL,
  PRIMARY KEY (`AY_ID`),
  UNIQUE KEY `acadyr` (`ACADYR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ay`
--


-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_CODE` varchar(30) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(11) NOT NULL,
  `AY` varchar(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `C_TIME` varchar(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL DEFAULT 'NONE',
  `SECTION` varchar(30) NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_CODE`, `SUBJ_ID`, `INST_ID`, `SYID`, `AY`, `DAY`, `C_TIME`, `IDNO`, `ROOM`, `SECTION`) VALUES
(3, 'Spiral Filipino', 438, 1, 0, '2013-2014', 'MWF', '7:30-8:30', 0, 'Room01', 'A'),
(4, 'Spiral English', 439, 1, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(5, 'Spiral Science', 441, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(6, 'Spiral T.L.E', 442, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(7, 'Spiral A.P', 443, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(8, 'Spiral Religion', 444, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE'),
(9, 'Spiral EsP.', 445, 6, 0, '2013-2014', 'NONE', 'NONE', 0, 'NONE', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_LEVEL` int(11) NOT NULL DEFAULT '1',
  `COURSE_MAJOR` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_LEVEL`, `COURSE_MAJOR`, `COURSE_DESC`, `DEPT_ID`) VALUES
(47, 'Grade 7', 7, '', 'Grade 7', 1),
(48, 'Grade 8', 8, '', 'Grade 8 ', 1),
(49, 'Grade 9', 9, '', 'Grade 9', 1),
(50, 'Grade 10', 10, '', 'Grade 10', 1),
(53, 'Grade 11', 11, '', 'Grade 11 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `DEPARTMENT_NAME`, `DEPARTMENT_DESC`) VALUES
(1, 'High School', 'High School Department');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `DAY` varchar(30) NOT NULL,
  `G_TIME` time NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  PRIMARY KEY (`GRADE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `FIRST`, `SECOND`, `THIRD`, `FOURTH`, `AVE`, `DAY`, `G_TIME`, `ROOM`, `REMARKS`, `COMMENT`) VALUES
(1, 20004277, 438, 1, 0, 30, 67, 0, 0, 3.85, 'NONE', '00:00:00', '', 'Failed', ''),
(2, 20004277, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(3, 20004207, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(4, 20004207, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(5, 20004180, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(6, 20004180, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(7, 20004180, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(8, 20004180, 441, 6, 0, 60, 78, 80, 90, 77, 'NONE', '00:00:00', '', 'Passed', ''),
(9, 20004180, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(10, 20004180, 443, 6, 0, 90, 89, 78, 90, 87, 'NONE', '00:00:00', '', 'Passed', ''),
(11, 20004180, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(12, 20004180, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(13, 20004180, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(14, 20004623, 438, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(15, 20004623, 439, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(16, 20004623, 440, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(17, 20004623, 441, 6, 0, 80, 80, 78, 80, 80, 'NONE', '00:00:00', '', 'Passed', ''),
(18, 20004623, 442, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(19, 20004623, 443, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(20, 20004623, 444, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(21, 20004623, 445, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', ''),
(22, 20004623, 447, 0, 0, 0, 0, 0, 0, 0, 'NONE', '00:00:00', '', 'NONE', '');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `INST_ID` int(30) NOT NULL AUTO_INCREMENT,
  `INST_FULLNAME` varchar(255) NOT NULL,
  `INST_ADDRESS` varchar(255) NOT NULL,
  `INST_SEX` varchar(20) NOT NULL DEFAULT 'Male',
  `INST_STATUS` varchar(20) NOT NULL DEFAULT 'Single',
  `SPECIALIZATION` text NOT NULL,
  `INST_EMAIL` varchar(255) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(40) NOT NULL DEFAULT 'Probationary',
  PRIMARY KEY (`INST_ID`),
  UNIQUE KEY `INST_EMAIL` (`INST_EMAIL`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INST_ID`, `INST_FULLNAME`, `INST_ADDRESS`, `INST_SEX`, `INST_STATUS`, `SPECIALIZATION`, `INST_EMAIL`, `EMPLOYMENT_STATUS`) VALUES
(1, 'Joken Villanueva', 'Suay Himamaylan City', 'M', 'Single', 'Computer Etc.', 'joken000189561@gmail.com', 'Probationary'),
(2, 'Erick jason Batuto', 'Kabanakalan City', 'M', 'Married', 'Computer ekc...', 'ejbatuto@hotmail.com', 'Regular'),
(3, 'Joel Bagolcol', 'KCC-TC', 'M', 'Single', 'Automotive', 'joel@yahoo.com', 'Probationary'),
(5, 'Allan', 'No whar', 'M', 'Single', 'Computer ekc...', 'allan@yahoo.com', 'Regular'),
(6, 'sdfsdfsdg', 'dfdf', 'M', 'Single', 'sdfsdf', 'joken@gmail.com', 'dfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `YR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL,
  PRIMARY KEY (`YR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `level`
--


-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE IF NOT EXISTS `major` (
  `MAJOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAJOR` varchar(30) NOT NULL,
  PRIMARY KEY (`MAJOR_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`MAJOR_ID`, `MAJOR`) VALUES
(1, 'English'),
(2, 'General'),
(3, 'Marketing Management'),
(4, 'Financial Management'),
(5, 'Filipino'),
(6, 'Philosophy'),
(7, 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PHOTO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` text NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `SIZE` int(30) NOT NULL,
  `CAPTION` varchar(255) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`PHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `photo`
--


-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `ROOM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROOM_NAME` varchar(30) NOT NULL,
  `ROOM_DESC` varchar(30) NOT NULL,
  PRIMARY KEY (`ROOM_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_ID`, `ROOM_NAME`, `ROOM_DESC`) VALUES
(0, 'Room01', 'Room01'),
(2, 'Room02', 'Room 02'),
(4, 'Room 03', 'Room 03');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE IF NOT EXISTS `schoolyr` (
  `SYID` int(11) NOT NULL AUTO_INCREMENT,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'ENROLLED',
  `DATE_RESERVED` datetime NOT NULL,
  `DATE_ENROLLED` datetime NOT NULL,
  `STATUS` varchar(30) NOT NULL DEFAULT 'New',
  PRIMARY KEY (`SYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `SEMESTER`, `COURSE_ID`, `IDNO`, `CATEGORY`, `DATE_RESERVED`, `DATE_ENROLLED`, `STATUS`) VALUES
(1, '2013-2014', 'First', 47, 20004277, 'ENROLLED', '2014-03-12 02:10:03', '0000-00-00 00:00:00', 'New'),
(2, '2013-2014', 'First', 47, 20004207, 'ENROLLED', '2014-03-12 02:32:19', '0000-00-00 00:00:00', 'New'),
(3, '2014-2015', 'First', 48, 20004277, 'ENROLLED', '2014-03-13 03:18:56', '0000-00-00 00:00:00', 'Continuing'),
(4, '2013-2014', 'First', 47, 20004180, 'ENROLLED', '2014-03-24 08:28:35', '0000-00-00 00:00:00', 'New'),
(5, '2013-2014', 'First', 47, 20004623, 'ENROLLED', '2014-03-24 09:16:15', '0000-00-00 00:00:00', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `SEM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEM` varchar(15) NOT NULL DEFAULT 'First',
  PRIMARY KEY (`SEM_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`SEM_ID`, `SEM`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE IF NOT EXISTS `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  PRIMARY KEY (`STUDSUBJ_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`) VALUES
(6, 20004207, 11, 1, 'First', '2013-2014'),
(8, 20004207, 13, 1, 'First', '2013-2014'),
(9, 20004207, 14, 1, 'First', '2013-2014'),
(10, 20004207, 15, 1, 'First', '2013-2014'),
(13, 20004277, 13, 1, 'First', '2013-2014'),
(14, 20004277, 14, 1, 'First', '2013-2014'),
(15, 20004277, 15, 1, 'First', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  PRIMARY KEY (`SUBJ_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=477 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `PRE_REQUISITE`, `COURSE_ID`, `AY`, `SEMESTER`) VALUES
(438, 'Spiral Filipino', 'Filipino for Grade 7 - Spiral Filipino', 3, '', 47, '2013-2014', 'First'),
(439, 'Spiral English', 'English for Grade 7', 3, '', 47, '2013-2014', 'First'),
(440, 'Spiral Mathematics', 'Mathematics for Grade 7 - Spiral Math', 3, '', 47, '2013-2014', 'First'),
(441, 'Spiral Science', 'Science for Grade 7', 3, '', 47, '2013-2014', 'First'),
(442, 'Spiral T.L.E', 'T.L.E for Grade 7', 3, '', 47, '2013-2014', 'First'),
(443, 'Spiral A.P', 'Araling Panlipunan for Grade 7', 3, '', 47, '2013-2014', 'First'),
(444, 'Spiral Religion', 'rekligion for Grade 7', 3, '', 47, '2013-2014', 'First'),
(445, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 47, '2013-2014', 'First'),
(446, 'MAPEH', 'MAPEH for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(447, 'MAPEH', 'MAPEH for Grade 7', 3, '', 47, '2013-2014', 'First'),
(448, 'Religion', 'Religion for Grade 8', 3, '', 48, '2013-2014', 'First'),
(449, 'Spiral Filipino', 'Filipino for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(450, 'Spiral English', 'English for Grade 8', 3, '', 48, '2013-2014', 'First'),
(451, 'Spiral Mathematics', 'Mathematics for Grade 8 ', 3, '', 48, '2013-2014', 'First'),
(452, 'Spiral Science', 'Science for Grade ', 3, '', 48, '2013-2014', 'First'),
(453, 'Spiral T.L.E.', 'T.L.E for Grade 7 ', 3, '', 48, '2013-2014', 'First'),
(454, 'Spiral A.P.', 'Araling Panlipunan for Grade 8', 3, '', 48, '2013-2014', 'First'),
(455, 'Spiral EsP.', 'EsP. for Grade 7', 3, '', 48, '2013-2014', 'First'),
(457, 'Spiral Filipino', 'Filipino for Grade 9', 3, '', 49, '2013-2014', 'First'),
(458, 'Spiral English', 'English for Grade 9', 3, '', 49, '2013-2014', 'First'),
(459, 'Spiral Mathematics', 'Mathematics for Grade 9', 3, '', 49, '2013-2014', 'First'),
(460, 'Spiral Science', 'Science for Grade 9', 3, '', 49, '2013-2014', 'First'),
(461, 'Spiral A.P.', 'Araling Panlipunan for Grade 9', 3, '', 49, '2013-2014', 'First'),
(462, 'Spiral T.L.E.', 'T.L.E for Grade 9', 3, '', 49, '2013-2014', 'First'),
(463, 'Spiral MAPEH', 'MAPEH for Grade 9', 3, '', 49, '2013-2014', 'First'),
(464, 'Values Education', 'Values Education for Grade 9', 3, '', 49, '2013-2014', 'First'),
(465, 'Computer', 'Computer for grade 9', 3, '', 49, '2013-2014', 'First'),
(466, 'Religion IV', 'Religion for Grade 10', 3, '', 50, '2013-2014', 'First'),
(467, 'Spiral Filipino', 'Filipino for Grade 10', 3, '', 50, '2013-2014', 'First'),
(468, 'Spiral Mathematics', 'Mathematics for Grade 10', 3, '', 50, '2013-2014', 'First'),
(469, 'Spiral Science', 'Science for Grade 10', 3, '', 50, '2013-2014', 'First'),
(471, 'Spiral T.L.E.', 'T.L.E for Grade 10', 3, '', 50, '2013-2014', 'First'),
(472, 'Spiral MAPEH', 'MAPEH for Grade 10', 3, '', 50, '2013-2014', 'First'),
(473, 'Values Education', 'Values Education for Grade 10', 3, '', 50, '2013-2014', 'First'),
(474, 'CAT', 'Citizens Advancement Training', 3, '', 50, '2013-2014', 'First'),
(475, 'Computer', 'Computer for grade 10', 3, '', 50, '2013-2014', 'First'),
(476, 'hjgjhggh', 'gj', 3, '', 51, '2013-2014', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE IF NOT EXISTS `tblrequirements` (
  `REQ_ID` int(30) NOT NULL AUTO_INCREMENT,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `BAPTISMAL` varchar(5) NOT NULL DEFAULT 'no',
  `ENTRANCE_TEST_RESULT` varchar(5) NOT NULL DEFAULT 'no',
  `MARRIAGE_CONTRACT` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL,
  PRIMARY KEY (`REQ_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `BAPTISMAL`, `ENTRANCE_TEST_RESULT`, `MARRIAGE_CONTRACT`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(20, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004277),
(21, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004207),
(22, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004180),
(23, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004425),
(24, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002251),
(25, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002838),
(26, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004623),
(27, 'Yes', 'Yes', 'Yes', 'No', 'No', 2001497),
(28, 'Yes', 'Yes', 'No', 'No', 'No', 20001057),
(29, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004407),
(30, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20004749),
(31, 'Yes', 'Yes', 'No', 'No', 'No', 20001484),
(32, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20003333),
(33, 'Yes', 'Yes', 'Yes', 'No', 'No', 20004510),
(34, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001779),
(35, 'Yes', 'Yes', 'No', 'No', 'No', 20001482),
(36, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001937),
(37, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001648),
(38, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002408),
(39, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20005936),
(40, 'No', 'No', 'No', 'No', 'No', 20001550),
(41, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002270),
(42, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001932),
(43, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001498),
(45, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001503),
(46, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001925),
(47, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001658),
(48, 'Yes', 'No', 'No', 'No', 'No', 20001550),
(49, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001957),
(50, 'No', 'No', 'No', 'No', 'No', 20001456),
(51, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001673),
(52, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001557),
(53, 'Yes', 'Yes', 'Yes', 'No', 'No', 20002311),
(54, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20001742),
(55, 'Yes', 'Yes', 'Yes', 'No', 'Yes', 20002106),
(56, 'Yes', 'Yes', 'Yes', 'No', 'No', 20001853),
(57, 'Yes', 'Yes', 'No', 'No', 'Yes', 20001645),
(58, 'Yes', 'Yes', 'No', 'Yes', 'No', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE IF NOT EXISTS `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FATHER` varchar(255) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `BOARDING` varchar(5) NOT NULL DEFAULT 'no',
  `WITH_FAMILY` varchar(5) NOT NULL DEFAULT 'yes',
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `OTHER_PERSON_SUPPORT` varchar(255) NOT NULL,
  `ADDRESS` text NOT NULL,
  `IDNO` int(30) NOT NULL,
  PRIMARY KEY (`DETAIL_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER`, `FATHER_OCCU`, `MOTHER`, `MOTHER_OCCU`, `BOARDING`, `WITH_FAMILY`, `GUARDIAN`, `GUARDIAN_ADDRESS`, `OTHER_PERSON_SUPPORT`, `ADDRESS`, `IDNO`) VALUES
(20, 'Walter Da-anoy', 'Employee', 'Jessielyn Da-anoy', 'Housewife', 'No', 'No', '', '', '', '', 20004277),
(21, 'Mario P. Amparado', 'OFW', 'Yolly D. Odasco', 'Housewife', 'Yes', 'No', 'Domingga Gomez', '', '', '', 20004207),
(22, 'robert P. ferrer', 'fisherman', 'josephene b. ferrer', 'Housewife', 'Yes', 'Yes', 'josephene b ferrer', 'brgy.cayhagan,sipalay city,neg.occ.', 'sister', '', 20004180),
(23, 'Renelio Pintuan', 'Driver', 'Nanette Pintuan', 'OFW', 'No', 'Yes', 'Ma. Melca Jaranilla', 'Coloso St. Kabankalan City', '', '', 20004425),
(24, '', '', 'dionalita apawan', 'housewife', 'No', 'No', 'sofronia apawan', 'adela st. brgy. 1', '', '', 20002251),
(25, 'Pablito Vicente', 'Laborer', 'Crislie Vicente', 'Laborer', 'No', 'Yes', 'Angelo Lopez', 'Coloso Subd. Kabankalan City', '', '', 20002838),
(26, 'Luis Balico', 'N/A', 'Leonisa Balico', 'N/A', 'No', 'Yes', 'Mary Ann Balico', 'Brgy Isidro Village, Talubangi Kabankalan City', 'N/A', '', 20004623),
(27, 'Panfilo Catalan Buendia', 'Vendors', 'Gloria Aspan Buendia', 'Vendors', 'Yes', 'Yes', 'Mr. and Mrs. Gloria Buendia', 'Brgy. Tapi, Kabankalan City', '', '', 2001497),
(28, 'Ramar salazar', 'hair stylist', 'Kathryn Lucy salazar', 'none', 'No', 'Yes', 'DR. MIlagros Aurea Sabidalas ', '12 Rizal St. kabankalan city', '', '', 20001057),
(29, 'Ronald Martisano', 'laxborer', 'Jean Martisano', 'Housewife', 'No', 'Yes', '', '', '', '', 20004407),
(30, 'Rollen Gealon', 'Laborer', 'Marife Gealon', 'Housewife', 'No', 'Yes', 'Mr. & Mrs Rollen Gealon', 'Brgy.2 Ilog, Neg.Occ', '', '', 20004749),
(31, 'James Andrew Benedicto', 'Cook', 'Ma. Sheila Benedicto', 'DH', 'No', 'Yes', '', '', '', '', 20001484),
(32, 'Leve Voluntate', 'Farmer', 'Lerma Voluntate', 'Deceased', 'No', 'Yes', '', '', 'Mr.Von Martir', 'Bacolod City', 20003333),
(33, 'Rudy B. Magada, Jr', 'Fish Dealer', 'Mary I. Magada', 'Housewife', 'No', 'Yes', '', '', 'Ezperanza Magada', 'Libon, Tuyom, Cauayan, Negros Occidental', 20004510),
(34, 'Dionisio C. Herrera', 'Farmer', 'Rubylan O. Herrera', 'plane housewife', 'No', 'Yes', 'Dionisio c. Herrera', 'Mohon Brgy1 . kab city neg occ', '', '', 20001779),
(35, 'Adriano Bayog', 'Farmer', 'Mamerna Dulana', 'housekeeper', 'Yes', 'No', 'Seminary Fathers', 'Kabankalan City', 'Parish', 'La Castellana', 20001482),
(36, 'Ruben J. Principe', '', 'Evelina Gumawa Principe', '', 'No', 'No', '', '', '', '', 20001937),
(37, 'Deceased', 'Deceased', 'Lorna Bandolos', 'Housewife', 'No', 'Yes', '', 'Lorna Bandolos', '', 'Brgy Dancalan Ilog Negros Occidental', 20001648),
(38, 'AMBROCIO SERION', 'FARMER', 'NORMENDA SERION', 'HOUSE WIFE', 'No', 'No', 'JONALYN BUGALON', 'Kabankalan City', 'JONALYN BUGALON', 'KABANKALAN CITY', 20002408),
(39, 'no', '', 'Merlita Macurio', 'housewife', 'No', 'No', 'Gerom Bello', 'Brgy,1 fzo subd.', '', '', 20005936),
(40, 'b', '', '', '', 'No', 'No', '', '', '', '', 20001550),
(41, 'Mr. Edgar C. Macario', 'Farmer', 'Mrs. Hilda F. Macario', 'Housewife', 'No', 'Yes', 'Mrs. Imelda M. Gatoc', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'Mr. Robert C. Macario', 'Brgy. Salong Kabankalan City', 20002270),
(42, 'Virgilio Puyogao', 'Carpenter', 'Angelica Puyogao', 'Housewife', 'No', 'Yes', 'Virgilio Puyogao', 'Dancalan, Ilog, Negros Occidental', 'Annabel Puyogao', 'Dancalan, Ilog, Negros Occidental', 20001932),
(43, 'William Bulgado', 'Driver', 'Lolita Bulgado', 'Housewife', 'Yes', 'Yes', 'William Bulgado', 'magsaysay tabu ilog neg.occ', 'none', 'none', 20001498),
(45, 'Ricardo Tayoba Cabiten', 'Farmer', 'Nelly Cuenca Cabiten', 'Housewife', 'No', 'Yes', 'Nancy Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 'Romar Cuenca Cabiten', 'Mambugsay, Cauayan, Negros Occidental', 20001503),
(46, 'Joenarie CastaÃ±o', 'Laborer', 'Jeanly CastaÃ±o', 'Housewife', 'No', 'Yes', 'Melinde CastaÃ±o', 'Brgy. Daan Banua, Kabankalan City', 'None', 'N.A', 20001925),
(47, 'Alex Flores', 'Carpenter', 'Nelfa L. Flores', 'Brgy. Custodian', 'No', 'Yes', 'Nelfa L. Flores', 'Brgy. Camugao, Kabankalan City', 'Maria Elena T. Flores', 'Brgy. Camugao, Kabankalan City', 20001658),
(48, 'BENIGNO B. CORTEZ', 'FARMER', 'TERESITA P. CORTEZ', 'HOUSE WIFE', 'Yes', 'No', 'BENIGNO B. CORTEZ', 'TABUGON,kABANKALAN CITY', 'NONE', 'NONE', 20001550),
(49, 'Samuel Daulong', 'Construction Worker', 'Mariles Daulong', 'Office employee', 'Yes', 'Yes', 'Mariles Daulong', 'Caliling,Cauayan Negros Occidental', 'Henry L. Jordan', 'Brgy. Binicuil, Kabankalan City', 20001957),
(50, 'Diosdado Arillo', 'Employee', 'Jesusa Arillo', 'House Wife', 'Yes', 'No', 'Nilda Jestopa', 'Nilda Jestopa', '', 'Adela St. Kabankalan City', 20001456),
(51, 'Jesus M. Gamala', 'Farmer', 'Carmen N. Gamala', 'Housewife', 'Yes', 'No', 'Saro Yana', 'Bonifacio St.Kabankalan City', 'Jeza Gamala', 'DasmariÃ±as Cavite', 20001673),
(52, 'Raul D. Deanon', 'Driver', 'Jonah O. Deanon', 'Housewife', 'No', 'Yes', 'Jonah O. Deanon', 'Dancalan Ilog, Neg, Occ', '', '', 20001557),
(53, 'Ernesto Elijan', 'Welder', 'Emilia Elijan', 'Vendor', 'No', 'Yes', 'Ernalyn Elijan Jamon', 'Pinaguinpinan, KAbankalan City', 'Erline Elijan', 'Saudi Rihad', 20002311),
(54, 'Edward E. Geria', 'Seaman', 'Nilfa G. Geria', 'Agriculturist', 'No', 'Yes', 'Nilfa G.Geria', 'Brgy.Guiljungan Cauayan Negros Occidental', '', '', 20001742),
(55, 'Benjie Melanio Sr.', 'Farmer', 'Delia Melanio', 'Housewife', 'No', 'Yes', 'Benjie Melanio', 'Brgy. Linao', '', '', 20002106),
(56, 'Jose Romel T. Silleva', 'Carpenter', 'Daisy O. Silleva', 'House Wife', 'No', 'Yes', 'Daisy O. Silleva', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'Romsdaen O. SIlleva', 'iloilo City', 20001853),
(57, 'Dionisio espadero', 'Farming', 'Rosita Espadero', 'House wife', 'No', 'Yes', 'Erlinda Guinson', 'Tapi kab City', 'Sister', 'Tapi kab City', 20001645),
(58, '', '', '', '', 'No', 'No', '', '', '', '', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE IF NOT EXISTS `tblstudent` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `STATUS`, `AGE`, `NATIONALITY`, `RELIGION`, `CONTACT_NO`, `HOME_ADD`, `EMAIL`) VALUES
(17, 20004277, 'JESTERRAMY', 'DA-ANOY ', 'PATETE', 'F', '1995-06-14', 'Butuan City', 'Single', 19, 'Filipino', 'roman catholic', '09099754195', 'Brgy Camugao Kabankalan City', 'jesterramy14@yahoo.com'),
(18, 20004207, 'LHENYL GRACE', 'AMPARADO', 'ODASCO', 'F', '1995-08-27', 'Lancaan Dasmarinas Cavite', 'Single', 18, 'Filipino', 'roman catholic', '09263621995', 'Yao Yao Cauayan negros Occidental', 'lhenylgraceamparado@yahoo.com'),
(19, 20004180, 'MYLENE', 'FERRER', 'BALUCAN', 'F', '1972-05-22', 'brgy.cayhagan,sipalay city,neg.occ.', 'Single', 18, 'Filipino', 'roman catholic', '091071717257', 'brgy.cayhagan,sipalay city,neg.occ.', 'macaferrer@yahoo.com'),
(20, 20004425, 'JOHN KENNETH', 'PINTUAN', 'JARANILLA', 'M', '1996-05-14', 'PGH Manila', 'Single', 17, 'Filipino', 'Roman Catholic', '09305373831', 'Villa San jose Brgy. 6 Kabankalan City Negros Occidental', 'Pintuan123@yahoo.com'),
(21, 20002251, 'ADRIAN', 'APAWAN', 'ELLORAN', 'M', '1995-10-26', 'bacolod city', 'Single', 18, 'filipino', 'roman catholic', '09128214525', 'adela st. brgy.1', 'pidska_dian@yahoo.com'),
(22, 20002838, 'MARK ANTHONY', 'VICENTE', 'TITONG', 'M', '1995-10-19', 'Kabankalan Cit y', 'Single', 18, 'Filipino', 'Roman Catholic', '+639071564380', '', 'mav.makeu_19@ymail.com'),
(23, 20004623, 'SHARAH MAE', 'BALICO', 'PILLONES', 'F', '1990-11-01', 'Tagoloan Misamis Oriental', 'Single', 23, 'Filipino', 'Catholic', '09216230993', 'Brgy Isidro Village, Talubangi Kabankalan City', 'Sharahmae_balico@yahoo.com'),
(24, 2001497, 'RAFFY', 'BUENDIA', 'RENDON', 'M', '1993-04-13', 'Tapi, Kabankalan City', 'Single', 20, 'Filipino', 'Roman Catholic', '09483774901', 'Brgy. Tapi, Kabankalan City, Negros Occidental', 'Zieken@yahoo.com'),
(25, 20001057, 'EVAN LLOYD', 'SALAZAR', 'AYALIN', 'M', '1995-05-17', 'Kabankalan City', 'Single', 18, 'filipino', 'roman catholic', '09173077451', '12 rizal St.kabankalan CIty', 'Evanlloydsalazar@yahoo.com'),
(26, 20004407, 'JOHN MARK', 'MARTISANO', 'DEPRA', 'M', '1993-06-17', 'Ilog, Neg. Occ', 'Single', 20, 'Pilipino', 'Catholic', '09469080812', 'So. Malabong Andulauan Ilog, Neg. Occ.', 'freestyle05@yahoo.com'),
(27, 20004749, 'JAMAICA JAIRAH', 'GEALON', 'DELA CRUZ', 'F', '1994-01-12', 'Brgy.2 Ilog,Neg.Occ.', 'Single', 19, 'Filipino', 'Roman Catholic', '09089917220', 'Brgy.2 Ilog Negros Occidental', 'gealon12@yahoo.com.ph'),
(28, 20001484, 'JAMES ANGELO', 'BENEDICTO', 'GARANGANAO', 'M', '1993-11-18', 'Bacolod City', 'Single', 20, 'Filipino', 'Catholic', '09305446790', 'Dancalan Ilog, Negros Occidental', 'jamesangelobenedicto@yahoo.com'),
(29, 20003333, 'JENEBIE', 'VOLUNTATE', 'TABUCON', 'F', '1991-06-17', 'Kabankalan', 'Single', 22, 'Filipino', 'Roman Catholic', '09102247024', 'Brgy.Camansi,Kabankalan City,Neg.Occ.', 'jhen1704_cute@yahoo.com'),
(30, 20004510, 'RUDY', 'MAGADA, I', 'ITONA', 'M', '1995-02-05', 'Calumpang, Cauayan, Negros Occidental', 'Single', 18, 'Filipino', 'Roman Catholic', '09106910482', 'Libon, Tuyom, Cauayan, Negros Occidental', 'magadarudy@yahoo.com'),
(31, 20001779, 'JOEVEL', 'HERRERA', 'GONZALES', 'M', '1993-05-16', 'Negros Occidental', 'Single', 20, 'Filipino', 'Roman Catholic', '09093789858', 'Brgy 1,Kab city ,Neg Occ', 'herrerajovel@yahoo.com'),
(32, 20001482, 'ALDREN', 'BAYOG', 'DULANA ', 'M', '1993-12-27', 'La Castellana', 'Single', 20, 'Filipino', 'Roman Catholic', '09077898435', 'Kabankalan City', 'Aldz_bayog@yahoo.com'),
(33, 20001937, 'MERRY GRACE', 'PRINCIPE', 'GUMAWA', 'F', '1988-03-12', 'Candoni', 'Single', 25, 'Filipino', 'Roman Catholic', '09094397440', 'Pabera St.Brgy.East,Candoni, Negros Occidental', 'merrygraceprincipe@yahoo.com'),
(34, 20001648, 'SHIELA MARIE', 'BANDOLOS', 'TADAYA', 'F', '1990-08-21', 'Brgy. Dancalan Ilog Negros Occidental', 'Single', 22, 'Filipino', 'Roman Catholic', '09095596773', 'Brgy. Dancalan Ilog Negros Occidental', 'Marie_Bandolos@yahoo.com'),
(35, 20002408, 'ANALYN', 'SERION', 'ONLAGADA', 'F', '1993-10-30', 'Bry. TAMPALON KABANKALAN CITY', 'Single', 20, 'Filipino', 'Catholic', '09476154838', 'Kabankalan City', 'Analynserion@yahoo.com'),
(36, 20005936, 'JEAN', 'MACURIO', 'GONDAO', 'F', '1994-10-29', 'Brgy.Bantayan', 'Single', 19, 'Filipino', 'Baptist', '09125341710', 'Brgy. Bantayan Kabankalan City', 'jean_29_jake@yahoo.com'),
(37, 20001550, 'BENIGNO', 'CORTEZ', 'LACPAO', 'M', '1992-02-03', 'DUMAGUETE', 'Single', 21, 'FILIPINO', 'BAPTIST', '09097313999', 'TABUGON,KABANKALAN CITY,NEGROS OCCIDENTAL', 'deadlyjay_23@yahoo.com'),
(38, 20002270, 'ARHIL JUN', 'MACARIO', 'FERNANDEZ', 'M', '1993-06-12', 'Cabintagan, Brgy. Linao', 'Single', 20, 'Filipino', 'Roman Catholic', '09489776185', 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', 'elehra_jun_09@yahoo.com'),
(39, 20001932, 'ANA MAE', 'PUYOGAO', 'LACSON', 'F', '1992-10-11', 'Dancalan, Ilog, Neg. Occ', 'Single', 21, 'Filipino', 'Baptist', '09079002850', 'Brgy. Dancalan, Ilog, Negros Occidental', 'puyogaoanamae@yahoo.com'),
(40, 20001498, 'GINA', 'BULGADO', 'MALABAGO', 'F', '1992-06-28', 'Magsaysay tabu ilog ', 'Single', 21, 'Filipino', 'Roman Catholic', '0912-981-4177', 'magsaysay tabu,ilog negros occidental', 'carlghin_52@yahoo.com'),
(42, 20001503, 'RHEA MAY', 'CABITEN', 'CUENCA', 'F', '1992-05-01', 'Mambugsay, Cauayan, Negros Occidental', 'Single', 21, 'Filipino', 'Roman Catholic', '09097862920', 'Mambugsay, Cauayan, Negros Occidental', 'rean7901@gmail.com'),
(43, 20001925, 'JOJEAN', 'CASTAÃ±O', 'SOBERANO', 'F', '1994-09-27', 'Silay City', 'Single', 19, 'Filipino', 'Roman Catholic', '09122543919', 'Brgy. Daan Banua, Kabankalan City', 'Jojean_c@yahoo.com'),
(44, 20001658, 'STEVE', 'FLORES', 'LIPER', 'M', '1993-01-02', 'Brgy. Camugao, Kabankalan City', 'Single', 21, 'Filipino', 'Roman Catholic', '09077659710', 'Brgy. Camugao, Kabankalan City', 'skevinz_23@ymail.com'),
(46, 20001957, 'MA. LAVINIA', 'DAULONG', 'CORSINO', 'F', '1994-06-09', 'Caliling,Cauayan Neg. Occ', 'Single', 19, 'Filipino', 'Roman Catholic', '09073837380', 'Caliling,Cauayan Negros Occidental', 'corsin90@yahoo.com'),
(47, 20001456, 'DIWANNIE', 'ARILLO', 'PAGUNSAN', 'F', '1992-10-12', 'Brgy.Tabugon Kabankalan City Neg. Occ.', 'Single', 21, 'Filipino', 'Roman Catholic', '09484525429', 'Brgy. Tabugon Kabankalan City Neg. Occ.', 'dj_arillo@yahoo.com'),
(48, 20001673, 'CARJEI', 'GAMALA', 'NAZARETH', 'M', '1993-04-28', 'Bulata', 'Single', 20, 'Filipino', 'Catholic', '09484207156', 'Bulata Cauyan Negros Occidental', 'kai_luv@yahoo.com'),
(49, 20001557, 'JENNY JOY', 'DEANON', 'O.', 'F', '1992-12-16', 'Dancalan Ilog,Neg, Occ', 'Single', 22, 'Filipino', 'Roman Catholic', '09466021131', 'Dancalan Ilog Neg,Occ', 'jj_deah16@Yahoo.com'),
(50, 20002311, 'ELSIE', 'ELIJAN', 'TABLIGAN', 'F', '1989-10-08', 'Provincial Hospital Bacolod City', 'Single', 24, 'Filipino', 'Baptist', '09128990012', 'Malinao, Dancalan, Ilog Negros Occidental', 'cute_elz20@yahoo.com'),
(51, 20001742, 'GERGEN MAE', 'GERIA', 'GADOT', 'F', '1994-05-19', 'BAcolod City', 'Single', 19, 'Filipino', 'Roman Catholic', '09129207751', 'Brgy.Guiljungan Cauayan Negros Occidental', 'geriaergenmage@yahoo.com'),
(52, 20002106, 'JEROM', 'MELANIO', 'BANDOLON', 'M', '1992-10-12', 'Kabankalan City', 'Single', 21, 'Filipino', 'Cathilic', '09303950074', 'Brgy. Linao, Kabankalan City', 'melaniojerom@yahoo.com'),
(53, 20001853, 'LIEZL', 'SILLEVA', 'ORDOÃ±A', 'F', '1994-05-19', 'Su-ay', 'Single', 19, 'Pilipino', 'Catholic', '09122319960', 'Mapait, Su-ay, Himamaylan City, Negros Occidental', 'lieztryx_16@yahoo.com'),
(54, 20001645, 'ROSELYN', 'ESPADERO', 'T', 'F', '1989-02-11', 'dancalan ilog', 'Single', 24, 'filipino', 'Catholic', '09122292298', 'tapi kab city', 'roselyt.espadero@yahoo.com'),
(55, 123456, 'KEVIN', 'GARGAR', 'DFD', 'M', '2013-07-13', 'bacolod city', 'Single', 12, '', '', '', '', 'Kev@yahoo.cpm');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(1, 'Janno Palacios', 'janobe@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Administrator'),
(3, 'Joken Villanueva', 'joken@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Administrator'),
(4, 'Hatch Villanueva', 'hatchvillanueva16@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Registrar'),
(6, 'joenin', 'joenin@yahoo.com', '25f3c6036a19460cd5d3f302fa7b99e5be56cb0e', 'Encoder'),
(7, 'Erick jason Batuto', 'ejbatuto@hotmail.com', 'ee9800e8361e948d0106b38fc6e6311ee238beed', 'Administrator'),
(8, 'joken', 'j@y.c', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Student'),
(9, 'Allan', 'allan@yahoo.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher'),
(10, 'sdfsdfsdg', 'joken@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Teacher');
