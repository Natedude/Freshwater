CREATE DATABASE  IF NOT EXISTS `CSC` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `CSC`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.4-MariaDB-1:10.5.4+maria~buster

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
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `fkIdUser` int(11) NOT NULL,
  `fkEmail` varchar(45) NOT NULL,
  `fkIdPost` int(10) unsigned NOT NULL,
  `sellOrRent` varchar(45) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` VALUES (1,'Dan',1,'LandLord','/static/images/EastOaklandstreetview.jpg',1),(2,'G',2,'LandLord','/static/images/lovely.jpg',2),(4,'Bruce',3,'LandLord','/static/images/apart.jpg',3);
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Listing`
--

DROP TABLE IF EXISTS `Listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Listing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkId` int(11) NOT NULL,
  `fkEmail` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `houseType` varchar(10) NOT NULL,
  `sellOrRent` varchar(4) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `houseNum` int(11) DEFAULT NULL,
  `gps` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `roomNum` int(10) unsigned DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  `petsAllowed` int(11) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listing`
--

LOCK TABLES `Listing` WRITE;
/*!40000 ALTER TABLE `Listing` DISABLE KEYS */;
INSERT INTO `Listing` VALUES (1,1,'Dan','First Poster - House its a deal','house','Rent','SF',NULL,NULL,NULL,'Nice house, you won\'t ever want to leave',1000,4,NULL,'2020-07-11 00:04:34',NULL,NULL),(2,2,'G',' 4 bed, nice view Near SFSU campus','apartment','Rent','SF',NULL,NULL,NULL,'Don\'t miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.',3000,4,NULL,'2020-07-11 00:04:51',NULL,NULL),(3,4,'Bruce','Room For Rent/All Utilities Included','room','Rent','SF',NULL,NULL,NULL,'Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. \n\n- Two bedroom with Spacious Closets\n- Second Floor Unit\n- New tile kitchen and bathroom flooring\n- Subtle paint colors',2000,1,1,'2020-07-11 00:05:04',0,94070);
/*!40000 ALTER TABLE `Listing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkSender` varchar(45) NOT NULL,
  `fkReciever` varchar(45) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (1,'G','Dan','This is a test, Please can I rent your home, this is my first time doing this','2020-07-09 15:09:50'),(2,'Danny','Dan','I hear G wants to rent your place, I will pay more as long as he doesn\'t get this place','2020-07-09 15:11:23');
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('Dan','abc123',1),('G','abc1233',2),('Danny','bcc123',3),('Bruce','cba321',4);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 14:12:59
CREATE DATABASE  IF NOT EXISTS `CSC_3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `CSC_3`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_3
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.4-MariaDB-1:10.5.4+maria~buster

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
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `fkIdPost` int(10) unsigned NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,'/static/images/listings/EastOaklandstreetview.jpg',1),(2,'/static/images/listings/lovely.jpg',2),(3,'/static/images/listings/apart.jpg',3),(4,'/static/images/listings/pexels-photo-1918291.jpeg',4),(5,'/static/images/listings/pexels-photo-106399.jpeg',5);
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Listings`
--

DROP TABLE IF EXISTS `Listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  `title` varchar(45) NOT NULL,
  `houseType` varchar(10) NOT NULL,
  `sellOrRent` varchar(4) NOT NULL,
  `petsAllowed` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `distance_from_SFSU` float DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `sqft` int(10) unsigned DEFAULT NULL,
  `bedroomNum` int(10) unsigned DEFAULT NULL,
  `bathroomNum` int(10) unsigned DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,'2020-07-24 02:59:00','First Poster its a deal','house','rent',0,'San Francisco',94115,'9999 Main St.',5,'Nice place, you won\'t ever want to leave',6000,574,4,3,1),(2,'2020-07-24 02:59:00',' 4 bedroom, nice view Near SFSU campus','apartment','rent',0,'San Francisco',94116,'66666 San Jose St.',1,'Don\'t miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.',3000,800,4,2,1),(3,'2020-07-24 02:59:00','Room For Rent/All Utilities Included','room','rent',1,'San Francisco',94117,'22222 Lombard St.',3.5,'Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. \n\n- Two bedroom with Spacious Closets\n- Second Floor Unit\n- New tile kitchen and bathroom flooring\n- Subtle paint colors',2000,200,1,1,1),(4,'2020-07-24 02:59:00','1 Bed Apt. for Rent','apartment','rent',0,'San Francisco',95111,'1879 Geneva St.',0.2,'Spacious, sunny, private apartment - 1 bedroom, 1 bath, with living room/studio space (it can be rearrange as you like), August 1, or flexible date. Looking for someone temporary, 6 months and maybe longer. Sorry no pets and no couples.',1000,577,4,3,1),(5,'2020-07-24 02:59:00','4 Bed House for Sale','house','sale',1,'San Francisco',95112,'1879 Beechmont Ave.',0.4,'Need more sunny space to spend a pandemic? Need interesting layout and architectural details? Need a sense of home and style? Come live in our grand Victorian lady.',2200000,1577,4,3,1);
/*!40000 ALTER TABLE `Listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkSender` varchar(45) NOT NULL,
  `fkReciever` varchar(45) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,'G','Dan','This is a test, Please can I rent your home, this is my first time doing this','2020-07-24 02:59:00'),(2,'Danny','Dan','I hear G wants to rent your place, I will pay more as long as he doesn\'t get this place','2020-07-24 02:59:00');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('Dan','abc123',1),('G','abc1233',2),('Danny','bcc123',3),('Bruce','cba321',4);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 14:13:03
CREATE DATABASE  IF NOT EXISTS `CSC_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `CSC_2`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_2
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.4-MariaDB-1:10.5.4+maria~buster

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
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `fkIdPost` int(10) unsigned NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,'/static/images/listings/EastOaklandstreetview.jpg',1),(2,'/static/images/listings/lovely.jpg',2),(3,'/static/images/listings/apart.jpg',3);
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Listings`
--

DROP TABLE IF EXISTS `Listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkId` int(11) NOT NULL,
  `fkEmail` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `houseType` varchar(10) NOT NULL,
  `sellOrRent` varchar(4) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `houseNum` int(11) DEFAULT NULL,
  `gps` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `roomNum` int(10) unsigned DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  `petsAllowed` int(11) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,1,'Dan','First Poster its a deal','house','Rent','SF',NULL,NULL,NULL,'Nice place, you won\'t ever want to leave',1000,4,NULL,'2020-07-19 23:04:15',NULL,NULL),(2,2,'G',' 4 bedroom, nice view Near SFSU campus','apartment','Rent','SF',NULL,NULL,NULL,'Don\'t miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.',3000,4,NULL,'2020-07-19 23:04:15',NULL,NULL),(3,4,'Bruce','Room For Rent/All Utilities Included','room','Rent','SF',NULL,NULL,NULL,'Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. \n\n- Two bedroom with Spacious Closets\n- Second Floor Unit\n- New tile kitchen and bathroom flooring\n- Subtle paint colors',2000,1,1,'2020-07-19 23:04:15',0,94070);
/*!40000 ALTER TABLE `Listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkSender` varchar(45) NOT NULL,
  `fkReciever` varchar(45) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `timeCreated` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,'G','Dan','This is a test, Please can I rent your home, this is my first time doing this','2020-07-19 23:04:15'),(2,'Danny','Dan','I hear G wants to rent your place, I will pay more as long as he doesn\'t get this place','2020-07-19 23:04:15');
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('Dan','abc123',1),('G','abc1233',2),('Danny','bcc123',3),('Bruce','cba321',4);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 14:13:06
