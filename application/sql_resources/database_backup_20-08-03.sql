CREATE DATABASE  IF NOT EXISTS `CSC_666` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `CSC_666`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_666
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_listing_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`fk_user_id`),
  KEY `fk_listing_id` (`fk_listing_id`),
  CONSTRAINT `Images_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `Images_ibfk_2` FOREIGN KEY (`fk_listing_id`) REFERENCES `Listings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,10,1,'/static/images/listings/pexels-photo-1571468.jpeg'),(2,7,2,'/static/images/listings/99.05_773_542_s_c1.jpg'),(3,3,3,'/static/images/listings/37.twilights-01_5.jpg'),(4,9,4,'/static/images/listings/9.photo_2.jpg'),(5,6,5,'/static/images/listings/pexels-photo-3773570.png'),(6,9,6,'/static/images/listings/pexels-photo-1643384.jpeg'),(7,5,7,'/static/images/listings/pexels-photo-932328.jpeg'),(8,10,8,'/static/images/listings/pexels-photo-323780.jpeg'),(9,6,9,'/static/images/listings/pexels-photo-3639504.jpeg'),(10,9,10,'/static/images/listings/pexels-photo-1029803.jpeg'),(11,4,11,'/static/images/listings/pexels-photo-1775645.jpeg'),(12,17,12,'/static/images/listings/pexels-photo-3209035.jpeg'),(13,7,13,'/static/images/listings/3.02-1.jpg'),(14,15,14,'/static/images/listings/pexels-photo-3284980.png'),(15,4,15,'/static/images/listings/85.ExteriorEdited_1.jpg'),(16,20,16,'/static/images/listings/pexels-photo-2130598.jpeg'),(17,15,17,'/static/images/listings/28.EE9FE696-5E72-44E0-82A2-80867A2686D4_1400x521.jpg'),(18,14,18,'/static/images/listings/pexels-photo-4050292.jpeg'),(19,20,19,'/static/images/listings/living-room-couch-interior-room-584399.jpeg'),(20,15,20,'/static/images/listings/pexels-photo-1115804.jpeg');
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
  `fk_user_id` int(11) DEFAULT NULL,
  `timeCreated` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `houseType` varchar(255) DEFAULT NULL,
  `sellOrRent` varchar(255) DEFAULT NULL,
  `petsAllowed` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `distance_from_SFSU` float DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sqft` int(11) DEFAULT NULL,
  `bedroomNum` int(11) DEFAULT NULL,
  `bathroomNum` int(11) DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,10,'2020-08-03 07:49:04','Sunny 1BR/1BA with views and parking-744 sqft','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.82,'campus appliances Pool Stainless steel restaurants Open patio appliances looking Ipsum non quiquia quiquia consectetur labore. Modi consectetur porro non amet ipsum quiquia. Labore est dolorem sed consectetur numquam ut. Amet velit labore labore dolorem amet neque non. Neque sed quiquia dolore consectetur magnam adipisci. Eius dolore quiquia labore est. Ipsum etincidunt numquam consectetur quiquia tempora.',2900,744,1,1,1),(2,7,'2020-08-03 07:49:05','Beautiful Top Floor 2bd/1ba,Rear Apt. Hardwood,New Kit.','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.05,'ready dining room Perfect campus Gas roof Dual New bar Magnam magnam est quisquam eius neque sit. Tempora voluptatem non consectetur aliquam ut voluptatem velit. Modi voluptatem amet sed numquam tempora. Quaerat velit porro adipisci. Quaerat dolor ut ut porro sit eius. Ut porro eius eius dolorem. Sed dolore sit voluptatem ut ipsum. Neque voluptatem sed quiquia etincidunt etincidunt. Numquam sit aliquam neque etincidunt dolorem dolorem sed.',3350,1888,2,3,0),(3,3,'2020-08-03 07:49:06','Live in the Mission!! 3 Bed, 1.5 Bath with IN-UNIT Laundry!','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.87,'concept Granite countertop Natural ceilings fireplace neighborhood spa Pool Modi quisquam sed velit consectetur non. Quisquam dolore dolorem dolore etincidunt. Est consectetur ut dolor numquam eius consectetur. Adipisci ipsum eius porro dolor etincidunt. Ut sit dolorem sit. Ipsum tempora est neque quisquam porro. Sit velit modi voluptatem sed tempora adipisci quisquam. Quiquia sit quisquam voluptatem tempora porro labore ut.',4100,334,3,2,1),(4,9,'2020-08-03 07:49:08','1bed @ ONE MISSION BAY. Bridge/Bay Views!','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',3.37,'appliances kitchen house appliances Dual spa close utilities included spa Neque consectetur dolorem porro est. Tempora voluptatem est porro quisquam est labore. Dolor eius amet quisquam adipisci labore. Etincidunt quaerat dolorem velit eius quaerat etincidunt non. Neque dolorem quiquia voluptatem dolore eius. Ut ipsum adipisci dolore velit quisquam neque. Numquam porro dolore etincidunt labore. Non amet ut voluptatem etincidunt dolor etincidunt quisquam. Tempora neque tempora sit consectetur.',3800,750,1,2,1),(5,6,'2020-08-03 07:49:09','Beautiful & Spacious 3Bd In Great Central Loc','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.51,'Stainless steel studio bedroom apartment neighborhood amenities appliances kitchen floors Modi consectetur numquam etincidunt. Consectetur modi labore numquam dolorem quisquam sit. Sed ipsum adipisci eius dolore velit. Magnam quiquia non ut quisquam sit. Neque ut aliquam numquam quaerat est neque est. Labore est velit dolore. Consectetur numquam voluptatem sit dolor dolor neque dolore.',3495,320,3,1,0),(6,9,'2020-08-03 07:49:10','Cute & Charming Top Floor Jr. 1Bd, E-Z Fin.Dist. Hardwood Floors','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.3,'Pool Stainless steel studio kitchen SFSU Open bar Vaulted ceilings Quaerat ut adipisci consectetur velit est. Numquam consectetur magnam quaerat. Quisquam quaerat eius tempora porro dolorem quaerat dolorem. Aliquam non sit adipisci non neque adipisci porro. Adipisci numquam quisquam labore tempora. Tempora adipisci adipisci modi consectetur quaerat. Consectetur quisquam labore sit quisquam adipisci. Adipisci dolore magnam quisquam.',2350,1736,1,3,1),(7,5,'2020-08-03 07:49:11','Gorgeous Huge 2Bd/2.5Ba Loft,Parking Included, 2-Fireplaces','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.03,'looking patio floors location appliances countertop spa Media room Vaulted Quaerat etincidunt tempora sed adipisci sit neque magnam. Porro ut quiquia eius ipsum numquam. Amet velit ipsum velit aliquam amet. Aliquam dolore modi quaerat modi porro sit neque. Sed labore ipsum ipsum numquam ut. Dolorem ut quiquia porro sed est. Labore dolorem porro non quaerat porro aliquam. Adipisci dolore ut magnam magnam ipsum.',4150,1550,2,2,1),(8,10,'2020-08-03 07:49:13','Newly Updated,New Paint,New SS Appliances,New Laminate Hardwood Floors','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.28,'furniture French doors New appliances location kitchen nearby majors Pool Numquam ut voluptatem dolor consectetur. Est dolorem eius ipsum. Adipisci quaerat labore magnam sed sit. Porro aliquam labore est etincidunt. Voluptatem adipisci quaerat modi. Quiquia labore numquam ipsum.',3495,606,3,2,1),(9,6,'2020-08-03 07:49:14','BEST LOCATION - TOP FLOOR 1Br - Sunny, Quiet, & Next to Restaurants','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.81,'utilities included looking Natural floors Wine cellar majors bathroom neighborhood Stainless steel Est labore amet labore tempora. Dolor velit dolor est. Voluptatem consectetur dolore quaerat aliquam modi neque. Sed labore magnam sit labore. Porro dolor quiquia quiquia est sit sed.',3700,800,1,1,1),(10,9,'2020-08-03 07:49:15','Beautiful Top Flr. 3bd/1ba, New Laminated Hardwood Flrs,New Appliance','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.12,'Pool restaurants Gourmet roof Vaulted sinks Wine cellar apartment floors Tempora modi modi modi labore porro numquam. Amet aliquam eius quaerat. Sed etincidunt sed ipsum dolorem. Ipsum voluptatem modi etincidunt quisquam modi neque neque. Amet labore consectetur voluptatem voluptatem modi etincidunt porro. Eius neque ipsum amet consectetur non ut. Sit etincidunt magnam tempora numquam labore porro quiquia.',3495,1091,3,1,1),(11,4,'2020-08-03 07:50:15','Sunny 1BR/1BA with views and parking-744 sqft','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.29,'neighborhood Hardwood Perfect Granite class looking Open roof amenities Dolorem eius aliquam dolore velit. Neque est neque voluptatem. Tempora numquam tempora magnam adipisci amet. Ipsum consectetur dolore est numquam eius quaerat quisquam. Est tempora sed ut.',2900,744,1,1,1),(12,17,'2020-08-03 07:50:17','Beautiful Top Floor 2bd/1ba,Rear Apt. Hardwood,New Kit.','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',4.36,'bar mall utilities included ready appliances countertop Granite Wine cellar location Dolore consectetur sed dolorem quisquam. Modi adipisci ut etincidunt sit modi. Magnam modi ut numquam dolorem sit. Quaerat quaerat tempora velit eius. Velit tempora velit amet ut labore amet quaerat. Labore ut non est voluptatem dolore porro. Amet velit voluptatem porro dolor voluptatem dolor adipisci. Voluptatem etincidunt sit labore velit amet. Adipisci numquam adipisci labore. Amet quaerat non dolor ipsum porro numquam.',3350,1971,2,2,1),(13,7,'2020-08-03 07:50:18','Live in the Mission!! 3 Bed, 1.5 Bath with IN-UNIT Laundry!','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.64,'Open Pool Hardwood Pool amenities Guest New appliances dining room Amet velit magnam quisquam. Sit consectetur amet eius. Velit numquam quisquam eius eius labore voluptatem labore. Adipisci ipsum dolorem ipsum. Quaerat aliquam porro dolore quaerat aliquam ipsum. Sit voluptatem aliquam magnam non. Sed quaerat quisquam voluptatem velit quiquia quaerat. Sed neque quiquia non neque quiquia quisquam magnam.',4100,683,3,1,1),(14,15,'2020-08-03 07:50:20','1bed @ ONE MISSION BAY. Bridge/Bay Views!','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.86,'Vaulted appliances nearby Hardwood bar ceilings restaurants Gas mission Sit labore labore modi sit modi. Amet dolorem quiquia etincidunt porro est. Magnam dolore numquam quiquia ut. Non ut eius neque velit velit labore. Quaerat dolor quisquam non magnam ipsum consectetur. Voluptatem dolore eius adipisci. Quisquam neque consectetur non modi modi amet.',3800,750,1,1,1),(15,4,'2020-08-03 07:50:21','Beautiful & Spacious 3Bd In Great Central Loc','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.48,'Chef utilities included Stainless steel concept Granite looking Open location appliances Quisquam dolor amet voluptatem. Porro consectetur etincidunt sed voluptatem. Ipsum sit velit amet non quisquam. Quiquia dolorem porro quisquam modi dolore neque. Dolorem dolorem quiquia non modi consectetur aliquam velit.',3495,1658,3,1,1),(16,20,'2020-08-03 07:50:23','Cute & Charming Top Floor Jr. 1Bd, E-Z Fin.Dist. Hardwood Floors','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.29,'appliances Open Hardwood countertop concept ceilings furniture spa kitchen Adipisci est etincidunt numquam. Velit sit porro dolorem modi adipisci. Porro numquam sed ipsum eius. Consectetur dolor neque ipsum adipisci dolore velit. Ut quiquia etincidunt ut sit aliquam modi sit. Adipisci sit porro etincidunt. Quisquam sit modi ipsum. Voluptatem ut quiquia dolore non est quaerat. Etincidunt amet quaerat voluptatem modi ipsum numquam.',2350,1621,1,1,1),(17,15,'2020-08-03 07:50:25','Gorgeous Huge 2Bd/2.5Ba Loft,Parking Included, 2-Fireplaces','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.02,'bar Stainless steel Vaulted countertop dining room concept Gourmet apartment kitchen Tempora sed quisquam quiquia porro est sit. Ut amet modi dolore modi labore. Dolor consectetur neque dolor. Ut amet est est sed labore ipsum non. Numquam voluptatem quisquam neque dolore dolore consectetur porro. Etincidunt dolore est aliquam etincidunt sit neque. Neque eius magnam numquam aliquam. Voluptatem tempora quaerat ipsum amet est tempora non. Quiquia ut quaerat consectetur. Sed porro ipsum ut quaerat neque magnam.',4150,1550,2,1,1),(18,14,'2020-08-03 07:50:26','Newly Updated,New Paint,New SS Appliances,New Laminate Hardwood Floors','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.41,'Ocean views Hardwood sky light sinks Hardwood looking New Formal Quisquam quiquia sed quiquia adipisci modi. Quisquam consectetur adipisci aliquam amet porro velit aliquam. Neque velit quaerat dolore. Quaerat labore velit dolorem eius ipsum adipisci numquam. Ipsum labore est amet dolore dolorem eius neque. Est neque dolor quaerat adipisci quaerat sed. Etincidunt eius est etincidunt. Modi quaerat amet etincidunt velit dolore quaerat numquam.',3495,1315,3,2,1),(19,20,'2020-08-03 07:50:28','BEST LOCATION - TOP FLOOR 1Br - Sunny, Quiet, & Next to Restaurants','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.23,'furniture majors restaurants bar mission looking Move-in Pool Formal Quiquia aliquam magnam quisquam. Eius consectetur amet eius. Non voluptatem eius est est dolor. Porro ut sit consectetur. Tempora voluptatem ipsum consectetur sit dolore numquam. Quaerat dolor voluptatem ipsum numquam. Modi dolor sed dolore. Est sed voluptatem sit adipisci sed quiquia labore. Quaerat aliquam ut voluptatem.',3700,800,1,1,0),(20,15,'2020-08-03 07:50:29','Beautiful Top Flr. 3bd/1ba, New Laminated Hardwood Flrs,New Appliance','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.9,'apartment Vaulted sky Granite Hardwood dining room Hardwood Chef floors Porro dolor tempora quaerat etincidunt sit ut. Magnam sit numquam amet neque etincidunt velit. Numquam adipisci tempora dolor labore aliquam. Dolore quiquia etincidunt modi porro consectetur labore. Ipsum magnam dolor velit numquam est labore ut.',3495,132,3,3,1);
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
  `fkSender` varchar(255) DEFAULT NULL,
  `fkReciever` varchar(255) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `timeCreated` datetime DEFAULT NULL,
  `unread` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `sfsu_confirmed` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`active` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'consectetur','neque','consecteturneque@sfsu.edu','$2b$12$P7IpdbMAQ5kwki6lnIGpFu6eoLcaqzxi3UqOZymzmaDHMjy/qhW7O',1,1,'2020-08-03 07:48:57'),(2,'amet','etincidunt','ametetincidunt@random.com','$2b$12$mUkbOK5VN.FoChRj/LzGUO.fgsWp7ZAdAgm/e.dlJOy9rLnTLsIMi',1,0,'2020-08-03 07:48:58'),(3,'neque','Dolor','nequeDolor@sfsu.edu','$2b$12$1M1u/5R2gtvaHBpVX3Gy2ez2BOIr1OoAvz.vL/VUaarJFCnHfDRn6',1,1,'2020-08-03 07:48:59'),(4,'dolor','etincidunt','doloretincidunt@sfsu.edu','$2b$12$nsCq2mbaI0HT.Y6i4aZpAuKEnNY.GdGJvqA4GMhPVyAE9dBuFgCmq',1,1,'2020-08-03 07:48:59'),(5,'Quiquia','Etincidunt','QuiquiaEtincidunt@sfsu.edu','$2b$12$dGrwSVObhdqEaDhy5L.c2O0.0eOaqWNsig28QYONzdvasy1rod5Ue',1,1,'2020-08-03 07:49:00'),(6,'adipisci','Aliquam','adipisciAliquam@random.com','$2b$12$r.8tk2I3cVr4Dl9kswoBKeEnPG63XeONfHzSCJMGVOt.r/WTh5ncy',1,0,'2020-08-03 07:49:01'),(7,'Dolorem','Adipisci','DoloremAdipisci@sfsu.edu','$2b$12$lqN9Lp4qbitw2uXlD8rWu.PSKZHQVl/WyqaqQpIbM8oE3UInvA3kq',1,1,'2020-08-03 07:49:01'),(8,'etincidunt','Quaerat','etinciduntQuaerat@random.com','$2b$12$od5ROk9Z9rL4RBBWuiXGoOHXi7TgipHpAGoo8Uq1w6mOc8Zg1EBEG',1,0,'2020-08-03 07:49:02'),(9,'Numquam','Voluptatem','NumquamVoluptatem@sfsu.edu','$2b$12$EOkJ4T3eDjC/Wnnel9W50uqbxBbCCIDoY2TcTsgrSIDFse9xYmjci',1,1,'2020-08-03 07:49:02'),(10,'Quiquia','Velit','QuiquiaVelit@random.com','$2b$12$c5EX5Mfu.qusc2.rT/DX6uMxceWjVgR45CZb9FY6FabawnlgbixhK',1,0,'2020-08-03 07:49:03'),(11,'Dolorem','dolore','Doloremdolore@sfsu.edu','$2b$12$nsazpFl6IrX8DHupKWmj6OlKexoQCaLRHn60sZGR1xqJnwI07KbHq',1,1,'2020-08-03 07:50:09'),(12,'Magnam','Est','MagnamEst@sfsu.edu','$2b$12$5LbXN7r/P85cYe4aqxnX3OYLWdKvDgZIE5eSa/oACJdFbglThrjaG',1,1,'2020-08-03 07:50:09'),(13,'velit','quiquia','velitquiquia@sfsu.edu','$2b$12$TNUhio19DRP3.uyhZT2poejGfLnmx82Rp8EoHtwcUPOf.16Laisda',1,1,'2020-08-03 07:50:10'),(14,'ipsum','sed','ipsumsed@random.com','$2b$12$Guf5kivbB.MmZc1DjzJZUOpZDBYxHycrU.ZBiQkBlo204gaBe6b4y',1,0,'2020-08-03 07:50:10'),(15,'velit','non','velitnon@random.com','$2b$12$IJk9tDu5C68gKUDvIkdBPOhLSj6X/aY7EDL6nTJzTYXIG6zicDDfq',1,0,'2020-08-03 07:50:11'),(16,'Neque','velit','Nequevelit@random.com','$2b$12$asH22nSk5F3ajaCFED08aOwVcmTg6D/q9YiGOsosqRfYwN4ZBQG.i',1,0,'2020-08-03 07:50:12'),(17,'numquam','Labore','numquamLabore@random.com','$2b$12$sMpQLflGLI459Cnzb95jY.HP3uTAIjv6yhrMV.uyBS.GWhADnyw5O',1,0,'2020-08-03 07:50:12'),(18,'porro','Voluptatem','porroVoluptatem@random.com','$2b$12$Zsi3gR7Tu9V7Hj1hWsDJde27/kJdz.QkDjNaJvNgIWCgr7bXg.qG.',1,0,'2020-08-03 07:50:13'),(19,'ipsum','etincidunt','ipsumetincidunt@random.com','$2b$12$2wjqgBCmZRJpQSzNGlxlo.wExKI2uJAMNxoFIGQE0M66o3LNMY/n.',1,0,'2020-08-03 07:50:13'),(20,'Non','Quaerat','NonQuaerat@sfsu.edu','$2b$12$AP.8w.HhdwPJXlnsER8Le.aRz.sC95NNtgolFlSWJGrHqtloAc2mO',1,1,'2020-08-03 07:50:14');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03  2:04:32
CREATE DATABASE  IF NOT EXISTS `CSC_777` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `CSC_777`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_777
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `fk_listing_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`fk_user_id`),
  KEY `fk_listing_id` (`fk_listing_id`),
  CONSTRAINT `Images_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `Images_ibfk_2` FOREIGN KEY (`fk_listing_id`) REFERENCES `Listings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,9,1,'/static/images/listings/1.Janet-Feinberg-Schindler-Real-Estate-Listing-1.png'),(2,9,2,'/static/images/listings/96.photo_1.jpg'),(3,35,3,'/static/images/listings/pexels-photo-3597064.jpeg'),(4,22,4,'/static/images/listings/13.f14add01e88fac8fdaf5950252066338l-m0xd-w480_h480_q80.jpg'),(5,32,5,'/static/images/listings/pexels-photo-534151.jpeg'),(6,4,6,'/static/images/listings/20.ISif3gsft06xdf1000000000.jpg'),(7,32,7,'/static/images/listings/pexels-photo-404173.jpeg'),(8,1,8,'/static/images/listings/23.ISecii8i4ms3jf1000000000.jpg'),(9,13,9,'/static/images/listings/pexels-photo-164595.jpeg'),(10,48,10,'/static/images/listings/72.22192221+Steiner+Street+San+Francisco+CA+USA+519053_7-EXT.jpg'),(11,17,11,'/static/images/listings/pexels-photo-769585.jpeg'),(12,50,12,'/static/images/listings/9.ISewdkunesay050000000000.jpg'),(13,47,13,'/static/images/listings/pexels-photo-2556003.jpeg'),(14,47,14,'/static/images/listings/10.IS62h8xprwn1jb0000000000.jpg'),(15,7,15,'/static/images/listings/pexels-photo-3951743.jpeg'),(16,19,16,'/static/images/listings/pexels-photo-2382705.jpeg'),(17,26,17,'/static/images/listings/pexels-photo-2873951.jpeg'),(18,46,18,'/static/images/listings/24.maxresdefault.jpg'),(19,40,19,'/static/images/listings/pexels-photo-1292494.jpeg'),(20,10,20,'/static/images/listings/pexels-photo-3754594.jpeg'),(21,29,21,'/static/images/listings/pexels-photo-1918291.jpeg'),(22,16,22,'/static/images/listings/29.1B143FE7-71C3-4752-927B-4341F8903C58_1400x521.jpg'),(23,34,23,'/static/images/listings/29.1c514c58e2dc3dd7fb25ade49d4eea3a.jpg'),(24,6,24,'/static/images/listings/pexels-photo-1571472.jpeg'),(25,47,25,'/static/images/listings/37.twilights-01_5.jpg'),(26,32,26,'/static/images/listings/pexels-photo-1038259.jpeg'),(27,47,27,'/static/images/listings/pexels-photo-534172.jpeg'),(28,28,28,'/static/images/listings/pexels-photo-1046639.jpeg'),(29,3,29,'/static/images/listings/pexels-photo-3983719.jpeg'),(30,37,30,'/static/images/listings/75.image.jpg'),(31,47,31,'/static/images/listings/14.ISq5h2qkha8g720000000000.jpg'),(32,48,32,'/static/images/listings/11.Twilights_03_1_773_542_s_c1.jpg'),(33,35,33,'/static/images/listings/7.Mary-Toboni-Real-Estate-Listing-1.png'),(34,25,34,'/static/images/listings/pexels-photo-1029172.jpeg'),(35,27,35,'/static/images/listings/pexels-photo-1563234.jpeg'),(36,5,36,'/static/images/listings/76.Twilights_04_2_1280_700_s_c1.jpg'),(37,25,37,'/static/images/listings/pexels-photo-2067570.jpeg'),(38,36,38,'/static/images/listings/42.27d0871a6bb6e28c173401058078f405.jpg'),(39,40,39,'/static/images/listings/pexels-photo-2962088.jpeg'),(40,10,40,'/static/images/listings/19.viewroom.jpg'),(41,49,41,'/static/images/listings/pexels-photo-1694429.jpeg'),(42,7,42,'/static/images/listings/pexels-photo-3626601.jpeg'),(43,12,43,'/static/images/listings/16.ISqx2ejtzdyqmr0000000000.jpg'),(44,40,44,'/static/images/listings/pexels-photo-709820.jpeg'),(45,39,45,'/static/images/listings/40.back-facade_5.jpg'),(46,43,46,'/static/images/listings/pexels-photo-447592.jpeg'),(47,24,47,'/static/images/listings/pexels-photo-2764182.jpeg'),(48,15,48,'/static/images/listings/pexels-photo-271624.jpeg'),(49,9,49,'/static/images/listings/14.viewroom.jpg'),(50,37,50,'/static/images/listings/43.a8bc60206d42a59b0ad705c6d57e6d8a.jpg'),(51,40,51,'/static/images/listings/pexels-photo-3460599.jpeg'),(52,18,52,'/static/images/listings/pexels-photo-1875388.jpeg'),(53,46,53,'/static/images/listings/55.23.jpg'),(54,14,54,'/static/images/listings/pexels-photo-210547.jpeg'),(55,20,55,'/static/images/listings/pexels-photo-271795.jpeg'),(56,27,56,'/static/images/listings/pexels-photo-271722.jpeg'),(57,9,57,'/static/images/listings/pexels-photo-457418.jpeg'),(58,5,58,'/static/images/listings/41.pac-heights-bw.png'),(59,18,59,'/static/images/listings/pexels-photo-3639542.jpeg'),(60,6,60,'/static/images/listings/73.a4c549f29dd3675b71e8d726f0d56350.jpg'),(61,3,61,'/static/images/listings/pexels-photo-4050292.jpeg'),(62,26,62,'/static/images/listings/pexels-photo-2343465.jpeg'),(63,32,63,'/static/images/listings/pexels-photo-3773570.png'),(64,32,64,'/static/images/listings/85.ExteriorEdited_1.jpg'),(65,5,65,'/static/images/listings/pexels-photo-1795507.jpeg'),(66,1,66,'/static/images/listings/15.3c1ee6cd34e5b88190bcfa7317bc6703-600x400.jpg'),(67,9,67,'/static/images/listings/pexels-photo-2826787.jpeg'),(68,31,68,'/static/images/listings/pexels-photo-187815.jpeg'),(69,1,69,'/static/images/listings/pexels-photo-3414791.jpeg'),(70,32,70,'/static/images/listings/61.58a689056ffb400ebce8449b4ffff0cc.jpg'),(71,6,71,'/static/images/listings/35.560-Spruce-Street.jpg'),(72,12,72,'/static/images/listings/pexels-photo-892618.jpeg'),(73,8,73,'/static/images/listings/95.photo_1.jpg'),(74,43,74,'/static/images/listings/71.2.jpg'),(75,35,75,'/static/images/listings/7.20140907-OTM-slide-G6S1-master1050.jpg'),(76,21,76,'/static/images/listings/12.8F753032-BDB2-4594-B44E-A81BEC4F3B9E_1400x521.jpg'),(77,27,77,'/static/images/listings/pexels-photo-3623770.jpeg'),(78,30,78,'/static/images/listings/pexels-photo-323780.jpeg'),(79,15,79,'/static/images/listings/4.3E3E9369-19EA-C724-FE32-97E44B47DBC4_1400x521.jpg'),(80,22,80,'/static/images/listings/pexels-photo-323772.jpeg'),(81,26,81,'/static/images/listings/24.ISy709su4wggwh1000000000.jpg'),(82,16,82,'/static/images/listings/pexels-photo-164558.jpeg'),(83,23,83,'/static/images/listings/pexels-photo-4112557.jpeg'),(84,47,84,'/static/images/listings/pexels-photo-2082087.jpeg'),(85,36,85,'/static/images/listings/pexels-photo-3009994.jpeg'),(86,11,86,'/static/images/listings/67.b428bf6ea777e0acac7becb02f4f5fc1.jpg'),(87,32,87,'/static/images/listings/20.1.jpg'),(88,9,88,'/static/images/listings/pexels-photo-3386518.jpeg'),(89,16,89,'/static/images/listings/pexels-photo-210617.jpeg'),(90,11,90,'/static/images/listings/30.451721_1_1476730875.jpg'),(91,29,91,'/static/images/listings/pexels-photo-712319.jpeg'),(92,34,92,'/static/images/listings/pexels-photo-3144580.jpeg'),(93,47,93,'/static/images/listings/pexels-photo-3616818.jpeg'),(94,15,94,'/static/images/listings/15.ISukjdtf08pz5f1000000000.jpg'),(95,9,95,'/static/images/listings/pexels-photo-3639540.jpeg'),(96,21,96,'/static/images/listings/65.40832962_0_maAfU3_p.jpeg'),(97,15,97,'/static/images/listings/pexels-photo-2072529.jpeg'),(98,33,98,'/static/images/listings/pexels-photo-2458112.jpeg'),(99,4,99,'/static/images/listings/pexels-photo-3639504.jpeg'),(100,31,100,'/static/images/listings/pexels-photo-2705741.jpeg'),(101,31,101,'/static/images/listings/pexels-photo-276724.jpeg'),(102,43,102,'/static/images/listings/pexels-photo-3626595.jpeg'),(103,40,103,'/static/images/listings/pexels-photo-1838640.jpeg'),(104,17,104,'/static/images/listings/5.7B0E78F3-CD3A-448A-A1B2-03CA2FA73D12_1400x521.jpg'),(105,35,105,'/static/images/listings/pexels-photo-2440471.jpeg'),(106,31,106,'/static/images/listings/pexels-photo-221024.jpeg'),(107,36,107,'/static/images/listings/pexels-photo-1959500.jpeg'),(108,40,108,'/static/images/listings/pexels-photo-276583.jpeg'),(109,31,109,'/static/images/listings/pexels-photo-271800.jpeg'),(110,22,110,'/static/images/listings/18.photo_1.jpg'),(111,8,111,'/static/images/listings/86.Twilights_14_6_1280_700_s_c1.jpg'),(112,3,112,'/static/images/listings/pexels-photo-2079234.jpeg'),(113,2,113,'/static/images/listings/pexels-photo-1115804.jpeg'),(114,14,114,'/static/images/listings/pexels-photo-1029803.jpeg'),(115,12,115,'/static/images/listings/pexels-photo-2128114.jpeg'),(116,47,116,'/static/images/listings/pexels-photo-1907784.jpeg'),(117,8,117,'/static/images/listings/pexels-photo-2379980.jpeg'),(118,13,118,'/static/images/listings/pexels-photo-1571463.jpeg'),(119,19,119,'/static/images/listings/8.Nina-Hatvany-Real-Estate-Listing-8.png'),(120,37,120,'/static/images/listings/pexels-photo-1396132.jpeg');
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
  `fk_user_id` int(11) DEFAULT NULL,
  `timeCreated` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `houseType` varchar(255) DEFAULT NULL,
  `sellOrRent` varchar(255) DEFAULT NULL,
  `petsAllowed` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `distance_from_SFSU` float DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sqft` int(11) DEFAULT NULL,
  `bedroomNum` int(11) DEFAULT NULL,
  `bathroomNum` int(11) DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,9,'2020-08-03 08:08:23','Sunlit 2 Bed SUPER close to Dolores Park, Private Parking Available!!','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.38,'Perfect class sky Media room concept walking distance room Hardwood furniture Neque dolor voluptatem est. Quisquam porro quaerat tempora quisquam eius. Magnam labore labore eius sed etincidunt etincidunt. Quiquia eius non voluptatem modi labore neque. Ut amet ut tempora consectetur ut.',3100,386,2,1,1),(2,9,'2020-08-03 08:08:24','Beautifully Renovated 2 BR/ 1 BA in Lower Pac Heights; Pets OK','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',4.3,'Open Open dining room spa Vaulted bathroom Stainless steel mission Ocean views Dolorem dolor quaerat dolorem numquam amet velit. Porro quisquam dolore velit. Consectetur dolor sit sit consectetur est velit. Tempora etincidunt ipsum magnam sed. Voluptatem labore neque labore. Consectetur velit quiquia tempora sit. Tempora ut non dolor quisquam. Labore porro ut porro dolorem. Voluptatem dolore labore magnam magnam.',3995,118,2,1,1),(3,35,'2020-08-03 08:08:24','Sunny 1BR/1BA with views and parking-744 sqft','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.85,'Chef patio Open Gas Stainless steel Open Dual Vaulted ceilings Quiquia sit est neque eius dolore. Eius eius numquam labore aliquam ipsum sit. Neque neque aliquam amet dolor sit numquam. Voluptatem quaerat quiquia quaerat. Sit aliquam adipisci ipsum est dolore amet. Quiquia consectetur amet ipsum labore non aliquam. Est neque ipsum ipsum etincidunt. Quaerat est porro quisquam dolore.',2900,744,1,1,1),(4,22,'2020-08-03 08:08:25','Beautiful Top Floor 2bd/1ba,Rear Apt. Hardwood,New Kit.','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.86,'Chef Granite utilities included Stainless steel French doors Pool kitchen Guest light Tempora sit quaerat sed est sit. Non voluptatem neque sit non. Velit etincidunt quiquia numquam magnam. Labore est est porro etincidunt. Non sit modi est. Consectetur dolorem numquam neque adipisci quiquia porro. Dolor quaerat etincidunt tempora non quaerat sed quaerat. Quaerat labore est aliquam non sit adipisci.',3350,558,2,2,1),(5,32,'2020-08-03 08:08:25','Live in the Mission!! 3 Bed, 1.5 Bath with IN-UNIT Laundry!','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.85,'sinks Granite dining Wine cellar floors ceilings ready Hardwood floors Eius porro amet sed. Labore velit aliquam voluptatem sed sed sit. Quaerat neque velit tempora. Porro quiquia ut voluptatem numquam. Dolorem eius quisquam numquam. Amet aliquam aliquam etincidunt velit.',4100,151,3,3,1),(6,4,'2020-08-03 08:08:26','1bed @ ONE MISSION BAY. Bridge/Bay Views!','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.91,'Pool Open roof appliances floor plan dorm bar ceilings Granite Etincidunt consectetur est quaerat sed non. Quaerat non sit amet quiquia ipsum amet dolor. Ipsum ipsum est sed dolore quisquam. Adipisci velit ut dolore dolorem adipisci. Quisquam consectetur dolor sit ut dolor quaerat dolorem. Adipisci modi sit ut.',3800,750,1,1,0),(7,32,'2020-08-03 08:08:26','Beautiful & Spacious 3Bd In Great Central Loc','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.09,'Open dining room Guest floors floor plan Granite kitchen New bedroom Dolore consectetur dolor dolorem tempora ut amet porro. Numquam modi labore dolor. Velit velit labore consectetur neque dolor. Dolor dolor velit dolorem adipisci est labore eius. Velit adipisci aliquam tempora quiquia.',3495,233,3,2,1),(8,1,'2020-08-03 08:08:27','Cute & Charming Top Floor Jr. 1Bd, E-Z Fin.Dist. Hardwood Floors','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.66,'looking appliances Gourmet amenities majors French doors spa Stainless steel floors Neque adipisci est voluptatem dolor porro dolore. Sit voluptatem quisquam labore quiquia quaerat. Dolor dolore labore adipisci non etincidunt quiquia eius. Consectetur dolore voluptatem etincidunt modi. Velit aliquam quiquia dolore etincidunt modi.',2350,833,1,1,1),(9,13,'2020-08-03 08:08:27','Gorgeous Huge 2Bd/2.5Ba Loft,Parking Included, 2-Fireplaces','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.26,'appliances walk bedroom Wine cellar roof appliances spa apartment roomate Quaerat consectetur porro velit. Etincidunt ipsum quisquam eius. Voluptatem modi est est porro adipisci. Quaerat porro ut sit porro etincidunt. Amet tempora consectetur amet voluptatem. Voluptatem etincidunt sit aliquam. Modi ut dolorem tempora magnam est.',4150,1550,2,1,1),(10,48,'2020-08-03 08:08:28','Newly Updated,New Paint,New SS Appliances,New Laminate Hardwood Floors','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',2.01,'Media room looking light ceilings floors bathroom spa Gourmet Open Quiquia sed voluptatem voluptatem quiquia neque neque magnam. Modi amet tempora modi labore. Labore quisquam velit consectetur tempora tempora est. Est neque modi dolore quisquam est voluptatem adipisci. Non voluptatem tempora modi ipsum amet.',3495,1972,3,2,1),(11,17,'2020-08-03 08:08:28','BEST LOCATION - TOP FLOOR 1Br - Sunny, Quiet, & Next to Restaurants','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.37,'bathroom close Gas ceilings appliances light Vaulted Stainless steel New Porro eius dolore eius adipisci. Numquam magnam amet est ut dolor. Quaerat adipisci quiquia quiquia dolore. Sit velit consectetur sit modi amet quisquam labore. Sed magnam aliquam sed numquam neque. Quaerat tempora porro eius modi neque non est. Est aliquam non consectetur magnam adipisci magnam. Aliquam neque tempora dolor consectetur porro adipisci. Quaerat labore dolor consectetur amet tempora labore.',3700,800,1,1,1),(12,50,'2020-08-03 08:08:29','Beautiful Top Flr. 3bd/1ba, New Laminated Hardwood Flrs,New Appliance','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.43,'floor plan Stainless steel majors Stainless steel Chef Vaulted Guest utilities included apartment Eius est est dolore amet adipisci dolore ut. Ut labore sed neque sed. Adipisci dolore consectetur etincidunt. Velit aliquam non quaerat. Consectetur quisquam voluptatem sit adipisci neque dolor porro. Numquam eius ipsum eius magnam.',3495,1219,3,1,1),(13,47,'2020-08-03 08:08:29','Freshly Painted, New Appliances, New Laminate Hardwood Floors','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.77,'restaurants sky kitchen kitchen nearby utilities included concept Stainless steel apartment Etincidunt tempora neque eius. Porro quaerat dolor est. Non amet dolor dolore labore amet neque. Velit quiquia sit aliquam consectetur. Dolor sit velit velit adipisci dolore. Sed eius sed magnam numquam. Tempora quisquam dolorem labore amet sed. Est non dolor tempora.',3495,799,3,3,0),(14,47,'2020-08-03 08:08:30','Beautiful Top Flr. 3bd/1ba, New Laminated Hardwood Flrs,New Appliance','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.67,'Open room Formal concept Hardwood bar bathroom mall Stainless steel Tempora porro labore dolor magnam. Velit etincidunt est sed voluptatem velit dolorem consectetur. Magnam magnam dolorem quaerat labore quisquam. Amet modi dolorem non labore non neque. Quiquia est numquam modi sed voluptatem etincidunt. Adipisci modi porro adipisci modi neque. Est tempora neque labore. Porro etincidunt aliquam numquam. Quisquam magnam porro sit ipsum amet. Etincidunt sed quiquia numquam neque adipisci ipsum quaerat.',3495,1972,3,1,1),(15,7,'2020-08-03 08:08:30','Remodeled 1 BR/1BA, Prime Location, Parking, Backyard, W/D!','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.54,'floors Move-in New kitchen appliances dining room room dorm ready Velit magnam ipsum ut neque. Labore dolorem porro quisquam est etincidunt quiquia ut. Voluptatem neque consectetur sit. Magnam dolor aliquam aliquam est magnam modi tempora. Quaerat sit sit quaerat porro ut est dolor. Voluptatem sed tempora numquam est quiquia voluptatem.',1550,948,1,2,1),(16,19,'2020-08-03 08:08:31','Cute&Charming Top Flr. Jr.1Bd,in Great Loc!Hardwood','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.8,'utilities included Stainless steel Chef Move-in Dual Stainless steel kitchen apartment campus Eius velit amet porro consectetur ipsum. Magnam modi magnam ut. Amet non est velit dolore dolor magnam. Modi tempora quisquam sit. Dolore labore velit est. Tempora modi dolor adipisci sed tempora. Non est eius quiquia.',2350,1594,1,1,1),(17,26,'2020-08-03 08:08:31','Cute&Charming Studio,Hardwd, Quiet Rear Apt.','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.6,'kitchen Hardwood Vaulted appliances Chef floors patio Gourmet Gas Eius est numquam dolor etincidunt tempora. Sit dolor ut quisquam sit. Neque amet quiquia dolorem sit sit quisquam consectetur. Amet magnam quaerat est consectetur. Neque modi voluptatem magnam consectetur quiquia.',1750,1792,3,1,1),(18,46,'2020-08-03 08:08:32','Private, Furnished - utilities included, short terms available','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.32,'bar Vaulted dorm Vaulted close floors roof Stainless steel Hardwood Eius sed etincidunt etincidunt consectetur quaerat. Eius sit dolor dolor aliquam dolor quisquam. Velit aliquam aliquam non voluptatem quisquam velit. Magnam etincidunt eius non velit. Quiquia quisquam modi ut dolor. Modi ut magnam voluptatem.',1700,1616,2,1,1),(19,40,'2020-08-03 08:08:32','Large Studio, amazing views, remodeled','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.23,'Move-in floor plan Dual amenities Vaulted looking dining ready appliances Aliquam voluptatem adipisci consectetur magnam porro eius numquam. Magnam quiquia sed porro eius dolorem ipsum. Est etincidunt non sed est. Quaerat tempora adipisci porro amet velit aliquam. Amet neque est eius. Consectetur velit eius magnam est numquam labore sed. Dolorem ut est dolorem velit dolorem. Tempora aliquam dolore aliquam voluptatem ipsum. Magnam dolore ut eius aliquam adipisci eius.',2750,1761,1,1,0),(20,10,'2020-08-03 08:08:33','Large Studio, amazing views, remodeled','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.65,'patio kitchen ceilings campus ceilings SFSU Guest concept roof Etincidunt adipisci dolore adipisci tempora. Quaerat aliquam quiquia neque voluptatem consectetur sed. Etincidunt dolorem ut ipsum velit consectetur modi neque. Quiquia etincidunt numquam dolor numquam dolorem aliquam dolorem. Neque velit ut sed. Amet labore ipsum neque quisquam. Dolorem amet non aliquam. Magnam porro amet etincidunt ut quaerat sed. Labore modi adipisci ipsum.',2750,947,1,2,0),(21,29,'2020-08-03 08:08:33','remodeled 1 br that can be used as a 2 br apartment','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.12,'bar house concept floors Hardwood SFSU neighborhood spa light Modi dolore aliquam etincidunt. Amet amet sed dolorem modi aliquam magnam. Quisquam quisquam sit tempora velit numquam ipsum. Quaerat voluptatem quaerat modi ipsum etincidunt velit. Quaerat dolorem consectetur dolorem velit quiquia. Neque ipsum non adipisci modi.',2875,600,1,1,1),(22,16,'2020-08-03 08:08:34','HUGE Room GG Bridge Downtown SF FiDi UCSF USF CPMC Kaiser Tech Bus','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.25,'amenities Stainless steel Gourmet appliances spa Open dining room ceilings Ocean views Quaerat porro quiquia velit. Modi sit ut eius velit. Tempora dolorem magnam aliquam dolore eius neque. Modi quisquam tempora magnam quiquia quisquam neque consectetur. Amet labore voluptatem eius consectetur numquam quaerat. Labore sit modi quiquia est quiquia. Velit non tempora sed est quaerat numquam.',1195,1334,1,3,1),(23,34,'2020-08-03 08:08:34','ONE MONTH FREE RENT—2 BR/1 BA in the Heart of Japantown','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.37,'Wine cellar restaurants light neighborhood sinks apartment Granite Media room utilities included Dolorem dolor neque neque amet eius porro. Sed neque amet dolor. Voluptatem sed amet non porro. Labore sed adipisci voluptatem dolorem dolore ut est. Numquam ipsum ipsum magnam numquam magnam non modi. Magnam ipsum sed dolor sed neque amet dolorem. Etincidunt non quisquam voluptatem numquam quisquam non. Ipsum quiquia modi magnam dolore labore consectetur. Aliquam etincidunt porro non ut ut labore. Adipisci est tempora quiquia etincidunt quiquia quisquam.',3400,925,2,1,1),(24,6,'2020-08-03 08:08:35','2-story home in presidio','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.1,'appliances Open light furniture concept Stainless steel ceilings floors furnished Quaerat porro dolore voluptatem neque consectetur eius dolore. Quisquam adipisci sit quaerat. Adipisci dolorem neque dolorem dolor modi tempora consectetur. Labore est quiquia sit sed. Modi labore consectetur sit numquam ipsum voluptatem.',5120,1394,4,1,1),(25,47,'2020-08-03 08:08:35','$3800  3br / 2ba newly remodeled apartment near Lands End','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.73,'Ocean views Chef Vaulted Move-in Open restaurants Hardwood kitchen ceilings Porro non aliquam est sit aliquam sed. Magnam modi tempora est. Quisquam dolor ut sit eius ipsum dolorem. Aliquam ipsum ipsum sed non non sit quaerat. Dolore quisquam numquam consectetur magnam. Ipsum dolor voluptatem numquam tempora dolorem quiquia adipisci.',3800,272,3,1,1),(26,32,'2020-08-03 08:08:36','Live/work Loft w/Additional Guest Bedroom $4500 (including utilities)','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.4,'mall Granite Granite majors fireplace furniture Pool restaurants kitchen Tempora ipsum quisquam labore. Etincidunt quaerat labore voluptatem dolorem non numquam quaerat. Dolor etincidunt quiquia ut est. Dolorem quaerat aliquam eius. Dolore neque voluptatem ut quaerat. Dolore dolor numquam ipsum. Eius adipisci quisquam quisquam neque neque. Eius neque adipisci voluptatem non magnam.',4500,1500,1,2,1),(27,47,'2020-08-03 08:08:37','Detached 3+ Bedroom home with 2 full bathrooms..!!','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.14,'Pool Ocean views Wine cellar house appliances close Dual kitchen Gas Magnam quaerat sed voluptatem aliquam dolore tempora sed. Quisquam sit eius labore quaerat. Quisquam numquam porro voluptatem velit ipsum. Sed labore consectetur etincidunt velit ipsum etincidunt. Est velit est numquam labore voluptatem est. Etincidunt magnam neque consectetur dolor sed quisquam. Numquam labore voluptatem quisquam non. Voluptatem ipsum velit sit labore aliquam etincidunt velit.',500,1230,3,2,1),(28,28,'2020-08-03 08:08:37','Prime Alamo Square Apartment For Rent – Completely Remodeled','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.97,'fireplace Media room Covered appliances Dual campus roomate appliances house Etincidunt adipisci magnam aliquam voluptatem. Porro dolore dolorem aliquam porro sit adipisci. Numquam sed quisquam quiquia quisquam sed magnam etincidunt. Sed ut dolorem consectetur consectetur. Tempora modi etincidunt dolor porro numquam adipisci consectetur. Quiquia eius dolore aliquam sit adipisci etincidunt ut. Adipisci porro quaerat dolor quaerat modi consectetur ut. Eius modi neque ipsum. Dolor est dolore porro. Ut sed voluptatem dolore.',2295,673,2,1,1),(29,3,'2020-08-03 08:08:38','Detached 3+ Bedroom home with 2 full bathrooms..!!','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',6.33,'mission Pool Stainless steel fireplace Granite house Stainless steel ceilings Open Tempora sed ipsum est sed. Dolor neque amet quaerat magnam dolore adipisci. Quiquia porro amet sit. Consectetur labore est est velit sit. Eius dolor tempora tempora eius etincidunt non.',500,1230,3,2,0),(30,37,'2020-08-03 08:08:38','1/2block from Valencia&20th w/w&d in unit','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',4.11,'Guest Vaulted amenities utilities included Hardwood kitchen house Ocean views Vaulted Amet neque labore est dolor. Adipisci non labore quaerat neque. Consectetur quiquia adipisci quaerat tempora. Ut dolore ut sit. Ipsum velit dolor adipisci adipisci dolore. Labore neque ut dolor adipisci dolor velit dolorem. Aliquam labore dolore amet quaerat. Velit dolor sed non. Eius sed sit neque dolor est quisquam.',4600,1244,3,2,1),(31,47,'2020-08-03 08:08:39','Dogpatch Luxury Two Bedroom','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.88,'dining room class ready appliances concept kitchen furniture light room Sed ut porro neque quiquia quiquia consectetur. Numquam consectetur velit dolorem numquam numquam voluptatem. Non consectetur ipsum amet adipisci ut quaerat. Ut modi quiquia dolorem est. Voluptatem ut consectetur numquam est adipisci adipisci consectetur. Labore adipisci non numquam dolorem magnam consectetur magnam.',4950,1316,2,1,1),(32,48,'2020-08-03 08:08:39','$1000 OFF FIRST MONTH\'S RENT. ALL UTILITIES PAID :)','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.72,'spa Granite Pool New Open floors Chef Granite ready Adipisci numquam sed est magnam dolore. Labore amet ipsum sit eius. Sit ipsum numquam numquam. Est est modi dolor quaerat. Ipsum consectetur tempora non eius.',1995,305,2,1,1),(33,35,'2020-08-03 08:08:40','Oak Street 2 Bedroom','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.88,'restaurants walk Hardwood concept Perfect Stainless steel studio kitchen appliances Etincidunt consectetur sed dolor adipisci dolore modi. Quisquam adipisci etincidunt labore sed. Numquam voluptatem dolorem labore labore. Sit ipsum numquam labore eius adipisci. Tempora sit labore sed. Quiquia adipisci etincidunt est.',3550,900,2,1,0),(34,25,'2020-08-03 08:08:40','Modern Studio in Cubix Building','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.7,'studio kitchen appliances apartment Wine cellar Open ceilings spa furniture Numquam non porro dolore est. Dolorem porro est porro porro dolor. Tempora quisquam consectetur labore. Tempora numquam adipisci ut quiquia. Dolorem porro velit ipsum dolore. Labore eius voluptatem voluptatem. Voluptatem neque neque ut. Velit non neque ut quisquam tempora modi dolore. Quisquam ut quiquia est dolore tempora.',2100,266,1,1,0),(35,27,'2020-08-03 08:08:41','San Francisco 3 Bedroom','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.92,'Hardwood Wine cellar Vaulted mall floors furniture Perfect Natural floors Velit non numquam velit. Dolorem dolor numquam ut porro sit quiquia non. Porro aliquam quiquia dolor dolore quaerat. Adipisci quaerat etincidunt ipsum dolorem. Quisquam magnam ipsum dolor aliquam magnam ipsum aliquam. Sit non aliquam voluptatem eius. Labore eius ipsum sit sit ut.',4450,1200,3,3,1),(36,5,'2020-08-03 08:08:41','Stage Studio Condo','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',1,'Stainless steel Granite apartment Perfect amenities appliances dining room fireplace Open Sed sit aliquam labore. Non modi sit ut est. Dolore magnam quisquam porro adipisci dolor porro quisquam. Est magnam dolore dolorem magnam dolore numquam est. Consectetur labore velit eius adipisci neque quisquam dolorem. Modi porro tempora quisquam eius. Labore aliquam consectetur aliquam porro consectetur labore. Dolor modi non quaerat.',2250,544,1,3,1),(37,25,'2020-08-03 08:08:42','Updated 1x1 in Lower Pacific Heights','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.51,'studio appliances class location Granite Granite Open New dining Porro porro magnam sit modi modi. Dolorem tempora tempora dolor dolore. Quiquia magnam dolor ut. Quiquia quisquam quaerat neque sed magnam dolore dolore. Quisquam aliquam porro adipisci quaerat dolor est. Ipsum ut dolorem dolore quisquam.',2850,650,1,1,0),(38,36,'2020-08-03 08:08:42','Nicely Renovated Lower Pacific Heights 2x2','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.94,'mall Granite dining neighborhood ceilings sky Open Natural utilities included Amet dolorem dolore numquam dolore labore quiquia etincidunt. Tempora sit velit sit adipisci neque sit quiquia. Numquam tempora consectetur velit sit. Velit sed dolore dolor. Neque voluptatem modi sed magnam aliquam. Quisquam quaerat quaerat adipisci numquam labore. Modi amet neque adipisci neque quaerat non.',3975,950,2,1,0),(39,40,'2020-08-03 08:08:43','Basement/studio for rent','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',1.14,'Gas close bathroom house Move-in room majors restaurants concept Dolorem amet consectetur eius quisquam non. Etincidunt porro dolorem ipsum. Ipsum neque aliquam ut. Sit etincidunt amet tempora magnam quaerat. Tempora dolor tempora dolorem porro adipisci. Quisquam consectetur tempora non consectetur magnam consectetur. Ipsum dolorem ipsum porro. Velit ut dolore porro dolorem sit. Sit est magnam porro dolor ut aliquam adipisci. Non aliquam est quaerat magnam consectetur velit non.',1800,300,1,1,1),(40,10,'2020-08-03 08:08:43','2 BR For Rent can be Converted to 3BR','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.92,'spa ceilings roomate furnished class Gas close ceilings bar Sit dolore ipsum ut sit quaerat. Ut numquam dolore amet neque voluptatem. Non consectetur porro sed adipisci modi porro quisquam. Dolorem magnam quaerat magnam quaerat. Aliquam porro dolore quiquia sit numquam. Sed eius tempora est velit quiquia etincidunt.',3695,1063,2,1,1),(41,49,'2020-08-03 08:08:44','Great Inner Sunset studio close to UCSF, Shops, Food,  Transportation','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',6.03,'Wine cellar kitchen amenities Open Granite floor plan sky restaurants Hardwood Quisquam magnam amet consectetur. Est aliquam amet quaerat sit. Est quiquia tempora numquam eius labore. Dolor dolorem ut voluptatem. Quisquam aliquam quiquia ut quiquia eius quisquam. Non ut tempora dolore voluptatem eius etincidunt. Labore sed consectetur eius ut labore sed.',1775,325,2,3,1),(42,7,'2020-08-03 08:08:44','3 BR 2 Bath For Rent','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.18,'bar floor plan Vaulted bedroom close looking studio roomate shopping Ipsum sed porro non quaerat. Eius dolor labore ut amet velit adipisci. Voluptatem non dolore est. Modi porro neque porro modi porro quaerat. Ipsum modi magnam modi. Neque quaerat eius quisquam. Ut amet est amet quisquam eius sit consectetur. Adipisci quaerat porro numquam modi magnam adipisci velit.',3995,410,3,2,1),(43,12,'2020-08-03 08:08:45','Modern Glen Park 3 Br 2.5 Bath Plus Office Space and Garage','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',2.53,'Hardwood Gas mission French doors appliances floor plan Media room Stainless steel Vaulted Labore neque dolor quaerat. Dolor ipsum sed consectetur porro. Sit magnam numquam non numquam est. Aliquam quisquam modi sed. Est sit quisquam dolor. Dolorem modi ut quiquia. Eius voluptatem neque neque quaerat modi voluptatem.',5600,1750,3,3,0),(44,40,'2020-08-03 08:08:45','1 Month FREE! Newly Renovated 5 bed/2 bath in Prime Haight Location.','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.21,'floors floors Formal ready concept walking distance New utilities included Chef Eius quisquam ipsum dolore aliquam quiquia. Neque aliquam voluptatem consectetur. Sit labore dolor etincidunt quaerat. Sed sit sed velit dolore consectetur. Eius magnam non ipsum velit quiquia quisquam. Sed ipsum est porro etincidunt. Est consectetur neque quisquam quiquia sed ut. Est non dolorem etincidunt ipsum. Magnam quaerat quaerat sed. Velit porro dolore labore sed.',6200,1640,5,1,1),(45,39,'2020-08-03 08:08:46','Palm Springs Downtown Retreat 1 Month or Motr','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',2.56,'amenities kitchen Gas room Gourmet apartment bar Open countertop Modi quaerat modi quaerat. Quisquam amet adipisci porro quiquia. Ut ipsum modi quiquia. Ut modi neque sed consectetur. Dolorem quiquia eius amet est aliquam. Velit neque est modi dolorem neque dolorem.',1,1287,1,1,1),(46,43,'2020-08-03 08:08:46','Russian Hill/Pac Heights 2bd**Updated**Great WalkScore**See Video','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.04,'close kitchen Granite French doors New bathroom house Hardwood kitchen Neque dolorem consectetur amet consectetur quisquam. Eius adipisci dolore neque dolor non sed modi. Modi porro dolore aliquam neque. Non est amet dolore. Magnam non numquam magnam labore neque. Quisquam sit sit tempora tempora aliquam sed. Quiquia quiquia adipisci porro. Magnam modi quaerat quaerat sit consectetur. Dolorem quisquam aliquam consectetur quiquia.',3195,849,2,1,1),(47,24,'2020-08-03 08:08:47','REDUCED// PAC HEIGHTS Peaceful 1Bd in Stylish Building **See Video**','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.18,'floors ceilings spa dining room utilities included bar campus Hardwood kitchen Dolor velit dolore sit. Magnam non quisquam aliquam modi amet ipsum adipisci. Numquam eius dolorem eius quaerat etincidunt voluptatem ipsum. Consectetur etincidunt sed dolorem modi dolor. Neque etincidunt etincidunt quisquam modi. Consectetur quaerat dolore consectetur. Quaerat adipisci numquam labore consectetur. Aliquam etincidunt non ut est etincidunt.',2595,481,1,2,1),(48,15,'2020-08-03 08:08:47','1 FREE Month * RENOVATED STUDIO APTS W/ ROOFDECK NEAR DOWNTOWN','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',1.33,'patio Open apartment spa spa light concept Gas Vaulted Sit quaerat quisquam neque eius. Etincidunt sed dolor eius. Modi adipisci magnam dolore ipsum. Numquam dolor voluptatem voluptatem consectetur non eius. Ut quisquam quisquam quisquam. Ipsum dolorem quisquam quaerat. Sit adipisci etincidunt ut non dolore.',1995,871,1,3,1),(49,9,'2020-08-03 08:08:48','1 Month FREE*Pac Heights*VIEWS*1Bd Great Bldg*VIDEO*Come See The Place','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.28,'Perfect furnished patio Dual Granite walk shopping appliances dining room Dolor consectetur sit velit numquam dolor quaerat. Quiquia voluptatem consectetur non dolore ut. Dolor amet voluptatem magnam quaerat quaerat dolor. Quisquam ipsum tempora ut adipisci est tempora. Ipsum quaerat velit ut consectetur dolore etincidunt velit. Numquam velit voluptatem ipsum ut est dolorem quisquam. Ipsum ut eius neque. Ipsum quisquam modi est sed.',3695,639,1,1,1),(50,37,'2020-08-03 08:08:48','1.5 MONTHS FREE ** NOB HILL** Fully Remodeled **2BD w/ Washer & Dryer','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.78,'Media room New close Vaulted spa Natural Granite Guest dorm Amet numquam velit dolorem voluptatem labore. Amet voluptatem magnam dolorem non dolorem. Dolorem velit non velit quaerat ut. Sed sed voluptatem non modi etincidunt modi. Magnam quaerat non amet. Sed neque non quisquam ut. Quiquia ipsum dolor ut. Numquam non voluptatem magnam. Labore numquam est tempora dolor non. Eius quaerat velit dolore labore sit dolorem.',4295,597,2,1,1),(51,40,'2020-08-03 08:08:49','Charming Peaceful Garden Apt EXCELLENT Pac Heights Location+BACKYARD*','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.1,'Granite sky studio concept appliances neighborhood Covered floors nearby Quaerat amet labore numquam dolorem voluptatem dolorem voluptatem. Dolore modi sed amet. Aliquam non sit aliquam. Sit magnam dolorem modi ipsum. Voluptatem quaerat numquam numquam dolore adipisci consectetur neque. Amet sit neque dolor sed aliquam. Sit eius magnam porro. Sed sed neque aliquam quisquam quisquam. Quaerat sit quaerat magnam eius. Quisquam tempora eius ipsum tempora voluptatem voluptatem.',2895,550,1,1,1),(52,18,'2020-08-03 08:08:49','AMAZING LOCATION! Modern MISSION Studio*Remodeled Kitchen&Bath*See Vid','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.87,'roof roomate dining room apartment Guest kitchen furnished concept appliances Modi adipisci non aliquam aliquam porro. Etincidunt voluptatem adipisci sit. Aliquam amet quiquia amet neque sed neque. Sed labore neque etincidunt modi. Neque dolor labore quiquia dolore porro velit amet. Sit amet est quaerat sed ipsum adipisci.',2195,703,1,1,1),(53,46,'2020-08-03 08:08:50','Large COW HOLLOW 2 BD**UNION ST*Fully Remodeled*SEE VIDEO*1 FREE MONTH','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.55,'campus Dual bathroom Open concept Hardwood Formal countertop Stainless steel Eius ut dolorem numquam. Ipsum neque velit quaerat sit eius. Modi etincidunt numquam consectetur amet adipisci sit. Velit ipsum eius dolorem ipsum magnam amet consectetur. Eius modi voluptatem velit dolor est magnam. Quisquam dolore magnam sit ipsum voluptatem amet. Voluptatem modi non magnam. Quaerat voluptatem dolorem dolore velit.',4795,905,2,1,1),(54,14,'2020-08-03 08:08:50','HAYES VALLEY*Vintage Charm*1BD +upgrades*Spacious w/ City Views*VIDEO','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.75,'appliances apartment Dual walking distance Granite French doors Wine cellar Gourmet mission Aliquam magnam porro tempora dolor eius eius. Quisquam amet sit tempora. Est neque eius neque sit. Consectetur amet sit dolor velit adipisci sit quiquia. Dolor quaerat sed neque numquam dolorem. Est labore quisquam labore voluptatem aliquam labore. Numquam est dolorem porro magnam dolor. Neque voluptatem aliquam etincidunt. Etincidunt adipisci tempora velit tempora dolorem.',2995,286,1,1,1),(55,20,'2020-08-03 08:08:51','FREE Month**Top Floor Remodeled Nob Hill Studio W/D**See Video**','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.48,'French doors Pool Perfect sinks studio dining room floors ceilings light Tempora magnam tempora tempora. Neque magnam dolorem eius labore aliquam. Labore est quaerat est. Ut quisquam etincidunt quaerat. Neque etincidunt consectetur numquam non dolorem magnam. Adipisci sit dolor eius ut labore. Eius dolor ut sed sit amet. Est adipisci dolorem quiquia neque labore quaerat. Ut etincidunt sed dolor modi etincidunt.',2945,767,2,3,1),(56,27,'2020-08-03 08:08:51','1.5 Months Free** NOB HILL** Fully Remodeled **2BD w/ Washer & Dryer','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.68,'Vaulted floor plan Granite appliances sinks house roomate Vaulted Ocean views Sed sit dolor aliquam quiquia quaerat. Velit non non velit. Consectetur modi velit dolorem tempora quiquia. Amet magnam labore quiquia. Adipisci non voluptatem modi dolorem magnam magnam. Quisquam magnam magnam quisquam.',4295,1077,2,1,1),(57,9,'2020-08-03 08:08:52','1 Month FREE ** Remodeled Top Floor Nob Hill Studio W/D**See Video**','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',2.64,'sky Pool Stainless steel Natural spa class Pool Hardwood furnished Voluptatem velit non non. Dolor quisquam dolorem consectetur quaerat eius labore non. Modi ipsum voluptatem magnam est dolore. Modi dolorem modi consectetur eius voluptatem aliquam. Quisquam adipisci voluptatem aliquam dolor adipisci adipisci porro. Quaerat adipisci dolorem quisquam quaerat sed neque.',2945,188,1,1,1),(58,5,'2020-08-03 08:08:52','2BD Russian Hill/Pac Heights*Fully Updated*GreatWalkScore*SEE VIDEO','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.18,'bathroom Vaulted Granite Pool appliances mall campus Formal Natural Dolore est magnam voluptatem quiquia voluptatem ipsum. Tempora ipsum quaerat porro ipsum. Dolore porro etincidunt non voluptatem. Porro velit quiquia dolorem ipsum neque. Ut sit ipsum quaerat etincidunt. Velit velit amet quaerat voluptatem. Est quaerat velit sed sed modi consectetur labore. Sit est tempora non dolore labore. Etincidunt est sit est est amet quiquia etincidunt. Non etincidunt velit amet non dolore est.',2995,1248,2,3,1),(59,18,'2020-08-03 08:08:53','OUTDOOR PATIO*1 month free*Large 2 Bd PAC HEIGHTS**MUST SEE**','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.5,'bedroom Formal sky neighborhood Ocean views mission walk dining room floor plan Sed consectetur etincidunt sed dolor modi est. Magnam modi quisquam aliquam. Velit labore ipsum adipisci. Dolore etincidunt dolor dolore sed dolore velit modi. Tempora adipisci sit voluptatem sed. Velit tempora sed tempora. Ut tempora est voluptatem etincidunt numquam numquam. Quaerat voluptatem est velit labore quisquam ipsum. Sed ut neque voluptatem.',5000,1742,2,1,1),(60,6,'2020-08-03 08:08:53','Newly Remodeled House inner Sunset close to UCSF, SFSU, CCSF','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.75,'Vaulted roof bar dining spa concept concept spa Dual Velit sit velit magnam adipisci aliquam. Voluptatem numquam labore ipsum. Est sit etincidunt dolor ut tempora. Quaerat aliquam sed quiquia est. Eius consectetur consectetur tempora porro. Quisquam ut dolore quiquia ut porro dolorem. Magnam sit velit modi velit. Eius neque quisquam est amet modi ipsum etincidunt. Est etincidunt sed sit aliquam neque dolore labore. Porro etincidunt quaerat sed amet ipsum velit.',4000,936,3,2,1),(61,3,'2020-08-03 08:08:54','FREE Month*Remodeled*NOB HILL Studio in Beautiful Building +Wash/Dryer','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',6.46,'bedroom ceilings class utilities included sky fireplace location Move-in Vaulted Eius aliquam velit non numquam sit dolor. Numquam numquam dolor quaerat non dolorem velit. Porro etincidunt numquam dolore eius non voluptatem voluptatem. Amet tempora quiquia labore neque est dolor. Sit magnam modi quiquia consectetur dolor. Porro quiquia sed modi porro sed. Etincidunt aliquam aliquam quiquia labore adipisci ut neque. Ipsum numquam neque quiquia eius etincidunt non est.',2195,1863,3,2,1),(62,26,'2020-08-03 08:08:54','Bright Spacious Cow Hollow 1 Bedroom**SEE VIDEO**','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.87,'sky Gourmet Gas concept furniture utilities included Media room Open Pool Dolore velit quisquam tempora dolore ut quiquia dolore. Quiquia etincidunt porro sed dolorem consectetur. Tempora dolore amet ipsum magnam sed ut voluptatem. Est quaerat velit etincidunt voluptatem non. Sed voluptatem tempora voluptatem labore. Modi sed dolorem aliquam dolor velit sit amet. Voluptatem quisquam ipsum est numquam quiquia.',3695,595,1,1,1),(63,32,'2020-08-03 08:08:55','Liberty Hill 1Br 1Ba','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.21,'Open French doors nearby concept fireplace bar furnished sky Wine cellar Velit quaerat aliquam velit velit est eius sit. Adipisci numquam labore ut etincidunt numquam. Non porro quaerat aliquam. Etincidunt velit eius velit est etincidunt modi. Tempora ipsum sit modi aliquam sed.',2550,950,1,1,1),(64,32,'2020-08-03 08:08:55','Gorgeous Pac Heights 2BR Corner Unit, bright with Bay views','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',4.05,'room bathroom furnished close mall campus countertop bedroom Dual Ut quiquia dolore magnam labore dolorem. Velit neque quiquia numquam consectetur quisquam. Modi ipsum neque sed amet est quaerat sit. Labore aliquam ipsum magnam quisquam quaerat quaerat. Quaerat quaerat ipsum dolorem velit dolor. Est quisquam amet neque dolore. Velit amet porro sit. Etincidunt eius quiquia sit dolor. Porro numquam eius dolor neque neque amet dolorem.',6300,1550,2,1,0),(65,5,'2020-08-03 08:08:56','Large Pacific Heights Studio, Great Location! Easy access to downtown','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.46,'Formal bedroom Hardwood close Pool Stainless steel location kitchen Covered Est neque magnam ipsum dolor. Neque quiquia voluptatem sit. Adipisci amet tempora sit. Sed quaerat sit sed labore. Sit eius quisquam adipisci tempora quisquam non labore. Etincidunt porro dolore porro. Magnam voluptatem amet voluptatem adipisci dolor. Quaerat sed eius tempora ipsum est. Velit velit consectetur eius voluptatem dolore.',1970,400,1,3,1),(66,1,'2020-08-03 08:08:56','Liberty Hill large studio with separate kitchen','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.63,'room light walking distance apartment Natural sky Open class floors Porro tempora velit ipsum consectetur dolor. Modi magnam est consectetur. Velit tempora quiquia neque numquam. Dolorem adipisci ut quaerat dolorem porro. Non ut adipisci amet non amet magnam. Quaerat sed sit quisquam.',2150,800,4,2,1),(67,9,'2020-08-03 08:08:57','Large & Bright Pacific Heights 1BR/1BA. Easy access to downtown.','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.17,'sky Stainless steel close appliances appliances Hardwood bathroom looking apartment Ut sit magnam tempora amet quaerat quisquam quiquia. Porro ut sed etincidunt dolore. Magnam porro dolorem porro est modi est ut. Porro consectetur quiquia quisquam. Dolor dolorem quisquam quaerat. Voluptatem velit velit non quaerat amet quaerat. Velit ipsum amet modi consectetur consectetur velit est.',2850,750,1,1,1),(68,31,'2020-08-03 08:08:57','Light Filled Victorian 1 Bedroom and 1 Full Bathroom Unit','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.87,'countertop mall mission bedroom Media room roof ready light spa Numquam numquam sit ipsum velit. Numquam dolorem quisquam ut est modi. Tempora velit dolore non dolore voluptatem dolore. Consectetur amet eius numquam. Sit est eius quaerat.',3900,700,1,1,1),(69,1,'2020-08-03 08:08:58','Spacious Room, Close to SFSU','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.51,'fireplace Vaulted Covered Granite mall appliances Pool Gourmet kitchen Quiquia modi non aliquam neque adipisci non dolorem. Modi non etincidunt numquam modi non ipsum eius. Sed amet neque velit adipisci aliquam neque ut. Sit etincidunt numquam neque adipisci porro. Sed amet voluptatem ipsum velit porro dolor. Ut non labore quisquam neque non est.',1275,891,1,3,1),(70,32,'2020-08-03 08:08:58','Six unit Edwardian building one bedroom filled with loads of charm!','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.31,'Natural studio Covered Stainless steel furnished bathroom Gas walk countertop Dolor adipisci quiquia tempora voluptatem dolor. Sed tempora eius dolorem. Numquam est voluptatem ut adipisci etincidunt. Labore quaerat neque voluptatem eius sed. Aliquam numquam dolor sit neque ipsum. Aliquam dolore tempora dolor.',2850,715,4,3,1),(71,6,'2020-08-03 08:08:59','Large sunny 1 bedroom apartment for rent','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.25,'campus Guest utilities included kitchen sinks Formal class appliances Gas Dolor dolorem sit est modi labore. Non sit sit adipisci modi dolorem. Tempora tempora magnam porro modi. Voluptatem adipisci porro dolor. Ut dolor dolore ipsum aliquam quiquia est ipsum. Est aliquam tempora amet tempora quiquia. Amet sit ut porro.',2800,759,1,1,1),(72,12,'2020-08-03 08:08:59','3 bedroom apartment for rent','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.67,'SFSU Chef appliances roof countertop Wine cellar spa Stainless steel walking distance Adipisci est voluptatem consectetur porro sed. Consectetur dolor etincidunt voluptatem adipisci quaerat. Eius est dolor eius etincidunt labore labore. Ipsum modi est quaerat quiquia. Sit dolore ipsum magnam. Etincidunt non dolore etincidunt quisquam non. Voluptatem quiquia quisquam dolore amet. Sit sit non velit sed.',3500,1184,3,1,1),(73,8,'2020-08-03 08:09:00','3 bedroom apartment for rent','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.12,'walking distance apartment Perfect patio countertop walk Move-in mission Pool Sed consectetur porro sed est. Amet adipisci quiquia amet magnam. Adipisci quisquam eius consectetur porro. Est velit neque quisquam dolorem quaerat. Magnam quisquam eius consectetur modi dolore ut neque. Labore adipisci quaerat ut numquam.',3500,1183,3,1,1),(74,43,'2020-08-03 08:09:00','2 bed, 2 bath + den loft in SOMA, available now','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.27,'neighborhood shopping mission roof walking distance Covered dining room spa house Labore eius neque numquam amet. Aliquam tempora neque voluptatem amet sit velit. Consectetur etincidunt dolorem etincidunt ut. Quaerat adipisci neque sit dolore ut velit etincidunt. Velit voluptatem est modi amet sit velit modi. Velit voluptatem eius sit modi velit. Neque dolore ipsum aliquam. Ut aliquam porro ipsum ipsum. Magnam non modi quaerat quisquam ipsum.',3800,1394,2,1,0),(75,35,'2020-08-03 08:09:01','HOUSE AND APARTMENT FOR RENT, CONTACT ME','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',2.27,'location Pool Vaulted light room mall Pool nearby Hardwood Consectetur quisquam quiquia ut labore. Velit sed etincidunt ut tempora labore ut. Magnam aliquam consectetur quiquia eius quiquia. Magnam aliquam labore dolor amet dolore. Dolorem ipsum quaerat neque numquam etincidunt sed. Quaerat consectetur ipsum aliquam. Est ut quiquia quisquam eius est. Ut dolorem modi adipisci est tempora neque sit. Etincidunt etincidunt consectetur dolor quaerat tempora sed.',3500,900,2,1,1),(76,21,'2020-08-03 08:09:01','►►►North Beach, Telegraph Hill Studio','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',4.71,'Stainless steel Dual mission Hardwood floors ceilings New Perfect mall Velit amet voluptatem dolor tempora. Dolor non est velit amet ut. Labore dolore consectetur quiquia. Est sit consectetur aliquam. Consectetur non ut labore. Aliquam magnam ipsum modi voluptatem eius modi est. Ipsum velit dolorem aliquam quisquam. Consectetur labore amet etincidunt consectetur dolore adipisci quiquia. Sit sit ipsum porro dolore. Neque aliquam neque sed sit dolor ipsum.',1950,350,4,1,1),(77,27,'2020-08-03 08:09:02','Awesome North Beach apartment in perfect location!','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.76,'Open location Gas room Move-in Pool ceilings ready concept Labore porro consectetur etincidunt. Quiquia amet tempora magnam amet dolor neque. Quaerat dolorem etincidunt tempora est ut. Velit sit numquam labore ut quaerat non porro. Quisquam voluptatem aliquam sed. Sit quaerat magnam sit sit neque numquam adipisci.',2800,1100,2,1,1),(78,30,'2020-08-03 08:09:02','Incredible location and value, in the heart of North Beach','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.43,'Ocean views dorm Wine cellar class ready floor plan Stainless steel Vaulted shopping Tempora tempora quaerat ipsum dolorem dolor. Sit dolorem etincidunt ut tempora. Labore non quiquia velit sed. Tempora etincidunt dolorem quaerat quaerat eius amet. Numquam porro labore quaerat. Sed magnam dolorem velit consectetur tempora. Quiquia dolor sed est quaerat modi tempora quiquia. Sed quaerat neque tempora.',2800,1837,2,1,1),(79,15,'2020-08-03 08:09:03','Contemporary, newly renovated, modernized 4 bed 4 bath','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.05,'kitchen neighborhood walking distance amenities Natural floors floor plan Open majors Est ut numquam porro modi. Tempora voluptatem labore dolorem etincidunt amet. Modi velit consectetur sit. Consectetur quaerat etincidunt dolore quiquia quaerat amet. Modi consectetur sed quaerat. Magnam dolore sed amet est ipsum amet magnam.',5900,1200,4,1,0),(80,22,'2020-08-03 08:09:03','Large, bright, beautiful apartment! Renovated and modernized 4 bed 3ba','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',4.93,'class bedroom apartment appliances location spa Vaulted Dual concept Aliquam dolorem magnam dolor. Etincidunt ipsum tempora non consectetur. Quiquia amet eius voluptatem dolor eius. Sed adipisci sit etincidunt modi magnam. Velit sed est velit voluptatem sit sed. Consectetur modi aliquam quaerat quaerat velit modi labore. Non modi porro tempora aliquam est consectetur.',6000,1400,4,2,1),(81,26,'2020-08-03 08:09:04','Modern, bright apartment+office! Newly renovated. 3 bed, 3ba, office','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.04,'Guest campus patio bar appliances Natural class Chef location Quisquam est numquam labore aliquam velit dolor voluptatem. Quisquam quiquia dolorem sed dolor modi. Non sed tempora dolor porro porro. Velit modi ut est modi modi. Magnam numquam neque dolorem. Dolor neque adipisci adipisci quiquia porro. Quaerat dolor adipisci magnam velit tempora. Eius non eius ipsum consectetur eius.',6500,1400,3,1,1),(82,16,'2020-08-03 08:09:04','Totally Updated 3BDR/1BA Cow Hollow Great Value!','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',6.73,'apartment Dual restaurants Granite Granite Hardwood ready Pool close Dolorem dolor quisquam dolorem. Voluptatem quiquia dolorem est voluptatem numquam est quaerat. Etincidunt dolorem aliquam adipisci dolorem. Etincidunt dolore magnam etincidunt velit eius. Tempora amet tempora amet dolor tempora dolore. Voluptatem modi non quisquam neque numquam.',4750,962,3,1,1),(83,23,'2020-08-03 08:09:05','Modern Noe Valley Condo (4BR/3BA). MUST SEE. Available August 1st!','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.72,'floors Stainless steel shopping Open Ocean views Formal appliances countertop Gourmet Adipisci quisquam neque quaerat ut etincidunt velit. Sed labore neque velit. Amet sed labore aliquam consectetur. Eius non etincidunt numquam sit. Quisquam quaerat etincidunt aliquam labore labore. Adipisci non labore tempora labore tempora dolor magnam.',10000,2388,4,1,1),(84,47,'2020-08-03 08:09:05','Spacious open floor plan with parking included near 101/280','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.14,'bathroom spa furnished Granite Vaulted Vaulted mall utilities included Open Tempora quaerat tempora velit labore. Non adipisci magnam dolor porro etincidunt eius quisquam. Aliquam porro aliquam quiquia aliquam porro porro. Labore labore sit sit amet aliquam dolorem etincidunt. Dolor neque porro etincidunt. Dolor non quaerat sit.',2450,779,1,1,0),(85,36,'2020-08-03 08:09:06','Great Price ! Condo newer appliances w/parking and storage','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.02,'sinks location Open Vaulted appliances roomate roof furniture house Etincidunt ipsum consectetur sed ut est quaerat ipsum. Dolore est amet labore dolore modi neque tempora. Quisquam dolore porro amet dolore voluptatem. Est quisquam dolore aliquam ipsum. Dolorem voluptatem quisquam sed etincidunt eius neque. Sit sit modi dolorem. Dolorem quisquam dolorem magnam quaerat. Magnam adipisci tempora voluptatem voluptatem. Magnam ut dolor sit non quaerat dolore.',2995,1114,1,1,1),(86,11,'2020-08-03 08:09:06','Van Ness Ave studio 3rd floor elevator Bldg Hardwoods','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.73,'majors walk roomate neighborhood appliances bathroom ceilings spa Pool Velit est labore ut dolor labore. Voluptatem ut etincidunt quisquam non velit etincidunt. Dolorem labore quaerat eius non. Voluptatem adipisci dolore adipisci. Quaerat modi sed dolorem ut etincidunt tempora amet. Est velit voluptatem consectetur amet quisquam est. Consectetur dolor ipsum tempora quisquam consectetur. Dolore consectetur amet etincidunt sed velit tempora. Labore dolorem tempora ut neque consectetur amet. Sit porro ipsum ipsum porro magnam sit dolor.',2195,450,2,3,1),(87,32,'2020-08-03 08:09:07','1 BEDROOM 1 BATH UNIT','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.75,'Pool walk restaurants Natural bathroom mall roomate floor plan bedroom Sed modi eius sed. Eius tempora modi tempora etincidunt numquam. Amet ipsum quiquia dolor eius sed. Modi magnam ut consectetur modi velit dolore voluptatem. Quisquam velit labore sit non est velit quaerat. Eius aliquam magnam dolor consectetur etincidunt non.',1950,350,1,1,0),(88,9,'2020-08-03 08:09:07','3Room 3Bath Apt North Beach NEWLY CONSTRUCTED  for Rent','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.43,'neighborhood location mall close room Pool concept Open Natural Ipsum consectetur porro sed non. Velit ipsum quaerat quisquam velit porro. Tempora etincidunt dolorem modi. Adipisci sit aliquam eius eius. Sit dolore porro modi sed adipisci.',5500,1,3,1,1),(89,16,'2020-08-03 08:09:08','Price Reduced! 3 bedroom, Excellent street.','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.27,'furnished appliances restaurants ready Granite Granite house appliances apartment Modi dolor dolorem dolor quisquam non quisquam. Velit ipsum ipsum aliquam quiquia dolor dolorem consectetur. Dolor amet sed tempora consectetur modi dolorem. Quiquia aliquam quaerat labore labore magnam ut. Neque quaerat quaerat ipsum voluptatem consectetur porro dolorem. Ut sit est amet ipsum. Modi adipisci ut dolorem. Sit ipsum etincidunt quisquam sed neque. Sed tempora aliquam voluptatem modi.',4800,1250,3,1,1),(90,11,'2020-08-03 08:09:09','***Cozy, remodeled, sunny, pkg included***','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.08,'Move-in New ready appliances nearby spa concept floor plan concept Voluptatem adipisci non adipisci numquam tempora. Est neque magnam quisquam neque. Dolore tempora magnam non. Quisquam labore quisquam sed porro adipisci ipsum est. Quisquam consectetur ipsum modi sit ipsum. Quisquam ut sed quiquia dolorem.',2999,606,1,1,1),(91,29,'2020-08-03 08:09:09','///\\\\\\\\ LARGE, UPDATED  APT with W/D in unit','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',4.81,'Open Gas floors kitchen Pool dorm Vaulted ceilings Guest Velit sit dolorem sed velit etincidunt. Labore adipisci neque est. Sit dolore consectetur dolor amet ipsum ut. Velit tempora porro est sed. Dolor dolorem tempora ipsum sit quisquam quiquia neque. Ipsum voluptatem numquam quiquia. Voluptatem velit magnam adipisci. Porro non labore tempora voluptatem labore neque. Porro non adipisci ut quisquam eius quisquam magnam. Porro quisquam amet dolorem labore velit.',3555,1100,1,2,1),(92,34,'2020-08-03 08:09:10','+++Marina Chic & Modern Living w/prkg','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',3,'Stainless steel Hardwood mission sinks majors apartment Open walking distance appliances Modi ipsum quiquia ut labore amet labore. Tempora tempora consectetur aliquam quaerat velit. Dolor consectetur est voluptatem. Aliquam ipsum quaerat porro. Ipsum voluptatem dolorem quiquia porro sed. Quaerat quisquam quisquam neque adipisci eius magnam porro.',3255,787,1,2,1),(93,47,'2020-08-03 08:09:10','This rarely available spectacular northeast corner boasts','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.99,'walk spa shopping dining Hardwood roof sinks New kitchen Labore numquam numquam etincidunt numquam dolore. Etincidunt ut tempora sed consectetur. Consectetur sed neque dolore. Ut quisquam aliquam ipsum. Porro adipisci ut est modi sit dolore. Quisquam dolorem porro magnam aliquam quiquia amet ipsum. Numquam porro eius tempora ipsum non voluptatem. Dolore adipisci ut est eius dolor adipisci ut. Quiquia labore dolorem quiquia modi aliquam ut.',3800,1072,1,1,0),(94,15,'2020-08-03 08:09:10','Beautiful Nob Hill Studio','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.23,'bathroom Pool floors Media room close patio kitchen ready nearby Porro aliquam numquam numquam velit adipisci sit. Quisquam ipsum porro quaerat ut non. Non modi neque porro. Dolor dolor sed sed velit porro quaerat. Voluptatem consectetur non neque voluptatem neque modi quaerat. Quisquam voluptatem ipsum quisquam tempora. Velit dolorem quisquam porro eius sit. Dolore labore est amet.',2200,450,1,1,1),(95,9,'2020-08-03 08:09:11','Remodeled PRIVATE 2 bedrooms 2 bathrooms next to all conveniences','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.03,'Granite Move-in Pool shopping walking distance Open floor plan light Pool Dolore tempora magnam ipsum dolor non velit quisquam. Non sed est dolorem amet sit porro eius. Sit consectetur neque amet. Sed modi adipisci magnam adipisci eius tempora. Consectetur amet quiquia voluptatem ipsum non. Quaerat neque eius consectetur. Sed quaerat amet adipisci magnam quaerat dolorem. Labore tempora quisquam magnam dolor. Adipisci quiquia tempora dolore ipsum magnam.',2288,1749,2,2,1),(96,21,'2020-08-03 08:09:11','$2900 / 1br - 525ft2 - Luxury Jr. 1 BR Apartment in the Heart of Downt','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.6,'dorm utilities included Hardwood Open majors Move-in amenities concept ready Velit labore dolore adipisci aliquam numquam. Amet dolore quaerat aliquam labore dolor aliquam. Consectetur ut adipisci tempora modi etincidunt dolore. Numquam etincidunt aliquam dolore modi ut consectetur. Dolore tempora adipisci amet. Aliquam amet magnam dolor eius dolore dolore velit. Quiquia quaerat etincidunt modi porro consectetur porro labore. Porro numquam voluptatem magnam tempora numquam ut labore. Neque ipsum labore sed modi etincidunt etincidunt porro. Quiquia quaerat magnam quiquia sit etincidunt etincidunt.',2900,525,1,1,1),(97,15,'2020-08-03 08:09:12','Large 1 Bedroom and Family Room Unit in Central Sunset','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.79,'Stainless steel Granite New Vaulted Chef sky kitchen Move-in ceilings Tempora amet dolor consectetur quaerat. Adipisci non neque labore quiquia porro non quaerat. Dolore modi eius tempora modi magnam sed neque. Sed non aliquam quiquia dolor modi. Aliquam velit est labore modi ut aliquam. Consectetur sit numquam ipsum. Non quaerat ut ut dolor voluptatem.',2400,1795,1,2,1),(98,33,'2020-08-03 08:09:12','2 bedrooms Victorian flat with fire place and garden','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',3.27,'Covered Granite Vaulted majors Vaulted neighborhood Pool roof Gas Velit magnam quisquam ut magnam quiquia consectetur. Quisquam quaerat consectetur ut eius ipsum dolore. Amet consectetur ipsum dolor numquam dolor velit. Etincidunt numquam non eius numquam quiquia dolorem. Consectetur quisquam modi modi tempora.',4400,1500,2,1,1),(99,4,'2020-08-03 08:09:13','Clean Spacious 2 Room Garden Level Unit','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.51,'Hardwood Vaulted house Media room Dual Vaulted spa Granite apartment Ut voluptatem labore tempora numquam ut. Ut tempora labore dolorem adipisci quiquia. Aliquam sed dolor velit aliquam etincidunt eius. Tempora dolorem tempora tempora ut sed quaerat. Neque ut etincidunt tempora ipsum.',2400,1060,2,1,1),(100,31,'2020-08-03 08:09:13','Stunning 1 bedroom Victorian with City View','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.8,'Gourmet Hardwood fireplace Granite Dual Move-in Media room campus Chef Quiquia ut voluptatem amet dolorem. Dolorem porro quaerat sed ut. Amet eius porro amet. Porro adipisci non consectetur amet consectetur quisquam. Est dolor tempora eius aliquam. Consectetur voluptatem porro etincidunt consectetur non etincidunt dolore. Voluptatem amet adipisci consectetur sit eius adipisci ut. Voluptatem dolore quiquia quisquam.',3100,946,1,2,0),(101,31,'2020-08-03 08:09:14','1 Private Bedroom w/ Private Bathroom and view of the Zen Garden','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',6.48,'bedroom neighborhood Open Pool SFSU spa Granite house patio Labore porro porro ipsum labore ut. Ut voluptatem porro dolor adipisci quisquam dolor. Etincidunt eius porro dolor aliquam dolorem. Labore numquam labore quiquia. Quisquam magnam modi voluptatem adipisci numquam voluptatem voluptatem. Velit numquam tempora dolor. Porro magnam sit neque magnam dolorem numquam numquam. Sit dolor dolorem modi labore consectetur dolor numquam. Sed neque labore dolor. Non dolorem amet modi dolore etincidunt eius ut.',1400,1292,1,2,0),(102,43,'2020-08-03 08:09:14','2br/1ba Private Basement In-Law in Outer Richmond (Available Now!!)','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.42,'Formal Covered neighborhood light Vaulted Ocean views Hardwood Vaulted Move-in Ipsum dolor velit quisquam. Magnam non etincidunt adipisci numquam dolorem porro. Modi etincidunt quaerat voluptatem aliquam. Non tempora quisquam est aliquam. Neque dolor adipisci quaerat dolore neque. Quisquam porro neque amet sed.',2300,612,2,1,1),(103,40,'2020-08-03 08:09:15','Dog Friendly!  Clean Spacious 2 Room Garden Level Unit in Sunset','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.09,'countertop fireplace kitchen Chef class Pool SFSU Pool looking Labore adipisci labore eius. Quiquia magnam porro labore. Dolorem amet velit magnam eius aliquam quiquia dolore. Dolor dolorem ipsum tempora consectetur porro. Quisquam modi tempora modi labore ut non dolor. Porro eius eius neque. Eius dolore neque dolore est. Etincidunt ipsum porro velit sed velit magnam.',2400,1111,2,1,1),(104,17,'2020-08-03 08:09:15','Stunning 2 Bedroom 2 Bath Shipyard Condo','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.37,'Media room bedroom Move-in Granite appliances walk looking roomate Vaulted Voluptatem labore numquam sit quiquia. Voluptatem etincidunt amet consectetur. Magnam sit sit labore dolore consectetur voluptatem ipsum. Quisquam numquam modi eius eius quiquia velit amet. Eius est neque porro consectetur quisquam voluptatem adipisci. Amet modi quisquam quisquam neque. Consectetur quiquia labore dolorem voluptatem tempora ut dolor.',3500,1024,2,3,1),(105,35,'2020-08-03 08:09:16','2 Bedroom Renovated Unit now Available','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.33,'appliances Perfect Open restaurants SFSU Pool nearby Stainless steel patio Non numquam velit ut dolor dolor tempora neque. Dolore sed dolor dolor. Tempora dolor non sit. Etincidunt amet quisquam tempora quaerat. Non non quaerat est neque. Aliquam tempora aliquam dolorem. Dolor ut ut numquam consectetur sit ut. Neque dolorem ut velit adipisci ut.',3000,1918,2,1,1),(106,31,'2020-08-03 08:09:16','Large 3BR/2BA Dogpatch Flat with Parking','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.57,'looking walking distance Stainless steel patio Hardwood spa mall Ocean views Granite Porro consectetur quiquia dolorem tempora. Modi ut adipisci etincidunt. Etincidunt numquam modi quisquam numquam quaerat. Magnam porro modi neque consectetur dolor porro aliquam. Porro aliquam ipsum voluptatem. Eius voluptatem labore velit etincidunt. Sed voluptatem quisquam ut sit dolorem.',4800,1400,3,1,1),(107,36,'2020-08-03 08:09:17','Museum Park SOMA - Large 1 Bedroom w/ Laundry in Unit','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.66,'Vaulted New Vaulted Move-in Granite Hardwood Hardwood concept location Eius neque tempora dolorem consectetur aliquam porro sed. Labore est sit voluptatem. Labore porro amet porro. Ut porro quiquia ut porro neque ipsum. Ipsum sed labore neque aliquam aliquam.',2695,925,1,1,1),(108,40,'2020-08-03 08:09:17','1Bedroom In-Law unit avail 7/12/2020','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.46,'Hardwood Pool Dual Perfect French doors kitchen amenities sky furnished Adipisci ipsum labore ut dolorem. Quisquam ipsum dolorem consectetur etincidunt dolor eius. Eius dolorem numquam tempora. Ipsum etincidunt ipsum sit. Sit quisquam sit eius. Adipisci quiquia quisquam eius. Quisquam aliquam adipisci dolorem est dolor sit. Porro est velit modi eius ipsum porro. Dolorem porro ipsum dolorem ut. Dolor consectetur quaerat etincidunt.',2250,166,1,3,1),(109,31,'2020-08-03 08:09:18','Huge 3+ Bedroom Elegant Victorian Flat w/ Chef\'s Kitchen - Prkng avail','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',1.08,'spa class bedroom light bar majors kitchen Open concept Aliquam velit modi sed non est numquam. Magnam est ipsum numquam ipsum quaerat adipisci. Dolore eius aliquam tempora labore etincidunt. Voluptatem eius voluptatem dolorem non aliquam dolore. Dolore velit dolorem modi adipisci. Ut numquam adipisci quisquam magnam velit. Aliquam dolor eius adipisci adipisci magnam. Labore voluptatem sit tempora tempora adipisci quaerat. Ipsum quiquia amet eius sit. Amet voluptatem quaerat labore.',5990,1500,3,1,1),(110,22,'2020-08-03 08:09:19','Large Renovated 1 Bedroom on Sunny Potrero Hill','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.65,'furniture amenities room Pool campus mission spa majors shopping Quaerat non neque dolorem etincidunt tempora etincidunt neque. Sed est consectetur ipsum adipisci velit. Ipsum dolore eius ut numquam eius neque. Quisquam numquam adipisci amet neque aliquam magnam. Adipisci velit eius labore. Aliquam est quiquia quaerat adipisci quisquam sit magnam. Porro dolore aliquam ut magnam non porro modi. Modi velit ipsum dolore adipisci est consectetur tempora. Dolor ut amet aliquam.',3500,800,1,1,1),(111,8,'2020-08-03 08:09:19','Fully Furnished Junior One Bedroom Garden Apartment','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.26,'Granite Pool Pool Dual class dining room Vaulted dorm French doors Amet voluptatem etincidunt dolor quaerat numquam modi. Porro modi non etincidunt ut quisquam ipsum. Modi consectetur quaerat numquam magnam. Dolorem dolor sed neque. Quaerat est sit sed adipisci est etincidunt. Magnam quisquam etincidunt dolore consectetur. Velit est sit amet magnam. Numquam velit dolore tempora porro.',2950,1744,1,1,1),(112,3,'2020-08-03 08:09:20','Beautiful Spacious One Bedroom Apartment Steps from Lafayette Park','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.99,'room Vaulted Stainless steel bar floor plan walking distance Guest restaurants Granite Quaerat labore consectetur consectetur sed magnam quaerat quaerat. Neque adipisci numquam sit aliquam magnam modi numquam. Etincidunt tempora dolor quaerat quaerat. Quaerat numquam dolore ut consectetur tempora voluptatem labore. Porro neque non labore dolore sed eius quaerat. Velit sed sit ut voluptatem velit dolor. Quaerat est sed dolor non.',4450,1000,1,2,1),(113,2,'2020-08-03 08:09:20','Beautiful 5 Bedroom/3.5 Bathroom Single Family Home in Presidio Height','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',2,'Media room countertop Pool SFSU room kitchen Hardwood Vaulted Chef Ut neque voluptatem dolore modi. Ut porro magnam voluptatem dolor quiquia. Modi quaerat etincidunt amet ut. Labore modi modi dolore. Etincidunt labore ipsum sed modi. Sed eius dolorem etincidunt adipisci adipisci quaerat. Aliquam magnam consectetur velit numquam. Sed sit magnam sit consectetur dolore.',17500,4200,5,2,1),(114,14,'2020-08-03 08:09:21','Beautiful Edwardian House in Presidio Heights','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.88,'New Open neighborhood nearby utilities included appliances roof ceilings bar Quisquam dolorem sit non ipsum consectetur modi consectetur. Magnam aliquam ipsum dolorem consectetur numquam voluptatem dolorem. Dolorem ipsum labore consectetur dolore. Ut labore numquam quaerat consectetur ipsum. Velit dolorem ut ipsum neque sit. Non dolorem quisquam quiquia quisquam quiquia etincidunt consectetur. Dolor porro modi modi quiquia est. Velit est quisquam adipisci.',12500,567,5,1,0),(115,12,'2020-08-03 08:09:21','Spacious 1 BR New Kitchen, Bath, Beautiful Hardwood Floors, Formal DR.','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.65,'SFSU concept Natural Ocean views appliances Hardwood Dual amenities appliances Numquam aliquam dolor dolore quaerat neque. Quaerat quaerat voluptatem dolore ipsum. Porro ipsum adipisci labore ipsum. Ipsum neque consectetur aliquam non consectetur consectetur. Sed adipisci tempora adipisci. Labore aliquam consectetur quisquam adipisci. Sit dolore porro neque.',3695,1204,1,2,1),(116,47,'2020-08-03 08:09:22','1 Bed, 1 Ba_1 Parking. Contemporary, updated appliances__laundry','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.94,'walk Pool room house Natural Wine cellar dining room apartment amenities Etincidunt porro ipsum sed est modi. Eius tempora est consectetur. Eius amet amet sit. Sit tempora numquam dolor. Ipsum ut eius quiquia. Dolore sed modi modi dolor quaerat modi quiquia. Porro adipisci magnam eius. Dolore labore sit ipsum. Ut est sed numquam labore.',2795,700,1,1,1),(117,8,'2020-08-03 08:09:22','The Oriental WH is an historic landmark built','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.36,'SFSU walk Granite kitchen Pool bathroom Dual French doors Granite Eius amet eius neque porro numquam amet. Eius etincidunt est ut dolor velit porro dolore. Porro porro dolore consectetur. Quisquam porro aliquam non voluptatem sit tempora est. Porro sed labore amet est est dolor sit. Numquam quiquia quisquam quiquia modi dolor. Voluptatem adipisci labore dolor aliquam est neque velit.',4000,1514,1,2,1),(118,13,'2020-08-03 08:09:23','GREAT Top-Floor Apt Near EVERYTHING - Parking Included','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.45,'spa neighborhood Granite kitchen bathroom floor plan Dual appliances room Consectetur aliquam ipsum tempora magnam magnam labore. Numquam labore magnam numquam non quisquam aliquam adipisci. Voluptatem dolore sit quaerat eius. Modi voluptatem quaerat numquam tempora adipisci. Dolore tempora quisquam porro sit adipisci. Est sed ut numquam non.',3495,387,2,1,0),(119,19,'2020-08-03 08:09:23','Gorgeous penthouse with balcony','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.03,'Stainless steel class roomate floor plan Gas Granite Ocean views Hardwood room Ipsum non eius eius quaerat etincidunt eius non. Adipisci modi sit quisquam numquam. Tempora quiquia dolore non labore modi eius. Sed ut porro adipisci tempora tempora. Labore labore consectetur eius dolorem consectetur. Labore ut consectetur ipsum labore magnam eius. Dolore numquam dolore neque numquam amet. Tempora tempora numquam voluptatem consectetur.',3400,680,1,1,1),(120,37,'2020-08-03 08:09:24','A few steps away from Little Italy!','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.41,'kitchen room floor plan walking distance Formal class Wine cellar Vaulted furnished Aliquam voluptatem amet neque ut dolorem quiquia. Porro porro adipisci consectetur tempora dolore neque labore. Adipisci consectetur magnam dolore porro dolorem neque dolor. Numquam etincidunt voluptatem etincidunt. Ipsum dolore non adipisci est. Adipisci adipisci est tempora sed quisquam est. Dolore sit quaerat velit quaerat. Dolore modi velit labore sit consectetur etincidunt. Non sit tempora est amet dolore. Amet magnam sed porro dolorem sit sed.',1000,722,2,2,1);
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
  `fkSender` varchar(255) DEFAULT NULL,
  `fkReciever` varchar(255) DEFAULT NULL,
  `message` varchar(400) DEFAULT NULL,
  `timeCreated` datetime DEFAULT NULL,
  `unread` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `sfsu_confirmed` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`active` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'consectetur','ipsum','consecteturipsum@sfsu.edu','$2b$12$ouCWCFqP20uf3dMDpcTin.YUGFu5kws2VAaXhn5lOQw7A/6vhwiW.',1,1,'2020-08-03 08:07:53'),(2,'modi','dolorem','modidolorem@random.com','$2b$12$i20sJI71SQxtI4MOG/UcqOE8RESEVnogzwoY3O8iuMdR570ViYNDK',1,0,'2020-08-03 08:07:53'),(3,'ut','numquam','utnumquam@sfsu.edu','$2b$12$d9GW27j7nEA7H0byKvIDl.toqZQWc/n.MnFafpwAZaEzcKfKp9MTW',1,1,'2020-08-03 08:07:54'),(4,'dolore','Quiquia','doloreQuiquia@random.com','$2b$12$Q5gijaunQALEybs9DsBQUey5jsYyV7Ot7KKCYW080seknvdX13pNi',1,0,'2020-08-03 08:07:54'),(5,'ipsum','quiquia','ipsumquiquia@sfsu.edu','$2b$12$96AIZiOpC5FWkolvBUcEFeHORHEZZJHau.lg0.Sa2nglTknXoiHQy',1,1,'2020-08-03 08:07:55'),(6,'amet','ipsum','ametipsum@sfsu.edu','$2b$12$cRX8091d9TEDQuVfJ5SyweKXU54WUEtqS9fv/FwVOMSTlH79yS272',1,1,'2020-08-03 08:07:55'),(7,'Modi','dolorem','Modidolorem@sfsu.edu','$2b$12$oIJBg8QAgoWDw5Xc3z388Ovf0XwezWHisOy5KBhe/YxoyTsS13mw6',1,1,'2020-08-03 08:07:56'),(8,'consectetur','ut','consecteturut@random.com','$2b$12$/RYkpzsZJUN4oWHaH5DUV.bkDRwSCplIKtKM//05F9FfJjU6yCQBu',1,0,'2020-08-03 08:07:56'),(9,'consectetur','eius','consectetureius@random.com','$2b$12$v8EMAzb/P5TD4WOyG5IsFe0hd62f3/0FFPpTAQM14wFfqkYhgHZaq',1,0,'2020-08-03 08:07:57'),(10,'Numquam','voluptatem','Numquamvoluptatem@sfsu.edu','$2b$12$R3TR193Qo/FPbxvedAKnAuD0LUMxwHa1ZPLJIYVnyCj0/zsFrGArC',1,1,'2020-08-03 08:07:58'),(11,'est','non','estnon@random.com','$2b$12$V9O2AJ/Ert8AikKX1rCLeOg1Pw7.6FyLi2JtVbuIUkkw9Kqf7ElAa',1,0,'2020-08-03 08:07:58'),(12,'Magnam','Aliquam','MagnamAliquam@random.com','$2b$12$OEXSjCzDqt7jy4khE/AGNOirPOLVwFGSG/sQivmxXDC.Ar6J8uDr2',1,0,'2020-08-03 08:07:59'),(13,'neque','ipsum','nequeipsum@sfsu.edu','$2b$12$AAQE5kS/898pd30V1keCru7.b6/.zWSNJP3LYYlyUuoEr2.DX.muC',1,1,'2020-08-03 08:07:59'),(14,'adipisci','Velit','adipisciVelit@sfsu.edu','$2b$12$xuUZoEH4yGjZtMPfhLIfBOgPvLpozEGnUolywW2Ui/zOCcT/OaivO',1,1,'2020-08-03 08:08:00'),(15,'Tempora','dolorem','Temporadolorem@sfsu.edu','$2b$12$FFRUbT0BMohtxFED7b6RIeNL7GqUaqnr5v255jnGgAUASMf2NTz4e',1,1,'2020-08-03 08:08:00'),(16,'Neque','consectetur','Nequeconsectetur@random.com','$2b$12$haYWPI7ZeUFFZdNyz4EDDeloBL6TQRFk/qAO0OSGs4rafqqdHUf0.',1,0,'2020-08-03 08:08:01'),(17,'Tempora','etincidunt','Temporaetincidunt@random.com','$2b$12$AiytXBKbQL/oIxEJQnDSDOxCMMSZ2Gt5tVYtzNiiwI.FVd2NJ3Sm2',1,0,'2020-08-03 08:08:02'),(18,'voluptatem','Etincidunt','voluptatemEtincidunt@sfsu.edu','$2b$12$80xeiqjZKqVgkWVXttxBAuX2xTdnX6AgSMTDHwfe5DIKFIeGJDF0q',1,1,'2020-08-03 08:08:02'),(19,'adipisci','Tempora','adipisciTempora@random.com','$2b$12$XES1tOBskTSK78hcsocWv.sR1XqKAyC7cEsm.QX3.GqiyDyl/.rvy',1,0,'2020-08-03 08:08:03'),(20,'aliquam','ut','aliquamut@sfsu.edu','$2b$12$1lvV.WODva51JCmqyrX8pemEZVavVQYO5lbLOS8sP0BOFmurtAIaC',1,1,'2020-08-03 08:08:03'),(21,'magnam','non','magnamnon@random.com','$2b$12$WMVotPkUFVpYMverOrgmkuA3QMDXIfYtKKjI4gMaKI1YAobzVspU.',1,0,'2020-08-03 08:08:04'),(22,'etincidunt','Labore','etinciduntLabore@random.com','$2b$12$7PAz23VssmOaEBAhGfGPBelzrl.VQAXgRUjEN41pVtK5tKiDey34K',1,0,'2020-08-03 08:08:04'),(23,'Ipsum','Velit','IpsumVelit@sfsu.edu','$2b$12$udNsn/XZSHhmUMv6wHqWlO1vap60tf7/XXH3xULs5DZNLwWvGaGZa',1,1,'2020-08-03 08:08:05'),(24,'magnam','tempora','magnamtempora@sfsu.edu','$2b$12$IQ1U5aBAkbO5TgEAxB5fteJTDyn1FJQ7wxdfhZPTxoB14.CRzY0Ja',1,1,'2020-08-03 08:08:06'),(25,'labore','dolore','laboredolore@random.com','$2b$12$V35XsouJkf46tKD2IbtqYOJVthDW08osUvmGPb50NE05T8Euqsjcq',1,0,'2020-08-03 08:08:06'),(26,'dolorem','quaerat','doloremquaerat@random.com','$2b$12$Ue7YgeHBipdAqscNkvMTFephXgf9TboEwMZc5KuPYc2NOpS3E1/eS',1,0,'2020-08-03 08:08:07'),(27,'Ipsum','dolor','Ipsumdolor@random.com','$2b$12$.k7aZAuclZZ5oq6D.ClCSuCwh4QzAUBwi0ePYrCgopsDAmnQePXqa',1,0,'2020-08-03 08:08:07'),(28,'modi','Quisquam','modiQuisquam@sfsu.edu','$2b$12$sKKopmMC4OErFxrVk2NEnObqeyvdT1yKfhoZmk5QfwVnVhJjWCe.y',1,1,'2020-08-03 08:08:08'),(29,'modi','labore','modilabore@random.com','$2b$12$Bf9M2rc5/bJ3U8C0hp4ePe3qPHQ5BCD017HaNXwnBZSuEp0fbIOOi',1,0,'2020-08-03 08:08:08'),(30,'non','consectetur','nonconsectetur@random.com','$2b$12$cM23XcLFB06Tlf0rHTt/Re06ItTQtXJvwJgh/hgY7Q487XLvisryG',1,0,'2020-08-03 08:08:09'),(31,'quiquia','porro','quiquiaporro@random.com','$2b$12$m9ubltPkFO6NaY3NSucFUeq3vCO381Mk.E4UUhqnI2pwpigMP5jRe',1,0,'2020-08-03 08:08:10'),(32,'amet','Non','ametNon@random.com','$2b$12$Pkd4HF6Br8ATklpHAMOZOusuJcuCCL/mWxklYwT8nd9ZAgldRUltC',1,0,'2020-08-03 08:08:10'),(33,'numquam','Dolore','numquamDolore@random.com','$2b$12$8TYhZCwUQf.woxWPwq4PDunRQawZ3RAMqntBGW2YS6sQb7wVhu9sO',1,0,'2020-08-03 08:08:11'),(34,'amet','Aliquam','ametAliquam@sfsu.edu','$2b$12$UuSVj8fsLvLmKoe7.wWrROO2tlJud5srOoMCjb85hgLn4X2rS48XS',1,1,'2020-08-03 08:08:11'),(35,'dolore','adipisci','doloreadipisci@random.com','$2b$12$kGoeI4zS.BlqqrLozcAVq.l52sYFT2CIEtIH6/u0X05jH6ycrMUDK',1,0,'2020-08-03 08:08:12'),(36,'sed','consectetur','sedconsectetur@random.com','$2b$12$gv9IjTS7UaPDsZxSywFg3utcTsg.eX89po83oTJfoIFZuQeYMLmam',1,0,'2020-08-03 08:08:12'),(37,'voluptatem','Porro','voluptatemPorro@random.com','$2b$12$cywM41bNYh0TKAmvpkiz4.e9YOJG8fP30yOgFtT3/34BpQacLQu1C',1,0,'2020-08-03 08:08:13'),(38,'quaerat','sed','quaeratsed@sfsu.edu','$2b$12$mmPwhV1uZW6jUkBCkKc9q.GoE/solNABVxmBX254yLo82aACmB0Hi',1,1,'2020-08-03 08:08:13'),(39,'est','Ut','estUt@sfsu.edu','$2b$12$oug4OR2U56YZuUXOwPxYsuYj5SPYhLN4TK/ofIll8K43GTfSzexXq',1,1,'2020-08-03 08:08:14'),(40,'ipsum','sit','ipsumsit@sfsu.edu','$2b$12$gppItycEUdBKPMzuErR2Mep1X1ndZScONJwObfNl2fKNNDSTMFOHi',1,1,'2020-08-03 08:08:15'),(41,'porro','adipisci','porroadipisci@sfsu.edu','$2b$12$9t.tUYJYgYJzw60xlQ.ijeZI4xSYa0bKla3agkNACwLyernmC4Ace',1,1,'2020-08-03 08:08:15'),(42,'labore','Quisquam','laboreQuisquam@sfsu.edu','$2b$12$Kh4ji6HYWOgt7YppLiVasOaOfmR5UuS0jG49QmbKlU6ecDrdGwMWK',1,1,'2020-08-03 08:08:16'),(43,'numquam','voluptatem','numquamvoluptatem@random.com','$2b$12$Bijx7c8u8kw7Lyp562KWkOlDrjiBcXBErVo5MyPElijReLsEAzvrG',1,0,'2020-08-03 08:08:16'),(44,'Etincidunt','dolorem','Etinciduntdolorem@random.com','$2b$12$VVN.xWeawgkvZAhy7J.kLe1/Fg71vD.1JMIHxV1NMrmlUaGP2alAi',1,0,'2020-08-03 08:08:17'),(45,'porro','aliquam','porroaliquam@random.com','$2b$12$jZfwTbij9DapgvdlTtvCdOkgcVWZMIgtkCVs890S31FBk667SwKOW',1,0,'2020-08-03 08:08:17'),(46,'Velit','Porro','VelitPorro@random.com','$2b$12$iJZd8rTis6sidJCXcrDBruNOgel92x8aMC3NADbzCiTriFlFJYojm',1,0,'2020-08-03 08:08:18'),(47,'quaerat','aliquam','quaerataliquam@random.com','$2b$12$hJFl1AA7PREZRsKKVvCNf.sIJj88DsB88wCFStGZcJpZ72ZnKNepm',1,0,'2020-08-03 08:08:19'),(48,'Velit','consectetur','Velitconsectetur@sfsu.edu','$2b$12$U2Kfg0qc.tIlPC1AowSeuuNOJw49iHACzN3P7vuezYkPl8lwVHccy',1,1,'2020-08-03 08:08:19'),(49,'sit','dolorem','sitdolorem@sfsu.edu','$2b$12$U4CwmHCQD8NAmeY/tN9cTeOAs89cAWsqQc56OvWHfJWgHeC2beWUy',1,1,'2020-08-03 08:08:20'),(50,'Etincidunt','etincidunt','Etinciduntetincidunt@sfsu.edu','$2b$12$n9v0BElXYIPpDK3dMXpzEe9BU.c8xM/7E1JqQ7iOF/2R4li25rNgq',1,1,'2020-08-03 08:08:20');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03  2:04:36
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

-- Dump completed on 2020-08-03  2:04:39
CREATE DATABASE  IF NOT EXISTS `CSC_5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `CSC_5`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_5
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03  2:04:40
CREATE DATABASE  IF NOT EXISTS `CSC_4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `CSC_4`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: CSC_4
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkIdPost` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
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
  `timeCreated` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `houseType` varchar(255) DEFAULT NULL,
  `sellOrRent` varchar(255) DEFAULT NULL,
  `petsAllowed` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `distance_from_SFSU` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sqft` int(11) DEFAULT NULL,
  `bedroomNum` int(11) DEFAULT NULL,
  `bathroomNum` int(11) DEFAULT NULL,
  `adminAppr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`active` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'nhildum@mail.sfsu.edu','$2b$12$QqhmRuBGVC0IDvbQQsx3I.kHwGabixnTU0kqi6ApSgj0KnUtVdABO',1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03  2:04:43
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
INSERT INTO `Listings` VALUES (1,'2020-07-24 02:59:00','First Poster its a deal','house','rent',0,'San Francisco',94115,'9999 Main St.',5,'Nice place, you won\'t ever want to leave',6000,574,4,3,1),(2,'2020-07-24 02:59:00',' 4 bedroom, nice view Near SFSU campus','apartment','rent',0,'San Francisco',94116,'66666 San Jose St.',1,'Don\'t miss out! This gorgeous remodeled Victorian is a renters dream. Fully furnished 3 bedroom 1 bathroom waiting for you. The pictures speak for themselves.',3000,800,4,2,1),(3,'2020-07-24 02:59:00','Room For Rent/All Utilities Included','room','rent',1,'San Francisco',94117,'22222 Lombard St.',3.5,'Looking for roommate to fill extra room in a large apartment August 1st. $900 all utilities included. No lease/200$ deposit required/street parking only/10 minute walk to BART station and stores, close to freeway. I pay electric and internet but I will include it in the $900 per month, also fully furnished. Room needs to be filled by August1st, text if interested. \n\n- Two bedroom with Spacious Closets\n- Second Floor Unit\n- New tile kitchen and bathroom flooring\n- Subtle paint colors',2000,200,1,1,1),(4,'2020-07-24 02:59:00','1 Bed Apt. for Rent','apartment','rent',0,'San Francisco',95111,'1879 Geneva St.',0.2,'Spacious, sunny, private apartment - 1 bedroom, 1 bath, with living room/studio space (it can be rearrange as you like), August 1, or flexible date. Looking for someone temporary, 6 months and maybe longer. Sorry no pets and no couples.',4000,577,4,3,1),(5,'2020-07-24 02:59:00','4 Bed House for Sale','house','sale',1,'San Francisco',95112,'1879 Beechmont Ave.',0.4,'Need more sunny space to spend a pandemic? Need interesting layout and architectural details? Need a sense of home and style? Come live in our grand Victorian lady.',2000000,1577,4,3,1);
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

-- Dump completed on 2020-08-03  2:04:46
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

-- Dump completed on 2020-08-03  2:04:49
