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

-- Dump completed on 2020-08-06 20:37:00
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,35,1,'/static/images/listings/pexels-photo-2840167.jpeg'),(2,22,2,'/static/images/listings/pexels-photo-2079249.jpeg'),(3,18,3,'/static/images/listings/pexels-photo-439391.jpeg'),(4,37,4,'/static/images/listings/pexels-photo-259593.jpeg'),(5,27,5,'/static/images/listings/21.aerial_facade.jpg'),(6,29,6,'/static/images/listings/22.ISu04cqh2oc4zl1000000000.jpg'),(7,37,7,'/static/images/listings/pexels-photo-3754595.jpeg'),(8,22,8,'/static/images/listings/pexels-photo-439227.jpeg'),(9,45,9,'/static/images/listings/pexels-photo-3555615.jpeg'),(10,37,10,'/static/images/listings/pexels-photo-3625713.jpeg'),(11,26,11,'/static/images/listings/EastOaklandstreetview.jpg'),(12,45,12,'/static/images/listings/pexels-photo-1030974.jpeg'),(13,10,13,'/static/images/listings/pexels-photo-2635038.jpeg'),(14,16,14,'/static/images/listings/pexels-photo-4112553.jpeg'),(15,13,15,'/static/images/listings/pexels-photo-1661566.jpeg'),(16,41,16,'/static/images/listings/21.ISm2wg31rp1ugc1000000000.jpg'),(17,30,17,'/static/images/listings/pexels-photo-2838606.jpeg'),(18,25,18,'/static/images/listings/44.ef52f153785fcda3281e84c3fc63891f.jpg'),(19,12,19,'/static/images/listings/pexels-photo-3639523.jpeg'),(20,23,20,'/static/images/listings/62.photo_3.jpg'),(21,31,21,'/static/images/listings/52.pickups-08_3.jpg'),(22,31,22,'/static/images/listings/pexels-photo-2079246.jpeg'),(23,33,23,'/static/images/listings/pexels-photo-2876787.jpeg'),(24,31,24,'/static/images/listings/80.Twilights_08.jpg'),(25,24,25,'/static/images/listings/32.06.jpg'),(26,11,26,'/static/images/listings/pexels-photo-323776.jpeg'),(27,33,27,'/static/images/listings/pexels-photo-1454805.jpeg'),(28,43,28,'/static/images/listings/33.14bd3d5f3571719859c2f821cac5d331--francisco-dsouza.jpg'),(29,4,29,'/static/images/listings/pexels-photo-2346091.jpeg'),(30,17,30,'/static/images/listings/pexels-photo-1643384.jpeg'),(31,48,31,'/static/images/listings/pexels-photo-157811.jpeg'),(32,7,32,'/static/images/listings/87.Twilights_04.jpg'),(33,40,33,'/static/images/listings/99.05_773_542_s_c1.jpg'),(34,15,34,'/static/images/listings/27.image.jpg'),(35,3,35,'/static/images/listings/pexels-photo-273209.jpeg'),(36,21,36,'/static/images/listings/pexels-photo-3873607.jpeg'),(37,49,37,'/static/images/listings/26.maxresdefault.jpg'),(38,17,38,'/static/images/listings/89.598ec720796af186a5f707be3735ee29.jpg'),(39,46,39,'/static/images/listings/pexels-photo-280232.jpeg'),(40,20,40,'/static/images/listings/pexels-photo-1668860.jpeg'),(41,44,41,'/static/images/listings/pexels-photo-1031593.jpeg'),(42,30,42,'/static/images/listings/pexels-photo-3016321.jpeg'),(43,45,43,'/static/images/listings/pexels-photo-2556001.jpeg'),(44,34,44,'/static/images/listings/pexels-photo-1906795.jpeg'),(45,33,45,'/static/images/listings/pexels-photo-3554424.jpeg'),(46,29,46,'/static/images/listings/pexels-photo-109572.jpeg'),(47,44,47,'/static/images/listings/pexels-photo-2999012.jpeg'),(48,10,48,'/static/images/listings/16.FireShot-Pro-Screen-Capture-230-1450-Masonic-I-San-Francisco-Luxury-Real-Estate-sanfranciscoluxuryrealestateproperties_com_listings_1450-masonic-619x409.jpg'),(49,14,49,'/static/images/listings/pexels-photo-1060950.jpeg'),(50,36,50,'/static/images/listings/36.Twilights_01.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,35,'2020-08-06 05:29:22','1BR/1BA: Excellent SOMA Location near BART & Downtown; New Remodel','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.53,'Ocean views fireplace Gas dining room ready dining bathroom Open Formal Quiquia dolor non porro labore eius eius eius. Velit voluptatem voluptatem consectetur ut. Neque amet sit aliquam. Adipisci velit ipsum velit consectetur aliquam. Est magnam sed amet voluptatem ut.',1800,500,1,2,1),(2,22,'2020-08-06 05:29:23','One free month w/ lease One Bedroom Inlaw unit','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.31,'Hardwood Open kitchen Pool house appliances floor plan Dual ceilings Dolor sit voluptatem voluptatem tempora ut adipisci. Sed dolore ipsum est dolor labore. Quiquia porro quisquam quaerat quiquia ipsum voluptatem eius. Numquam modi velit voluptatem neque magnam neque modi. Quaerat quisquam quiquia eius eius velit non dolorem. Numquam amet etincidunt quisquam quisquam quisquam numquam aliquam. Labore sit sit dolor velit dolor.',1750,340,1,1,1),(3,18,'2020-08-06 05:29:23','2BR / 1BA: Convenient Location, Newly Remodeled, Near MUNI','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.94,'appliances bedroom concept spa room Open spa Guest Dual Aliquam sit aliquam labore. Sed porro ipsum labore dolorem neque aliquam. Voluptatem amet sit consectetur eius. Porro aliquam ut est voluptatem quisquam. Ipsum adipisci est eius numquam. Ipsum quaerat velit dolorem numquam magnam voluptatem. Modi voluptatem quaerat quiquia tempora quisquam.',2500,800,2,1,1),(4,37,'2020-08-06 05:29:23','Mission District Flat','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',1.63,'Media room appliances nearby sinks patio roomate looking Vaulted Covered Tempora aliquam modi etincidunt numquam. Neque sed eius dolorem sit. Tempora dolorem ipsum amet sed etincidunt sit non. Magnam neque dolore labore quisquam. Voluptatem tempora ipsum numquam sed. Non non magnam velit amet velit dolore amet. Dolor dolor numquam velit amet etincidunt amet quaerat. Consectetur adipisci adipisci eius consectetur quisquam est quisquam. Sed dolorem labore neque quaerat consectetur ut quaerat. Etincidunt quisquam non velit labore labore dolorem non.',3450,784,2,2,1),(5,27,'2020-08-06 05:29:24','One month free / remodeled top floor unit','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.94,'mission spa fireplace sinks furnished looking Stainless steel Hardwood Move-in Quaerat neque quaerat amet porro magnam etincidunt porro. Est adipisci modi quaerat labore eius. Consectetur dolorem dolorem etincidunt dolore quisquam ipsum. Adipisci tempora non velit numquam. Est numquam numquam tempora neque dolore eius. Ut ut amet quaerat quiquia voluptatem dolor. Numquam labore labore consectetur consectetur labore. Neque quisquam etincidunt consectetur adipisci adipisci neque. Ipsum quaerat magnam ipsum est dolorem amet. Dolorem dolor aliquam dolore.',3495,765,2,1,1),(6,29,'2020-08-06 05:29:24','65 Buena Vista #304 - $0 Deposit Special - 2 Month Move-In Allowance!','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.19,'Granite Stainless steel neighborhood kitchen Guest floors dorm utilities included Vaulted Non adipisci sit eius aliquam aliquam. Velit adipisci dolor dolorem quiquia non dolorem quiquia. Porro quaerat amet dolorem neque tempora quisquam eius. Dolor quiquia neque ipsum porro. Porro sit magnam adipisci dolorem.',3095,114,1,1,0),(7,37,'2020-08-06 05:29:25','22nd / Irving. XL Roomy and Convinent 3BR 2BA','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.14,'room concept kitchen appliances house floors campus looking sky Magnam dolor quaerat labore dolore numquam aliquam. Amet eius velit quaerat est amet dolor quisquam. Voluptatem modi amet dolore etincidunt numquam consectetur. Est amet ut modi non amet. Quisquam aliquam amet labore est etincidunt. Dolorem ipsum quisquam neque. Tempora dolorem porro eius quaerat velit. Labore dolorem quaerat etincidunt.',4300,1709,3,1,1),(8,22,'2020-08-06 05:29:25','Historic Sunny Italianate Victorian overlooking Garden','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.88,'Covered dining appliances majors nearby walk concept SFSU close Porro voluptatem dolore sed consectetur dolorem quaerat. Modi magnam quisquam velit quaerat eius numquam. Est voluptatem adipisci etincidunt dolorem dolorem. Dolorem porro quiquia quiquia amet dolor. Quiquia etincidunt labore voluptatem. Aliquam tempora eius numquam quaerat aliquam. Tempora magnam dolorem porro sed. Magnam amet dolor adipisci eius numquam. Porro neque adipisci porro quisquam consectetur sit. Est sit non porro.',2625,400,1,1,1),(9,45,'2020-08-06 05:29:26','1BHK Apartment in FiDi with an amazing water view','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.51,'ceilings light Hardwood dining room bathroom New dorm utilities included SFSU Etincidunt sit dolor non. Magnam eius quaerat dolor quisquam dolor est sit. Aliquam sit numquam ut dolorem eius. Dolor etincidunt quiquia tempora dolore. Numquam sed velit adipisci modi labore sed. Quiquia sit non etincidunt non labore est consectetur.',4000,970,1,2,1),(10,37,'2020-08-06 05:29:26','SOMA Design District Furnished Studio Lease Takeover','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.95,'dining room spa mission bar appliances mall Gas Pool furniture Adipisci neque aliquam consectetur quiquia est. Aliquam ipsum dolor dolor etincidunt. Porro velit neque sit modi modi consectetur. Aliquam numquam est dolore adipisci. Sit eius numquam quisquam ut quisquam tempora voluptatem. Modi neque quisquam neque porro est. Amet est sed amet amet porro dolore. Etincidunt consectetur tempora velit labore velit tempora. Quiquia labore magnam est.',2860,449,1,3,1),(11,26,'2020-08-06 05:29:26','Beautiful 4bd/2ba, victorian, updated, spacious, best location','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',3.45,'sky Guest Pool furnished Stainless steel Open mission utilities included ceilings Dolore dolore labore numquam. Quisquam quisquam voluptatem sit sit porro modi. Magnam sit eius non porro quisquam. Consectetur quisquam dolor non. Quisquam quaerat dolorem consectetur quaerat neque consectetur. Porro sit tempora etincidunt. Ut sit modi dolorem adipisci neque. Numquam est neque modi.',6299,1800,4,1,1),(12,45,'2020-08-06 05:29:27','2 BR/2 BA with home office built-ins and parking included at The Palms','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.2,'Perfect location Stainless steel kitchen bathroom neighborhood Dual Pool Media room Aliquam dolore quiquia etincidunt est voluptatem ipsum. Adipisci modi sit quiquia tempora tempora sed. Ut voluptatem consectetur amet amet adipisci. Neque velit voluptatem velit dolorem dolor etincidunt magnam. Etincidunt dolore modi quiquia quisquam. Amet adipisci tempora sit ipsum adipisci dolor.',4200,990,2,1,1),(13,10,'2020-08-06 05:29:27','2B/2B+Den, Expansive Views, Best Neighborhood, Serenity Now!','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.37,'kitchen shopping furnished Granite restaurants Stainless steel patio class ceilings Labore amet sit sit. Tempora aliquam quisquam dolore numquam quaerat consectetur. Sed dolorem adipisci voluptatem sed etincidunt. Sit dolorem amet dolorem consectetur. Ipsum dolore labore dolorem. Quaerat magnam velit non adipisci voluptatem voluptatem. Magnam non tempora dolore quisquam porro. Consectetur porro voluptatem tempora neque. Labore quisquam dolore eius ut etincidunt sed.',5700,1500,2,1,1),(14,16,'2020-08-06 05:29:28','Panoramic ocean views, sites of endless whales!','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.83,'Stainless steel Natural SFSU sinks Vaulted bedroom dorm Perfect ceilings Adipisci neque quisquam labore etincidunt aliquam amet ut. Aliquam dolor etincidunt etincidunt sed magnam consectetur dolor. Voluptatem sit quisquam adipisci quaerat. Non aliquam sed porro dolorem ipsum numquam. Ut quiquia amet ipsum.',1400,1224,2,1,1),(15,13,'2020-08-06 05:29:28','1BR: Spacious, Wired, Urban Living, Convenient Location','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.09,'roomate Move-in SFSU concept neighborhood sky ceilings room ceilings Aliquam velit aliquam velit tempora tempora ipsum. Quaerat voluptatem quisquam ut quisquam est sed. Voluptatem modi dolorem etincidunt modi magnam tempora tempora. Numquam quiquia modi eius velit modi quaerat. Sit dolorem modi quisquam amet magnam tempora.',2400,500,1,2,1),(16,41,'2020-08-06 05:29:29','FULL FLAT2-3 Bdrm + Office | New Kitchen | Perfect Location | Views!','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.51,'bedroom dorm concept countertop nearby Gas Formal Open class Neque velit tempora quisquam voluptatem numquam consectetur. Sit aliquam neque ipsum. Magnam quaerat magnam ut quaerat voluptatem. Modi velit dolore dolor. Etincidunt consectetur labore non consectetur dolorem. Voluptatem voluptatem quaerat voluptatem quisquam voluptatem. Dolore non neque magnam.',4000,1410,2,3,1),(17,30,'2020-08-06 05:29:29','1st months rent free! Apt in the Heart of Hayes Valley','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.11,'Wine cellar Pool neighborhood appliances Vaulted Open French doors utilities included Hardwood Sit dolorem velit dolor. Amet numquam eius ipsum neque non sed dolorem. Consectetur est ipsum eius consectetur ipsum. Sed quaerat sit consectetur numquam. Amet tempora quiquia labore eius. Porro numquam quiquia est neque consectetur ut tempora. Est magnam non eius.',4000,1287,2,1,0),(18,25,'2020-08-06 05:29:29','1 Bedroom + den at The Landing | Space to work from home!','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.76,'light Pool Guest floors Formal Dual neighborhood sinks dorm Amet dolore dolorem consectetur dolor. Modi dolor etincidunt dolor quisquam ipsum ut quiquia. Porro modi eius non consectetur etincidunt dolore sed. Dolore ipsum ipsum est modi. Amet dolor quaerat ut neque voluptatem. Quiquia neque aliquam ut magnam consectetur ipsum ipsum. Numquam ut eius quisquam ut. Dolor etincidunt ut amet dolor quaerat consectetur numquam. Ipsum labore ipsum etincidunt voluptatem.',3395,1661,1,2,1),(19,12,'2020-08-06 05:29:30','** PRICE REDUCTION** Huge Remodeled Studio in Lower Haight','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',2.41,'Stainless steel mission location light Stainless steel Guest kitchen Stainless steel Pool Etincidunt amet neque neque. Velit adipisci amet ut sit quiquia. Tempora non tempora porro eius etincidunt. Sed adipisci velit adipisci amet. Numquam dolor quisquam velit dolorem voluptatem. Non modi consectetur neque dolor consectetur. Quaerat sed dolor etincidunt quaerat quisquam quisquam. Consectetur amet amet tempora sit porro magnam. Eius sit est quisquam numquam modi velit ipsum. Labore ut quaerat non ut.',1995,1463,4,1,1),(20,23,'2020-08-06 05:29:30','Bright 1-2 Bedroom Apartment located in Castro/Upper Market','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.56,'French doors Granite kitchen restaurants Pool fireplace ready Stainless steel mall Quaerat neque neque aliquam. Sit neque consectetur consectetur consectetur etincidunt porro dolorem. Etincidunt amet modi sit ipsum aliquam dolore. Numquam adipisci etincidunt quiquia quaerat modi. Ipsum velit consectetur amet sit dolor dolor neque. Porro labore consectetur amet tempora dolore porro sed. Numquam consectetur aliquam numquam. Quisquam voluptatem est non. Velit dolor ipsum adipisci magnam modi adipisci.',2695,1983,1,1,1),(21,31,'2020-08-06 05:29:31','1265 Washington #15 - $0 Deposit Special - 2 Month Move-In Allowance!','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.74,'mission studio location countertop Hardwood floors Pool bathroom bar Numquam ut labore dolor aliquam. Ipsum ipsum labore adipisci non ut dolore. Consectetur consectetur dolore est neque. Sit quiquia consectetur non non modi ut quiquia. Ipsum porro sit sit.',2695,1200,1,3,1),(22,31,'2020-08-06 05:29:31','exquisite 4bd/2ba, luxury, high ceiling, sunny, spacious, abfab neighb','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.61,'Open Granite Move-in dorm dining bedroom walking distance dining room Pool Velit porro adipisci eius. Dolorem quaerat amet non. Porro est non non magnam eius. Voluptatem velit modi voluptatem tempora consectetur. Voluptatem amet dolor eius magnam.',6299,1800,1,2,1),(23,33,'2020-08-06 05:29:31','Beautiful 2 Bedroom Apartment Mail us Today! San Francisco, CA!','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.75,'campus Covered Media room fireplace house floors Vaulted furnished dining room Quisquam amet numquam quisquam sit porro aliquam. Porro sit est etincidunt voluptatem etincidunt neque. Voluptatem voluptatem quaerat est porro etincidunt adipisci dolorem. Numquam sit tempora adipisci adipisci. Etincidunt amet labore neque ipsum porro consectetur. Non tempora amet neque eius numquam est. Quisquam sit amet dolore dolor dolorem ut etincidunt. Velit consectetur velit voluptatem.',840,971,2,2,1),(24,31,'2020-08-06 05:29:32','PRIDE OF OWNERSHIP / Bright / Top Floor / Laundry Room in Unit','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.46,'mission house close Move-in concept spa Open sinks SFSU Sed sit amet labore quaerat sed modi quiquia. Aliquam dolore consectetur modi numquam. Ut neque sed velit modi modi. Porro numquam etincidunt dolorem modi. Magnam neque voluptatem tempora dolorem neque porro. Neque consectetur labore consectetur. Etincidunt ut amet quaerat voluptatem. Sed non sed magnam tempora labore modi dolor. Ipsum ut aliquam quaerat quisquam quaerat.',4000,679,2,2,1),(25,24,'2020-08-06 05:29:32','1225 Taylor #405 - $0 Deposit Special - 2 Month Move-In Allowance!','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.56,'roof ceilings sky New Hardwood appliances kitchen Ocean views studio Consectetur magnam velit velit adipisci dolorem modi. Ut porro neque aliquam sed amet quaerat labore. Eius porro quisquam dolor ut. Neque voluptatem eius sed ut dolore eius neque. Sed porro sit adipisci. Etincidunt quiquia quiquia ipsum eius quisquam est. Aliquam non labore ut tempora aliquam quiquia.',2295,1894,2,2,1),(26,11,'2020-08-06 05:29:33','$2400 / - NICE 2BED 2BATH IN LAW UNIT - PRIVATE ENTRANCE','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.25,'French doors walk Pool appliances dining room appliances Vaulted mission concept Quaerat neque porro adipisci porro. Eius numquam quiquia non. Amet voluptatem tempora magnam. Quiquia quaerat sit velit. Amet est quaerat labore.',2400,600,2,1,1),(27,33,'2020-08-06 05:29:33','Newly renovated master bedrooms and kitchen, with private bathrooms','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',1.35,'roomate Hardwood appliances dorm walk kitchen Gourmet location Wine cellar Adipisci voluptatem velit velit. Est ut magnam modi consectetur dolor. Neque amet ut sit velit porro sed est. Neque dolor magnam labore quiquia quaerat. Quisquam modi aliquam sed labore velit.',1450,203,1,3,0),(28,43,'2020-08-06 05:29:34','Beautiful 2 Bedroom/2 Bath Townhouse in San Francisco (August Free!)','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',2.79,'bathroom Stainless steel appliances Vaulted Vaulted roomate Wine cellar furnished ceilings Neque non sed quaerat neque. Quiquia modi adipisci aliquam quiquia. Ut numquam magnam amet est tempora non. Tempora dolorem dolorem adipisci numquam. Dolore consectetur sit etincidunt sit. Dolorem ut consectetur ut est ipsum dolor dolorem.',3400,1300,2,1,0),(29,4,'2020-08-06 05:29:34','PRICE REDUCED: 1 Br/1 Ba Newly Renovated Apartment for rent','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',1.16,'floor plan mission sinks class Vaulted Hardwood Gourmet bathroom patio Modi numquam non consectetur dolor. Voluptatem adipisci voluptatem voluptatem magnam dolor dolore. Modi tempora numquam quisquam neque tempora. Velit eius velit magnam consectetur quisquam eius. Porro sit sed sit neque consectetur. Quaerat voluptatem amet adipisci neque ut. Ipsum labore neque labore ipsum. Etincidunt dolor adipisci numquam etincidunt quisquam labore aliquam. Sit porro dolore quisquam neque. Aliquam tempora aliquam porro sed magnam est quiquia.',3300,650,1,3,1),(30,17,'2020-08-06 05:29:35','Beautiful Victorian 1bed/1ba, updated, best neighborhood','apartment','rent',1,'San Francisco',94132,'1600 Holloway Ave',0.89,'kitchen house kitchen mall Granite Stainless steel Pool Move-in dining Aliquam velit est ut dolore. Sed sed velit sed. Etincidunt ipsum eius porro non neque dolorem sit. Non ipsum non ipsum quisquam porro consectetur etincidunt. Tempora ut neque non sed numquam. Sit velit modi quisquam dolore. Velit neque dolor numquam adipisci amet ut. Adipisci non adipisci labore non dolor quiquia tempora.',2799,850,1,2,1),(31,48,'2020-08-06 05:29:35','Corner Spanish Mediterranean Home in Westwood Park','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.4,'roof sinks Perfect dining room Vaulted Stainless steel Hardwood looking Non ut neque labore tempora. Non porro dolorem eius dolor etincidunt est aliquam. Adipisci voluptatem dolore amet velit sit etincidunt est. Porro quisquam non est quisquam neque dolorem labore. Eius dolore sit quaerat neque amet amet. Velit dolore voluptatem voluptatem amet sed aliquam. Est ipsum voluptatem modi numquam. Amet numquam quaerat voluptatem magnam velit.',4200,1382,1,1,1),(32,7,'2020-08-06 05:29:35','Inner Richmond Large Studio with Bed Alcove-','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',4.78,'walking distance restaurants room Hardwood utilities included Granite Open nearby countertop Quaerat magnam quisquam tempora voluptatem neque. Modi voluptatem velit quiquia ipsum neque quaerat consectetur. Ipsum non numquam ipsum ut dolore tempora sed. Dolor numquam est est. Porro sit non eius velit quiquia amet est. Labore modi eius modi dolore velit. Quiquia modi ut velit ut dolorem dolorem amet.',2100,1328,2,2,1),(33,40,'2020-08-06 05:29:36','Spacious 3 Bedroom Apartment w/ indoor parking garage','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.17,'kitchen appliances bar class neighborhood bathroom floor plan walking distance dining room Modi non adipisci aliquam non voluptatem sit. Amet non quaerat dolore porro. Porro labore est neque aliquam consectetur sit. Amet quisquam ipsum adipisci ut. Neque etincidunt consectetur eius adipisci. Porro quisquam magnam tempora sit sit. Velit porro quiquia labore amet labore. Dolore etincidunt ut quaerat.',4200,150,3,2,1),(34,15,'2020-08-06 05:29:36','furnished garden apartment utilities included','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',0.05,'floors dining room ceilings concept close floor plan Open apartment dining Etincidunt eius velit consectetur non adipisci sed. Tempora dolore etincidunt ut adipisci. Voluptatem sed magnam quisquam ut dolorem adipisci. Sit ipsum modi est adipisci ut. Ipsum amet dolor ut voluptatem eius quisquam etincidunt. Dolor ipsum non quisquam. Velit dolorem quaerat neque aliquam ipsum dolore non. Numquam ut est sit non.',2000,389,1,1,1),(35,3,'2020-08-06 05:29:37','Bright Spacious Jr 1 BR |8th Floor | W/D in Unit| 1/2 Month FREE','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',4.48,'house floor plan roof mall dining room appliances ceilings bar Move-in Labore eius quiquia velit. Velit consectetur tempora dolor quiquia quisquam dolore etincidunt. Neque neque non sed neque ipsum. Neque etincidunt non quiquia sit. Dolor aliquam eius modi adipisci sit. Velit dolorem quiquia dolor modi labore tempora est. Eius quiquia est quiquia dolorem dolorem dolor. Dolor sed etincidunt non etincidunt quisquam tempora dolor. Ut ipsum eius quiquia dolorem non sit aliquam. Ut labore magnam velit numquam modi ipsum sed.',2295,133,1,2,1),(36,21,'2020-08-06 05:29:37','1-bedroom apartment + bonus office with tall ceiling & open floor plan','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.86,'campus Covered Perfect Gourmet floors appliances kitchen neighborhood concept Ut eius porro consectetur consectetur labore consectetur. Ipsum quaerat eius sit velit quisquam. Etincidunt sit dolorem sed dolorem dolore quaerat. Ut modi dolore etincidunt numquam porro magnam. Tempora dolor eius quiquia consectetur. Etincidunt adipisci velit quiquia consectetur eius.',2950,895,1,1,1),(37,49,'2020-08-06 05:29:37','Large 2 bedroom apartment in  the Desirable Potrero Hill','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.5,'sky ceilings looking utilities included Perfect floors close Pool roomate Voluptatem numquam voluptatem quaerat velit neque. Numquam ipsum tempora labore labore numquam. Etincidunt eius tempora amet aliquam. Labore porro est adipisci etincidunt modi. Consectetur ipsum aliquam quaerat ipsum modi modi magnam. Labore sit amet sed aliquam est est.',3150,936,2,1,1),(38,17,'2020-08-06 05:29:38','Beautiful 4bd/2ba, victorian, updated, spacious, best location','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',4.77,'ready dining Granite studio walk floors floors Ocean views Pool Magnam consectetur velit sed modi magnam neque voluptatem. Quaerat ut velit quisquam aliquam ipsum sed. Sit consectetur adipisci modi. Sed dolor adipisci sed sed amet. Aliquam est dolor dolore magnam labore modi. Est dolore quisquam modi porro dolore porro. Modi eius voluptatem adipisci amet dolore sit. Amet magnam amet eius eius dolore quisquam.',6299,1800,4,1,1),(39,46,'2020-08-06 05:29:38','Beautiful 4bd/2ba, victorian, updated, spacious, best location','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',1.35,'dining room Pool dining Stainless steel Pool mission ceilings bar New Dolore ipsum voluptatem dolore. Consectetur amet quisquam magnam labore voluptatem voluptatem non. Eius etincidunt porro sit consectetur etincidunt velit voluptatem. Tempora magnam voluptatem tempora aliquam voluptatem magnam dolorem. Adipisci consectetur eius modi dolorem.',6299,1800,4,2,1),(40,20,'2020-08-06 05:29:39','Beautiful 4bd/2ba, victorian, updated, spacious, best location','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.34,'sky appliances Stainless steel amenities Chef floors ceilings bar French doors Ipsum ut quaerat etincidunt quisquam labore ipsum. Non modi velit sed sed labore magnam. Modi numquam eius magnam. Etincidunt porro sed non aliquam etincidunt dolor. Porro voluptatem magnam sed. Neque quiquia magnam dolorem. Est dolor consectetur est. Quaerat quisquam aliquam adipisci labore eius eius. Porro tempora ipsum dolor eius dolore.',6299,1800,4,2,0),(41,44,'2020-08-06 05:29:39','Beautiful Victorian 1bed/1ba, updated, best neighborhood','apartment','sale',1,'San Francisco',94132,'1600 Holloway Ave',3.46,'Pool shopping Gas apartment Natural Stainless steel New Pool appliances Tempora quaerat magnam sit neque est dolorem. Magnam consectetur amet quisquam quiquia magnam. Sit quisquam sed modi modi adipisci. Ipsum amet adipisci ut. Consectetur quaerat voluptatem dolorem magnam aliquam. Dolor modi modi non. Sed quaerat numquam tempora. Magnam quiquia eius dolore porro.',2799,850,1,2,1),(42,30,'2020-08-06 05:29:40','Beautiful 4bd/2ba, victorian, updated, spacious, best location','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.29,'Stainless steel ready mall Stainless steel utilities included Ocean views Vaulted furniture concept Quisquam neque magnam velit. Non etincidunt magnam eius adipisci. Numquam amet non ut consectetur neque. Voluptatem voluptatem dolorem dolor velit. Ut ipsum non eius ipsum dolor velit labore. Labore numquam velit dolor est. Numquam dolore est ut. Consectetur quisquam porro sit sed ipsum.',6299,1800,4,1,1),(43,45,'2020-08-06 05:29:40','Beautiful Victorian 1bed/1ba, updated, best neighborhood','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.75,'Ocean views Covered Hardwood Chef bar floor plan Hardwood Hardwood sinks Quaerat neque modi ipsum quisquam. Labore ut ut consectetur. Non modi consectetur modi. Quiquia magnam magnam quisquam. Labore adipisci velit sed velit quiquia. Est quisquam modi sed velit dolor dolorem porro. Neque tempora neque voluptatem. Magnam consectetur magnam porro. Est amet tempora ipsum. Neque eius aliquam quaerat eius ipsum consectetur quisquam.',2799,850,1,1,1),(44,34,'2020-08-06 05:29:40','Beautiful Victorian 1bed/1ba, updated, best neighborhood','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.61,'Media room Wine cellar mission spa Chef Stainless steel bathroom appliances bar Modi sit magnam tempora adipisci sed est est. Consectetur etincidunt est quisquam quisquam quisquam quaerat. Neque ipsum ut dolore non porro. Etincidunt porro neque porro etincidunt quiquia aliquam. Amet dolor eius non aliquam est magnam dolor. Neque sed consectetur consectetur quaerat porro. Dolorem porro tempora quiquia tempora numquam dolorem. Non dolor non voluptatem ipsum est labore.',2799,850,1,1,1),(45,33,'2020-08-06 05:29:41','Absolutely gorgeous, huge, sunny, luxury 4 bed/2ba, 2floors, best neig','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.25,'looking fireplace Ocean views neighborhood Media room appliances class majors furniture Ut non ipsum sed quaerat dolor dolorem dolore. Eius quaerat aliquam non dolorem. Quaerat dolore ipsum etincidunt. Dolorem dolore velit quisquam sit ut quaerat quiquia. Tempora dolore magnam ipsum ut etincidunt sed labore. Ut quaerat sit dolor magnam eius quisquam. Magnam aliquam ipsum modi magnam ut. Quiquia eius est adipisci est. Numquam eius quaerat ut dolore.',6299,1800,4,1,1),(46,29,'2020-08-06 05:29:41','Super 3bd/1ba, private garage, private deck, spacious, best location!!','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.19,'ceilings Wine cellar studio dining nearby apartment fireplace furnished Move-in Ipsum ut ut dolore amet. Numquam ipsum velit modi labore labore. Numquam ut ut aliquam non. Velit dolor dolore quiquia dolore. Eius numquam tempora tempora sed. Est neque porro numquam labore. Dolor quaerat quaerat dolorem quaerat. Quaerat adipisci quisquam dolor magnam. Porro quaerat consectetur tempora sed velit amet.',3999,1400,3,2,1),(47,44,'2020-08-06 05:29:42','Affordable Studio That\'s Clean, Safe and Nice EZ PARKING (util inc.)','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.98,'location dorm roomate Covered fireplace Hardwood mall Formal French doors Voluptatem quiquia consectetur velit porro quaerat amet velit. Etincidunt aliquam magnam etincidunt amet velit voluptatem. Est voluptatem amet non etincidunt. Consectetur velit eius porro velit consectetur dolorem. Porro dolore dolore velit quisquam dolorem tempora. Neque voluptatem voluptatem sed etincidunt dolore neque dolore. Etincidunt sit quiquia quisquam etincidunt quisquam dolor. Consectetur numquam dolor eius porro sit.',1800,500,3,1,1),(48,10,'2020-08-06 05:29:42','1 Bedroom 1 Bathroom apartment for Rent with a bonus room','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.7,'appliances furniture Pool restaurants appliances concept spa floors room Porro non consectetur dolor modi. Neque labore voluptatem dolor amet eius neque. Sit consectetur tempora quiquia adipisci est quisquam labore. Quiquia labore modi porro quiquia voluptatem labore voluptatem. Consectetur modi quaerat consectetur modi amet. Aliquam numquam quiquia ipsum. Non adipisci dolore labore dolorem porro numquam sed.',3200,800,1,3,1),(49,14,'2020-08-06 05:29:43','~ Beautiful 1 Bed / 1 Bath ~ Nob Hill ~ Prime Location ~','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.39,'SFSU Gourmet roomate Guest Move-in floors ready Vaulted shopping Sit numquam quaerat sed non voluptatem dolorem dolorem. Voluptatem est dolor dolor sed dolor dolorem numquam. Eius non sit eius porro. Dolor modi dolore sed adipisci neque numquam. Quiquia labore modi voluptatem quiquia quiquia. Numquam quaerat voluptatem tempora eius amet est. Amet numquam quiquia voluptatem modi quisquam. Adipisci dolor non quisquam sit quisquam etincidunt adipisci. Consectetur ut adipisci magnam quiquia. Ut velit numquam numquam etincidunt quiquia tempora.',2575,1661,1,1,0),(50,36,'2020-08-06 05:29:43','Sunny 1BR/1BA with views and parking-744 soft','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.91,'ceilings appliances spa shopping appliances Gourmet sinks ready kitchen Labore adipisci dolore non. Neque ut velit ut dolorem voluptatem amet voluptatem. Etincidunt sit amet magnam tempora tempora magnam. Velit numquam dolorem velit voluptatem magnam adipisci quiquia. Modi est labore velit est quisquam. Modi magnam labore non. Dolorem modi velit aliquam tempora. Adipisci tempora quiquia dolor consectetur labore quiquia. Quaerat amet quaerat aliquam.',2800,744,1,3,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'consectetur','ipsum','consecteturipsum@sfsu.edu','$2b$12$BUoua4AbAPlqKrmGGqMSoeYh4iCDtN3djr8Ft0FC7H0Jf9kDnkHNC',1,1,'2020-08-06 05:28:49'),(2,'adipisci','sed','adipiscised@random.com','$2b$12$PT9RXxC7UxXjETBZKBxbAOsnyn7rjzwbT.qd1J1jPP36zcuMjB0IG',1,0,'2020-08-06 05:28:50'),(3,'adipisci','quisquam','adipisciquisquam@random.com','$2b$12$1pnyHWA9QjjA0MGB6tiO3uIlX6i8dJwjZtIIGw25Bjpl5izH..duO',1,0,'2020-08-06 05:28:50'),(4,'labore','ut','laboreut@random.com','$2b$12$aQwkRvc9DL0Vtyo0aDRyOeipJjIJfwEZU2aCwepWfica5qyKKZItu',1,0,'2020-08-06 05:28:51'),(5,'porro','Dolore','porroDolore@sfsu.edu','$2b$12$RymzXVvq8CG3ffwPWmWchecF5wzo.z9TsUUPqi0UfE2nEcfPVo0ti',1,1,'2020-08-06 05:28:51'),(6,'adipisci','Sed','adipisciSed@sfsu.edu','$2b$12$BB6eQT/KwsTAVm/EYP3uhOIygbZtBY7ne7PYmrgxoiLmwNEwyy1Te',1,1,'2020-08-06 05:28:52'),(7,'voluptatem','sed','voluptatemsed@random.com','$2b$12$xYiFjSPRysxEz.uors6DUuKOkNdu6dW8TLTOv/8N8rcfOWFw4AAye',1,0,'2020-08-06 05:28:53'),(8,'dolore','quisquam','dolorequisquam@random.com','$2b$12$mDLtn4ADgyXM.husB0iOT.JkR5NRC24QQtrwXyuPMVs/gqEHMCuA2',1,0,'2020-08-06 05:28:53'),(9,'numquam','Velit','numquamVelit@sfsu.edu','$2b$12$EMVrpv5SC/2JXDUNyDgdmeJuMFHyfDMbp37f14I35xnmRrvLqfhYm',1,1,'2020-08-06 05:28:54'),(10,'eius','dolore','eiusdolore@sfsu.edu','$2b$12$ovq8c61uHBhTITGOn.ODaORrTvE2AKODiswVIEIP1Dv8q6mjeWl7a',1,1,'2020-08-06 05:28:54'),(11,'quaerat','labore','quaeratlabore@sfsu.edu','$2b$12$ZpZUFXDZJI1BxaeONEcy0ezKc/yfMGRgfCxJjNm8YRbfpc4ogcNlW',1,1,'2020-08-06 05:28:55'),(12,'ipsum','Non','ipsumNon@random.com','$2b$12$fOUNwFiv2jgW4dm8DecXleqA0GNdP0pRVHSIN5kZArAhVQRZAE0qO',1,0,'2020-08-06 05:28:56'),(13,'ipsum','ut','ipsumut@sfsu.edu','$2b$12$Q41Pv6qqzrKsLsi2aiTgQe.lToWcs2r7rr65BIzJEdRMbD0L2mDdq',1,1,'2020-08-06 05:28:56'),(14,'non','modi','nonmodi@sfsu.edu','$2b$12$fyOpCVQCaQxSmvut0KJ2W.iuU8ofLbnshHgtjCvNFY0LIYarWJqsq',1,1,'2020-08-06 05:28:57'),(15,'velit','modi','velitmodi@random.com','$2b$12$XslRICttQYadJQrNmQ5ORexjszVCjdBM.c/qFWuJbcLvXQYbBhZTK',1,0,'2020-08-06 05:28:58'),(16,'etincidunt','voluptatem','etinciduntvoluptatem@random.com','$2b$12$RBOjTTYHO0haQC52iYMXJeiuO1CBptvtlJLBMlkshvB90HhyAVTya',1,0,'2020-08-06 05:28:58'),(17,'amet','sit','ametsit@sfsu.edu','$2b$12$IVteLoc7LROspOMJknKqfO8SzyolnJiDbxjJO5BRjh6Dr28MYvYYu',1,1,'2020-08-06 05:28:59'),(18,'quiquia','eius','quiquiaeius@sfsu.edu','$2b$12$tEQVqEk2X0lfgQVNMMZyUu63e9zrvV7OAuSlHYQfHs9fJ7fQzHjBC',1,1,'2020-08-06 05:28:59'),(19,'quaerat','voluptatem','quaeratvoluptatem@sfsu.edu','$2b$12$sNPY6ATRyQsxbV9GaBN5F.OX70gj0i1aSwRgmleD.T4B6O6hHsZH6',1,1,'2020-08-06 05:29:00'),(20,'Porro','aliquam','Porroaliquam@sfsu.edu','$2b$12$TEuHR4TEz4/OspXA0lwG0uLp4r0kqom9FTOT.nupj5ycgA5u5aGsO',1,1,'2020-08-06 05:29:01'),(21,'non','Est','nonEst@random.com','$2b$12$m62X5qeXcEsE7ae/jqinfOXaBQOp.IZc.1uWxLDOTaWE2DODZhxNi',1,0,'2020-08-06 05:29:01'),(22,'sit','magnam','sitmagnam@random.com','$2b$12$T.KCbxz1qE35/DADFSrWEu6Yy9cwDZz9Ok33YefijupROAJK2mhHO',1,0,'2020-08-06 05:29:02'),(23,'Eius','aliquam','Eiusaliquam@random.com','$2b$12$mw1Qt/hxv/8lJQwMmTI8vO6yFSriMHB0XNuFw10OpY.Q92SDp/HWm',1,0,'2020-08-06 05:29:02'),(24,'magnam','Sed','magnamSed@random.com','$2b$12$vKfNVj3spXCOpT4p1j3X2uiFk9SUL7XoiD2NVCtAdMHv9OLuV2FD2',1,0,'2020-08-06 05:29:03'),(25,'aliquam','eius','aliquameius@sfsu.edu','$2b$12$KhM5jozajbbsJoVYnxD6Vu95qz8r680lMCJSy1EqbmsHLOOkX7pey',1,1,'2020-08-06 05:29:04'),(26,'consectetur','numquam','consecteturnumquam@sfsu.edu','$2b$12$FTqh/7xzx22.OwtkMGrls.wN0EdUFhQDAhm0P2H5q705sWNmjE6n.',1,1,'2020-08-06 05:29:04'),(27,'Magnam','numquam','Magnamnumquam@random.com','$2b$12$FXIILrPCGkMsHNOxYyJm3urTJ7yjT1zm6qHO6QidcnMUfhC7zM/7m',1,0,'2020-08-06 05:29:05'),(28,'etincidunt','dolor','etinciduntdolor@random.com','$2b$12$Hfmjsb/kaKyFpBl7x0aknejRQ.YJnBDCWo1YqeysEQ7506OOZLJK2',1,0,'2020-08-06 05:29:05'),(29,'aliquam','adipisci','aliquamadipisci@sfsu.edu','$2b$12$Em.h7mO47G2xN5ZgIkEgwOBj.ZARkvzpAyHxVCGavjl0iqsNaD236',1,1,'2020-08-06 05:29:06'),(30,'Est','consectetur','Estconsectetur@sfsu.edu','$2b$12$9IThrWZpcl8aRs8SVwI3O.nbqChwBBYUV8aQ4Nom1d8s.qa6iB9JG',1,1,'2020-08-06 05:29:07'),(31,'Velit','Consectetur','VelitConsectetur@sfsu.edu','$2b$12$kDb.lZLcuKszZsG7SpTb/.4kncN4Vk0mj9Y213b1/xmrh.MZ4MgRG',1,1,'2020-08-06 05:29:07'),(32,'labore','Quaerat','laboreQuaerat@random.com','$2b$12$WElwwsUyq/frK1EWBp4BTuON9sZMKn3L3YHGwMgs8NQRcervF17Lm',1,0,'2020-08-06 05:29:08'),(33,'modi','non','modinon@sfsu.edu','$2b$12$xlaCX/e5mOINt.6iYc.NoOusXXfpl2i4prFP5/yo8pVwzN51YLaki',1,1,'2020-08-06 05:29:08'),(34,'Quiquia','neque','Quiquianeque@random.com','$2b$12$l3Ag2BqlJnJ2kpwHOY.jJuSSn76xiSJ3OqaQutHqC.3rhxEx6C8Ba',1,0,'2020-08-06 05:29:09'),(35,'Consectetur','Tempora','ConsecteturTempora@sfsu.edu','$2b$12$Y6a960FLPYMq9GMsDXJ7Feki5iUvodaEWIN0LxTjV1FR0duJ5JVUG',1,1,'2020-08-06 05:29:10'),(36,'labore','non','laborenon@sfsu.edu','$2b$12$aHu8GnEAGVxTcbz1oR./9eAI.SEyzl4K2rraoqRzo.TZEe3y5IPfW',1,1,'2020-08-06 05:29:10'),(37,'sit','numquam','sitnumquam@random.com','$2b$12$Q6.v6LxvcI0bbB.R1MljluG5rUyYQ3Bs1ixCz46zAp3H8QiR1sjjO',1,0,'2020-08-06 05:29:11'),(38,'tempora','Etincidunt','temporaEtincidunt@sfsu.edu','$2b$12$vYGX7d3gNuLR2EYUJ6aGKO7tnU8eVarFxbkg9RxLMT0ElaGgleKXe',1,1,'2020-08-06 05:29:11'),(40,'voluptatem','quaerat','voluptatemquaerat@random.com','$2b$12$YffR8uIb8.NlUyknPbwZoOvpWcy81d9CEZdKz.GuDi2NsjfZFSGMC',1,0,'2020-08-06 05:29:13'),(41,'est','eius','esteius@sfsu.edu','$2b$12$.2mW7KaNQQTlpA/76y6.F.rn/QHlR8CanY3o.jkBcfa3O6lmklLC.',1,1,'2020-08-06 05:29:13'),(42,'voluptatem','Adipisci','voluptatemAdipisci@random.com','$2b$12$hgmjZZHvTOklBnSqg8ACsexAdarEzUMlEXZBO1DaBEFKxk.4Iq5cS',1,0,'2020-08-06 05:29:14'),(43,'Dolor','est','Dolorest@sfsu.edu','$2b$12$4UWOA5c6kvtcoFQ2rn7d1ubz8X75yVahJxoRlA5qXH.9kkdHG64Pm',1,1,'2020-08-06 05:29:14'),(44,'Consectetur','quiquia','Consecteturquiquia@sfsu.edu','$2b$12$2Pakx3P0dQRprXWhQl3IQORcxE5mXKs0bZP.j32KkIRaCqThBihV2',1,1,'2020-08-06 05:29:15'),(45,'quisquam','voluptatem','quisquamvoluptatem@random.com','$2b$12$XODPpa2v6l//SftZ..cX0uKAhVBUdyojWRl47LSEW/x.dp2gPLo5K',1,0,'2020-08-06 05:29:16'),(46,'quaerat','Tempora','quaeratTempora@random.com','$2b$12$P4fSRJ.BfcsAuY2lwy9EKOnBQw3Lt2BuPWf7UvfQD1gHj3FK9dlzm',1,0,'2020-08-06 05:29:16'),(47,'tempora','etincidunt','temporaetincidunt@random.com','$2b$12$61IQrX43yAS1K.OfwM2qC.by6Ioa4xu.EmM6351YnsvI0ZANZE73W',1,0,'2020-08-06 05:29:17'),(48,'Non','Tempora','NonTempora@sfsu.edu','$2b$12$jkbQMHEM39Y4FKpTXKSO2eDpPA8ielSQcF7GwWBnlBuUyTYSahCo.',1,1,'2020-08-06 05:29:18'),(49,'quaerat','neque','quaeratneque@sfsu.edu','$2b$12$A2bvgZoXtfaliYbV4kStGu0t54lkIDzlUnp3f8h2lDqlxVaPI1GvC',1,1,'2020-08-06 05:29:18'),(50,'dolor','consectetur','dolorconsectetur@sfsu.edu','$2b$12$lDSKmB40OX7/5h5M.1sVEubujt7RqXetXWADwOYeqE0MoxEyHbunC',1,1,'2020-08-06 05:29:19'),(51,NULL,NULL,'nhildum@mail.sfsu.edu','$2b$12$6g/BiImNrKv0kgPCgQyVdudFnvrN9/5vLjzg2Yo2NVJ0Xg52pqccq',1,NULL,'2020-08-06 06:06:25'),(52,NULL,NULL,'k@sfsu.edu','$2b$12$QXh7SVG5Mk0dX/oG2sH7j.yG7Is4OfmcP1J9I/5JFLZRb.T0vZL8S',1,NULL,'2020-08-06 16:45:25'),(53,NULL,NULL,'k2@sfsu.edu','$2b$12$hjscxJSnaGVbJc93xumKuedzC8voGEHfAGPCIzYXIzW4oYXa8R2aO',1,NULL,'2020-08-06 23:07:32'),(54,NULL,NULL,'k4@sfsu.edu','$2b$12$Bpzf6NGxG8n0vJoq6ZzGTe461rG5.2B99Cf/PsET6CS6Fx649fhoe',1,NULL,'2020-08-06 23:13:55');
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

-- Dump completed on 2020-08-06 20:37:03
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

-- Dump completed on 2020-08-06 20:37:06
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

-- Dump completed on 2020-08-06 20:37:07
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

-- Dump completed on 2020-08-06 20:37:10
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

-- Dump completed on 2020-08-06 20:37:12
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

-- Dump completed on 2020-08-06 20:37:14
