-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: dms
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `security` varchar(50) DEFAULT NULL,
  `answer` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('mishra','rahul mishra','12345','Your Nickname?','guru'),('palrajnish100','rajnish pal','12345678','Your HomeTown City?','noida'),('mishraarahul100','rahul mishra','9756568333','Your Nickname?','mishra g'),('','','','Your Nickname?',''),('vanditvs','pandit','123456','Your Nickname?','pandit'),('rahul100','rahul mishra','123456','Your HomeTown City?','asasa'),('rahulmishracode','rahul mishra','1234','Your Nickname?','mishra'),('rahul','rahul','1234','Your Nickname?','mishra'),('mishra','rahul','1234','Your Nickname?','mishraji');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookhotel`
--

DROP TABLE IF EXISTS `bookhotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookhotel` (
  `username` varchar(30) DEFAULT NULL,
  `hotel` varchar(30) DEFAULT NULL,
  `persons` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `ac` varchar(10) DEFAULT NULL,
  `food` varchar(10) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookhotel`
--

LOCK TABLES `bookhotel` WRITE;
/*!40000 ALTER TABLE `bookhotel` DISABLE KEYS */;
INSERT INTO `bookhotel` VALUES ('vanditvs','JW Marriot Hotel','3','5','yes','yes','Passport','123456','9712323454','112500'),('rahulmishracode','JW Marriot Hotel','5','2','yes','yes','Passport','12345','212121212','75000'),('rahulmishracode','JW Marriot Hotel','2','2','yes','yes','Passport','12345','212121212','30000'),('rahulmishracode','JW Marriot Hotel','2','3','yes','yes','Passport','12345','212121212','45000'),('mishra','JW Marriot Hotel','2','3','yes','yes','Passport','11','98919171','45000');
/*!40000 ALTER TABLE `bookhotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookpackage`
--

DROP TABLE IF EXISTS `bookpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookpackage` (
  `username` varchar(30) DEFAULT NULL,
  `package` varchar(30) DEFAULT NULL,
  `persons` varchar(30) DEFAULT NULL,
  `id` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookpackage`
--

LOCK TABLES `bookpackage` WRITE;
/*!40000 ALTER TABLE `bookpackage` DISABLE KEYS */;
INSERT INTO `bookpackage` VALUES ('vanditvs','Gold Package','3','Passport','123456','9712323454','Rs 36000'),('vanditvs','Gold Package','4','Passport','123456','9712323454','Rs 48000'),('vanditvs','Gold Package','5','Passport','123456','9712323454','Rs 60000'),('vanditvs','Gold Package','1','Passport','123456','9712323454','Rs 12000'),('vanditvs','Gold Package','1','Passport','123456','9712323454','Rs 12000'),('vanditvs','Silver Package','10','Passport','123456','9712323454','Rs 250000'),('vanditvs','Gold Package','5','Passport','123456','9712323454','Rs 60000'),('vanditvs','Gold Package','1','Passport','123456','9712323454',''),('vanditvs','Gold Package','3','Passport','123456','9712323454','Rs 36000'),('vanditvs','Silver Package','10','Passport','123456','9712323454','Rs 250000'),('rahulmishracode','Silver Package','2','Passport','12345','212121212','Rs 50000'),('mishra','Bronze Package','5','Passport','11','98919171','Rs 160000');
/*!40000 ALTER TABLE `bookpackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `username` varchar(30) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('rahul mishra','Passport','12','rahul','Male','india','saharanpur','18912891','mishraarahul100@gmail.com'),('mishra','Passport','11','rahul','Male','india','saharanpur','98919171','mishraarahul100@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `name` varchar(40) DEFAULT NULL,
  `cost_per_day` varchar(20) DEFAULT NULL,
  `food_charges` varchar(20) DEFAULT NULL,
  `ac_charges` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('JW Marriot Hotel','2000','2500','3000'),('The Taj Hotel','2500','2200','4000');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 13:25:49
