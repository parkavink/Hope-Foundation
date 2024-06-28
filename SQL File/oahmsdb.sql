-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2024 at 03:11 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oahmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE IF NOT EXISTS `donate` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `phnumber` text NOT NULL,
  `mailid` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `donate` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `name`, `gender`, `phnumber`, `mailid`, `address`, `donate`, `amount`) VALUES
(1, 'arun', 'Male', '9564788854', 'svv@gmail.com', 'erd', 'Fund', '120');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `cnum` bigint(20) NOT NULL,
  `disable` varchar(25) NOT NULL,
  `proof` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `profile` varchar(120) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `rtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `dob`, `gender`, `cnum`, `disable`, `proof`, `address`, `profile`, `username`, `password`, `rtime`) VALUES
(7, 'savi', '2020-01-02', 'Female', 9564788854, 'leg ', '', 'erd', '', 'ad@gmail.c', '1234', '2024-03-11 14:47:15'),
(6, 'arun', '2022-02-15', '', 9564788854, 'leg ', '', 'treeretre', '', 'arun23', '123', '2024-03-08 07:43:25'),
(8, 'arun', '2023-01-01', 'Male', 9564788854, 'leg ', '', 'erd', '', 'aa', '12', '2024-03-11 14:52:11'),
(9, 'abi', '2023-01-01', 'Female', 9564788854, 'leg ', '', 'erd', '', 'aaa', '123', '2024-03-11 14:54:21'),
(10, 'zhan', '2023-01-01', 'Male', 9564788854, 'leg ', '', 'erd', '', 'asds', '123', '2024-03-11 14:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
`ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 8989898989, 'admin@gmail.com', 'admin', '2022-05-23 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE IF NOT EXISTS `tblcontact` (
`ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext,
  `EnquiryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2021-11-01 04:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1),
