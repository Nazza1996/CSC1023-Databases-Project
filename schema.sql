-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2024 at 10:21 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nwatkins02`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `applicationId` int(11) NOT NULL,
  `jobSeekerId` int(11) NOT NULL,
  `jobId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`applicationId`, `jobSeekerId`, `jobId`, `statusId`) VALUES
(2, 25, 42, 6),
(3, 49, 18, 3),
(4, 8, 19, 1),
(5, 42, 28, 5),
(6, 17, 50, 4),
(7, 36, 3, 7),
(8, 30, 10, 5),
(9, 21, 14, 6),
(10, 50, 27, 3),
(11, 12, 5, 2),
(12, 27, 11, 1),
(13, 45, 38, 6),
(14, 18, 24, 6),
(15, 8, 20, 4),
(16, 34, 30, 5),
(17, 22, 39, 2),
(18, 13, 47, 1),
(19, 5, 22, 3),
(20, 33, 49, 6),
(21, 10, 7, 7),
(22, 59, 15, 2),
(23, 50, 32, 1),
(24, 16, 56, 4),
(25, 1, 9, 5),
(26, 31, 43, 3),
(27, 20, 8, 6),
(28, 40, 2, 7),
(29, 56, 59, 3),
(30, 9, 31, 1),
(31, 25, 53, 5),
(32, 17, 46, 7),
(33, 37, 29, 2),
(34, 44, 26, 6),
(35, 35, 54, 4),
(36, 15, 12, 3),
(37, 7, 48, 1),
(38, 19, 51, 6),
(39, 51, 33, 7),
(40, 53, 6, 5),
(41, 32, 40, 4),
(42, 26, 58, 2),
(43, 11, 34, 1),
(44, 45, 16, 3),
(45, 3, 52, 6),
(46, 24, 57, 7),
(47, 43, 13, 5),
(48, 55, 41, 4),
(49, 39, 55, 2),
(50, 22, 58, 1),
(51, 46, 32, 3),
(52, 52, 14, 6),
(53, 6, 24, 7),
(54, 8, 17, 5),
(55, 28, 29, 4),
(56, 36, 2, 2),
(57, 48, 30, 1),
(58, 55, 3, 5),
(59, 27, 41, 6),
(60, 50, 57, 7),
(61, 10, 19, 3),
(62, 14, 13, 4),
(63, 5, 47, 5),
(64, 23, 50, 2),
(65, 33, 51, 1),
(66, 42, 25, 7),
(67, 54, 9, 6),
(68, 7, 22, 4),
(69, 39, 31, 3),
(70, 46, 6, 2),
(71, 19, 45, 5),
(72, 27, 26, 1),
(73, 31, 34, 7),
(74, 11, 23, 3),
(75, 16, 15, 2),
(76, 37, 35, 1),
(77, 9, 27, 6),
(78, 18, 40, 4),
(79, 25, 36, 3),
(80, 36, 57, 2),
(81, 3, 58, 1),
(82, 28, 38, 7),
(83, 42, 5, 5),
(84, 57, 26, 4),
(85, 32, 19, 3),
(86, 41, 24, 2),
(87, 49, 49, 1),
(88, 6, 20, 6),
(89, 50, 7, 7),
(90, 19, 58, 4),
(91, 12, 1, 5),
(92, 29, 33, 3),
(93, 23, 40, 2),
(94, 37, 56, 1),
(95, 18, 21, 6),
(96, 4, 12, 7),
(97, 33, 46, 5),
(98, 27, 39, 4),
(99, 10, 13, 3),
(100, 56, 42, 2),
(101, 11, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `applicationStatus`
--

CREATE TABLE `applicationStatus` (
  `statusId` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicationStatus`
--

INSERT INTO `applicationStatus` (`statusId`, `status`) VALUES
(6, 'Accepted'),
(2, 'In Review'),
(5, 'Interview Accepted'),
(3, 'Interview Offered'),
(4, 'Interview Rejected'),
(1, 'Received'),
(7, 'Rejected');

-- --------------------------------------------------------

--
-- Stand-in structure for view `completedInterviews`
-- (See below for the actual view)
--
CREATE TABLE `completedInterviews` (
`Job Seeker ID` int(11)
,`Forename` varchar(50)
,`Surname` varchar(50)
,`DOB` date
,`Email` varchar(100)
,`Phone Number` varchar(11)
,`Interview Date` date
,`Job Title` varchar(50)
,`Employer` varchar(50)
,`Score` int(2)
,`Update Status` int(11)
,`Comments` varchar(255)
,`Improvements` varchar(255)
,`Strengths` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `employerContacts`
--

CREATE TABLE `employerContacts` (
  `contactId` int(11) NOT NULL,
  `forename` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `emailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employerContacts`
--

INSERT INTO `employerContacts` (`contactId`, `forename`, `surname`, `contactNo`, `emailAddress`) VALUES
(1, 'James', 'Smith', '07412345678', 'james.smith@gmail.com'),
(2, 'Olivia', 'Johnson', '07523456789', 'olivia.johnson@hotmail.com'),
(3, 'Jack', 'Williams', '07734567890', 'jack.williams@outlook.com'),
(4, 'Emily', 'Brown', '07645678901', 'emily.brown@aol.com'),
(5, 'Thomas', 'Jones', '07856789012', 'thomas.jones@yahoo.com'),
(6, 'Amelia', 'Taylor', '07967890123', 'amelia.taylor@live.com'),
(7, 'William', 'Davis', '07078901234', 'william.davis@gmail.com'),
(8, 'Ava', 'Evans', '07189012345', 'ava.evans@hotmail.com'),
(9, 'Oliver', 'Wilson', '07290123456', 'oliver.wilson@outlook.com'),
(10, 'Sophia', 'Johnson', '07301234567', 'sophia.johnson@yahoo.com'),
(11, 'Benjamin', 'Wright', '07412345678', 'benjamin.wright@aol.com'),
(12, 'Mia', 'Robinson', '07523456789', 'mia.robinson@hotmail.com'),
(13, 'Harry', 'Thompson', '07634567890', 'harry.thompson@yahoo.com'),
(14, 'Isabella', 'White', '07745678901', 'isabella.white@live.com'),
(15, 'Jacob', 'Hughes', '07856789012', 'jacob.hughes@gmail.com'),
(16, 'Grace', 'Edwards', '07967890123', 'grace.edwards@hotmail.com'),
(17, 'Daniel', 'Green', '07078901234', 'daniel.green@live.com'),
(18, 'Charlotte', 'Hall', '07189012345', 'charlotte.hall@yahoo.com'),
(19, 'Joseph', 'Evans', '07290123456', 'joseph.evans@aol.com'),
(20, 'Jessica', 'Turner', '07301234567', 'jessica.turner@gmail.com'),
(21, 'George', 'Carter', '07412345678', 'george.carter@hotmail.com'),
(22, 'Sophie', 'Collins', '07523456789', 'sophie.collins@yahoo.com'),
(23, 'Samuel', 'Morris', '07634567890', 'samuel.morris@live.com'),
(24, 'Evie', 'Baker', '07745678901', 'evie.baker@hotmail.com'),
(25, 'Adam', 'King', '07856789012', 'adam.king@yahoo.com'),
(26, 'Lily', 'Adams', '07967890123', 'lily.adams@live.com'),
(27, 'Michael', 'Parker', '07078901234', 'michael.parker@hotmail.com'),
(28, 'Alice', 'Graham', '07189012345', 'alice.graham@yahoo.com'),
(29, 'Alex', 'Mitchell', '07290123456', 'alex.mitchell@outlook.com'),
(30, 'Sophie', 'Turner', '07011223344', 'sophie.turner@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employerHireRejectionStats`
-- (See below for the actual view)
--
CREATE TABLE `employerHireRejectionStats` (
`Employer ID` int(11)
,`Employer` varchar(50)
,`Total Completed Interviews` bigint(21)
,`Total Hired` decimal(22,0)
,`Total Rejected` decimal(22,0)
,`Hiring Rate` decimal(27,1)
,`Rejection Rate` decimal(27,1)
);

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `employerId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`employerId`, `name`) VALUES
(21, 'Abernathy-Parker'),
(14, 'Adams-Cummings'),
(22, 'Anderson, Fay and Keebler'),
(3, 'Barton, Rohan and Collier'),
(10, 'Bergnaum Inc'),
(13, 'Boyer Inc'),
(7, 'Daugherty-Hodkiewicz'),
(23, 'Dibbert, Towne and Greenholt'),
(17, 'Dicki, Green and Paucek'),
(12, 'Dooley Inc'),
(2, 'Emmerich-Walter'),
(6, 'Gerhold, Littel and Kunze'),
(20, 'Goodwin LLC'),
(18, 'Grant Inc'),
(15, 'Hand, Yundt and Kuvalis'),
(8, 'Kiehn, Gulgowski and Conroy'),
(1, 'Kuhn LLC'),
(24, 'Moore, Tromp and Paucek'),
(9, 'Nienow LLC'),
(19, 'Pagac LLC'),
(25, 'Paucek, Raynor and Kertzmann'),
(5, 'Reichert, Robel and Harvey'),
(11, 'Reilly and Sons'),
(4, 'Renner-Medhurst'),
(16, 'Von, Orn and Schowalter');

-- --------------------------------------------------------

--
-- Table structure for table `employers_employerContacts`
--

CREATE TABLE `employers_employerContacts` (
  `employerId` int(11) NOT NULL,
  `contactId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `interviewId` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL,
  `date` date NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `score` int(2) DEFAULT NULL COMMENT 'Score out of 50',
  `comments` varchar(255) DEFAULT NULL,
  `improvements` varchar(255) DEFAULT NULL,
  `strengths` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interviews`
--

INSERT INTO `interviews` (`interviewId`, `applicationId`, `date`, `complete`, `score`, `comments`, `improvements`, `strengths`) VALUES
(1, 2, '2024-03-01', 1, 44, 'Strong candidate with excellent skills', 'Enhance time management', 'Great problem-solving abilities'),
(2, 5, '2024-03-03', 1, 42, 'Impressive skills demonstrated', 'Enhance time management', 'Strong problem-solving abilities'),
(3, 6, '2024-03-05', 1, 37, 'Good communication and problem-solving skills shown', 'Improve technical knowledge', 'Excellent team player'),
(4, 7, '2024-03-07', 1, 39, 'Solid performance', 'Enhance coding efficiency', 'Good analytical abilities'),
(5, 8, '2024-03-08', 1, 45, 'Excellent performance overall', 'Refine presentation skills', 'Outstanding analytical abilities'),
(6, 9, '2024-03-09', 1, 41, 'Strong technical skills demonstrated', 'Improve time management', 'Good communication skills'),
(7, 13, '2024-03-13', 1, 38, 'Good performance', 'Enhance coding efficiency', 'Good communication skills'),
(8, 14, '2024-03-14', 0, NULL, NULL, NULL, NULL),
(9, 15, '2024-03-10', 1, 32, 'Average performance', 'Enhance coding efficiency', 'Good communication skills'),
(10, 16, '2024-03-12', 1, 48, 'Exceptional performance, well-prepared', 'None', 'Outstanding problem solver'),
(11, 20, '2024-03-16', 1, 46, 'Impressive skills and experience', 'Enhance time management', 'Strong analytical abilities'),
(12, 21, '2024-03-18', 1, 40, 'Solid performance demonstrated', 'Refine coding efficiency', 'Good teamwork abilities'),
(13, 24, '2024-03-14', 0, NULL, NULL, NULL, NULL),
(14, 25, '2024-03-16', 0, NULL, NULL, NULL, NULL),
(15, 27, '2024-03-20', 0, NULL, NULL, NULL, NULL),
(16, 28, '2024-03-22', 0, NULL, NULL, NULL, NULL),
(17, 31, '2024-03-18', 0, NULL, NULL, NULL, NULL),
(18, 32, '2024-03-20', 0, NULL, NULL, NULL, NULL),
(19, 34, '2024-03-24', 0, NULL, NULL, NULL, NULL),
(20, 35, '2024-03-20', 0, NULL, NULL, NULL, NULL),
(21, 38, '2024-03-26', 0, NULL, NULL, NULL, NULL),
(22, 39, '2024-03-28', 0, NULL, NULL, NULL, NULL),
(23, 40, '2024-03-22', 0, NULL, NULL, NULL, NULL),
(24, 41, '2024-03-24', 0, NULL, NULL, NULL, NULL),
(25, 45, '2024-03-28', 0, NULL, NULL, NULL, NULL),
(26, 46, '2024-03-30', 0, NULL, NULL, NULL, NULL),
(27, 47, '2024-03-26', 0, NULL, NULL, NULL, NULL),
(28, 48, '2024-03-28', 0, NULL, NULL, NULL, NULL),
(29, 52, '2024-03-30', 0, NULL, NULL, NULL, NULL),
(30, 53, '2024-03-31', 0, NULL, NULL, NULL, NULL),
(31, 54, '2024-03-30', 0, NULL, NULL, NULL, NULL),
(32, 55, '2024-03-03', 1, 41, 'Strong technical skills shown', 'Improve time management', 'Good communication skills'),
(33, 58, '2024-03-05', 1, 39, 'Satisfactory performance', 'Enhance coding efficiency', 'Strong analytical abilities'),
(34, 59, '2024-03-06', 0, NULL, NULL, NULL, NULL),
(35, 60, '2024-03-07', 0, NULL, NULL, NULL, NULL),
(36, 62, '2024-03-08', 1, 44, 'Well-prepared and knowledgeable', 'Refine presentation skills', 'Excellent problem-solving skills'),
(37, 63, '2024-03-10', 1, 47, 'Exceptional candidate', 'None', 'Outstanding problem solver'),
(38, 66, '2024-03-13', 0, NULL, NULL, NULL, NULL),
(39, 67, '2024-03-14', 0, NULL, NULL, NULL, NULL),
(40, 68, '2024-03-12', 1, 33, 'Average performance', 'Enhance coding efficiency', 'Good communication skills'),
(41, 71, '2024-03-14', 0, NULL, NULL, NULL, NULL),
(42, 73, '2024-03-16', 1, 36, 'Satisfactory performance', 'Improve coding efficiency', 'Strong analytical abilities'),
(43, 77, '2024-03-20', 0, NULL, NULL, NULL, NULL),
(44, 78, '2024-03-16', 1, 36, 'Satisfactory performance', 'Improve coding efficiency', 'Strong analytical abilities'),
(45, 82, '2024-03-20', 0, NULL, NULL, NULL, NULL),
(46, 83, '2024-03-18', 1, 45, 'Impressive coding skills', 'None', 'Exceptional problem solver'),
(47, 84, '2024-03-20', 1, 48, 'Exceptional candidate', 'None', 'Outstanding problem solver'),
(48, 88, '2024-03-24', 0, NULL, NULL, NULL, NULL),
(49, 89, '2024-03-25', 0, NULL, NULL, NULL, NULL),
(50, 90, '2024-03-22', 1, 43, 'Strong technical skills shown', 'Enhance time management', 'Excellent problem-solving skills'),
(51, 91, '2024-03-24', 0, NULL, NULL, NULL, NULL),
(52, 95, '2024-03-28', 0, NULL, NULL, NULL, NULL),
(53, 96, '2024-03-30', 0, NULL, NULL, NULL, NULL),
(54, 97, '2024-03-26', 0, NULL, NULL, NULL, NULL),
(55, 98, '2024-03-28', 0, NULL, NULL, NULL, NULL),
(56, 101, '2024-03-01', 1, 13, 'Below average performance, clearly unprepared.', 'Research the company before interview.', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `jobListings`
--

CREATE TABLE `jobListings` (
  `jobId` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `sectorId` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `postedDate` date NOT NULL,
  `closingDate` date NOT NULL,
  `salary` int(6) NOT NULL,
  `jobTypeId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobListings`
--

INSERT INTO `jobListings` (`jobId`, `title`, `location`, `sectorId`, `description`, `requirements`, `postedDate`, `closingDate`, `salary`, `jobTypeId`, `employerId`) VALUES
(1, 'Dental Hygienist', 'Ballyronan', 1, 'Clean teeth and provide dental hygiene treatments.', 'Bachelor\'s in Dental Hygiene, relevant license.', '2024-02-15', '2024-03-18', 41600, 1, 20),
(2, 'Software Consultant', 'Draperstown', 14, 'Develop and implement software solutions.', 'Bachelor\'s in Computer Science, programming skills.', '2024-02-17', '2024-03-18', 33280, 4, 16),
(3, 'Quality Engineer', 'Bangor', 12, 'Ensure product quality through testing and analysis.', 'Bachelor\'s in Engineering, quality control experience.', '2024-02-18', '2024-03-16', 43680, 6, 21),
(4, 'Marketing Manager', 'Keady', 14, 'Develop and implement marketing strategies.', 'Bachelor\'s in Marketing, leadership skills.', '2024-02-16', '2024-03-18', 20800, 1, 10),
(5, 'Media Manager', 'Ballycastle', 18, 'Plan and execute media campaigns.', 'Bachelor\'s in Media Studies, advertising experience.', '2024-02-21', '2024-03-14', 35360, 4, 17),
(6, 'Research Nurse', 'Kilrea', 8, 'Conduct research and assist in clinical trials.', 'Bachelor\'s in Nursing, research experience.', '2024-02-16', '2024-03-20', 27040, 3, 13),
(7, 'Research Assistant', 'Bangor', 12, 'Assist in research projects and data analysis.', 'Bachelor\'s in related field, research experience.', '2024-02-19', '2024-03-23', 12480, 3, 3),
(8, 'Accountant', 'Cullybackey', 3, 'Manage financial records and prepare reports.', 'Bachelor\'s in Accounting, CPA certification.', '2024-02-20', '2024-03-24', 45760, 6, 22),
(9, 'Civil Engineer', 'Newcastle', 18, 'Design and oversee construction projects.', 'Bachelor\'s in Civil Engineering, relevant license.', '2024-02-20', '2024-03-17', 28080, 5, 13),
(10, 'Dental Hygienist', 'Strabane', 1, 'Clean teeth and provide dental hygiene treatments.', 'Bachelor\'s in Dental Hygiene, relevant license.', '2024-02-17', '2024-03-15', 52000, 2, 25),
(11, 'Biostatistician', 'Belfast', 1, 'Analyze biological data and conduct statistical tests.', 'Master\'s in Biostatistics, statistical analysis exp.', '2024-02-15', '2024-03-16', 6240, 6, 3),
(12, 'Data Coordinator', 'Ballygowan', 20, 'Manage and organize data for analysis.', 'Bachelor\'s in Data Science, data management skills.', '2024-02-21', '2024-03-18', 11480, 4, 7),
(13, 'Social Worker', 'Greenisland', 17, 'Provide social work services to individuals and families.', 'Bachelor\'s in Social Work, relevant license.', '2024-02-19', '2024-03-20', 45760, 1, 22),
(14, 'Senior Editor', 'Portrush', 10, 'Manage editorial processes and supervise editorial teams.', 'Bachelor\'s in Journalism, editorial experience.', '2024-02-20', '2024-03-20', 37440, 2, 17),
(15, 'Research Associate', 'Belfast', 18, 'Conduct research and assist in project management.', 'Master\'s in related field, research experience.', '2024-02-21', '2024-03-17', 37440, 1, 18),
(16, 'Research Assistant', 'Clogher', 18, 'Assist in research projects and data analysis.', 'Bachelor\'s in related field, research experience.', '2024-02-21', '2024-03-21', 2080, 7, 1),
(17, 'Web Designer', 'Ballykelly', 20, 'Design and develop websites.', 'Bachelor\'s in Web Design, graphic design skills.', '2024-02-16', '2024-03-18', 3120, 4, 3),
(18, 'Environmental Specialist', 'Ballymoney', 2, 'Address environmental issues and develop solutions.', 'Bachelor\'s in Environmental Science, problem-solving.', '2024-02-20', '2024-03-19', 49920, 5, 20),
(19, 'VP Product Management', 'Ballymena', 6, 'Lead product development and strategy.', 'Master\'s in Business Administration, leadership.', '2024-02-16', '2024-03-19', 27040, 1, 13),
(20, 'Assistant Media Planner', 'Ballymena', 6, 'Assist in media planning and campaign execution.', 'Bachelor\'s in Marketing, communication skills.', '2024-02-16', '2024-03-19', 10400, 7, 5),
(21, 'Technical Writer', 'Ballymena', 4, 'Create technical documentation and user guides.', 'Bachelor\'s in Technical Writing, writing skills.', '2024-02-14', '2024-03-16', 18720, 1, 18),
(22, 'Sales Representative', 'Newcastle', 13, 'Sell products and services to clients.', 'High school diploma, sales experience.', '2024-02-12', '2024-03-16', 18720, 1, 18),
(23, 'Professor', 'Belfast', 18, 'Teach and conduct research in a university setting.', 'PhD in related field, teaching and research experience.', '2024-02-14', '2024-03-19', 52000, 2, 21),
(24, 'VP Accounting', 'Dromore', 4, 'Oversee accounting functions and financial reporting.', 'Master\'s in Accounting, CPA certification.', '2024-02-19', '2024-03-16', 37440, 2, 15),
(25, 'GIS Technical Architect', 'Ballymoney', 1, 'Design and implement GIS solutions.', 'Bachelor\'s in GIS, software development skills.', '2024-02-16', '2024-03-18', 48880, 4, 23),
(26, 'Help Desk Operator', 'Ballygowan', 17, 'Provide technical support to users.', 'High school diploma, technical troubleshooting.', '2024-02-18', '2024-03-15', 27040, 2, 13),
(27, 'Sales Representative', 'Randalstown', 12, 'Sell products and services to clients.', 'High school diploma, sales experience.', '2024-02-16', '2024-03-19', 49920, 8, 24),
(28, 'Product Engineer', 'Dungannon', 14, 'Design and develop new products.', 'Bachelor\'s in Engineering, product design skills.', '2024-02-18', '2024-03-17', 41600, 3, 20),
(29, 'Programmer Analyst', 'Derry/Londonderry', 1, 'Develop and maintain software applications.', 'Bachelor\'s in Computer Science, programming skills.', '2024-02-22', '2024-03-22', 62400, 7, 8),
(30, 'Research Assistant', 'Belfast', 17, 'Assist in research projects and data analysis.', 'Bachelor\'s in related field, research experience.', '2024-02-21', '2024-03-19', 41600, 2, 19),
(31, 'Financial Advisor', 'Newtownards', 9, 'Provide financial advice and investment strategies.', 'Bachelor\'s in Finance, financial planning experience.', '2024-02-17', '2024-03-20', 25480, 3, 11),
(32, 'Financial Advisor', 'Newtownards', 5, 'Provide financial advice and investment strategies.', 'Bachelor\'s in Finance, financial planning experience.', '2024-02-21', '2024-03-10', 38720, 3, 19),
(33, 'Operator', 'Tandragee', 3, 'Operate machinery and perform production tasks.', 'High school diploma, relevant experience.', '2024-02-19', '2024-03-10', 10400, 2, 5),
(34, 'Programmer Analyst', 'Ballynahinch', 6, 'Develop and maintain software applications.', 'Bachelor\'s in Computer Science, programming skills.', '2024-02-18', '2024-03-18', 41600, 2, 20),
(35, 'Professor', 'Belfast', 12, 'Teach and conduct research in a university setting.', 'PhD in related field, teaching and research experience.', '2024-02-17', '2024-03-19', 22880, 4, 11),
(36, 'Social Worker', 'Kilrea', 11, 'Provide social work services to individuals and families.', 'Bachelor\'s in Social Work, relevant license.', '2024-02-19', '2024-03-19', 51960, 4, 22),
(37, 'Teacher', 'Ballyronan', 11, 'Instruct students in various subjects.', 'Bachelor\'s in Education, teaching certification.', '2024-02-18', '2024-03-19', 32760, 4, 15),
(38, 'Financial Analyst', 'Ballyronan', 20, 'Analyze financial data and provide insights.', 'Bachelor\'s in Finance, analytical skills.', '2024-02-16', '2024-03-20', 20800, 1, 10),
(39, 'Technical Writer', 'Coalisland', 3, 'Create technical documentation and user guides.', 'Bachelor\'s in Technical Writing, writing skills.', '2024-02-21', '2024-03-21', 13000, 4, 7),
(40, 'Help Desk Operator', 'Magherafelt', 15, 'Provide technical support to users.', 'High school diploma, technical troubleshooting.', '2024-02-21', '2024-03-19', 45760, 6, 22),
(41, 'Assistant Manager', 'Dungannon', 11, 'Assist in managing daily operations.', 'Bachelor\'s in Business Administration, leadership.', '2024-02-19', '2024-03-20', 31200, 8, 17),
(42, 'Statistician', 'Portglenone', 10, 'Analyze data and create statistical models.', 'Master\'s in Statistics, statistical analysis skills.', '2024-02-19', '2024-03-20', 37440, 3, 19),
(43, 'Senior Editor', 'Newtownards', 12, 'Manage editorial processes and supervise editorial teams.', 'Bachelor\'s in Journalism, editorial experience.', '2024-02-21', '2024-03-20', 62400, 5, 24),
(44, 'Administrative Assistant', 'Ballycastle', 16, 'Provide administrative support.', 'High school diploma, administrative experience.', '2024-02-16', '2024-03-20', 51960, 8, 21),
(45, 'Desktop Support Technician', 'Newry', 19, 'Provide technical support for desktop systems.', 'Bachelor\'s in Computer Science, technical skills.', '2024-02-20', '2024-03-19', 49920, 3, 20),
(46, 'Business Systems Development Analyst', 'Tandragee', 19, 'Analyze business systems and develop solutions.', 'Bachelor\'s in Business, analytical skills.', '2024-02-20', '2024-03-16', 103920, 1, 25),
(47, 'Structural Analysis Engineer', 'Coalisland', 10, 'Analyze structures and provide design recommendations.', 'Bachelor\'s in Engineering, structural analysis exp.', '2024-02-20', '2024-03-19', 14560, 8, 4),
(48, 'Automation Specialist', 'Cushendall', 5, 'Implement and maintain automated systems.', 'Bachelor\'s in Engineering, automation experience.', '2024-02-20', '2024-03-19', 37440, 3, 17),
(49, 'Food Chemist', 'Belfast', 3, 'Analyze food components and develop new products.', 'Bachelor\'s in Food Science, laboratory skills.', '2024-02-21', '2024-03-20', 31200, 2, 17),
(50, 'VP Marketing', 'Portadown', 18, 'Lead marketing strategies and campaigns.', 'Master\'s in Marketing, strategic planning skills.', '2024-02-15', '2024-03-19', 52000, 5, 25),
(51, 'Director of Sales', 'Newtownards', 14, 'Lead sales team and develop sales strategies.', 'Bachelor\'s in Business Administration, sales exp.', '2024-02-19', '2024-03-19', 37440, 3, 12),
(52, 'Developer', 'Downpatrick', 14, 'Develop software applications and solutions.', 'Bachelor\'s in Computer Science, programming skills.', '2024-02-17', '2024-03-18', 31360, 8, 14),
(53, 'Environmental Specialist', 'Tandragee', 4, 'Address environmental issues and develop solutions.', 'Bachelor\'s in Environmental Science, problem-solving.', '2024-02-19', '2024-03-19', 25480, 7, 7),
(54, 'Registered Nurse', 'Strabane', 14, 'Provide nursing care and support to patients.', 'Bachelor\'s in Nursing, nursing license.', '2024-02-17', '2024-03-20', 29120, 5, 16),
(55, 'Physical Therapy Assistant', 'Keady', 1, 'Assist in providing physical therapy treatments.', 'Associate\'s in Physical Therapy, therapy experience.', '2024-02-21', '2024-03-19', 51960, 8, 21),
(56, 'Business Systems Development Analyst', 'Ballymoney', 12, 'Analyze business systems and develop solutions.', 'Bachelor\'s in Business, analytical skills.', '2024-02-15', '2024-03-19', 14560, 8, 4),
(57, 'Structural Analysis Engineer', 'Kilrea', 11, 'Analyze structures and provide design recommendations.', 'Bachelor\'s in Engineering, structural analysis exp.', '2024-02-21', '2024-03-20', 3120, 5, 2),
(58, 'Cost Accountant', 'Belfast', 13, 'Manage cost accounting processes and reporting.', 'Bachelor\'s in Accounting, cost accounting skills.', '2024-02-21', '2024-03-19', 11680, 4, 9),
(59, 'Cost Accountant', 'Coleraine', 19, 'Manage cost accounting processes and reporting.', 'Bachelor\'s in Accounting, cost accounting skills.', '2024-02-16', '2024-03-19', 7360, 3, 2),
(60, 'Associate Professor', 'Cookstown', 16, 'Teach and conduct research in a university setting.', 'PhD in related field, teaching and research experience.', '2024-02-18', '2024-03-19', 14720, 4, 12),
(61, 'Research Scientist', 'Armagh', 3, 'Conduct scientific experiments and analyze results.', 'PhD in Science, research experience.', '2024-02-18', '2024-03-21', 45760, 6, 22),
(62, 'HR Manager', 'Larne', 7, 'Oversee human resources activities and policies.', 'Bachelor\'s in Human Resources, HR experience.', '2024-02-16', '2024-03-18', 33280, 5, 14),
(63, 'Network Engineer', 'Omagh', 9, 'Design and implement computer networks.', 'Bachelor\'s in Computer Science, network experience.', '2024-02-21', '2024-03-17', 37440, 3, 20),
(64, 'UX Designer', 'Enniskillen', 20, 'Design user experience for digital products.', 'Bachelor\'s in Design, UX/UI skills.', '2024-02-18', '2024-03-20', 41600, 3, 18),
(65, 'Supply Chain Manager', 'Ballyclare', 15, 'Manage logistics and optimize supply chain processes.', 'Bachelor\'s in Supply Chain Management, logistics experience.', '2024-02-17', '2024-03-20', 49920, 1, 9),
(66, 'Pharmacist', 'Limavady', 8, 'Dispense medications and provide pharmaceutical care.', 'Pharmacy degree, relevant license.', '2024-02-21', '2024-03-18', 43680, 1, 23),
(67, 'Data Analyst', 'Lurgan', 20, 'Analyze data and generate insights for decision-making.', 'Bachelor\'s in Data Science, analytical skills.', '2024-02-19', '2024-03-16', 27040, 4, 8),
(68, 'Operations Manager', 'Portstewart', 13, 'Oversee daily operations and improve efficiency.', 'Bachelor\'s in Business Administration, management experience.', '2024-02-20', '2024-03-19', 45760, 1, 24),
(69, 'Graphic Designer', 'Holywood', 20, 'Create visual concepts and design layouts.', 'Bachelor\'s in Graphic Design, Adobe Creative Suite.', '2024-02-15', '2024-03-16', 29120, 3, 14),
(70, 'Project Manager', 'Banbridge', 5, 'Plan and oversee projects from inception to completion.', 'Bachelor\'s in Project Management, project management exp.', '2024-02-15', '2024-03-19', 41600, 1, 16);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobsClosingNextWeek`
-- (See below for the actual view)
--
CREATE TABLE `jobsClosingNextWeek` (
`jobId` int(11)
,`title` varchar(50)
,`location` varchar(100)
,`sectorId` int(11)
,`description` varchar(255)
,`requirements` varchar(255)
,`postedDate` date
,`closingDate` date
,`salary` int(6)
,`jobTypeId` int(11)
,`employerId` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobSeekerApplicationsView`
-- (See below for the actual view)
--
CREATE TABLE `jobSeekerApplicationsView` (
`jobSeekerId` int(11)
,`Forename` varchar(50)
,`Surname` varchar(50)
,`Application ID` int(11)
,`Application Status` varchar(50)
,`Job Title` varchar(50)
,`Job Description` varchar(255)
,`Employer` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `jobSeekers`
--

CREATE TABLE `jobSeekers` (
  `jobSeekerId` int(11) NOT NULL,
  `forename` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNo` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(30) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `cvFile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobSeekers`
--

INSERT INTO `jobSeekers` (`jobSeekerId`, `forename`, `surname`, `dob`, `email`, `phoneNo`, `address`, `city`, `county`, `postcode`, `cvFile`) VALUES
(1, 'Myer', 'Rainton', '1989-11-02', 'mrainton0@gmail.com', '07727670414', '25 Oak Street', 'Lisburn', 'Antrim', 'BT28 1RH', 'mrainton_cv.pdf'),
(2, 'Kassey', 'Newband', '1984-02-07', 'knewband1@hotmail.co.uk', '07748572619', '11 Main Road', 'Belfast', 'Antrim', 'BT1 1AA', 'knewband_cv.pdf'),
(3, 'Francesca', 'Klimushev', '2003-03-30', 'fklimushev2@yahoo.co.uk', '07167413561', '9 Duke Court', 'Donaghadee', 'Down', 'BT21 0AA', 'fklimushev_cv.pdf'),
(4, 'Mab', 'Ewbanke', '2004-12-17', 'mewbanke3@outlook.com', '07054313773', '287 Bellgrove Circle', 'Comber', 'Down', 'BT23 4AB', 'mewbanke_cv.pdf'),
(5, 'Colline', 'Boller', '1982-12-27', 'cboller4@live.co.uk', '07091130843', '82 Riverside Drive', 'Craigavon', 'Armagh', 'BT62 3AA', 'cboller_cv.pdf'),
(6, 'Callida', 'Spurway', '1979-07-21', 'cspurway5@aol.co.uk', '07949676176', '7 Park Lane', 'Craigavon', 'Armagh', 'BT65 5AA', 'cspurway_cv.pdf'),
(7, 'Ashia', 'Guerri', '1994-07-12', 'aguerri6@icloud.com', '07711631642', '23 Meadow View', 'Comber', 'Down', 'BT23 5AA', 'aguerri_cv.pdf'),
(8, 'Shelden', 'Dawks', '1973-09-24', 'sdawks7@yahoo.com', '07112324796', '15 Hillcrest Avenue', 'Craigavon', 'Armagh', 'BT62 1AA', 'sdawks_cv.pdf'),
(9, 'Dorey', 'Bloodworthe', '1980-08-31', 'dbloodworthe8@hotmail.co.uk', '07366907822', '40 Spenser Drive', 'Derry/Londonderry', 'Londonderry', 'BT47 1AA', 'dbloodworthe_cv.pdf'),
(10, 'Jeremy', 'Pllu', '1999-04-30', 'jpllu9@yahoo.com', '07359483529', '31 Beach Road', 'Carrickfergus', 'Antrim', 'BT38 1AA', 'jpllu_cv.pdf'),
(11, 'Berta', 'Demcak', '1989-11-23', 'bdemcaka@gmail.com', '07638934922', '7562 Hermina Park', 'Bangor', 'Down', 'BT20 1AA', 'bdemcak_cv.pdf'),
(12, 'Donaugh', 'Kaes', '1991-10-01', 'dkaesb@aol.co.uk', '07472565616', '2 High Street', 'Craigavon', 'Armagh', 'BT66 1AA', 'dkaes_cv.pdf'),
(13, 'Melita', 'Piddle', '1998-01-25', 'mpiddlec@gmail.com', '07138292901', '6 Donald Park', 'Ballymena', 'Antrim', 'BT42 1AA', 'mpiddle_cv.pdf'),
(14, 'Tabbie', 'Thurbon', '1974-07-18', 'tthurbond@outlook.com', '07061291842', '24 Bridge Street', 'Coleraine', 'Londonderry', 'BT52 1AA', 'tthurbond_cv.pdf'),
(15, 'Guilbert', 'Bowery', '1970-06-18', 'gbowerye@live.co.uk', '07183693703', '7143 Thompson Point', 'Bangor', 'Down', 'BT20 1AA', 'gbowery_cv.pdf'),
(16, 'Harley', 'MacAne', '1983-03-07', 'hmacanef@aol.co.uk', '07111037661', '10 Queen Street', 'Antrim', 'Antrim', 'BT41 1AA', 'hmacane_cv.pdf'),
(17, 'Britte', 'Woodsford', '1989-09-06', 'bwoodsfordg@ihg.com', '07339968631', '27 Tennyson Avenue', 'Bangor', 'Down', 'BT19 1AA', 'bwoodsford_cv.pdf'),
(18, 'Shanta', 'Donegan', '1984-07-17', 'sdoneganh@hotmail.co.uk', '07033080655', '9 Grove Street', 'Comber', 'Down', 'BT23 5AA', 'sdoneganh_cv.pdf'),
(19, 'Etienne', 'Bollins', '1976-11-29', 'ebollinsi@sciencedaily.com', '07411138468', '3187 Hoffman Hill', 'Comber', 'Down', 'BT23 4AA', 'ebollins_cv.pdf'),
(20, 'Rutger', 'Ensten', '1991-02-26', 'renstenj@gmail.com', '07305107726', '64675 Pleasure Point', 'Comber', 'Down', 'BT23 5AA', 'rensten_cv.pdf'),
(21, 'Jeralee', 'Deniseau', '1989-02-18', 'jdeniseauk@aol.co.uk', '07878250596', '61073 Fisk Center', 'Craigavon', 'Armagh', 'BT62 1AA', 'jdeniseau_cv.pdf'),
(22, 'Minne', 'Mars', '1987-03-19', 'mmarsl@aol.co.uk', '07764709885', '76 Victoria Road', 'Bangor', 'Down', 'BT20 1AA', 'mmars_cv.pdf'),
(23, 'Paulie', 'Bulfoot', '1995-07-02', 'pbulfootm@icloud.com', '07588643423', '17 Elmwood Avenue', 'Belfast', 'Antrim', 'BT1 1AA', 'pbulfoot_cv.pdf'),
(24, 'Jessy', 'Dallywater', '1999-06-27', 'jdallywatern@ow.ly', '07838682289', '7 Chive Terrace', 'Newry', 'Armagh', 'BT35 1AA', 'jdallywater_cv.pdf'),
(25, 'Nikola', 'Pateman', '2004-06-03', 'npatemano@outlook.com', '07168181468', '906 Summerview Crossing', 'Ballymena', 'Antrim', 'BT43 1AA', 'npateman_cv.pdf'),
(26, 'Currie', 'Jeynes', '1985-07-20', 'cjeynesp@aol.co.uk', '07009661309', '10 Fordem Street', 'Lisburn', 'Antrim', 'BT28 1RH', 'cjeynes_cv.pdf'),
(27, 'Carmine', 'MacCleay', '1980-11-15', 'c.maccleay@gmail.com', '07515382176', '44 Greenfield Avenue', 'Belfast', 'Antrim', 'BT1 1AA', 'c_maccleay_cv.pdf'),
(28, 'Jessamine', 'Kuhl', '1976-03-12', 'j.kuhl@outlook.com', '07850052026', '5313 Stuart Place', 'Craigavon', 'Armagh', 'BT62 1AA', 'j_kuhl_cv.pdf'),
(29, 'Desiri', 'Skoate', '1986-04-14', 'd.skoates@yahoo.co.uk', '07665782150', '19 Green Ridge Drive', 'Craigavon', 'Armagh', 'BT65 5AA', 'd_skoate_cv.pdf'),
(30, 'Griffie', 'De Launde', '1991-08-26', 'g.de_launde@hotmail.co.uk', '07554549066', '293 Lillian Road', 'Ballymena', 'Antrim', 'BT42 1AA', 'g_de_launde_cv.pdf'),
(31, 'Aleda', 'Tadlow', '1981-03-22', 'a.tadlow@aol.co.uk', '07184461660', '4927 Ridge Oak Pass', 'Dungannon', 'Tyrone', 'BT71 6AA', 'a_tadlow_cv.pdf'),
(32, 'Ettie', 'Swire', '1990-09-10', 'e.swire@btinternet.com', '07315846990', '5 Canary Place', 'Bangor', 'Down', 'BT20 1AA', 'e_swire_cv.pdf'),
(33, 'Shea', 'Bagniuk', '1983-12-07', 's.bagniuk@army.mod.uk', '07421857135', '293 School Street', 'Lisburn', 'Antrim', 'BT28 1RH', 's_bagniuk_cv.pdf'),
(34, 'Fanni', 'Antic', '1985-11-18', 'f.antic@xing.co.uk', '07353742354', '994 Memorial Pass', 'Londonderry', 'Londonderry', 'BT48 1AA', 'f_antic_cv.pdf'),
(35, 'Lorrayne', 'Wagstaffe', '1992-01-06', 'l.wagstaffe@live.co.uk', '07416683245', '40 Bridge Street', 'Londonderry', 'Londonderry', 'BT48 6AA', 'lorrayne_wagstaffe_cv.pdf'),
(36, 'Eleanora', 'Herd', '1984-09-30', 'e.herd@googlemail.com', '07963328527', '67 Main Road', 'Craigavon', 'Armagh', 'BT66 1AA', 'eleanora_herd_cv.pdf'),
(37, 'Nananne', 'Tweed', '1977-12-02', 'n.tweed@ntlworld.com', '07811478923', '22 High Street', 'Newry', 'Down', 'BT35 1AA', 'nananne_tweed_cv.pdf'),
(38, 'Gibbie', 'Guirard', '1989-06-14', 'g.guirard@sky.com', '07554189372', '83 Church Street', 'Bangor', 'Down', 'BT20 2AA', 'gibbie_guirard_cv.pdf'),
(39, 'Keelia', 'Cooke', '1974-10-08', 'k.cooke@talktalk.net', '07007379817', '698 Saint Paul Place', 'Derry/Londonderry', 'Londonderry', 'BT47 1AA', 'keelia_cooke_cv.pdf'),
(40, 'Yardley', 'Brosoli', '1976-09-19', 'y.brosoli@btopenworld.com', '07457695168', '4497 Hoepker Park', 'Derry/Londonderry', 'Londonderry', 'BT48 1AA', 'yardley_brosoli_cv.pdf'),
(41, 'Fifine', 'Frears', '1995-06-06', 'f.frears@virginmedia.com', '07650644731', '361 Delaware Street', 'Coleraine', 'Londonderry', 'BT52 1AA', 'fifine_frears_cv.pdf'),
(42, 'Jojo', 'Blewmen', '1984-08-11', 'j.blewmen@btinternet.com', '07188828306', '34 Hollow Ridge Hill', 'Newry', 'Down', 'BT35 1AA', 'jojo_blewmen_cv.pdf'),
(43, 'Candida', 'Nicolson', '2005-07-08', 'c.nicolson@btconnect.com', '07236275764', '4 Mesta Point', 'Newtownabbey', 'Antrim', 'BT36 1AA', 'candida_nicolson_cv.pdf'),
(44, 'Lennard', 'Swinden', '2000-06-03', 'l.swinden@tiscali.co.uk', '07733389102', '38 Green Ridge Parkway', 'Ballymena', 'Antrim', 'BT42 1AA', 'lennard_swinden_cv.pdf'),
(45, 'Misha', 'Bottjer', '2001-09-08', 'm.bottjer@ntlworld.com', '07715184175', '55 Fallview Plaza', 'Derry/Londonderry', 'Londonderry', 'BT47 1AA', 'misha_bottjer_cv.pdf'),
(46, 'Neall', 'Neave', '2001-10-19', 'neall.neave@gmail.com', '07919466239', '12 Maple Avenue', 'Lisburn', 'Antrim', 'BT28 1AB', 'neall_neave_cv.pdf'),
(47, 'Ellswerth', 'Ambrosch', '2003-09-19', 'ellswerth.ambrosch@hotmail.com', '07899755697', '17 Cedar Crescent', 'Newtownabbey', 'Antrim', 'BT37 1AB', 'ellswerth_ambrosch_cv.pdf'),
(48, 'Waiter', 'Dupoy', '1996-07-04', 'waiter.dupoy@yahoo.com', '07424997429', '23 Elm Street', 'Newtownabbey', 'Antrim', 'BT37 1AB', 'waiter_dupoy_cv.pdf'),
(49, 'Tildy', 'Gibling', '2003-07-06', 'tildy.gibling@outlook.com', '07502080912', '8 Oakwood Road', 'Comber', 'Down', 'BT23 1AB', 'tildy_gibling_cv.pdf'),
(50, 'Regan', 'Topham', '1995-08-04', 'regan.topham@aol.com', '07487961016', '33 Willow Lane', 'Coleraine', 'Londonderry', 'BT51 1AB', 'regan_topham_cv.pdf'),
(51, 'Colan', 'Kerby', '1981-08-08', 'colan.kerby@icloud.com', '07914376597', '21 Birch Road', 'Bangor', 'Down', 'BT20 1AB', 'colan_kerby_cv.pdf'),
(52, 'Bartlett', 'Pritchard', '1996-04-07', 'bartlett.pritchard@protonmail.com', '07295243402', '29 Oak Lane', 'Newtownards', 'Down', 'BT23 1AB', 'bartlett_pritchard_cv.pdf'),
(53, 'Lucine', 'Bocock', '2002-07-25', 'lucine.bocock@live.com', '07860646216', '12 Maple Avenue', 'Ballymena', 'Antrim', 'BT42 1AB', 'lucine_bocock_cv.pdf'),
(54, 'Iain', 'Havoc', '2005-01-26', 'iain.havoc@yandex.com', '07304001235', '17 Cedar Crescent', 'Bangor', 'Down', 'BT20 1AB', 'iain_havoc_cv.pdf'),
(55, 'Karrah', 'Grimsdell', '2004-02-29', 'karrah.grimsdell@protonmail.com', '07122169481', '33 Willow Lane', 'Bangor', 'Down', 'BT20 1AB', 'karrah_grimsdell_cv.pdf'),
(56, 'Trevor', 'Kennewell', '2000-11-22', 'trevor.kennewell@outlook.com', '07790451930', '8 Oakwood Road', 'Craigavon', 'Armagh', 'BT62 1AB', 'trevor_kennewell_cv.pdf'),
(57, 'Pembroke', 'Reymers', '2002-10-13', 'pembroke.reymers@live.com', '07647838729', '29 Oak Lane', 'Bangor', 'Down', 'BT20 1AB', 'pembroke_reymers_cv.pdf'),
(58, 'Dylan', 'Gillogley', '2002-10-14', 'dylan.gillogley@icloud.com', '07397003658', '90 Pine Street', 'Derry/Londonderry', 'Londonderry', 'BT48 1AB', 'dylan_gillogley_cv.pdf'),
(59, 'Carlen', 'McDonell', '2005-09-06', 'carlen.mcdonell@yandex.com', '07875749638', '37 Maple Street', 'Coleraine', 'Londonderry', 'BT52 1AB', 'carlen_mcdonell_cv.pdf'),
(60, 'Rici', 'Bursnell', '2001-07-23', 'rici.bursnell@yahoo.com', '07710082821', '3 Birch Avenue', 'Craigavon', 'Armagh', 'BT62 1AB', 'rici_bursnell_cv.pdf'),
(61, 'Nathan', 'Watkins', '2005-06-11', 'nwatkins02@qub.ac.uk', '07943021777', 'Queens University', 'Belfast', 'Antrim', 'BT9 8WT', 'nwatkins_CV.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `jobSeekers_qualificationLevels`
--

CREATE TABLE `jobSeekers_qualificationLevels` (
  `jobSeekerId` int(11) NOT NULL,
  `qualificationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobTypes`
--

CREATE TABLE `jobTypes` (
  `jobTypeId` int(11) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobTypes`
--

INSERT INTO `jobTypes` (`jobTypeId`, `type`) VALUES
(5, 'Apprenticeship'),
(1, 'Full-Time'),
(6, 'Internship'),
(2, 'Part-Time'),
(3, 'Permanent'),
(8, 'Remote'),
(4, 'Temporary'),
(7, 'Volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `qualificationLevels`
--

CREATE TABLE `qualificationLevels` (
  `qualificationId` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualificationLevels`
--

INSERT INTO `qualificationLevels` (`qualificationId`, `qualification`) VALUES
(2, 'A-Level'),
(4, 'Bachelor\'s Degree'),
(6, 'Doctoral Degree'),
(3, 'Foundation Degree'),
(1, 'GCSE'),
(5, 'Master\'s Degree');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `sectorId` int(11) NOT NULL,
  `sector` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`sectorId`, `sector`) VALUES
(12, 'Agriculture'),
(19, 'Automotive'),
(8, 'Construction'),
(4, 'Education'),
(17, 'Energy'),
(10, 'Entertainment'),
(3, 'Finance'),
(20, 'Fitness'),
(9, 'Government'),
(1, 'Healthcare'),
(6, 'Hospitality'),
(16, 'Legal'),
(7, 'Manufacturing'),
(13, 'Media'),
(15, 'Non-profit'),
(14, 'Real Estate'),
(5, 'Retail'),
(2, 'Technology'),
(18, 'Telecommunications'),
(11, 'Transportation');

-- --------------------------------------------------------

--
-- Stand-in structure for view `upcomingInterviews`
-- (See below for the actual view)
--
CREATE TABLE `upcomingInterviews` (
`Job Seeker ID` int(11)
,`Forename` varchar(50)
,`Surname` varchar(50)
,`DOB` date
,`Email` varchar(100)
,`Phone Number` varchar(11)
,`Interview Date` date
,`Application ID` int(11)
,`Job Title` varchar(50)
,`Employer` varchar(50)
,`Mark as Complete` tinyint(1)
);

-- --------------------------------------------------------

--
-- Structure for view `completedInterviews`
--
DROP TABLE IF EXISTS `completedInterviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nwatkins02`@`localhost` SQL SECURITY DEFINER VIEW `completedInterviews`  AS SELECT `js`.`jobSeekerId` AS `Job Seeker ID`, `js`.`forename` AS `Forename`, `js`.`surname` AS `Surname`, `js`.`dob` AS `DOB`, `js`.`email` AS `Email`, `js`.`phoneNo` AS `Phone Number`, `inter`.`date` AS `Interview Date`, `jl`.`title` AS `Job Title`, `e`.`name` AS `Employer`, `inter`.`score` AS `Score`, `ap`.`statusId` AS `Update Status`, `inter`.`comments` AS `Comments`, `inter`.`improvements` AS `Improvements`, `inter`.`strengths` AS `Strengths` FROM (((((`jobSeekers` `js` join `applications` `ap` on(`ap`.`jobSeekerId` = `js`.`jobSeekerId`)) join `applicationStatus` `aps` on(`aps`.`statusId` = `ap`.`statusId`)) join `interviews` `inter` on(`inter`.`applicationId` = `ap`.`applicationId`)) join `jobListings` `jl` on(`jl`.`jobId` = `ap`.`jobId`)) join `employers` `e` on(`e`.`employerId` = `jl`.`employerId`)) WHERE `inter`.`complete` = 1 ORDER BY `inter`.`date` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `employerHireRejectionStats`
--
DROP TABLE IF EXISTS `employerHireRejectionStats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nwatkins02`@`localhost` SQL SECURITY DEFINER VIEW `employerHireRejectionStats`  AS SELECT `e`.`employerId` AS `Employer ID`, `e`.`name` AS `Employer`, count(distinct `inter`.`interviewId`) AS `Total Completed Interviews`, sum(case when `ci`.`Update Status` = 6 then 1 else 0 end) AS `Total Hired`, sum(case when `ci`.`Update Status` = 7 then 1 else 0 end) AS `Total Rejected`, round(sum(case when `ci`.`Update Status` = 6 then 1 else 0 end) / count(distinct `inter`.`interviewId`) * 100,1) AS `Hiring Rate`, round(sum(case when `ci`.`Update Status` = 7 then 1 else 0 end) / count(distinct `inter`.`interviewId`) * 100,1) AS `Rejection Rate` FROM (((((`employers` `e` join `jobListings` `jl` on(`jl`.`employerId` = `e`.`employerId`)) join `applications` `ap` on(`ap`.`jobId` = `jl`.`jobId`)) join `jobSeekers` `js` on(`js`.`jobSeekerId` = `ap`.`jobSeekerId`)) left join `completedInterviews` `ci` on(`ci`.`Job Seeker ID` = `ap`.`jobSeekerId`)) left join `interviews` `inter` on(`inter`.`applicationId` = `ap`.`applicationId`)) WHERE `ap`.`statusId` in (6,7) AND `inter`.`complete` = 1 GROUP BY `e`.`employerId`, `e`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `jobsClosingNextWeek`
--
DROP TABLE IF EXISTS `jobsClosingNextWeek`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nwatkins02`@`localhost` SQL SECURITY DEFINER VIEW `jobsClosingNextWeek`  AS SELECT `jobListings`.`jobId` AS `jobId`, `jobListings`.`title` AS `title`, `jobListings`.`location` AS `location`, `jobListings`.`sectorId` AS `sectorId`, `jobListings`.`description` AS `description`, `jobListings`.`requirements` AS `requirements`, `jobListings`.`postedDate` AS `postedDate`, `jobListings`.`closingDate` AS `closingDate`, `jobListings`.`salary` AS `salary`, `jobListings`.`jobTypeId` AS `jobTypeId`, `jobListings`.`employerId` AS `employerId` FROM `jobListings` WHERE `jobListings`.`closingDate` <= curdate() + interval 7 day AND `jobListings`.`closingDate` >= curdate() ;

-- --------------------------------------------------------

--
-- Structure for view `jobSeekerApplicationsView`
--
DROP TABLE IF EXISTS `jobSeekerApplicationsView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nwatkins02`@`localhost` SQL SECURITY DEFINER VIEW `jobSeekerApplicationsView`  AS SELECT `jobSeekers`.`jobSeekerId` AS `jobSeekerId`, `jobSeekers`.`forename` AS `Forename`, `jobSeekers`.`surname` AS `Surname`, `applications`.`applicationId` AS `Application ID`, `applicationStatus`.`status` AS `Application Status`, `jobListings`.`title` AS `Job Title`, `jobListings`.`description` AS `Job Description`, `employers`.`name` AS `Employer` FROM ((((`applications` join `jobSeekers` on(`applications`.`jobSeekerId` = `jobSeekers`.`jobSeekerId`)) join `applicationStatus` on(`applicationStatus`.`statusId` = `applications`.`statusId`)) join `jobListings` on(`jobListings`.`jobId` = `applications`.`jobId`)) join `employers` on(`employers`.`employerId` = `jobListings`.`employerId`)) WHERE `jobSeekers`.`jobSeekerId` = 11 ;

-- --------------------------------------------------------

--
-- Structure for view `upcomingInterviews`
--
DROP TABLE IF EXISTS `upcomingInterviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`nwatkins02`@`localhost` SQL SECURITY DEFINER VIEW `upcomingInterviews`  AS SELECT `js`.`jobSeekerId` AS `Job Seeker ID`, `js`.`forename` AS `Forename`, `js`.`surname` AS `Surname`, `js`.`dob` AS `DOB`, `js`.`email` AS `Email`, `js`.`phoneNo` AS `Phone Number`, `inter`.`date` AS `Interview Date`, `ap`.`applicationId` AS `Application ID`, `jl`.`title` AS `Job Title`, `e`.`name` AS `Employer`, `inter`.`complete` AS `Mark as Complete` FROM (((((`jobSeekers` `js` join `applications` `ap` on(`ap`.`jobSeekerId` = `js`.`jobSeekerId`)) join `applicationStatus` `aps` on(`aps`.`statusId` = `ap`.`statusId`)) join `interviews` `inter` on(`inter`.`applicationId` = `ap`.`applicationId`)) join `jobListings` `jl` on(`jl`.`jobId` = `ap`.`jobId`)) join `employers` `e` on(`e`.`employerId` = `jl`.`employerId`)) WHERE `aps`.`statusId` = 5 AND `inter`.`complete` = 0 ORDER BY `inter`.`date` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`applicationId`),
  ADD KEY `jobId` (`jobId`),
  ADD KEY `customerId` (`jobSeekerId`),
  ADD KEY `statusId` (`statusId`);

--
-- Indexes for table `applicationStatus`
--
ALTER TABLE `applicationStatus`
  ADD PRIMARY KEY (`statusId`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `employerContacts`
--
ALTER TABLE `employerContacts`
  ADD PRIMARY KEY (`contactId`),
  ADD KEY `forename` (`forename`),
  ADD KEY `surname` (`surname`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`employerId`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `employers_employerContacts`
--
ALTER TABLE `employers_employerContacts`
  ADD PRIMARY KEY (`employerId`,`contactId`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`interviewId`),
  ADD KEY `FOREIGN` (`applicationId`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `jobListings`
--
ALTER TABLE `jobListings`
  ADD PRIMARY KEY (`jobId`),
  ADD KEY `jobTypeId` (`jobTypeId`),
  ADD KEY `sectorId` (`sectorId`),
  ADD KEY `employerId` (`employerId`),
  ADD KEY `title` (`title`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `jobSeekers`
--
ALTER TABLE `jobSeekers`
  ADD PRIMARY KEY (`jobSeekerId`),
  ADD KEY `forename` (`forename`),
  ADD KEY `surname` (`surname`),
  ADD KEY `city` (`city`),
  ADD KEY `postcode` (`postcode`),
  ADD KEY `county` (`county`);

--
-- Indexes for table `jobSeekers_qualificationLevels`
--
ALTER TABLE `jobSeekers_qualificationLevels`
  ADD PRIMARY KEY (`jobSeekerId`,`qualificationId`);

--
-- Indexes for table `jobTypes`
--
ALTER TABLE `jobTypes`
  ADD PRIMARY KEY (`jobTypeId`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `qualificationLevels`
--
ALTER TABLE `qualificationLevels`
  ADD PRIMARY KEY (`qualificationId`),
  ADD KEY `Qualification` (`qualification`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`sectorId`),
  ADD KEY `sector` (`sector`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `applicationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `applicationStatus`
--
ALTER TABLE `applicationStatus`
  MODIFY `statusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employerContacts`
--
ALTER TABLE `employerContacts`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `employerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `interviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `jobListings`
--
ALTER TABLE `jobListings`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `jobSeekers`
--
ALTER TABLE `jobSeekers`
  MODIFY `jobSeekerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `jobTypes`
--
ALTER TABLE `jobTypes`
  MODIFY `jobTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qualificationLevels`
--
ALTER TABLE `qualificationLevels`
  MODIFY `qualificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `sectorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`jobId`) REFERENCES `jobListings` (`jobId`),
  ADD CONSTRAINT `applications_ibfk_3` FOREIGN KEY (`jobSeekerId`) REFERENCES `jobSeekers` (`jobSeekerId`),
  ADD CONSTRAINT `applications_ibfk_4` FOREIGN KEY (`statusId`) REFERENCES `applicationStatus` (`statusId`);

--
-- Constraints for table `employers_employerContacts`
--
ALTER TABLE `employers_employerContacts`
  ADD CONSTRAINT `employers_employerContacts_ibfk_1` FOREIGN KEY (`employerId`) REFERENCES `employers` (`employerId`),
  ADD CONSTRAINT `employers_employerContacts_ibfk_2` FOREIGN KEY (`contactId`) REFERENCES `employerContacts` (`contactId`);

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `interviews_ibfk_1` FOREIGN KEY (`applicationId`) REFERENCES `applications` (`applicationId`);

--
-- Constraints for table `jobListings`
--
ALTER TABLE `jobListings`
  ADD CONSTRAINT `jobListings_ibfk_1` FOREIGN KEY (`jobTypeId`) REFERENCES `jobTypes` (`jobTypeId`),
  ADD CONSTRAINT `jobListings_ibfk_3` FOREIGN KEY (`sectorId`) REFERENCES `sectors` (`sectorId`),
  ADD CONSTRAINT `jobListings_ibfk_4` FOREIGN KEY (`employerId`) REFERENCES `employers` (`employerId`);

--
-- Constraints for table `jobSeekers_qualificationLevels`
--
ALTER TABLE `jobSeekers_qualificationLevels`
  ADD CONSTRAINT `jobSeekers_qualificationLevels_ibfk_1` FOREIGN KEY (`qualificationId`) REFERENCES `qualificationLevels` (`qualificationId`),
  ADD CONSTRAINT `jobSeekers_qualificationLevels_ibfk_2` FOREIGN KEY (`jobSeekerId`) REFERENCES `jobSeekers` (`jobSeekerId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
