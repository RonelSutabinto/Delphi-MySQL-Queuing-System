-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: queuedb
-- ------------------------------------------------------
-- Server version	5.7.7-rc-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `managein`
--

DROP TABLE IF EXISTS `managein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managein` (
  `idIn` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`idIn`),
  KEY `index2` (`type`,`number`,`date`),
  KEY `index3` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managein`
--

LOCK TABLES `managein` WRITE;
/*!40000 ALTER TABLE `managein` DISABLE KEYS */;
INSERT INTO `managein` VALUES (2,'NA',1,'2017-11-13','11:02:18','UKG8'),(3,'NA',2,'2017-11-13','11:02:45','UKG8'),(4,'RP',1,'2017-11-13','11:14:39','UKG8'),(5,'RD',1,'2017-11-13','11:15:11','UKG8'),(6,'CC',1,'2017-11-13','11:15:13','UKG8'),(7,'RP',2,'2017-11-13','11:15:13','UKG8');
/*!40000 ALTER TABLE `managein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manageout`
--

DROP TABLE IF EXISTS `manageout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manageout` (
  `entry` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` varchar(10) NOT NULL,
  `queid` int(11) NOT NULL DEFAULT '0',
  `groupno` int(2) DEFAULT NULL,
  `executedby` varchar(35) DEFAULT NULL,
  `Department` varchar(10) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `counter` varchar(25) NOT NULL,
  `idIn` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `index2` (`type`,`number`,`groupno`),
  KEY `index3` (`userid`,`Department`,`type`,`number`,`date`),
  KEY `index4` (`userid`,`Department`,`groupno`,`date`),
  KEY `index5` (`idIn`),
  KEY `index6` (`queid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manageout`
--

LOCK TABLES `manageout` WRITE;
/*!40000 ALTER TABLE `manageout` DISABLE KEYS */;
/*!40000 ALTER TABLE `manageout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publichers`
--

DROP TABLE IF EXISTS `publichers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publichers` (
  `entry` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`entry`),
  UNIQUE KEY `index3` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publichers`
--

LOCK TABLES `publichers` WRITE;
/*!40000 ALTER TABLE `publichers` DISABLE KEYS */;
INSERT INTO `publichers` VALUES (1,'UKG8','2017-11-13','09:55:51');
/*!40000 ALTER TABLE `publichers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `que`
--

DROP TABLE IF EXISTS `que`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `que` (
  `queID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` varchar(10) NOT NULL,
  `groupno` int(2) DEFAULT NULL,
  PRIMARY KEY (`queID`),
  UNIQUE KEY `index4` (`type`,`number`,`date`),
  KEY `index2` (`type`,`number`,`groupno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `que`
--

LOCK TABLES `que` WRITE;
/*!40000 ALTER TABLE `que` DISABLE KEYS */;
INSERT INTO `que` VALUES (1,'NA',1,'2017-11-13','11:02:18','UKG8',1),(2,'NA',2,'2017-11-13','11:02:45','UKG8',1),(3,'RP',1,'2017-11-13','11:14:39','UKG8',4),(4,'RD',1,'2017-11-13','11:15:11','UKG8',3),(5,'CC',1,'2017-11-13','11:15:13','UKG8',2),(6,'RP',2,'2017-11-13','11:15:13','UKG8',4);
/*!40000 ALTER TABLE `que` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quecntr`
--

DROP TABLE IF EXISTS `quecntr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quecntr` (
  `queIDcntr` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`queIDcntr`),
  UNIQUE KEY `index4` (`type`,`number`,`date`),
  KEY `index2` (`type`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quecntr`
--

LOCK TABLES `quecntr` WRITE;
/*!40000 ALTER TABLE `quecntr` DISABLE KEYS */;
INSERT INTO `quecntr` VALUES (1,'NA',1,'2017-11-13','11:02:18'),(2,'NA',2,'2017-11-13','11:02:44'),(3,'RP',1,'2017-11-13','11:14:39'),(4,'RD',1,'2017-11-13','11:15:11'),(5,'CC',1,'2017-11-13','11:15:13'),(6,'RP',2,'2017-11-13','11:15:13');
/*!40000 ALTER TABLE `quecntr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quecntrtrail`
--

DROP TABLE IF EXISTS `quecntrtrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quecntrtrail` (
  `queIDcntr` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `idtrail` int(11) NOT NULL,
  PRIMARY KEY (`queIDcntr`),
  UNIQUE KEY `index4` (`type`,`number`,`date`),
  KEY `index2` (`type`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quecntrtrail`
--

LOCK TABLES `quecntrtrail` WRITE;
/*!40000 ALTER TABLE `quecntrtrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `quecntrtrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quetrail`
--

DROP TABLE IF EXISTS `quetrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quetrail` (
  `entry` int(11) NOT NULL AUTO_INCREMENT,
  `queID` int(11) NOT NULL,
  `type` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `code` varchar(10) NOT NULL,
  `groupno` int(2) DEFAULT NULL,
  `idtrail` int(11) NOT NULL,
  PRIMARY KEY (`entry`),
  KEY `index2` (`type`,`number`,`groupno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quetrail`
--

LOCK TABLES `quetrail` WRITE;
/*!40000 ALTER TABLE `quetrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `quetrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `removetrail`
--

DROP TABLE IF EXISTS `removetrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `removetrail` (
  `idtrail` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `userid` varchar(5) NOT NULL,
  PRIMARY KEY (`idtrail`),
  KEY `index2` (`userid`),
  KEY `index3` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `removetrail`
--

LOCK TABLES `removetrail` WRITE;
/*!40000 ALTER TABLE `removetrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `removetrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `entry` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(5) NOT NULL,
  `name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-13 11:47:15
