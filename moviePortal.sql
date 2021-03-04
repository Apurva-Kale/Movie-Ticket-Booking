
--
-- Table structure for table `Users`

Create database UserDB;
use UserDB;
DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT 'USA',
  `password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `moviedatabase`
--

DROP TABLE IF EXISTS `moviedatabase`;

CREATE TABLE `moviedatabase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `genere` varchar(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `moviedatabase`
--

LOCK TABLES `moviedatabase` WRITE;

INSERT INTO `moviedatabase` VALUES (11,'Bahubali-2','epic, action',150,'S.S. Rajamouli'),(12,'MS Dhoni','biopic',190,'Neeraj Jha'),(13,'Deadpool (A)','action, comedy',110,'Mark Stevenson'),(14,'Avengers','action',115,'marvel');

UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;

CREATE TABLE `shows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MId` int(11) DEFAULT NULL,
  `screen` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `booked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `MId` (`MId`),
  CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`MId`) REFERENCES `moviedatabase` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;

INSERT INTO `shows` VALUES (6,11,1,3,0),(7,12,2,3,2),(8,13,3,3,0),(9,14,1,2,0),(10,11,1,1,0),(11,12,2,1,0);

UNLOCK TABLES;