(3, 'kjhkjh', 'kjhkjh', 'gh@gmao.com', 6879879879, 'hjghgjhgjhghjghjgj ', '2022-05-27 10:45:14', 1),
(4, 'Anuj', 'Kumar', 'ak@gmail.coim', 1425362514, 'New test emssage ', '2022-06-05 09:43:45', 1),
(5, 'sara', 's', 'sara@29gmail.com', 9384401431, ' erd', '2024-03-11 15:02:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE IF NOT EXISTS `tblpage` (
`ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Today Event', '<div style="text-align: center;"><font color="#202124" face="arial, sans-serif"><b>Hope Foundation Today Events!!</b></font></div><div style="text-align: center;"><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left; font-weight: bolder;">Art Exhibition</span></div><div style="text-align: center;"><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left; font-weight: initial;">&nbsp;</span><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left; font-weight: initial;">Collaborate with local artists to host an art exhibition with a portion of the proceeds donated to the Foundation. Promote the event through art galleries, social media, and local newspapers.</span></div><div style="text-align: center;"><span style="font-weight: bolder; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left;">Yoga/Meditation Retreat</span></div><div style="text-align: center;"><span style="color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left;">Organize a yoga or meditation retreat where participants can attend workshops and classes for a suggested donation. Find a serene location and promote the event through wellness communities</span><span style="background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; text-align: left; font-weight: initial;"><br></span></div><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nline-height:115%"><o:p></o:p></span></p>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 8989998989, NULL, '10:30 am to 7:30 pm'),
(3, 'rules', 'Rules', '<div class="wpb_row vc_row-fluid vc_custom_1415091130045" style="box-sizing: inherit; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><div class="vc_col-sm-12 wpb_column column_container" style="box-sizing: inherit;"><div class="wpb_wrapper" style="box-sizing: inherit;"><div class="wpb_text_column wpb_content_element " style="box-sizing: inherit;"><div class="wpb_wrapper" style="box-sizing: inherit;"><ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;"><li style="text-align: left; box-sizing: inherit;">Firearms and weapons are not allowed in premises.</li><li style="text-align: left; box-sizing: inherit;">Keeping pets are not allowed in premises .</li><li style="text-align: left; box-sizing: inherit;">Non Vegetarian Food is Prohibited</li><li style="text-align: left; box-sizing: inherit;">All residents shall maintain discipline and ensure that other residents are not disturbed by their any act.</li><li style="text-align: left; box-sizing: inherit;">our minimum lock in period is six month and after six month if discharge require than minimum two month notice require for refund of security.</li></ul></div></div></div></div></div><div class="wpb_row vc_row-fluid vc_custom_1415091139991" style="box-sizing: inherit; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><div class="vc_col-sm-12 wpb_column column_container" style="box-sizing: inherit;"><div class="wpb_wrapper" style="box-sizing: inherit;"><div id="section-14-1416982836" class=" dt-section-head left size-default" style="box-sizing: inherit;"><h4 class="section-main-title" style="text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(47, 163, 173); font-weight: 600; font-size: 18px;">Rules for Visitors</h4><ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px;"><li style="text-align: left; box-sizing: inherit;">Visiting hours for the guest will be from 10am to 6pm , Only identified guests are allowed inside the home.</li><li style="text-align: left; box-sizing: inherit;">Guests are not allowed to stay overnight in their residentâ€™s without the permission from the management.</li></ul><h3 class="section-main-title" style="text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(47, 163, 173); font-weight: 600; font-size: 20px;">In case of Emergency / Mishappening</h3></div><div class="wpb_text_column wpb_content_element " style="box-sizing: inherit;"><div class="wpb_wrapper" style="box-sizing: inherit;"><p align="justify" style="text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;">In case of any mishappening or any emergency situation with any resident, the management shall take steps to intimate the relatives/ next of kin immediately. We will also take the necessary steps as per the protocol to control the situation in safe and respected manner.</p></div></div></div></div></div>', NULL, NULL, NULL, ''),
(4, 'eligibility', 'Eligibility', '<ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><li style="box-sizing: inherit;">Minimum Age Required is 50 years.</li><li style="box-sizing: inherit;">Person should not be suffering from any infectious disease.</li><li style="box-sizing: inherit;">The Person should be free from addiction of any kind.</li></ul>', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblseniorcitizen`
--

CREATE TABLE IF NOT EXISTS `tblseniorcitizen` (
`ID` int(5) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `DateofBirth` date NOT NULL,
  `ContactNumber` varchar(20) NOT NULL,
  `disability` varchar(120) NOT NULL,
  `proof` varchar(120) NOT NULL,
  `CommunicationAddress` varchar(100) NOT NULL,
  `ProfilePic` varchar(250) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `registertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE IF NOT EXISTS `tblservices` (
`ID` int(5) NOT NULL,
  `ServiceTitle` varchar(250) DEFAULT NULL,
  `ServiceDescription` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceTitle`, `ServiceDescription`, `CreationDate`) VALUES
(1, 'Security Facilities', '<p align="justify" style="box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Safety and security is an important responsibility of management, Old Age Home Delhi is well equiped with all safety and security features to provide safe and secure environment to the residents.</span></p><ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Emergency Alarm System.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">24Ã—7 well trained security Guard.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">CCTV Coverage of entire Building.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Fire Alarm System &amp; Fire Extinguisher Available</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Emergency Button in all Rooms and Washrooms.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Intercom Facility.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Railings available in whole building for support.</span></li></ul>', '2022-05-26 06:22:10'),
(2, 'Medical Facilities', '<p align="justify" style="box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Depending on the level of care required, our compassionate and caring staff provides around-the-clock personal care, assists with medical needs, health and exercise and also facilitates strong social connections. Our healthcare center is well-stocked with medicines and equipped to administer First Aid for most emergencies. Old Age Home Delhi provides the basic medical needs to the residents.</span></p><ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">24Ã—7 Ambulance Facility</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Nurses available</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Doctors available</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Emergency care equipment available</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Physiotherapy &amp; Personal Care Assistance</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Wheel Chair Assistance.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Dietician Consultation.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Tie up with near by multi speciality hospital.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">House Attendant</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Naturopathy.</span></li></ul>', '2022-05-26 06:22:52'),
(3, 'House Keeping Facilities', '<span style="color: rgb(0, 0, 0); font-family: Asap, sans-serif; font-size: 14px;">We have professionally trained, courteous housekeeping staff experienced in elderly care keeping, rather than just housekeeping. They are responsible for maintaining cleanliness of all living units as well as the common areas and to set the highest standard of hygience and sanitation of the facility.</span><br>', '2022-05-26 06:26:26'),
(4, 'Optional Facilities', '<p align="justify" style="box-sizing: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Keeping in mind that some senior citizens require Some unique and extra personal care, Old Age Home Delhi offers optional facilities at an extra cost :-</span></p><ul style="box-sizing: inherit; margin-right: 0px; margin-bottom: 0.5em; margin-left: 1em; list-style-position: initial; list-style-image: initial; padding: 0px; color: rgb(153, 153, 153); font-family: Asap, sans-serif; font-size: 14px;"><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Personal Attendant.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Guest Room.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">ISD Calling.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Daily need Physiotherapy.</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Toiletries Accessories .</span></li><li style="box-sizing: inherit;"><span style="box-sizing: inherit; color: rgb(0, 0, 0);">Dr. on Call.</span></li></ul>', '2022-05-26 06:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `volunter`
--

CREATE TABLE IF NOT EXISTS `volunter` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `phnumber` text NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `address` varchar(120) NOT NULL,
  `service` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `volunter`
--

INSERT INTO `volunter` (`id`, `name`, `gender`, `phnumber`, `mailid`, `address`, `service`) VALUES
(1, 'savi', 'Female', '9564788854', 'svt@gmail.com', 'erode', 'shop assistant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `username_2` (`username`), ADD FULLTEXT KEY `username` (`username`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `volunter`
--
ALTER TABLE `volunter`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblseniorcitizen`
--
ALTER TABLE `tblseniorcitizen`
MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `volunter`
--
ALTER TABLE `volunter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
