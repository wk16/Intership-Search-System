-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2020 at 08:15 PM
-- Server version: 10.4.14-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u534895628_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `Applied`
--

CREATE TABLE `Applied` (
  `User` int(11) NOT NULL,
  `Internship` int(11) NOT NULL,
  `DateApplied` date NOT NULL,
  `Status` char(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Applied`
--

INSERT INTO `Applied` (`User`, `Internship`, `DateApplied`, `Status`) VALUES
(143654217, 163, '2020-12-06', 'Accepted'),
(185649775, 492, '2020-12-02', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `C_ID` int(11) NOT NULL,
  `Name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Industry` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MissionStatement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Company`
--

INSERT INTO `Company` (`C_ID`, `Name`, `Industry`, `MissionStatement`, `Description`) VALUES
(1, 'Pear', 'Technology', 'To deliver the best products possible', 'A worldwide tech company'),
(2, 'Valve', 'Computer Software', 'Valve\'s mission is to achieve, through creativity and innovation, uncompromising excellence in the products we manufacture, the services we provide, the work environment we create, and the level of responsiveness we maintain, to meet the needs and expectations of our customers, representatives, vendors, and employees.', 'Valve Corporation, also known as Valve Software, is an American video game developer, publisher, and digital distribution company headquartered in Bellevue, Washington.'),
(3, 'HeadBook', 'Social Media', 'Facebook\'s mission is to give people the power to build community and bring the world closer together. People use Facebook to stay connected with friends and family, to discover what\'s going on in the world, and to share and express what matters to them.', 'Facebook, Inc. is an American social media conglomerate corporation based in Menlo Park, California.'),
(4, 'Jungle', 'E-commerce', 'Amazon\'s mission is to continually raise the bar of the customer experience by using the internet and technology to help consumers find, discover and buy anything, and empower businesses and content creators to maximise their success. We aim to be Earth\'s most customer centric company.', 'Amazon.com, Inc., is an American multinational technology company based in Seattle, Washington, which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence.'),
(5, 'Woogle', 'Information Technology', 'Google\'s company mission is to organize the world\'s information and make it universally accessible and useful. That\'s why Search makes it easy to discover a broad range of information from a wide variety of sources.', 'Google, LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware. '),
(6, 'Oracles', 'Computer Software', 'Oracle\'s mission is to foster an inclusive environment that leverages the diverse backgrounds and perspectives of all our employees, suppliers, customers, and partners to drive a sustainable global competitive advantage.', 'Oracle Corporation is an American multinational computer technology corporation headquartered in Redwood Shores, California. The company sells database software and technology, cloud engineered systems, and enterprise software products—particularly its own brands of database management systems.'),
(7, 'GetHub', 'Information Technology', 'GitHub\'s mission is to help every developer—regardless of experience level—learn, code, and ship software effectively.', 'GitHub, Inc. is a subsidiary of Microsoft which provides hosting for software development and version control using Git. It offers the distributed version control and source code management functionality of Git, plus its own features.'),
(8, 'Twetter', 'Social Media', 'The mission we serve as Twitter, Inc. is to give everyone the power to create and share ideas and information instantly without barriers. Our business and revenue will always follow that mission in ways that improve – and do not detract from – a free and global conversation.', 'Twitter is an American microblogging and social networking service on which users post and interact with messages known as \"tweets\". Registered users can post, like and retweet tweets, but unregistered users can only read them.'),
(9, 'Spotifique', 'Social Media', 'Spotify\'s mission is to unlock the potential of human creativity—by giving a million creative artists the opportunity to live off their art and billions of fans the opportunity to enjoy and be inspired by it.', 'Spotify is a Swedish-based audio streaming and media services provider, launched in October 2008. '),
(10, 'Rockwell Automation', 'Information Technology', 'Rockwell\'s mission is to improve the quality of life by making the world more productive and sustainable. ', 'Rockwell Automation, Inc., is an American provider of industrial automation and information technology. Brands include Allen-Bradley and FactoryTalk software. ');

-- --------------------------------------------------------

--
-- Table structure for table `Internship`
--

CREATE TABLE `Internship` (
  `I_ID` int(11) NOT NULL,
  `Role` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HourlyPay` float(5,2) DEFAULT NULL,
  `City` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowsRemote` tinyint(1) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `JobType` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MinYear` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkAuthorization` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Internship`
--

INSERT INTO `Internship` (`I_ID`, `Role`, `HourlyPay`, `City`, `State`, `AllowsRemote`, `StartDate`, `EndDate`, `Description`, `JobType`, `MinYear`, `WorkAuthorization`) VALUES
(1, 'software engineer', 45.25, 'San Fransico', 'California', 1, '2021-06-01', '2021-08-06', 'A fullstack developer internship', 'full-time', '2', 1),
(2, 'Data Scientist', 30.00, 'Seattle', 'Washington', 1, '2021-05-10', '2021-08-20', 'An internship focused on cleaning and analyzing big data on App Store usage.', 'Full Time', '3', 1),
(3, 'Backend Developer', 60.00, 'San Francisco', 'California', 1, '2021-05-17', '2021-08-20', 'An internship working on new internal GitHub features.', 'Full Time', '3', 1),
(4, 'Frontend Developer', 25.00, 'Chicago', 'Illinois', 1, '2021-05-24', '2021-08-13', 'An internship built around optimizing the Twitter API.', 'Part Time', '1', 0),
(5, 'Software Engineer', 55.00, 'Austin', 'Texas', 1, '2021-06-05', '2021-07-05', 'Create projects that matter in a real world enviornment.', 'Full-Time', '2', 1),
(11, 'Product Tester', 18.00, 'Colombus', 'Ohio', 0, '2021-05-10', '2021-08-13', 'A position testing new Oculus products.', 'Part Time', '1', 0),
(34, 'Software Engineering', 100.00, 'Detroit', 'Michigan', 1, '0000-00-00', '0000-00-00', 'A unique front end developer experience', 'Full time', '1', 0),
(44, 'Software Engineering', 10.00, 'Grand Rapids', 'Michigan', 1, '0000-00-00', '0000-00-00', 'A unique back end developer experience', 'Full time', '1', 0),
(54, 'Software Engineering', 35.00, 'Cleveland', 'Ohio', 1, '0000-00-00', '0000-00-00', 'A unique fullstack developer experience', 'Full time', '1', 0),
(104, 'Cybersecurity', 63.00, 'New York', 'New York', 0, '2021-06-09', '2021-09-09', 'Learn about the world of cybersecurity through meaningful work.', 'Full-Time', '1', 1),
(105, 'Cybersecurity', 95.00, 'Dallas', 'Texas', 1, '2021-06-09', '2021-09-09', 'Create exciting solultions to interesting problems.', 'Full-Time', '1', 1),
(112, 'Software Engineer', 30.00, 'Los Angeles', 'Calafornia', 0, '2021-06-05', '2021-07-05', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 1),
(115, 'Fullstack Development', 13.00, 'San Jose', 'Calafornia', 1, '2021-06-07', '2021-11-07', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '1', 0),
(122, 'QA Testing', 15.00, 'Dallas', 'Texas', 1, '2021-06-08', '2021-10-08', 'Apply data science skills to unique problems.', 'Full-Time', '4', 1),
(163, 'Cybersecurity', 16.00, 'Boston', 'Massachusetts', 0, '2021-06-09', '2021-09-09', 'Create projects that matter in a real world enviornment.', 'Full-Time', '3', 1),
(199, 'Penitration Testing', 68.00, 'Austin', 'Texas', 0, '2021-06-10', '2021-08-10', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 1),
(245, 'Data Scientist', 26.00, 'New York', 'New York', 1, '2021-06-06', '2021-08-09', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Part-Time', '1', 1),
(260, 'Cybersecurity', 53.00, 'Cleveland', 'Ohio', 1, '2021-06-09', '2021-09-09', 'Create exciting solultions to interesting problems.', 'Full-Time', '1', 1),
(262, 'Penitration Testing', 79.00, 'San Jose', 'Calafornia', 1, '2021-06-10', '2021-08-10', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 1),
(282, 'Fullstack Development', 12.00, 'Chicago', 'Illinois', 1, '2021-06-07', '2021-11-07', 'Make applications that matter.', 'Full-Time', '4', 0),
(303, 'Penitration Testing', 33.00, 'Denver', 'Colorado', 1, '2021-06-10', '2021-08-10', 'Apply data science skills to unique problems.', 'Part-Time', '4', 1),
(322, 'Cybersecurity', 58.00, 'Denver', 'Colorado', 1, '2021-06-09', '2021-09-09', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '2', 1),
(363, 'Fullstack Development', 28.00, 'Seattle', 'Washington', 0, '2021-06-07', '2021-11-07', 'Create projects that matter in a real world enviornment.', 'Full-Time', '2', 0),
(382, 'QA Testing', 85.00, 'Denver', 'Colorado', 0, '2021-06-08', '2021-10-08', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '2', 1),
(394, 'Data Scientist', 27.00, 'Dallas', 'Texas', 0, '2021-06-06', '2021-08-09', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '1', 1),
(397, 'Software Engineer', 99.00, 'San Jose', 'Calafornia', 1, '2021-06-05', '2021-07-05', 'Create projects that matter in a real world enviornment.', 'Part-Time', '2', 1),
(436, 'QA Testing', 73.00, 'Columbus', 'Ohio', 1, '2021-06-08', '2021-10-08', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Part-Time', '3', 1),
(448, 'QA Testing', 39.00, 'Seattle', 'Washington', 0, '2021-06-08', '2021-10-08', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '2', 0),
(484, 'Data Scientist', 100.00, 'Cleveland', 'Ohio', 1, '2021-06-06', '2021-08-09', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '2', 1),
(492, 'Software Engineer', 86.00, 'New York', 'New York', 0, '2021-06-05', '2021-07-05', 'Make applications that matter.', 'Full-Time', '4', 1),
(513, 'Penitration Testing', 98.00, 'Columbus', 'Ohio', 0, '2021-06-10', '2021-08-10', 'Apply data science skills to unique problems.', 'Part-Time', '4', 1),
(535, 'Fullstack Development', 83.00, 'Los Angeles', 'Calafornia', 0, '2021-06-07', '2021-11-07', 'Create exciting solultions to interesting problems.', 'Part-Time', '3', 1),
(541, 'Fullstack Development', 75.00, 'Austin', 'Texas', 1, '2021-06-07', '2021-11-07', 'Learn about the world of cybersecurity through meaningful work.', 'Full-Time', '2', 0),
(562, 'Data Scientist', 23.00, 'Seattle', 'Washington', 1, '2021-06-06', '2021-08-09', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '1', 0),
(564, 'Data Scientist', 87.00, 'San Jose', 'Calafornia', 0, '2021-06-06', '2021-08-09', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Part-Time', '1', 0),
(573, 'Data Scientist', 71.00, 'Chicago', 'Illinois', 1, '2021-06-06', '2021-08-09', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '2', 0),
(577, 'Software Engineer', 76.00, 'Seattle', 'Washington', 1, '2021-06-05', '2021-07-05', 'Make applications that matter.', 'Part-Time', '4', 1),
(581, 'Fullstack Development', 21.00, 'Cleveland', 'Ohio', 1, '2021-06-07', '2021-11-07', 'Make applications that matter.', 'Full-Time', '4', 1),
(639, 'Penitration Testing', 20.00, 'New York', 'New York', 0, '2021-06-10', '2021-08-10', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Part-Time', '1', 1),
(645, 'Cybersecurity', 31.00, 'Chicago', 'Illinois', 1, '2021-06-09', '2021-09-09', 'Create projects that matter in a real world enviornment.', 'Part-Time', '3', 1),
(704, 'Data Scientist', 69.00, 'Columbus', 'Ohio', 0, '2021-06-06', '2021-08-09', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 1),
(712, 'QA Testing', 18.00, 'Los Angeles', 'Calafornia', 1, '2021-06-08', '2021-10-08', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '2', 1),
(745, 'QA Testing', 72.00, 'Austin', 'Texas', 0, '2021-06-08', '2021-10-08', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '3', 0),
(764, 'Fullstack Development', 97.00, 'Columbus', 'Ohio', 1, '2021-06-07', '2021-11-07', 'Learn about the world of cybersecurity through meaningful work.', 'Part-Time', '2', 1),
(774, 'Penitration Testing', 45.00, 'Boston', 'Massachusetts', 1, '2021-06-10', '2021-08-10', 'Have the opportunity to craft effective testing tools, test frameworks, and processes to help increase engineering productivity.', 'Full-Time', '2', 1),
(794, 'Software Engineer', 24.00, 'Cleveland', 'Ohio', 1, '2021-06-05', '2021-07-05', 'Learn about the world of cybersecurity through meaningful work.', 'Full-Time', '2', 1),
(797, 'Software Engineer', 34.00, 'Denver', 'Colorado', 0, '2021-06-05', '2021-07-05', 'Create exciting solultions to interesting problems.', 'Full-Time', '3', 1),
(800, 'Cybersecurity', 49.00, 'Los Angeles', 'Calafornia', 1, '2021-06-09', '2021-09-09', 'Learn about the world of cybersecurity through meaningful work.', 'Full-Time', '1', 1),
(817, 'QA Testing', 82.00, 'Chicago', 'Illinois', 0, '2021-06-08', '2021-10-08', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 0),
(874, 'Penitration Testing', 46.00, 'Cleveland', 'Ohio', 0, '2021-06-10', '2021-08-10', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Part-Time', '2', 1),
(890, 'Data Scientist', 84.00, 'Boston', 'Massachusetts', 0, '2021-06-06', '2021-08-09', 'Apply data science skills to unique problems.', 'Part-Time', '2', 0),
(923, 'Penitration Testing', 43.00, 'Dallas', 'Texas', 0, '2021-06-10', '2021-08-10', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '2', 1),
(939, 'Fullstack Development', 80.00, 'Dallas', 'Texas', 1, '2021-06-07', '2021-11-07', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Part-Time', '1', 1),
(941, 'Data Scientist', 50.00, 'Los Angeles', 'Calafornia', 0, '2021-06-06', '2021-08-09', 'Apply data science skills to unique problems.', 'Full-Time', '2', 1),
(942, 'Software Engineer', 92.00, 'Boston', 'Massachusetts', 1, '2021-06-05', '2021-07-05', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '3', 1),
(962, 'QA Testing', 22.00, 'New York', 'New York', 1, '2021-06-08', '2021-10-08', 'We apply our insights to the intersection of space, technology, and furniture, helping individuals and teams in leading companies around the world to have a better day at work.', 'Full-Time', '2', 0),
(963, 'Software Engineer', 47.00, 'Columbus', 'Ohio', 1, '2021-06-05', '2021-07-05', 'Create exciting solultions to interesting problems.', 'Full-Time', '3', 1),
(968, 'Cybersecurity', 14.00, 'Austin', 'Texas', 1, '2021-06-09', '2021-09-09', 'Make applications that matter.', 'Full-Time', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `InternshipSkill`
--

CREATE TABLE `InternshipSkill` (
  `ISkill` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Internship` int(11) NOT NULL,
  `YearsExp` float(3,1) DEFAULT NULL,
  `Required` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `InternshipSkill`
--

INSERT INTO `InternshipSkill` (`ISkill`, `Internship`, `YearsExp`, `Required`) VALUES
('CSS', 4, 3.0, 0),
('HTML', 4, 2.0, 1),
('JavaScript', 4, 2.0, 1),
('PHP', 3, 2.0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Offers`
--

CREATE TABLE `Offers` (
  `Company` int(11) NOT NULL,
  `Internship` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Offers`
--

INSERT INTO `Offers` (`Company`, `Internship`) VALUES
(1, 1),
(1, 2),
(1, 104),
(1, 282),
(1, 492),
(1, 645),
(1, 874),
(2, 105),
(2, 303),
(2, 513),
(2, 704),
(2, 890),
(3, 11),
(3, 112),
(3, 322),
(3, 535),
(3, 712),
(3, 923),
(4, 115),
(4, 363),
(4, 541),
(4, 745),
(4, 939),
(5, 34),
(5, 122),
(5, 382),
(5, 562),
(5, 764),
(5, 941),
(6, 2),
(6, 163),
(6, 394),
(6, 564),
(6, 774),
(6, 942),
(7, 3),
(7, 199),
(7, 397),
(7, 573),
(7, 794),
(7, 962),
(8, 4),
(8, 44),
(8, 245),
(8, 436),
(8, 577),
(8, 797),
(8, 963),
(9, 54),
(9, 260),
(9, 448),
(9, 581),
(9, 800),
(9, 968),
(10, 262),
(10, 484),
(10, 639),
(10, 817);

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `Name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`Name`) VALUES
('---'),
('C'),
('C#'),
('C++'),
('CSS'),
('Go'),
('Haskell'),
('HTML'),
('Java'),
('JavaScript'),
('Lua'),
('PHP'),
('Python'),
('Ruby'),
('Rust'),
('Scala'),
('SQL');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `U_ID` int(11) NOT NULL,
  `Name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `University` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Degree` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Major` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Grade` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GPA` float(3,2) DEFAULT NULL,
  `WorkAuthorized` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`U_ID`, `Name`, `University`, `Degree`, `Major`, `Grade`, `GPA`, `WorkAuthorized`) VALUES
(7985118, 'Zayne Bain', 'Univerity of Michigan', 'BS', 'Architectural Engineering', '3', 3.50, 0),
(12624470, 'Komal Wardle', 'Howard', 'BS', 'Civil Engineering', '1', 3.80, 0),
(16581079, 'Keegan Beck', 'UCLA', 'BA', 'Engineering (Pre-Engineering), General', '4', 3.60, 0),
(34444038, 'Stewart Nunez', 'University of Maryland', 'BA', 'Biomedical Engineering', '3', 3.40, 0),
(34667836, 'Valentino Hartley', 'UC Berkley', 'BA', 'Aerospace/Aeronautical Engineering', '4', 3.80, 0),
(36256732, 'Zak Lees', 'Dartmouth', 'BS', 'Accounting Technician', '4', 3.80, 0),
(47056049, 'Bevan Jaramillo', 'MIT', 'BS', 'Business Administration & Management, General', '4', 2.20, 0),
(47632594, 'Carol Crowther', 'Univerity of Michigan', 'BS', 'Accounting Technician', '2', 3.20, 0),
(85653808, 'Rachael Albert', 'Dartmouth', 'BA', 'Computer System Administration', '4', 3.50, 0),
(86765299, 'Saira Howell', 'MIT', 'BA', 'Engineering (Pre-Engineering), General', '4', 3.50, 0),
(107626547, 'Aleksander Berg', 'Kent State', 'BA', 'Hotel/Motel Management', '4', 4.00, 0),
(126232323, 'Reece Traynor', 'University of Maryland', 'BS', 'Architectural Engineering', '3', 2.80, 0),
(142390990, 'Farrah Anderson', 'Cornell', 'BS', 'Biomedical Engineering', '4', 2.20, 0),
(143654217, 'Brian Beattie', 'Case Western Reserve University', 'BS', 'International Business Management', '3', 3.60, 0),
(169012355, 'Jayda Robins', 'Vanderbilt', 'BS', 'Aerospace/Aeronautical Engineering', '2', 2.60, 0),
(169463328, 'Aminah West', 'Kent State', 'BS', 'Business Administration & Management, General', '4', 3.00, 0),
(171377467, 'Usman Drake', 'Dartmouth', 'BA', 'Labor/Industrial Relations', '3', 3.00, 0),
(175470253, 'Elina Sweet', 'Stanford', 'BS', 'Human Resources Management', '1', 3.50, 0),
(176170704, 'Maison Hickman', 'Cleveland State', 'BS', 'Computer & Information Sciences, General', '2', 1.80, 0),
(185649775, 'Ruby-Rose Hansen', 'Case Western Reserve University', 'BA', 'Accounting Technician', '1', 3.70, 0),
(187991002, 'Dulcie Allen', 'Cleveland State', 'BA', 'Human Resources Development/Training', '3', 3.20, 0),
(197901403, 'Talitha Bloom', 'University of Alabama', 'BA', 'Computer Software & Media Applications', '3', 1.80, 0),
(206746307, 'Stacie Herring', 'Univerity of Michigan', 'BS', 'Computer System Administration', '2', 3.00, 0),
(207411708, 'Siya Porter', 'Howard', 'BA', 'Accounting', '1', 3.00, 0),
(223558852, 'Santino Byrne', 'UCLA', 'BS', 'Data Management Technology', '4', 3.70, 0),
(244222819, 'Celine Mellor', 'Stanford', 'BS', 'Accounting', '2', 3.90, 0),
(244936822, 'Aahil Hammond', 'University of Maryland', 'BS', 'Accounting Technician', '2', 3.20, 0),
(248492367, 'Brent King', 'Univerity of Michigan', 'BS', 'Labor/Industrial Relations', '3', 3.80, 0),
(262555457, 'Elise Willis', 'UC Berkley', 'BS', 'Computer Networking/Telecommunications', '3', 3.20, 0),
(290064086, 'Nina House', 'Harvard', 'BA', 'Civil Engineering', '1', 2.00, 0),
(298037242, 'Finbar Garza', 'Cornell', 'BA', 'Data Management Technology', '3', 3.20, 0),
(300557364, 'Tasha Rush', 'Stanford', 'BA', 'International Business Management', '1', 3.50, 0),
(328274055, 'Brady Vincent', 'Univerity of Michigan', 'BA', 'Data Management Technology', '2', 3.40, 0),
(365647223, 'Lance Lang', 'Princeton', 'BA', 'International Business Management', '1', 4.00, 0),
(388405069, 'Cairon Foley', 'Dartmouth', 'BS', 'Architectural Engineering', '3', 3.20, 0),
(396515873, 'Tessa Mcbride', 'Cornell', 'BS', 'Labor/Industrial Relations', '4', 2.60, 0),
(400726764, 'Gary Bautista', 'Harvard', 'BS', 'Chemical Engineering', '1', 3.60, 0),
(411176737, 'Elle-May Jenkins', 'Kent State', 'BS', 'Labor/Industrial Relations', '4', 3.00, 0),
(413408334, 'Iwan Emery', 'University of Maryland', 'BS', 'Computer System Administration', '2', 2.00, 0),
(418673100, 'Fatma Malone', 'Cornell', 'BS', 'Business Administration & Management, General', '3', 3.40, 0),
(442916418, 'Shelby Lott', 'UCLA', 'BS', 'Hotel/Motel Management', '4', 3.60, 0),
(453592266, 'Aman Wang', 'University of Maryland', 'BA', 'Business Administration & Management, General', '2', 2.60, 0),
(454657587, 'Sahil Mill', 'Univerity of Michigan', 'BA', 'Business Administration & Management, General', '2', 3.00, 0),
(462354699, 'Aalia Medina', 'Cornell', 'BS', 'Computer System Administration', '3', 2.50, 0),
(515794016, 'Bilaal Paine', 'Princeton', 'BS', 'Accounting', '3', 3.70, 0),
(526068856, 'Hadley Rogers', 'Harvard', 'BS', 'Hotel/Motel Management', '2', 4.00, 0),
(527047830, 'Abigale Copeland', 'Case Western Reserve University', 'BA', 'Computer System Administration', '1', 2.80, 0),
(529316058, 'Maira Miles', 'Harvard', 'BA', 'Human Resources Development/Training', '2', 2.80, 0),
(533741040, 'Mustafa Welsh', 'Kent State', 'BA', 'Computer & Information Sciences, General', '4', 3.70, 0),
(543033977, 'Johnathon Xiong', 'Stanford', 'BA', 'Accounting Technician', '2', 1.90, 0),
(547733107, 'Kira Churchill', 'Case Western Reserve University', 'BA', 'Accounting', '1', 4.00, 0),
(554462603, 'Asiya Spence', 'Princeton', 'BS', 'Computer Science & Programming', '3', 3.40, 0),
(560249933, 'Will Chaney', 'Stanford', 'BS', 'Computer Software & Media Applications', '2', 4.00, 0),
(564213678, 'Carl Dunlop', 'University of Maryland', 'BS', 'International Business Management', '3', 3.70, 0),
(564605838, 'Wanda Ryan', 'Vanderbilt', 'BA', 'Computer Science & Programming', '1', 3.40, 0),
(582630353, 'Sheena Hayward', 'Howard', 'BA', 'Agricultural/Bioengineering', '2', 3.70, 0),
(587601810, 'Jamelia Whittle', 'MIT', 'BS', 'Data Management Technology', '4', 3.50, 0),
(603409486, 'Aaliyah Walker', 'Princeton', 'BS', 'Human Resources Management', '1', 3.00, 0),
(608957406, 'Dexter Cuevas', 'MIT', 'BS', 'Computer & Information Sciences, General', '2', 3.90, 0),
(616431241, 'Milana Amos', 'Kent State', 'BS', 'Data Management Technology', '4', 3.00, 0),
(623901362, 'Isma Daniel', 'Case Western Reserve University', 'BA', 'Architectural Engineering', '3', 3.20, 0),
(632970745, 'Natalie Easton', 'Stanford', 'BA', 'Architectural Engineering', '1', 3.80, 0),
(654347368, 'Dania Roth', 'University of Alabama', 'BS', 'Human Resources Management', '4', 3.20, 0),
(660931004, 'Eisa O\'Ryan', 'UCLA', 'BS', 'Computer & Information Sciences, General', '3', 4.00, 0),
(662696941, 'James Pond', 'Case Western', 'BS', 'Computer Science', '3', 4.00, 1),
(662711104, 'Dollie Dean', 'University of Alabama', 'BA', 'Agricultural/Bioengineering', '4', 3.90, 0),
(666032358, 'Nida Parra', 'Dartmouth', 'BS', 'International Business Management', '3', 1.90, 0),
(666597910, 'Anabia Irving', 'University of Alabama', 'BA', 'Accounting', '3', 3.50, 0),
(667659958, 'Molly Pritchard', 'UC Berkley', 'BA', 'Civil Engineering', '3', 3.00, 0),
(677532642, 'Kaitlin Lake', 'Cleveland State', 'BA', 'Computer Networking/Telecommunications', '2', 3.80, 0),
(679403606, 'Kadeem Ratcliffe', 'Stanford', 'BS', 'Agricultural/Bioengineering', '1', 1.80, 0),
(683056933, 'Aliza Braun', 'UC Berkley', 'BS', 'Human Resources Development/Training', '4', 3.50, 0),
(687973859, 'Kiana Blevins', 'Harvard', 'BS', 'Engineering (Pre-Engineering), General', '2', 3.70, 0),
(689021098, 'Dafydd Caldwell', 'Dartmouth', 'BS', 'Computer Software & Media Applications', '4', 3.50, 0),
(718492415, 'Codie Berger', 'MIT', 'BA', 'Chemical Engineering', '2', 4.00, 0),
(732616489, 'Szymon Marriott', 'Vanderbilt', 'BS', 'Human Resources Development/Training', '2', 2.00, 0),
(749217510, 'Ruari Davie', 'UC Berkley', 'BS', 'Engineering (Pre-Engineering), General', '4', 3.80, 0),
(751788170, 'Brax Simons', 'Cleveland State', 'BS', 'Hotel/Motel Management', '3', 4.00, 0),
(766249085, 'Duncan Naylor', 'Case Western Reserve University', 'BS', 'Agricultural/Bioengineering', '3', 3.60, 0),
(766831985, 'Uzair Leon', 'Case Western Reserve University', 'BS', 'Computer Software & Media Applications', '1', 4.00, 0),
(799685102, 'Malikah Noel', 'Princeton', 'BA', 'Computer Software & Media Applications', '3', 3.60, 0),
(803961943, 'Holli Spears', 'Howard', 'BS', 'Human Resources Development/Training', '2', 3.00, 0),
(810118565, 'Ava-Rose Duran', 'Vanderbilt', 'BS', 'Computer Networking/Telecommunications', '1', 2.80, 0),
(811873541, 'Sidney Hebert', 'Princeton', 'BS', 'Agricultural/Bioengineering', '1', 4.00, 0),
(816006902, 'Brandy Kidd', 'Vanderbilt', 'BS', 'Civil Engineering', '1', 2.50, 0),
(825547285, 'Samanta Ahmad', 'Harvard', 'BA', 'Aerospace/Aeronautical Engineering', '2', 2.50, 0),
(865755594, 'Cheyanne Doherty', 'Cleveland State', 'BS', 'Engineering (Pre-Engineering), General', '3', 1.90, 0),
(888151792, 'Quinn Blankenship', 'Cornell', 'BA', 'Computer & Information Sciences, General', '4', 3.50, 0),
(893303129, 'Hetty Mcarthur', 'Howard', 'BS', 'Computer Science & Programming', '1', 3.00, 0),
(902708874, 'Neel Foreman', 'Vanderbilt', 'BA', 'Human Resources Management', '2', 2.20, 0),
(908839241, 'Allen Salinas', 'UCLA', 'BA', 'Chemical Engineering', '3', 4.00, 0),
(912151069, 'Walid Mueller', 'Harvard', 'BS', 'Computer Networking/Telecommunications', '1', 3.20, 0),
(926052363, 'Korben Bowman', 'UC Berkley', 'BA', 'Computer Science & Programming', '3', 3.00, 0),
(926580874, 'Katelyn Graves', 'University of Maryland', 'BA', 'Labor/Industrial Relations', '3', 2.50, 0),
(931047736, 'Jordon Mccarthy', 'MIT', 'BA', 'Hotel/Motel Management', '4', 1.80, 0),
(933692500, 'Lucian Brock', 'Cleveland State', 'BS', 'Chemical Engineering', '2', 3.50, 0),
(936765757, 'Farhan Haworth', 'Howard', 'BA', 'Human Resources Management', '2', 3.40, 0),
(940921811, 'Pixie Shepard', 'University of Alabama', 'BS', 'Aerospace/Aeronautical Engineering', '4', 3.40, 0),
(943353038, 'Kieron Parkes', 'MIT', 'BS', 'Biomedical Engineering', '2', 3.20, 0),
(953920392, 'Billy Bongos', 'University of American Samoa', 'BA', 'Stand-Up', '4', 2.00, 0),
(966191149, 'Aniyah Valencia', 'Howard', 'BS', 'Aerospace/Aeronautical Engineering', '2', 3.00, 0),
(973534130, 'Sapphire James', 'Kent State', 'BS', 'Biomedical Engineering', '4', 3.40, 0),
(991359730, 'Aqsa Portillo', 'Univerity of Michigan', 'BA', 'Biomedical Engineering', '3', 3.00, 0),
(993130543, 'Sheldon Yoder', 'University of Alabama', 'BS', 'Computer Science & Programming', '3', 2.20, 0),
(995675374, 'Clementine Hughes', 'UCLA', 'BA', 'Computer Networking/Telecommunications', '3', 3.70, 0),
(1206909860, 'Will Jerns', 'Case Western Reserve University', 'Bache', 'Computer Science', '3', 3.99, 1),
(1833434018, 'Will Jerns', 'Case Western Reserve University', 'Bache', 'Computer Science', '3', 3.99, 1),
(2019383726, 'Meira Farhi', 'Case Western Reserve University', 'BS', 'Computer Science', '3', 4.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserSkill`
--

CREATE TABLE `UserSkill` (
  `Skill` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User` int(11) NOT NULL,
  `YearsExp` float(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserSkill`
--

INSERT INTO `UserSkill` (`Skill`, `User`, `YearsExp`) VALUES
('CSS', 1206909860, 1.0),
('CSS', 1833434018, 1.0),
('CSS', 2019383726, 2.0),
('HTML', 662696941, 2.0),
('HTML', 2019383726, 2.0),
('Java', 662696941, 3.0),
('Java', 953920392, 1.0),
('Java', 2019383726, 3.0),
('PHP', 662696941, 2.0),
('Python', 662696941, 3.0),
('Python', 953920392, 1.0),
('Python', 1206909860, 2.0),
('Python', 1833434018, 2.0),
('SQL', 1206909860, 1.0),
('SQL', 1833434018, 1.0),
('SQL', 2019383726, 1.0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Applied`
--
ALTER TABLE `Applied`
  ADD PRIMARY KEY (`User`,`Internship`),
  ADD KEY `Internship` (`Internship`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `Internship`
--
ALTER TABLE `Internship`
  ADD PRIMARY KEY (`I_ID`);

--
-- Indexes for table `InternshipSkill`
--
ALTER TABLE `InternshipSkill`
  ADD PRIMARY KEY (`ISkill`,`Internship`),
  ADD KEY `Internship` (`Internship`);

--
-- Indexes for table `Offers`
--
ALTER TABLE `Offers`
  ADD PRIMARY KEY (`Company`,`Internship`),
  ADD KEY `Internship` (`Internship`);

--
-- Indexes for table `Skill`
--
ALTER TABLE `Skill`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `UserSkill`
--
ALTER TABLE `UserSkill`
  ADD PRIMARY KEY (`Skill`,`User`),
  ADD KEY `User` (`User`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Applied`
--
ALTER TABLE `Applied`
  ADD CONSTRAINT `Applied_ibfk_1` FOREIGN KEY (`User`) REFERENCES `User` (`U_ID`),
  ADD CONSTRAINT `Applied_ibfk_2` FOREIGN KEY (`Internship`) REFERENCES `Internship` (`I_ID`);

--
-- Constraints for table `InternshipSkill`
--
ALTER TABLE `InternshipSkill`
  ADD CONSTRAINT `InternshipSkill_ibfk_1` FOREIGN KEY (`ISkill`) REFERENCES `Skill` (`Name`),
  ADD CONSTRAINT `InternshipSkill_ibfk_2` FOREIGN KEY (`Internship`) REFERENCES `Internship` (`I_ID`);

--
-- Constraints for table `Offers`
--
ALTER TABLE `Offers`
  ADD CONSTRAINT `Offers_ibfk_1` FOREIGN KEY (`Company`) REFERENCES `Company` (`C_ID`),
  ADD CONSTRAINT `Offers_ibfk_2` FOREIGN KEY (`Internship`) REFERENCES `Internship` (`I_ID`);

--
-- Constraints for table `UserSkill`
--
ALTER TABLE `UserSkill`
  ADD CONSTRAINT `UserSkill_ibfk_1` FOREIGN KEY (`Skill`) REFERENCES `Skill` (`Name`),
  ADD CONSTRAINT `UserSkill_ibfk_2` FOREIGN KEY (`User`) REFERENCES `User` (`U_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
