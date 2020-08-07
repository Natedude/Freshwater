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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES (1,5,1,'/static/images/listings/21.ISm2wg31rp1ugc1000000000.jpg'),(2,6,2,'/static/images/listings/pexels-photo-271795.jpeg'),(3,1,3,'/static/images/listings/living-room-couch-interior-room-584399.jpeg'),(4,7,4,'/static/images/listings/pexels-photo-276583.jpeg'),(5,6,5,'/static/images/listings/pexels-photo-3209035.jpeg'),(6,4,6,'/static/images/listings/pexels-photo-1643384.jpeg'),(7,9,7,'/static/images/listings/29.1c514c58e2dc3dd7fb25ade49d4eea3a.jpg'),(8,3,8,'/static/images/listings/44.ef52f153785fcda3281e84c3fc63891f.jpg'),(9,7,9,'/static/images/listings/pexels-photo-3201763.jpeg'),(10,5,10,'/static/images/listings/pexels-photo-404173.jpeg'),(11,5,11,'/static/images/listings/pexels-photo-276724.jpeg'),(12,10,12,'/static/images/listings/80.Twilights_08.jpg'),(13,2,13,'/static/images/listings/30.large-photo3_773_542_s_c1.jpg'),(14,9,14,'/static/images/listings/pexels-photo-275484.jpeg'),(15,7,15,'/static/images/listings/15.ISukjdtf08pz5f1000000000.jpg'),(16,8,16,'/static/images/listings/pexels-photo-1571463.jpeg'),(17,2,17,'/static/images/listings/pexels-photo-271649.jpeg'),(18,4,18,'/static/images/listings/pexels-photo-1563234.jpeg'),(19,4,19,'/static/images/listings/pexels-photo-3639504.jpeg'),(20,6,20,'/static/images/listings/76.Twilights_04_2_1280_700_s_c1.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Listings`
--

LOCK TABLES `Listings` WRITE;
/*!40000 ALTER TABLE `Listings` DISABLE KEYS */;
INSERT INTO `Listings` VALUES (1,5,'2020-08-07 11:36:54','Top floor, 20-foot ceiling, Floor-to-ceiling windows, Extra wide floor','house','rent',0,'Daly City',94132,'160099 Holloway Ave',4.33,'Wine cellar Granite Guest looking Media room New Open class Hardwood Etincidunt eius modi quiquia sed. Sit etincidunt tempora quiquia quaerat aliquam quisquam est. Labore est non ut porro porro. Tempora dolorem dolor dolorem aliquam. Dolorem est sed eius non. Velit modi etincidunt quisquam eius ipsum sed. Quiquia sed quaerat sed ut est.',3100,1334,1,1,1),(2,6,'2020-08-07 11:36:54','Price Reduced! 3 bedroom, Excellent street.','apartment','rent',1,'San Francisco',94131,'1600 Holloway Ave',6.46,'Pool appliances ceilings Perfect Stainless steel roomate appliances Vaulted class Labore quisquam ipsum quaerat dolorem adipisci neque magnam. Adipisci amet modi dolore numquam modi aliquam porro. Ipsum labore ut quaerat eius dolorem est adipisci. Eius tempora ipsum dolorem voluptatem modi. Quiquia voluptatem modi eius magnam neque adipisci ut.',4800,1400,3,1,1),(3,1,'2020-08-07 11:36:55','Spacious and sunny one-bedroom in Theater District','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.3,'ceilings patio walking distance French doors concept ready sky dining room Stainless steel Neque sit dolore numquam sit dolorem. Dolor aliquam magnam dolor tempora porro ut labore. Non sit non dolor sed dolore porro. Consectetur etincidunt labore quiquia voluptatem quisquam est. Sit numquam modi etincidunt dolor etincidunt non est. Dolore sit quaerat eius neque modi.',2450,590,1,1,1),(4,7,'2020-08-07 11:36:55','Third-floor studio in Theater District','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',5.18,'concept Pool Open ready house mission close Gas studio Consectetur consectetur ut etincidunt amet. Eius non tempora quisquam non aliquam. Numquam neque velit dolorem. Quisquam est consectetur aliquam magnam tempora dolore. Quiquia labore eius voluptatem voluptatem consectetur ipsum quiquia.',1850,410,1,1,0),(5,6,'2020-08-07 11:36:55','First-floor studio in Theater District','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',1.43,'Granite mall French doors dining room Granite nearby floors neighborhood concept Numquam neque numquam modi modi aliquam ipsum dolore. Eius sed adipisci modi tempora est non dolorem. Voluptatem eius quaerat amet labore. Ut eius quiquia modi velit. Ut sed sit sit.',1700,300,2,3,1),(6,4,'2020-08-07 11:36:56','HERE AT 1825 MISSION WE PAY ALL OF YOUR UTILITIES WITH A SMILE  :) :)','house','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.21,'Move-in floors countertop Formal Stainless steel Pool Granite concept Vaulted Sit sit modi velit. Quisquam dolorem quaerat quiquia dolorem. Neque etincidunt numquam modi velit. Non sit quiquia ipsum magnam numquam dolore amet. Labore non sed dolor consectetur est eius porro. Etincidunt aliquam eius etincidunt numquam etincidunt. Consectetur etincidunt tempora velit. Neque velit non tempora quiquia adipisci non amet. Adipisci dolorem aliquam modi non adipisci non.',1875,240,2,1,1),(7,9,'2020-08-07 11:36:56','Few genuine and classic conversion loft','room','sale',0,'San Francisco',94132,'1600 Holloway Ave',5.54,'Open kitchen Stainless steel spa shopping ceilings Vaulted dining room Gourmet Numquam numquam dolorem numquam. Tempora quaerat dolor adipisci etincidunt labore. Quaerat dolor ipsum non. Consectetur ipsum consectetur dolor aliquam eius dolor quisquam. Adipisci aliquam quisquam sed dolor dolor dolorem modi. Sit modi non etincidunt modi est tempora modi. Dolorem velit quaerat dolore. Consectetur non non labore modi dolore.',3800,970,1,1,1),(8,3,'2020-08-07 11:36:57','Rarely available spectacular northeast corner','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',2.67,'Wine cellar Hardwood appliances dining room Perfect Pool sinks Pool roof Neque magnam sit voluptatem quisquam consectetur eius. Sed dolore voluptatem numquam dolore porro. Porro est eius voluptatem etincidunt ipsum voluptatem. Sit labore dolorem adipisci quiquia tempora labore. Magnam est ut dolor porro porro consectetur. Sed dolor quiquia non tempora. Quaerat dolor quiquia amet aliquam quiquia sed non. Ut dolorem amet sed.',4000,1072,1,1,1),(9,7,'2020-08-07 11:36:57','Penthouse Apartment - 2 Bed & 2 Bath with Garage Parking','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.38,'looking Vaulted sinks shopping walking distance Stainless steel majors furniture bar Quaerat eius quaerat dolorem magnam. Ut ut quaerat sit. Labore quaerat eius adipisci. Sed porro dolorem quiquia quiquia quisquam quisquam. Est voluptatem quisquam etincidunt dolor. Voluptatem quisquam consectetur ipsum adipisci tempora adipisci.',3395,1319,2,2,0),(10,5,'2020-08-07 11:36:57','Nice Live/Work Space','house','sale',1,'San Francisco',94132,'1600 Holloway Ave',1.42,'Media room Wine cellar walking distance appliances room Chef Vaulted shopping Dual Porro magnam dolor aliquam. Amet velit labore dolorem non tempora. Dolorem amet dolorem velit ipsum etincidunt. Dolorem eius aliquam est velit neque consectetur. Velit sit non quaerat dolore est eius. Voluptatem ipsum labore consectetur modi ut numquam. Adipisci quaerat consectetur modi sed sit.',3100,1600,1,2,1),(11,5,'2020-08-07 11:36:58','The North East corner with North Bay & Alcatraz','house','rent',1,'San Francisco',94132,'1600 Holloway Ave',6.9,'spa Covered looking amenities appliances roof Stainless steel appliances Granite Consectetur consectetur voluptatem dolore eius aliquam. Neque amet est quiquia eius sed eius. Est quisquam quisquam etincidunt etincidunt. Eius quisquam dolore neque. Dolore ut magnam est dolor sit. Adipisci adipisci sit ut non dolor ut. Modi eius magnam sed non. Quisquam etincidunt dolore dolor modi adipisci eius dolor. Numquam amet etincidunt tempora velit velit. Voluptatem modi non amet sed.',3800,1224,1,2,1),(12,10,'2020-08-07 11:36:58','Rare Conversion Loft Gem in Historic Lighthouse','room','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.19,'concept Formal fireplace Chef Hardwood Hardwood Perfect Covered roomate Velit dolor aliquam aliquam adipisci tempora ut. Tempora numquam magnam dolorem dolore aliquam modi. Etincidunt quiquia non dolore dolore. Consectetur non ipsum eius etincidunt eius etincidunt tempora. Ipsum neque tempora neque eius sit dolor amet. Voluptatem tempora modi ipsum. Voluptatem magnam quaerat consectetur ut. Ut aliquam dolor quaerat.',3700,1056,1,2,1),(13,2,'2020-08-07 11:36:59','Downtown City skyline and Bay Bridge through','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',6.59,'neighborhood countertop dorm spa Vaulted French doors restaurants shopping Open Sit eius eius tempora. Modi dolorem neque aliquam. Ipsum eius velit tempora etincidunt etincidunt. Adipisci quisquam sit voluptatem porro dolorem velit. Quaerat numquam eius quaerat etincidunt. Neque etincidunt etincidunt quaerat etincidunt adipisci dolore. Non sit neque dolore dolor porro dolore dolor. Modi ipsum etincidunt quaerat non labore quisquam. Numquam magnam consectetur dolorem porro consectetur eius numquam.',3650,819,1,1,1),(14,9,'2020-08-07 11:36:59','LOVELY, BEAUTIFUL 1 BED 1 BATH FOR RENT','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',1.25,'SFSU kitchen Wine cellar appliances looking kitchen mission bathroom floor plan Est modi non velit neque tempora quaerat ipsum. Voluptatem numquam adipisci porro magnam sit numquam. Neque dolorem aliquam ipsum velit est. Sed sit dolorem etincidunt magnam consectetur dolore dolor. Amet eius neque porro ut. Sed non dolor modi. Magnam consectetur sit ut dolore velit.',2000,781,1,1,1),(15,7,'2020-08-07 11:37:00','The Beacon, 2bd/2ba in Mission Bay','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',3.52,'Natural class Perfect Open walking distance fireplace looking furniture Formal Velit eius dolore sed. Aliquam numquam modi aliquam quaerat dolore dolore. Dolore velit quaerat adipisci ipsum etincidunt. Numquam velit ipsum tempora magnam velit porro. Quisquam porro velit sit neque sed consectetur. Magnam sed eius dolore consectetur ut quiquia ut. Est quaerat magnam quaerat dolore. Aliquam modi modi neque dolor amet magnam. Velit voluptatem quaerat est velit est non est.',4560,1100,2,1,0),(16,8,'2020-08-07 11:37:00','This Edwardian, two-story single-family home','room','rent',1,'San Francisco',94132,'1600 Holloway Ave',5.48,'bar furniture campus Open sinks looking floors roomate Granite Est etincidunt dolore etincidunt velit labore quisquam. Dolor eius est sed sed numquam sit sit. Consectetur consectetur est eius etincidunt neque eius neque. Tempora ipsum tempora ut. Ipsum non dolor numquam. Quaerat quisquam sed velit. Consectetur dolor dolor eius. Est est ipsum quiquia dolorem.',2000,1010,1,1,1),(17,2,'2020-08-07 11:37:00','Ask How To Get 1 Month Free A This Beautiful El Sobrante Community','house','rent',0,'San Francisco',94132,'1600 Holloway Ave',5.14,'floor plan kitchen sky apartment amenities concept looking Open Stainless steel Quaerat amet quaerat eius aliquam modi magnam. Labore velit velit adipisci numquam porro adipisci modi. Eius etincidunt quiquia aliquam aliquam. Porro numquam sed quaerat etincidunt. Voluptatem quisquam dolore dolor. Dolor eius quisquam numquam adipisci modi porro consectetur. Velit est dolor etincidunt modi adipisci eius. Aliquam dolor ut tempora non dolor tempora est.',2595,1000,2,1,1),(18,4,'2020-08-07 11:37:01','Clean One bedroom, One bath home','apartment','rent',0,'San Francisco',94132,'1600 Holloway Ave',0.56,'bathroom location dorm Chef amenities mission ceilings restaurants bedroom Porro magnam amet labore ipsum. Velit non voluptatem magnam porro tempora voluptatem. Amet voluptatem ut ut. Modi tempora quaerat amet. Velit sed voluptatem neque dolore est ut quisquam. Porro quiquia ut ut quisquam quisquam. Tempora est velit magnam ut. Magnam adipisci modi dolore etincidunt dolor quisquam magnam. Modi ipsum porro voluptatem adipisci. Sit labore adipisci tempora quaerat quisquam sed.',2000,1075,1,3,0),(19,4,'2020-08-07 11:37:01','FULLY Furnished Modern Condo - Master bedroom','apartment','sale',0,'San Francisco',94132,'1600 Holloway Ave',6.85,'furnished roof sky kitchen ceilings patio dining room Stainless steel mall Non dolor amet dolore. Sit tempora non modi. Est adipisci aliquam dolorem magnam quisquam neque neque. Neque ipsum labore ut quisquam velit porro quisquam. Labore velit eius magnam quiquia adipisci.',1150,781,1,3,1),(20,6,'2020-08-07 11:37:02','Pet Friendly Studio near Hayes Valley and Alamo Square Park','room','sale',1,'San Francisco',94132,'1600 Holloway Ave',0.32,'kitchen Granite fireplace amenities Hardwood floor plan Wine cellar furnished dorm Dolor est magnam consectetur quaerat porro aliquam quiquia. Dolore ut etincidunt tempora adipisci tempora quisquam voluptatem. Numquam numquam amet neque. Ipsum dolor magnam consectetur. Numquam consectetur aliquam labore.',1895,100,2,2,1);
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
  `fk_listing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,'nhildum@mail.sfsu.edu','Velit132@sfsu.edu','test test test','2020-08-07 12:18:12',0,1),(2,'nhildum@mail.sfsu.edu','Velit132@sfsu.edu','test message 2\r\n1234567890987654321\r\nONE LOVE','2020-08-07 13:10:46',0,1),(3,'k@sfsu.edu','k@sfsu.edu','WOW beautiful','2020-08-07 16:46:05',0,25);
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
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `sfsu_confirmed` int(11) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`active` in (0,1))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Quisquam292@random.com','$2b$12$hy0G3WaW2azUsJM9TRPfWOcRjxU2J4odMXYqiVDMqqvitedWx.7iC',1,0,'2020-08-07 11:36:48'),(2,'dolorem492@sfsu.edu','$2b$12$Wpminem1kXN4KKzvCudpo.bwbnvHppdQhFFXUSulg.ALxUpSIS5yK',1,1,'2020-08-07 11:36:48'),(3,'Sed313@random.com','$2b$12$StMCUw3mNqkid3aGSVuM6Odn8NEuzNylFEN3gqf3iHSKFfsE2zPPO',1,0,'2020-08-07 11:36:49'),(4,'labore134@sfsu.edu','$2b$12$UnV.Z1J3lnzItJsQl4.QCuohAyIZ6mq9bZBiM6SUCRr8P96A6F/ru',1,1,'2020-08-07 11:36:49'),(5,'Velit132@sfsu.edu','$2b$12$fzr.SqzWp0LvolAYwFHdV.Shk5u3N2T1/L9uF7RXQGvPaCsqJA.Zi',1,1,'2020-08-07 11:36:50'),(6,'sed641@sfsu.edu','$2b$12$uza4kAx/9jeSC5jFFM2R1.jc1YU9Q4a68plHCZtCM1f2.oVBNPb26',1,1,'2020-08-07 11:36:50'),(7,'est421@sfsu.edu','$2b$12$EpRElVy9w1ZXRHrbzuPgze20xQAizOu4NbKuCIvXIW6CeM26dHba.',1,1,'2020-08-07 11:36:51'),(8,'dolorem412@sfsu.edu','$2b$12$9LQDBQdNB2xmBDKYShMjwOCI9BEXZ.Xo/tHp.YYOarM02ci5gev6i',1,1,'2020-08-07 11:36:52'),(9,'amet491@random.com','$2b$12$TWlnZXpt5FwPGj7aVsDOEeb/1q8k2VciC7bAKcduYqRYPx.NmGEy6',1,0,'2020-08-07 11:36:52'),(10,'Tempora101@random.com','$2b$12$le1jhKCmSwRtd.7ImV6AYui8pwI6Pa/OwoAmlqiF6sjxY/FQ9AU9u',1,0,'2020-08-07 11:36:53'),(11,'nhildum@mail.sfsu.edu','$2b$12$JmBRz/nLFI2QRcc6ZRaaFeeXoCQs9BouBxElO1r4.syiiec2EaU1y',1,NULL,'2020-08-07 12:16:01'),(12,'k@sfsu.edu','$2b$12$eRCWbtBQc3i1xeGWeubl8Oif2xpRUfwVZeIhycBM0K4MJIoRWpHQq',1,NULL,'2020-08-07 12:33:11'),(13,'luis@mail.sfsu.edu','$2b$12$25IreUj.CFTVY0yy77Gud.36pI.KuMrwzD6TEoUe71Feze.4YZ5Sy',1,NULL,'2020-08-07 15:54:04'),(14,'ivy@mail.sfsu','$2b$12$TnQYWypTl0DXmQPJqxBeWeNgqx9r1/n6pxaifkGF9.6cottdsLv1q',1,NULL,'2020-08-07 18:14:21');
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

-- Dump completed on 2020-08-07 11:21:42
