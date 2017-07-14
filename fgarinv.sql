-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: symfony
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `BatchJob`
--

DROP TABLE IF EXISTS `BatchJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `baseEntity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AF3CBF045E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJob`
--

LOCK TABLES `BatchJob` WRITE;
/*!40000 ALTER TABLE `BatchJob` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BatchJobQueryField`
--

DROP TABLE IF EXISTS `BatchJobQueryField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJobQueryField` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dynamic` tinyint(1) NOT NULL,
  `batchJob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6118E78CABE62C64` (`batchJob_id`),
  CONSTRAINT `FK_6118E78CABE62C64` FOREIGN KEY (`batchJob_id`) REFERENCES `BatchJob` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJobQueryField`
--

LOCK TABLES `BatchJobQueryField` WRITE;
/*!40000 ALTER TABLE `BatchJobQueryField` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJobQueryField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BatchJobUpdateField`
--

DROP TABLE IF EXISTS `BatchJobUpdateField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJobUpdateField` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dynamic` tinyint(1) NOT NULL,
  `batchJob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E1ADA7DFABE62C64` (`batchJob_id`),
  CONSTRAINT `FK_E1ADA7DFABE62C64` FOREIGN KEY (`batchJob_id`) REFERENCES `BatchJob` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJobUpdateField`
--

LOCK TABLES `BatchJobUpdateField` WRITE;
/*!40000 ALTER TABLE `BatchJobUpdateField` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJobUpdateField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CachedImage`
--

DROP TABLE IF EXISTS `CachedImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CachedImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originalId` int(11) NOT NULL,
  `originalType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cacheFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CachedImage`
--

LOCK TABLES `CachedImage` WRITE;
/*!40000 ALTER TABLE `CachedImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `CachedImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CronLogger`
--

DROP TABLE IF EXISTS `CronLogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CronLogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastRunDate` datetime NOT NULL,
  `cronjob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cronjob` (`cronjob`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CronLogger`
--

LOCK TABLES `CronLogger` WRITE;
/*!40000 ALTER TABLE `CronLogger` DISABLE KEYS */;
INSERT INTO `CronLogger` VALUES (1,'2017-06-02 16:44:52','partkeepr:cron:versioncheck'),(2,'2017-06-02 16:44:54','partkeepr:cron:synctips'),(3,'2017-06-02 16:44:54','partkeepr:cron:create-statistic-snapshot');
/*!40000 ALTER TABLE `CronLogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distributor`
--

DROP TABLE IF EXISTS `Distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `skuurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2559D8A65E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distributor`
--

LOCK TABLES `Distributor` WRITE;
/*!40000 ALTER TABLE `Distributor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOSUser`
--

DROP TABLE IF EXISTS `FOSUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOSUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37EF34F492FC23A8` (`username_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOSUser`
--

LOCK TABLES `FOSUser` WRITE;
/*!40000 ALTER TABLE `FOSUser` DISABLE KEYS */;
INSERT INTO `FOSUser` VALUES (1,'root','root',1,'6x64n4emucg0sokc4wssocskos0wcc','LMDeCzhbRnrHfrZgEb9dM9PmvEEa1t8/DFQj0/oBItadLIAzjx0Xwx/0M8MLU3zeji7EMONAmHTKNvU/I3Zv8w==',NULL,0,0,NULL,NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}',0,NULL,'bob@aol.com','bob@aol.com');
/*!40000 ALTER TABLE `FOSUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Footprint`
--

DROP TABLE IF EXISTS `Footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7CF324945E237E06` (`name`),
  KEY `IDX_7CF3249412469DE2` (`category_id`),
  CONSTRAINT `FK_7CF3249412469DE2` FOREIGN KEY (`category_id`) REFERENCES `FootprintCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Footprint`
--

LOCK TABLES `Footprint` WRITE;
/*!40000 ALTER TABLE `Footprint` DISABLE KEYS */;
INSERT INTO `Footprint` VALUES (1,3,'CBGA-32','32-Lead Ceramic Ball Grid Array'),(2,5,'FCBGA-576','576-Ball Ball Grid Array, Thermally Enhanced'),(3,7,'PBGA-119','119-Ball Plastic Ball Grid Array'),(4,9,'PBGA-169','169-Ball Plastic Ball Grid Array'),(5,11,'PBGA-225','225-Ball Plastic a Ball Grid Array'),(6,13,'PBGA-260','260-Ball Plastic Ball Grid Array'),(7,15,'PBGA-297','297-Ball Plastic Ball Grid Array'),(8,17,'PBGA-304','304-Lead Plastic Ball Grid Array'),(9,19,'PBGA-316','316-Lead Plastic Ball Grid Array'),(10,21,'PBGA-324','324-Ball Plastic Ball Grid Array'),(11,23,'PBGA-385','385-Lead Ball Grid Array'),(12,25,'PBGA-400','400-Ball Plastic Ball Grid Array'),(13,27,'PBGA-484','484-Ball Plastic Ball Grid Array'),(14,29,'PBGA-625','625-Ball Plastic Ball Grid Array'),(15,31,'PBGA-676','676-Ball Plastic Ball Grid Array'),(16,33,'SBGA-256','256-Ball Ball Grid Array, Thermally Enhanced'),(17,35,'SBGA-304','304-Ball Ball Grid Array, Thermally Enhanced'),(18,37,'SBGA-432','432-Ball Ball Grid Array, Thermally Enhanced'),(19,39,'CerDIP-8','8-Lead Ceramic Dual In-Line Package'),(20,41,'CerDIP-14','14-Lead Ceramic Dual In-Line Package'),(21,43,'CerDIP-16','16-Lead Ceramic Dual In-Line Package'),(22,45,'CerDIP-18','18-Lead Ceramic Dual In-Line Package'),(23,47,'CerDIP-20','20-Lead Ceramic Dual In-Line Package'),(24,49,'CerDIP-24 Narrow','24-Lead Ceramic Dual In-Line Package - Narrow Body'),(25,51,'CerDIP-24 Wide','24-Lead Ceramic Dual In-Line Package - Wide Body'),(26,53,'CerDIP-28','28-Lead Ceramic Dual In-Line Package'),(27,55,'CerDIP-40','40-Lead Ceramic Dual In-Line Package'),(28,57,'PDIP-8','8-Lead Plastic Dual In-Line Package'),(29,59,'PDIP-14','14-Lead Plastic Dual In-Line Package'),(30,61,'PDIP-16','16-Lead Plastic Dual In-Line Package'),(31,63,'PDIP-18','18-Lead Plastic Dual In-Line Package'),(32,65,'PDIP-20','20-Lead Plastic Dual In-Line Package'),(33,67,'PDIP-24','24-Lead Plastic Dual In-Line Package'),(34,69,'PDIP-28 Narrow','28-Lead Plastic Dual In-Line Package, Narrow Body'),(35,71,'PDIP-28 Wide','28-Lead Plastic Dual In-Line Package, Wide Body'),(36,NULL,'SOIC-N-EP-8','8-Lead Standard Small Outline Package, with Expose Pad');
/*!40000 ALTER TABLE `Footprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintAttachment`
--

DROP TABLE IF EXISTS `FootprintAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7B7388A151364C98` (`footprint_id`),
  CONSTRAINT `FK_7B7388A151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintAttachment`
--

LOCK TABLES `FootprintAttachment` WRITE;
/*!40000 ALTER TABLE `FootprintAttachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `FootprintAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintCategory`
--

DROP TABLE IF EXISTS `FootprintCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_C026BA6A727ACA70` (`parent_id`),
  KEY `IDX_C026BA6ADA439252` (`lft`),
  KEY `IDX_C026BA6AD5E02D69` (`rgt`),
  CONSTRAINT `FK_C026BA6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `FootprintCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintCategory`
--

LOCK TABLES `FootprintCategory` WRITE;
/*!40000 ALTER TABLE `FootprintCategory` DISABLE KEYS */;
INSERT INTO `FootprintCategory` VALUES (1,NULL,1,142,0,1,'Root Category',NULL,'Root Category'),(2,1,2,5,1,1,'BGA',NULL,'Root Category ➤ BGA'),(3,2,3,4,2,1,'CBGA',NULL,'Root Category ➤ BGA ➤ CBGA'),(4,1,6,9,1,1,'BGA',NULL,'Root Category ➤ BGA'),(5,4,7,8,2,1,'FCBGA',NULL,'Root Category ➤ BGA ➤ FCBGA'),(6,1,10,13,1,1,'BGA',NULL,'Root Category ➤ BGA'),(7,6,11,12,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(8,1,14,17,1,1,'BGA',NULL,'Root Category ➤ BGA'),(9,8,15,16,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(10,1,18,21,1,1,'BGA',NULL,'Root Category ➤ BGA'),(11,10,19,20,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(12,1,22,25,1,1,'BGA',NULL,'Root Category ➤ BGA'),(13,12,23,24,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(14,1,26,29,1,1,'BGA',NULL,'Root Category ➤ BGA'),(15,14,27,28,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(16,1,30,33,1,1,'BGA',NULL,'Root Category ➤ BGA'),(17,16,31,32,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(18,1,34,37,1,1,'BGA',NULL,'Root Category ➤ BGA'),(19,18,35,36,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(20,1,38,41,1,1,'BGA',NULL,'Root Category ➤ BGA'),(21,20,39,40,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(22,1,42,45,1,1,'BGA',NULL,'Root Category ➤ BGA'),(23,22,43,44,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(24,1,46,49,1,1,'BGA',NULL,'Root Category ➤ BGA'),(25,24,47,48,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(26,1,50,53,1,1,'BGA',NULL,'Root Category ➤ BGA'),(27,26,51,52,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(28,1,54,57,1,1,'BGA',NULL,'Root Category ➤ BGA'),(29,28,55,56,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(30,1,58,61,1,1,'BGA',NULL,'Root Category ➤ BGA'),(31,30,59,60,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(32,1,62,65,1,1,'BGA',NULL,'Root Category ➤ BGA'),(33,32,63,64,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(34,1,66,69,1,1,'BGA',NULL,'Root Category ➤ BGA'),(35,34,67,68,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(36,1,70,73,1,1,'BGA',NULL,'Root Category ➤ BGA'),(37,36,71,72,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(38,1,74,77,1,1,'DIP',NULL,'Root Category ➤ DIP'),(39,38,75,76,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(40,1,78,81,1,1,'DIP',NULL,'Root Category ➤ DIP'),(41,40,79,80,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(42,1,82,85,1,1,'DIP',NULL,'Root Category ➤ DIP'),(43,42,83,84,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(44,1,86,89,1,1,'DIP',NULL,'Root Category ➤ DIP'),(45,44,87,88,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(46,1,90,93,1,1,'DIP',NULL,'Root Category ➤ DIP'),(47,46,91,92,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(48,1,94,97,1,1,'DIP',NULL,'Root Category ➤ DIP'),(49,48,95,96,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(50,1,98,101,1,1,'DIP',NULL,'Root Category ➤ DIP'),(51,50,99,100,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(52,1,102,105,1,1,'DIP',NULL,'Root Category ➤ DIP'),(53,52,103,104,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(54,1,106,109,1,1,'DIP',NULL,'Root Category ➤ DIP'),(55,54,107,108,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(56,1,110,113,1,1,'DIP',NULL,'Root Category ➤ DIP'),(57,56,111,112,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(58,1,114,117,1,1,'DIP',NULL,'Root Category ➤ DIP'),(59,58,115,116,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(60,1,118,121,1,1,'DIP',NULL,'Root Category ➤ DIP'),(61,60,119,120,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(62,1,122,125,1,1,'DIP',NULL,'Root Category ➤ DIP'),(63,62,123,124,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(64,1,126,129,1,1,'DIP',NULL,'Root Category ➤ DIP'),(65,64,127,128,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(66,1,130,133,1,1,'DIP',NULL,'Root Category ➤ DIP'),(67,66,131,132,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(68,1,134,137,1,1,'DIP',NULL,'Root Category ➤ DIP'),(69,68,135,136,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(70,1,138,141,1,1,'DIP',NULL,'Root Category ➤ DIP'),(71,70,139,140,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP');
/*!40000 ALTER TABLE `FootprintCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintImage`
--

DROP TABLE IF EXISTS `FootprintImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3B22699151364C98` (`footprint_id`),
  CONSTRAINT `FK_3B22699151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintImage`
--

LOCK TABLES `FootprintImage` WRITE;
/*!40000 ALTER TABLE `FootprintImage` DISABLE KEYS */;
INSERT INTO `FootprintImage` VALUES (1,1,'footprint','851a9644-47dc-11e7-bb78-080027955c00','CBGA-32.png','image/png',23365,'png',NULL,'2017-06-02 16:43:30'),(2,2,'footprint','851ff044-47dc-11e7-89f2-080027955c00','FCBGA-576.png','image/png',47861,'png',NULL,'2017-06-02 16:43:30'),(3,3,'footprint','85205048-47dc-11e7-96c0-080027955c00','PBGA-119.png','image/png',32537,'png',NULL,'2017-06-02 16:43:30'),(4,4,'footprint','8520d59a-47dc-11e7-a418-080027955c00','PBGA-169.png','image/png',36699,'png',NULL,'2017-06-02 16:43:30'),(5,5,'footprint','852130c6-47dc-11e7-9f58-080027955c00','PBGA-225.png','image/png',39366,'png',NULL,'2017-06-02 16:43:30'),(6,6,'footprint','8522308e-47dc-11e7-a8b9-080027955c00','PBGA-260.png','image/png',61202,'png',NULL,'2017-06-02 16:43:31'),(7,7,'footprint','8522bde2-47dc-11e7-8d5e-080027955c00','PBGA-297.png','image/png',68013,'png',NULL,'2017-06-02 16:43:31'),(8,8,'footprint','85233e7a-47dc-11e7-8a99-080027955c00','PBGA-304.png','image/png',55833,'png',NULL,'2017-06-02 16:43:31'),(9,9,'footprint','8523e8a2-47dc-11e7-9a6b-080027955c00','PBGA-316.png','image/png',55996,'png',NULL,'2017-06-02 16:43:31'),(10,10,'footprint','85244a86-47dc-11e7-9a5d-080027955c00','PBGA-324.png','image/png',44882,'png',NULL,'2017-06-02 16:43:31'),(11,11,'footprint','8524f332-47dc-11e7-991a-080027955c00','PBGA-385.png','image/png',35146,'png',NULL,'2017-06-02 16:43:31'),(12,12,'footprint','852541a2-47dc-11e7-9f12-080027955c00','PBGA-400.png','image/png',67933,'png',NULL,'2017-06-02 16:43:31'),(13,13,'footprint','85259aee-47dc-11e7-8f58-080027955c00','PBGA-484.png','image/png',49851,'png',NULL,'2017-06-02 16:43:31'),(14,14,'footprint','8525ea08-47dc-11e7-8ca8-080027955c00','PBGA-625.png','image/png',65307,'png',NULL,'2017-06-02 16:43:31'),(15,15,'footprint','85265e48-47dc-11e7-af2b-080027955c00','PBGA-676.png','image/png',54708,'png',NULL,'2017-06-02 16:43:31'),(16,16,'footprint','8526bc1c-47dc-11e7-a71a-080027955c00','SBGA-256.png','image/png',48636,'png',NULL,'2017-06-02 16:43:31'),(17,17,'footprint','8527500a-47dc-11e7-bc5e-080027955c00','SBGA-304.png','image/png',51944,'png',NULL,'2017-06-02 16:43:31'),(18,18,'footprint','8527abd6-47dc-11e7-868b-080027955c00','SBGA-432.png','image/png',63247,'png',NULL,'2017-06-02 16:43:31'),(19,19,'footprint','85284b36-47dc-11e7-b393-080027955c00','CERDIP-8.png','image/png',13544,'png',NULL,'2017-06-02 16:43:31'),(20,20,'footprint','8528aae0-47dc-11e7-84ae-080027955c00','CERDIP-14.png','image/png',14226,'png',NULL,'2017-06-02 16:43:31'),(21,21,'footprint','85290b2a-47dc-11e7-b0e1-080027955c00','CERDIP-16.png','image/png',14576,'png',NULL,'2017-06-02 16:43:31'),(22,22,'footprint','85297006-47dc-11e7-9890-080027955c00','CERDIP-18.png','image/png',9831,'png',NULL,'2017-06-02 16:43:31'),(23,23,'footprint','8529ad64-47dc-11e7-9105-080027955c00','CERDIP-20.png','image/png',10209,'png',NULL,'2017-06-02 16:43:31'),(24,24,'footprint','852a057a-47dc-11e7-ac03-080027955c00','CERDIP-24-N.png','image/png',11582,'png',NULL,'2017-06-02 16:43:31'),(25,25,'footprint','852a6c5e-47dc-11e7-a1a9-080027955c00','CERDIP-24-W.png','image/png',12407,'png',NULL,'2017-06-02 16:43:31'),(26,26,'footprint','852acef6-47dc-11e7-86f6-080027955c00','CERDIP-28.png','image/png',12233,'png',NULL,'2017-06-02 16:43:31'),(27,27,'footprint','852b3864-47dc-11e7-95b6-080027955c00','CERDIP-40.png','image/png',12421,'png',NULL,'2017-06-02 16:43:31'),(28,28,'footprint','852b9c00-47dc-11e7-a66c-080027955c00','PDIP-8.png','image/png',13537,'png',NULL,'2017-06-02 16:43:31'),(29,29,'footprint','852bfe8e-47dc-11e7-9b26-080027955c00','PDIP-14.png','image/png',13779,'png',NULL,'2017-06-02 16:43:31'),(30,30,'footprint','852c684c-47dc-11e7-8851-080027955c00','PDIP-16.png','image/png',18305,'png',NULL,'2017-06-02 16:43:31'),(31,31,'footprint','852ce966-47dc-11e7-8140-080027955c00','PDIP-18.png','image/png',14893,'png',NULL,'2017-06-02 16:43:31'),(32,32,'footprint','852d4afa-47dc-11e7-af8e-080027955c00','PDIP-20.png','image/png',14429,'png',NULL,'2017-06-02 16:43:31'),(33,33,'footprint','852dbf94-47dc-11e7-ad92-080027955c00','PDIP-24.png','image/png',14647,'png',NULL,'2017-06-02 16:43:31'),(34,34,'footprint','852e0346-47dc-11e7-ba76-080027955c00','PDIP-28-N.png','image/png',18703,'png',NULL,'2017-06-02 16:43:31'),(35,35,'footprint','852e6f84-47dc-11e7-b50c-080027955c00','PDIP-28-W.png','image/png',15728,'png',NULL,'2017-06-02 16:43:31');
/*!40000 ALTER TABLE `FootprintImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridPreset`
--

DROP TABLE IF EXISTS `GridPreset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridPreset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_grid_unique` (`grid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridPreset`
--

LOCK TABLES `GridPreset` WRITE;
/*!40000 ALTER TABLE `GridPreset` DISABLE KEYS */;
/*!40000 ALTER TABLE `GridPreset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPreset`
--

DROP TABLE IF EXISTS `ImportPreset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPreset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseEntity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_entity_unique` (`baseEntity`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPreset`
--

LOCK TABLES `ImportPreset` WRITE;
/*!40000 ALTER TABLE `ImportPreset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPreset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_253B3D245E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES (1,'Integrated Circuit Designs',NULL,NULL,NULL,NULL,NULL,NULL),(2,'ACTEL',NULL,NULL,NULL,NULL,NULL,NULL),(3,'ALTINC',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Aeroflex',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Agilent Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(6,'AKM Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Alesis Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(8,'ALi (Acer Laboratories Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Allayer Communications',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Allegro Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Alliance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alpha Industries',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Alpha Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Altera',NULL,NULL,NULL,NULL,NULL,NULL),(15,'Advanced Micro Devices (AMD)',NULL,NULL,NULL,NULL,NULL,NULL),(16,'American Microsystems, Inc. (AMI)',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Amic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Amphus',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Anachip Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(20,'ANADIGICs',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Analog Devices',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Analog Systems',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Anchor Chips',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Apex Microtechnology',NULL,NULL,NULL,NULL,NULL,NULL),(25,'ARK Logic',NULL,NULL,NULL,NULL,NULL,NULL),(26,'ASD',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Astec Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(28,'ATC (Analog Technologie)',NULL,NULL,NULL,NULL,NULL,NULL),(29,'ATecoM',NULL,NULL,NULL,NULL,NULL,NULL),(30,'ATI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(31,'Atmel',NULL,NULL,NULL,NULL,NULL,NULL),(32,'AT&T',NULL,NULL,NULL,NULL,NULL,NULL),(33,'AudioCodes',NULL,NULL,NULL,NULL,NULL,NULL),(34,'Aura Vision',NULL,NULL,NULL,NULL,NULL,NULL),(35,'Aureal',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Austin Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Avance Logic',NULL,NULL,NULL,NULL,NULL,NULL),(38,'Bel Fuse',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Benchmarq Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(40,'BI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Bowmar/White',NULL,NULL,NULL,NULL,NULL,NULL),(42,'Brightflash',NULL,NULL,NULL,NULL,NULL,NULL),(43,'Broadcom',NULL,NULL,NULL,NULL,NULL,NULL),(44,'Brooktree(now Rockwell)',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Burr Brown',NULL,NULL,NULL,NULL,NULL,NULL),(46,'California Micro Devices',NULL,NULL,NULL,NULL,NULL,NULL),(47,'Calogic',NULL,NULL,NULL,NULL,NULL,NULL),(48,'Catalyst Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(49,'Centon Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(50,'Ceramate Technical',NULL,NULL,NULL,NULL,NULL,NULL),(51,'Cherry Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(52,'Chipcon AS',NULL,NULL,NULL,NULL,NULL,NULL),(53,'Chips',NULL,NULL,NULL,NULL,NULL,NULL),(54,'Chrontel',NULL,NULL,NULL,NULL,NULL,NULL),(55,'Cirrus Logic',NULL,NULL,NULL,NULL,NULL,NULL),(56,'ComCore Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(57,'Conexant',NULL,NULL,NULL,NULL,NULL,NULL),(58,'Cosmo Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(59,'Chrystal',NULL,NULL,NULL,NULL,NULL,NULL),(60,'Cygnal',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Cypress Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(62,'Cyrix Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(63,'Daewoo Electronics Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(64,'Dallas Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(65,'Davicom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(66,'Data Delay Devices',NULL,NULL,NULL,NULL,NULL,NULL),(67,'Diamond Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(68,'DIOTEC',NULL,NULL,NULL,NULL,NULL,NULL),(69,'DTC Data Technology',NULL,NULL,NULL,NULL,NULL,NULL),(70,'DVDO',NULL,NULL,NULL,NULL,NULL,NULL),(71,'EG&G',NULL,NULL,NULL,NULL,NULL,NULL),(72,'Elan Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(73,'ELANTEC',NULL,NULL,NULL,NULL,NULL,NULL),(74,'Electronic Arrays',NULL,NULL,NULL,NULL,NULL,NULL),(75,'Elite Flash Storage Technology Inc. (EFST)',NULL,NULL,NULL,NULL,NULL,NULL),(76,'EM Microelectronik - Marin',NULL,NULL,NULL,NULL,NULL,NULL),(77,'Enhanced Memory Systems',NULL,NULL,NULL,NULL,NULL,NULL),(78,'Ensoniq Corp',NULL,NULL,NULL,NULL,NULL,NULL),(79,'EON Silicon Devices',NULL,NULL,NULL,NULL,NULL,NULL),(80,'Epson',NULL,NULL,NULL,NULL,NULL,NULL),(81,'Ericsson',NULL,NULL,NULL,NULL,NULL,NULL),(82,'ESS Technology',NULL,NULL,NULL,NULL,NULL,NULL),(83,'Electronic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(84,'EXAR',NULL,NULL,NULL,NULL,NULL,NULL),(85,'Excel Semiconductor Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(86,'Fairschild',NULL,NULL,NULL,NULL,NULL,NULL),(87,'Freescale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(88,'Fujitsu',NULL,NULL,NULL,NULL,NULL,NULL),(89,'Galileo Technology',NULL,NULL,NULL,NULL,NULL,NULL),(90,'Galvantech',NULL,NULL,NULL,NULL,NULL,NULL),(91,'GEC Plessey',NULL,NULL,NULL,NULL,NULL,NULL),(92,'Gennum',NULL,NULL,NULL,NULL,NULL,NULL),(93,'General Electric (Harris)',NULL,NULL,NULL,NULL,NULL,NULL),(94,'General Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(95,'G-Link Technology',NULL,NULL,NULL,NULL,NULL,NULL),(96,'Goal Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(97,'Goldstar',NULL,NULL,NULL,NULL,NULL,NULL),(98,'Gould',NULL,NULL,NULL,NULL,NULL,NULL),(99,'Greenwich Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(100,'General Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(101,'Harris Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(102,'VEB',NULL,NULL,NULL,NULL,NULL,NULL),(103,'Hitachi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(104,'Holtek',NULL,NULL,NULL,NULL,NULL,NULL),(105,'Hewlett Packard',NULL,NULL,NULL,NULL,NULL,NULL),(106,'Hualon',NULL,NULL,NULL,NULL,NULL,NULL),(107,'Hynix Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(108,'Hyundai',NULL,NULL,NULL,NULL,NULL,NULL),(109,'IC Design',NULL,NULL,NULL,NULL,NULL,NULL),(110,'Integrated Circuit Systems (ICS)',NULL,NULL,NULL,NULL,NULL,NULL),(111,'IC - Haus',NULL,NULL,NULL,NULL,NULL,NULL),(112,'ICSI (Integrated Circuit Solution Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(113,'I-Cube',NULL,NULL,NULL,NULL,NULL,NULL),(114,'IC Works',NULL,NULL,NULL,NULL,NULL,NULL),(115,'Integrated Device Technology (IDT)',NULL,NULL,NULL,NULL,NULL,NULL),(116,'IGS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(117,'IMPALA Linear',NULL,NULL,NULL,NULL,NULL,NULL),(118,'IMP',NULL,NULL,NULL,NULL,NULL,NULL),(119,'Infineon',NULL,NULL,NULL,NULL,NULL,NULL),(120,'INMOS',NULL,NULL,NULL,NULL,NULL,NULL),(121,'Intel',NULL,NULL,NULL,NULL,NULL,NULL),(122,'Intersil',NULL,NULL,NULL,NULL,NULL,NULL),(123,'International Rectifier',NULL,NULL,NULL,NULL,NULL,NULL),(124,'Information Storage Devices',NULL,NULL,NULL,NULL,NULL,NULL),(125,'ISSI (Integrated Silicon Solution, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(126,'Integrated Technology Express',NULL,NULL,NULL,NULL,NULL,NULL),(127,'ITT Semiconductor (Micronas Intermetall)',NULL,NULL,NULL,NULL,NULL,NULL),(128,'IXYS',NULL,NULL,NULL,NULL,NULL,NULL),(129,'Korea Electronics (KEC)',NULL,NULL,NULL,NULL,NULL,NULL),(130,'Kota Microcircuits',NULL,NULL,NULL,NULL,NULL,NULL),(131,'Lattice Semiconductor Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(132,'Lansdale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(133,'Level One Communications',NULL,NULL,NULL,NULL,NULL,NULL),(134,'LG Semicon (Lucky Goldstar Electronic Co.)',NULL,NULL,NULL,NULL,NULL,NULL),(135,'Linear Technology',NULL,NULL,NULL,NULL,NULL,NULL),(136,'Linfinity Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(137,'Lite-On',NULL,NULL,NULL,NULL,NULL,NULL),(138,'Lucent Technologies (AT&T Microelectronics)',NULL,NULL,NULL,NULL,NULL,NULL),(139,'Macronix International',NULL,NULL,NULL,NULL,NULL,NULL),(140,'Marvell Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(141,'Matsushita Panasonic',NULL,NULL,NULL,NULL,NULL,NULL),(142,'Maxim Dallas',NULL,NULL,NULL,NULL,NULL,NULL),(143,'Media Vision',NULL,NULL,NULL,NULL,NULL,NULL),(144,'Microchip (Arizona Michrochip Technology)',NULL,NULL,NULL,NULL,NULL,NULL),(145,'Matra MHS',NULL,NULL,NULL,NULL,NULL,NULL),(146,'Micrel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(147,'Micronas',NULL,NULL,NULL,NULL,NULL,NULL),(148,'Micronix Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(149,'Micron Technology, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(150,'Microsemi',NULL,NULL,NULL,NULL,NULL,NULL),(151,'Mini-Circuits',NULL,NULL,NULL,NULL,NULL,NULL),(152,'Mitel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(153,'Mitsubishi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(154,'Micro Linear',NULL,NULL,NULL,NULL,NULL,NULL),(155,'MMI (Monolithic Memories, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(156,'Mosaic Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(157,'Mosel Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(158,'MOS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(159,'Mostek',NULL,NULL,NULL,NULL,NULL,NULL),(160,'MoSys',NULL,NULL,NULL,NULL,NULL,NULL),(161,'Motorola',NULL,NULL,NULL,NULL,NULL,NULL),(162,'Microtune',NULL,NULL,NULL,NULL,NULL,NULL),(163,'M-Systems',NULL,NULL,NULL,NULL,NULL,NULL),(164,'Murata Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL),(165,'MWave (IBM)',NULL,NULL,NULL,NULL,NULL,NULL),(166,'Myson Technology',NULL,NULL,NULL,NULL,NULL,NULL),(167,'NEC Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(168,'NexFlash Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(169,'New Japan Radio',NULL,NULL,NULL,NULL,NULL,NULL),(170,'National Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(171,'NVidia Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(172,'Oak Technology',NULL,NULL,NULL,NULL,NULL,NULL),(173,'Oki Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(174,'Opti',NULL,NULL,NULL,NULL,NULL,NULL),(175,'Orbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(176,'Oren Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(177,'Performance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(178,'Pericom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(179,'PhaseLink Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(180,'Philips Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(181,'PLX Technology',NULL,NULL,NULL,NULL,NULL,NULL),(182,'PMC- Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(183,'Precision Monolithics',NULL,NULL,NULL,NULL,NULL,NULL),(184,'Princeton Technology',NULL,NULL,NULL,NULL,NULL,NULL),(185,'PowerSmart',NULL,NULL,NULL,NULL,NULL,NULL),(186,'QuickLogic',NULL,NULL,NULL,NULL,NULL,NULL),(187,'Qlogic',NULL,NULL,NULL,NULL,NULL,NULL),(188,'Quality Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(189,'Rabbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(190,'Ramtron International Co.',NULL,NULL,NULL,NULL,NULL,NULL),(191,'Raytheon Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(192,'RCA Solid State',NULL,NULL,NULL,NULL,NULL,NULL),(193,'Realtek Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(194,'Rectron',NULL,NULL,NULL,NULL,NULL,NULL),(195,'Rendition',NULL,NULL,NULL,NULL,NULL,NULL),(196,'Renesas Technology',NULL,NULL,NULL,NULL,NULL,NULL),(197,'Rockwell',NULL,NULL,NULL,NULL,NULL,NULL),(198,'Rohm Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(199,'S3',NULL,NULL,NULL,NULL,NULL,NULL),(200,'Sage',NULL,NULL,NULL,NULL,NULL,NULL),(201,'Saifun Semiconductors Ltd.',NULL,NULL,NULL,NULL,NULL,NULL),(202,'Sames',NULL,NULL,NULL,NULL,NULL,NULL),(203,'Samsung',NULL,NULL,NULL,NULL,NULL,NULL),(204,'Sanken',NULL,NULL,NULL,NULL,NULL,NULL),(205,'Sanyo',NULL,NULL,NULL,NULL,NULL,NULL),(206,'Scenix',NULL,NULL,NULL,NULL,NULL,NULL),(207,'Samsung Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(208,'SEEQ Technology',NULL,NULL,NULL,NULL,NULL,NULL),(209,'Seiko Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(210,'Semtech',NULL,NULL,NULL,NULL,NULL,NULL),(211,'SGS-Ates',NULL,NULL,NULL,NULL,NULL,NULL),(212,'SGS-Thomson Microelectonics ST-M)',NULL,NULL,NULL,NULL,NULL,NULL),(213,'Sharp Microelectronics (USA)',NULL,NULL,NULL,NULL,NULL,NULL),(214,'Shindengen',NULL,NULL,NULL,NULL,NULL,NULL),(215,'Siemens Microelectronics, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(216,'Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(217,'Sigma Tel',NULL,NULL,NULL,NULL,NULL,NULL),(218,'Signetics',NULL,NULL,NULL,NULL,NULL,NULL),(219,'Silicon Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(220,'Silicon Magic',NULL,NULL,NULL,NULL,NULL,NULL),(221,'Simtec Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(222,'Siliconix',NULL,NULL,NULL,NULL,NULL,NULL),(223,'Siliconians',NULL,NULL,NULL,NULL,NULL,NULL),(224,'Sipex',NULL,NULL,NULL,NULL,NULL,NULL),(225,'Silicon Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(226,'SMC',NULL,NULL,NULL,NULL,NULL,NULL),(227,'Standard Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(228,'Sony Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(229,'Space Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(230,'Spectek',NULL,NULL,NULL,NULL,NULL,NULL),(231,'Signal Processing Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(232,'Solid State Scientific',NULL,NULL,NULL,NULL,NULL,NULL),(233,'Silicon Storage Technology (SST)',NULL,NULL,NULL,NULL,NULL,NULL),(234,'STMicroelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(235,'SUMMIT Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(236,'Synergy Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(237,'Synertek',NULL,NULL,NULL,NULL,NULL,NULL),(238,'Taiwan Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(239,'TDK Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(240,'Teccor Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(241,'TelCom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(242,'Teledyne',NULL,NULL,NULL,NULL,NULL,NULL),(243,'Telefunken',NULL,NULL,NULL,NULL,NULL,NULL),(244,'Teltone',NULL,NULL,NULL,NULL,NULL,NULL),(245,'Thomson-CSF',NULL,NULL,NULL,NULL,NULL,NULL),(246,'Texas Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(247,'Toko Amerika',NULL,NULL,NULL,NULL,NULL,NULL),(248,'Toshiba (US)',NULL,NULL,NULL,NULL,NULL,NULL),(249,'Trident',NULL,NULL,NULL,NULL,NULL,NULL),(250,'TriQuint Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(251,'Triscend',NULL,NULL,NULL,NULL,NULL,NULL),(252,'Tseng Labs',NULL,NULL,NULL,NULL,NULL,NULL),(253,'Tundra',NULL,NULL,NULL,NULL,NULL,NULL),(254,'Turbo IC',NULL,NULL,NULL,NULL,NULL,NULL),(255,'Ubicom',NULL,NULL,NULL,NULL,NULL,NULL),(256,'United Microelectronics Corp (UMC)',NULL,NULL,NULL,NULL,NULL,NULL),(257,'Unitrode',NULL,NULL,NULL,NULL,NULL,NULL),(258,'USAR Systems',NULL,NULL,NULL,NULL,NULL,NULL),(259,'United Technologies Microelectronics Center (UTMC)',NULL,NULL,NULL,NULL,NULL,NULL),(260,'Utron',NULL,NULL,NULL,NULL,NULL,NULL),(261,'V3 Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(262,'Vadem',NULL,NULL,NULL,NULL,NULL,NULL),(263,'Vanguard International Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(264,'Vantis',NULL,NULL,NULL,NULL,NULL,NULL),(265,'Via Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(266,'Virata',NULL,NULL,NULL,NULL,NULL,NULL),(267,'Vishay',NULL,NULL,NULL,NULL,NULL,NULL),(268,'Vision Tech',NULL,NULL,NULL,NULL,NULL,NULL),(269,'Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(270,'VLSI Technology',NULL,NULL,NULL,NULL,NULL,NULL),(271,'Volterra',NULL,NULL,NULL,NULL,NULL,NULL),(272,'VTC',NULL,NULL,NULL,NULL,NULL,NULL),(273,'Waferscale Integration (WSI)',NULL,NULL,NULL,NULL,NULL,NULL),(274,'Western Digital',NULL,NULL,NULL,NULL,NULL,NULL),(275,'Weitek',NULL,NULL,NULL,NULL,NULL,NULL),(276,'Winbond',NULL,NULL,NULL,NULL,NULL,NULL),(277,'Wofson Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(278,'Xwmics',NULL,NULL,NULL,NULL,NULL,NULL),(279,'Xicor',NULL,NULL,NULL,NULL,NULL,NULL),(280,'Xilinx',NULL,NULL,NULL,NULL,NULL,NULL),(281,'Yamaha',NULL,NULL,NULL,NULL,NULL,NULL),(282,'Zetex Semiconductors',NULL,NULL,NULL,NULL,NULL,NULL),(283,'Zilog',NULL,NULL,NULL,NULL,NULL,NULL),(284,'ZMD (Zentrum Mikroelektronik Dresden)',NULL,NULL,NULL,NULL,NULL,NULL),(285,'Zoran',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ManufacturerICLogo`
--

DROP TABLE IF EXISTS `ManufacturerICLogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ManufacturerICLogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3F1EF213A23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_3F1EF213A23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ManufacturerICLogo`
--

LOCK TABLES `ManufacturerICLogo` WRITE;
/*!40000 ALTER TABLE `ManufacturerICLogo` DISABLE KEYS */;
INSERT INTO `ManufacturerICLogo` VALUES (1,1,'iclogo','85aee9fc-47dc-11e7-9baa-080027955c00','acer.png','image/png',2195,'png',NULL,'2017-06-02 16:43:31'),(2,2,'iclogo','85b00850-47dc-11e7-9245-080027955c00','actel.png','image/png',5003,'png',NULL,'2017-06-02 16:43:31'),(3,3,'iclogo','85b04626-47dc-11e7-9d35-080027955c00','advldev.png','image/png',1835,'png',NULL,'2017-06-02 16:43:31'),(4,4,'iclogo','85b06fde-47dc-11e7-8a66-080027955c00','aeroflex1.png','image/png',9649,'png',NULL,'2017-06-02 16:43:31'),(5,4,'iclogo','85b08eb0-47dc-11e7-8448-080027955c00','aeroflex2.png','image/png',4562,'png',NULL,'2017-06-02 16:43:31'),(6,5,'iclogo','85b0cf2e-47dc-11e7-8513-080027955c00','agilent.png','image/png',5264,'png',NULL,'2017-06-02 16:43:31'),(7,6,'iclogo','85b1151a-47dc-11e7-becd-080027955c00','akm.png','image/png',2204,'png',NULL,'2017-06-02 16:43:31'),(8,7,'iclogo','85b1596c-47dc-11e7-88f7-080027955c00','alesis.png','image/png',1475,'png',NULL,'2017-06-02 16:43:31'),(9,8,'iclogo','85b19c88-47dc-11e7-b816-080027955c00','ali1.png','image/png',2462,'png',NULL,'2017-06-02 16:43:31'),(10,8,'iclogo','85b1c3ca-47dc-11e7-8417-080027955c00','ali2.png','image/png',1784,'png',NULL,'2017-06-02 16:43:31'),(11,9,'iclogo','85b2060a-47dc-11e7-85c6-080027955c00','allayer.png','image/png',1869,'png',NULL,'2017-06-02 16:43:31'),(12,10,'iclogo','85b241b0-47dc-11e7-9e75-080027955c00','allegro.png','image/png',1475,'png',NULL,'2017-06-02 16:43:31'),(13,11,'iclogo','85b28eb8-47dc-11e7-9f8d-080027955c00','alliance.png','image/png',1949,'png',NULL,'2017-06-02 16:43:31'),(14,12,'iclogo','85b2c8ec-47dc-11e7-9650-080027955c00','alphaind.png','image/png',1403,'png',NULL,'2017-06-02 16:43:31'),(15,13,'iclogo','85b3cf80-47dc-11e7-bfde-080027955c00','alphamic.png','image/png',2989,'png',NULL,'2017-06-02 16:43:31'),(16,13,'iclogo','85b40770-47dc-11e7-a5c0-080027955c00','alpha.png','image/png',1534,'png',NULL,'2017-06-02 16:43:31'),(17,14,'iclogo','85b4717e-47dc-11e7-bf17-080027955c00','altera.png','image/png',4064,'png',NULL,'2017-06-02 16:43:31'),(18,15,'iclogo','85b4d056-47dc-11e7-8fd3-080027955c00','amd.png','image/png',1709,'png',NULL,'2017-06-02 16:43:31'),(19,16,'iclogo','85b531b8-47dc-11e7-b21b-080027955c00','ami1.png','image/png',2399,'png',NULL,'2017-06-02 16:43:31'),(20,16,'iclogo','85b56cc8-47dc-11e7-8c08-080027955c00','ami2.png','image/png',1706,'png',NULL,'2017-06-02 16:43:31'),(21,17,'iclogo','85b6e21a-47dc-11e7-9c04-080027955c00','amic.png','image/png',2228,'png',NULL,'2017-06-02 16:43:31'),(22,18,'iclogo','85b72644-47dc-11e7-b4e4-080027955c00','ampus.png','image/png',6150,'png',NULL,'2017-06-02 16:43:31'),(23,19,'iclogo','85b753e4-47dc-11e7-a60b-080027955c00','anachip.png','image/png',3549,'png',NULL,'2017-06-02 16:43:31'),(24,20,'iclogo','85b77dba-47dc-11e7-a692-080027955c00','anadigic.png','image/png',5147,'png',NULL,'2017-06-02 16:43:31'),(25,21,'iclogo','85b7abdc-47dc-11e7-8de4-080027955c00','analog1.png','image/png',1262,'png',NULL,'2017-06-02 16:43:31'),(26,21,'iclogo','85b7cda6-47dc-11e7-a670-080027955c00','analog.png','image/png',1403,'png',NULL,'2017-06-02 16:43:31'),(27,22,'iclogo','85b7fbc8-47dc-11e7-a855-080027955c00','anasys.png','image/png',3309,'png',NULL,'2017-06-02 16:43:31'),(28,23,'iclogo','85b82364-47dc-11e7-a9aa-080027955c00','anchorch.png','image/png',1475,'png',NULL,'2017-06-02 16:43:31'),(29,24,'iclogo','85b84a2e-47dc-11e7-9963-080027955c00','apex1.png','image/png',2627,'png',NULL,'2017-06-02 16:43:31'),(30,24,'iclogo','85b86626-47dc-11e7-9a63-080027955c00','apex.png','image/png',3974,'png',NULL,'2017-06-02 16:43:31'),(31,25,'iclogo','85b8998e-47dc-11e7-abcd-080027955c00','ark.png','image/png',2089,'png',NULL,'2017-06-02 16:43:31'),(32,26,'iclogo','85b8f19a-47dc-11e7-a56b-080027955c00','asd.png','image/png',5024,'png',NULL,'2017-06-02 16:43:31'),(33,27,'iclogo','85b94474-47dc-11e7-9986-080027955c00','astec.png','image/png',3369,'png',NULL,'2017-06-02 16:43:31'),(34,28,'iclogo','85b99294-47dc-11e7-9c7f-080027955c00','atc.png','image/png',8660,'png',NULL,'2017-06-02 16:43:31'),(35,29,'iclogo','85b9e19a-47dc-11e7-ba2e-080027955c00','atecom.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(36,30,'iclogo','85ba40fe-47dc-11e7-8093-080027955c00','ati.png','image/png',2630,'png',NULL,'2017-06-02 16:43:32'),(37,31,'iclogo','85ba95e0-47dc-11e7-baf0-080027955c00','atmel.png','image/png',2843,'png',NULL,'2017-06-02 16:43:32'),(38,32,'iclogo','85babfac-47dc-11e7-9bb8-080027955c00','att.png','image/png',2816,'png',NULL,'2017-06-02 16:43:32'),(39,33,'iclogo','85bae9c8-47dc-11e7-b027-080027955c00','audiocod.png','image/png',2429,'png',NULL,'2017-06-02 16:43:32'),(40,34,'iclogo','85bb1cb8-47dc-11e7-a864-080027955c00','auravis.png','image/png',2281,'png',NULL,'2017-06-02 16:43:32'),(41,35,'iclogo','85bb52e6-47dc-11e7-9a48-080027955c00','aureal.png','image/png',2109,'png',NULL,'2017-06-02 16:43:32'),(42,36,'iclogo','85bb7c1c-47dc-11e7-b0b0-080027955c00','austin.png','image/png',2464,'png',NULL,'2017-06-02 16:43:32'),(43,37,'iclogo','85bba9e4-47dc-11e7-8186-080027955c00','averlog.png','image/png',1552,'png',NULL,'2017-06-02 16:43:32'),(44,38,'iclogo','85bbd40a-47dc-11e7-95bc-080027955c00','belfuse.png','image/png',2204,'png',NULL,'2017-06-02 16:43:32'),(45,39,'iclogo','85bbfd4a-47dc-11e7-a61c-080027955c00','benchmrq.png','image/png',1370,'png',NULL,'2017-06-02 16:43:32'),(46,40,'iclogo','85bc3256-47dc-11e7-b1ab-080027955c00','bi.png','image/png',2008,'png',NULL,'2017-06-02 16:43:32'),(47,41,'iclogo','85bc6b7c-47dc-11e7-ac8a-080027955c00','bowmar_white.png','image/png',4652,'png',NULL,'2017-06-02 16:43:32'),(48,42,'iclogo','85bca59c-47dc-11e7-b12d-080027955c00','bright.png','image/png',6839,'png',NULL,'2017-06-02 16:43:32'),(49,43,'iclogo','85bce57a-47dc-11e7-95c1-080027955c00','broadcom.png','image/png',6056,'png',NULL,'2017-06-02 16:43:32'),(50,44,'iclogo','85bd2f3a-47dc-11e7-b9d2-080027955c00','brooktre.png','image/png',1364,'png',NULL,'2017-06-02 16:43:32'),(51,45,'iclogo','85bd63a6-47dc-11e7-bca9-080027955c00','burrbrwn.png','image/png',3563,'png',NULL,'2017-06-02 16:43:32'),(52,46,'iclogo','85bd9d12-47dc-11e7-9216-080027955c00','calmicro.png','image/png',2109,'png',NULL,'2017-06-02 16:43:32'),(53,47,'iclogo','85bdc7d8-47dc-11e7-89ae-080027955c00','calogic.png','image/png',3367,'png',NULL,'2017-06-02 16:43:32'),(54,48,'iclogo','85bdf0aa-47dc-11e7-ae6a-080027955c00','catalys1.png','image/png',1922,'png',NULL,'2017-06-02 16:43:32'),(55,48,'iclogo','85be0dce-47dc-11e7-8df7-080027955c00','catalyst.png','image/png',2228,'png',NULL,'2017-06-02 16:43:32'),(56,49,'iclogo','85be340c-47dc-11e7-b8a9-080027955c00','ccube.png','image/png',1309,'png',NULL,'2017-06-02 16:43:32'),(57,50,'iclogo','85be5d60-47dc-11e7-8de1-080027955c00','ceramate1.png','image/png',2917,'png',NULL,'2017-06-02 16:43:32'),(58,50,'iclogo','85be789a-47dc-11e7-8a2b-080027955c00','ceramate2.png','image/png',2917,'png',NULL,'2017-06-02 16:43:32'),(59,51,'iclogo','85be9a5a-47dc-11e7-8f8c-080027955c00','cherry.png','image/png',2507,'png',NULL,'2017-06-02 16:43:32'),(60,52,'iclogo','85bec2f0-47dc-11e7-aa59-080027955c00','chipcon1.png','image/png',8655,'png',NULL,'2017-06-02 16:43:32'),(61,52,'iclogo','85bee2b2-47dc-11e7-83e7-080027955c00','chipcon2.png','image/png',2923,'png',NULL,'2017-06-02 16:43:32'),(62,53,'iclogo','85bf0a30-47dc-11e7-975b-080027955c00','chips.png','image/png',2864,'png',NULL,'2017-06-02 16:43:32'),(63,54,'iclogo','85bf3348-47dc-11e7-9b1c-080027955c00','chrontel.png','image/png',1476,'png',NULL,'2017-06-02 16:43:32'),(64,55,'iclogo','85bf6638-47dc-11e7-8940-080027955c00','cirrus.png','image/png',3218,'png',NULL,'2017-06-02 16:43:32'),(65,56,'iclogo','85bf948c-47dc-11e7-b6aa-080027955c00','comcore.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(66,57,'iclogo','85bfbdb8-47dc-11e7-9ac6-080027955c00','conexant.png','image/png',2051,'png',NULL,'2017-06-02 16:43:32'),(67,58,'iclogo','85bfe66c-47dc-11e7-baf5-080027955c00','cosmo.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(68,59,'iclogo','85c00ff2-47dc-11e7-a091-080027955c00','crystal.png','image/png',3605,'png',NULL,'2017-06-02 16:43:32'),(69,60,'iclogo','85c038a6-47dc-11e7-8524-080027955c00','cygnal.png','image/png',2135,'png',NULL,'2017-06-02 16:43:32'),(70,61,'iclogo','85c063c6-47dc-11e7-a607-080027955c00','cypres1.png','image/png',2504,'png',NULL,'2017-06-02 16:43:32'),(71,61,'iclogo','85c0818a-47dc-11e7-b0ab-080027955c00','cypress.png','image/png',4275,'png',NULL,'2017-06-02 16:43:32'),(72,62,'iclogo','85c0ab06-47dc-11e7-8a3b-080027955c00','cyrix.png','image/png',2204,'png',NULL,'2017-06-02 16:43:32'),(73,63,'iclogo','85c0d446-47dc-11e7-83e1-080027955c00','daewoo.png','image/png',1907,'png',NULL,'2017-06-02 16:43:32'),(74,64,'iclogo','85c0fcfa-47dc-11e7-85d1-080027955c00','dallas1.png','image/png',1469,'png',NULL,'2017-06-02 16:43:32'),(75,64,'iclogo','85c11852-47dc-11e7-a245-080027955c00','dallas2.png','image/png',1309,'png',NULL,'2017-06-02 16:43:32'),(76,64,'iclogo','85c12fcc-47dc-11e7-b4bc-080027955c00','dallas3.png','image/png',1869,'png',NULL,'2017-06-02 16:43:32'),(77,65,'iclogo','85c1551a-47dc-11e7-83e2-080027955c00','davicom.png','image/png',4589,'png',NULL,'2017-06-02 16:43:32'),(78,66,'iclogo','85c17ec8-47dc-11e7-91c2-080027955c00','ddd.png','image/png',3235,'png',NULL,'2017-06-02 16:43:32'),(79,67,'iclogo','85c1a52e-47dc-11e7-8505-080027955c00','diamond.png','image/png',2504,'png',NULL,'2017-06-02 16:43:32'),(80,68,'iclogo','85c1ccfc-47dc-11e7-8ce0-080027955c00','diotec.png','image/png',1454,'png',NULL,'2017-06-02 16:43:32'),(81,69,'iclogo','85c1f6c8-47dc-11e7-b862-080027955c00','dtc1.png','image/png',2513,'png',NULL,'2017-06-02 16:43:32'),(82,69,'iclogo','85c21216-47dc-11e7-936d-080027955c00','dtc2.png','image/png',1670,'png',NULL,'2017-06-02 16:43:32'),(83,70,'iclogo','85c23bf6-47dc-11e7-9c00-080027955c00','dvdo.png','image/png',2357,'png',NULL,'2017-06-02 16:43:32'),(84,71,'iclogo','85c26856-47dc-11e7-be1c-080027955c00','egg.png','image/png',1628,'png',NULL,'2017-06-02 16:43:32'),(85,72,'iclogo','85c29038-47dc-11e7-af3a-080027955c00','elan.png','image/png',13826,'png',NULL,'2017-06-02 16:43:32'),(86,73,'iclogo','85c2d11a-47dc-11e7-99e4-080027955c00','elantec1.png','image/png',1400,'png',NULL,'2017-06-02 16:43:32'),(87,73,'iclogo','85c2ed6c-47dc-11e7-8077-080027955c00','elantec.png','image/png',3274,'png',NULL,'2017-06-02 16:43:32'),(88,74,'iclogo','85c31468-47dc-11e7-94dd-080027955c00','elec_arrays.png','image/png',5602,'png',NULL,'2017-06-02 16:43:32'),(89,75,'iclogo','85c33f24-47dc-11e7-b23c-080027955c00','elite[1].png','image/png',8285,'png',NULL,'2017-06-02 16:43:32'),(90,76,'iclogo','85c36c56-47dc-11e7-8ff0-080027955c00','emmicro.png','image/png',3599,'png',NULL,'2017-06-02 16:43:32'),(91,77,'iclogo','85c39e10-47dc-11e7-a38a-080027955c00','enhmemsy.png','image/png',1403,'png',NULL,'2017-06-02 16:43:32'),(92,78,'iclogo','85c3c976-47dc-11e7-85b6-080027955c00','ensoniq.png','image/png',3557,'png',NULL,'2017-06-02 16:43:32'),(93,79,'iclogo','85c3f2ac-47dc-11e7-a63e-080027955c00','eon.png','image/png',5393,'png',NULL,'2017-06-02 16:43:32'),(94,80,'iclogo','85c41ffc-47dc-11e7-8fd7-080027955c00','epson1.png','image/png',2349,'png',NULL,'2017-06-02 16:43:32'),(95,80,'iclogo','85c43eba-47dc-11e7-b81d-080027955c00','epson2.png','image/png',2405,'png',NULL,'2017-06-02 16:43:32'),(96,81,'iclogo','85c469d0-47dc-11e7-a879-080027955c00','ericsson.png','image/png',4184,'png',NULL,'2017-06-02 16:43:32'),(97,82,'iclogo','85c492ac-47dc-11e7-86ac-080027955c00','ess.png','image/png',3030,'png',NULL,'2017-06-02 16:43:32'),(98,83,'iclogo','85c4b8c2-47dc-11e7-b98f-080027955c00','etc.png','image/png',2189,'png',NULL,'2017-06-02 16:43:32'),(99,84,'iclogo','85c4e09a-47dc-11e7-9aad-080027955c00','exar.png','image/png',2771,'png',NULL,'2017-06-02 16:43:32'),(100,85,'iclogo','85c5066a-47dc-11e7-b308-080027955c00','excelsemi1.png','image/png',7632,'png',NULL,'2017-06-02 16:43:32'),(101,85,'iclogo','85c521fe-47dc-11e7-97a8-080027955c00','excelsemi2.png','image/png',2339,'png',NULL,'2017-06-02 16:43:32'),(102,85,'iclogo','85c53bd0-47dc-11e7-bfb9-080027955c00','exel.png','image/png',2771,'png',NULL,'2017-06-02 16:43:32'),(103,86,'iclogo','85c561e6-47dc-11e7-9530-080027955c00','fairchil.png','image/png',1552,'png',NULL,'2017-06-02 16:43:32'),(104,87,'iclogo','85c58a2c-47dc-11e7-b5f1-080027955c00','freescale.png','image/png',3840,'png',NULL,'2017-06-02 16:43:32'),(105,88,'iclogo','85c5b2e0-47dc-11e7-8e99-080027955c00','fujielec.png','image/png',5048,'png',NULL,'2017-06-02 16:43:32'),(106,88,'iclogo','85c5d112-47dc-11e7-a100-080027955c00','fujitsu2.png','image/png',1860,'png',NULL,'2017-06-02 16:43:32'),(107,89,'iclogo','85c5f58e-47dc-11e7-89f3-080027955c00','galileo.png','image/png',3779,'png',NULL,'2017-06-02 16:43:32'),(108,90,'iclogo','85c61c44-47dc-11e7-8c8f-080027955c00','galvant.png','image/png',2669,'png',NULL,'2017-06-02 16:43:32'),(109,91,'iclogo','85c64d18-47dc-11e7-8542-080027955c00','gecples.png','image/png',2312,'png',NULL,'2017-06-02 16:43:32'),(110,92,'iclogo','85c675b8-47dc-11e7-8ed0-080027955c00','gennum.png','image/png',2614,'png',NULL,'2017-06-02 16:43:32'),(111,93,'iclogo','85c69d18-47dc-11e7-bfe5-080027955c00','ge.png','image/png',2321,'png',NULL,'2017-06-02 16:43:32'),(112,94,'iclogo','85c6c6ee-47dc-11e7-be68-080027955c00','gi1.png','image/png',1385,'png',NULL,'2017-06-02 16:43:32'),(113,94,'iclogo','85c6e5ac-47dc-11e7-a3a6-080027955c00','gi.png','image/png',1691,'png',NULL,'2017-06-02 16:43:32'),(114,95,'iclogo','85c70924-47dc-11e7-816f-080027955c00','glink.png','image/png',1706,'png',NULL,'2017-06-02 16:43:32'),(115,96,'iclogo','85c730de-47dc-11e7-8551-080027955c00','goal1.png','image/png',9092,'png',NULL,'2017-06-02 16:43:32'),(116,96,'iclogo','85c74fec-47dc-11e7-9769-080027955c00','goal2.png','image/png',9649,'png',NULL,'2017-06-02 16:43:32'),(117,97,'iclogo','85c7794a-47dc-11e7-b4c4-080027955c00','goldstar1.png','image/png',2923,'png',NULL,'2017-06-02 16:43:32'),(118,97,'iclogo','85c7947a-47dc-11e7-ae67-080027955c00','goldstar2.png','image/png',11387,'png',NULL,'2017-06-02 16:43:32'),(119,98,'iclogo','85c7be64-47dc-11e7-affb-080027955c00','gould.png','image/png',1549,'png',NULL,'2017-06-02 16:43:32'),(120,99,'iclogo','85c7e894-47dc-11e7-b8fd-080027955c00','greenwich.png','image/png',9761,'png',NULL,'2017-06-02 16:43:32'),(121,100,'iclogo','85c81436-47dc-11e7-a8a3-080027955c00','gsemi.png','image/png',1704,'png',NULL,'2017-06-02 16:43:32'),(122,101,'iclogo','85c83aec-47dc-11e7-9a7a-080027955c00','harris1.png','image/png',1549,'png',NULL,'2017-06-02 16:43:32'),(123,101,'iclogo','85c8578e-47dc-11e7-b459-080027955c00','harris2.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(124,102,'iclogo','85c87f70-47dc-11e7-aa82-080027955c00','hfo.png','image/png',1958,'png',NULL,'2017-06-02 16:43:32'),(125,103,'iclogo','85c8a3c4-47dc-11e7-b2f4-080027955c00','hitachi.png','image/png',2611,'png',NULL,'2017-06-02 16:43:32'),(126,104,'iclogo','85c8e172-47dc-11e7-8a40-080027955c00','holtek.png','image/png',2160,'png',NULL,'2017-06-02 16:43:32'),(127,105,'iclogo','85c9108e-47dc-11e7-9faa-080027955c00','hp.png','image/png',2464,'png',NULL,'2017-06-02 16:43:32'),(128,106,'iclogo','85c93c8a-47dc-11e7-80a2-080027955c00','hualon.png','image/png',2864,'png',NULL,'2017-06-02 16:43:32'),(129,107,'iclogo','85c96ca0-47dc-11e7-936b-080027955c00','hynix.png','image/png',8444,'png',NULL,'2017-06-02 16:43:32'),(130,108,'iclogo','85c999b4-47dc-11e7-a24e-080027955c00','hyundai2.png','image/png',2269,'png',NULL,'2017-06-02 16:43:32'),(131,109,'iclogo','85c9c402-47dc-11e7-81d6-080027955c00','icdesign.png','image/png',3014,'png',NULL,'2017-06-02 16:43:32'),(132,110,'iclogo','85c9ef90-47dc-11e7-bcd2-080027955c00','icd.png','image/png',1641,'png',NULL,'2017-06-02 16:43:32'),(133,110,'iclogo','85ca14fc-47dc-11e7-a6d3-080027955c00','ics.png','image/png',2042,'png',NULL,'2017-06-02 16:43:32'),(134,111,'iclogo','85ca471a-47dc-11e7-aff4-080027955c00','ichaus1.png','image/png',3370,'png',NULL,'2017-06-02 16:43:32'),(135,111,'iclogo','85ca64b6-47dc-11e7-9dd5-080027955c00','ichaus.png','image/png',1552,'png',NULL,'2017-06-02 16:43:32'),(136,112,'iclogo','85ca8cf2-47dc-11e7-ad88-080027955c00','icsi.png','image/png',4049,'png',NULL,'2017-06-02 16:43:32'),(137,113,'iclogo','85cab93e-47dc-11e7-9835-080027955c00','icube.png','image/png',1629,'png',NULL,'2017-06-02 16:43:32'),(138,114,'iclogo','85cb9462-47dc-11e7-bfa7-080027955c00','icworks.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(139,115,'iclogo','85cbcba8-47dc-11e7-a888-080027955c00','idt1.png','image/png',3995,'png',NULL,'2017-06-02 16:43:32'),(140,115,'iclogo','85cbec50-47dc-11e7-90af-080027955c00','idt.png','image/png',1553,'png',NULL,'2017-06-02 16:43:32'),(141,116,'iclogo','85cc196e-47dc-11e7-81d3-080027955c00','igstech.png','image/png',3832,'png',NULL,'2017-06-02 16:43:32'),(142,117,'iclogo','85cc448e-47dc-11e7-a7f2-080027955c00','impala.png','image/png',1628,'png',NULL,'2017-06-02 16:43:32'),(143,118,'iclogo','85cc7076-47dc-11e7-8006-080027955c00','imp.png','image/png',2175,'png',NULL,'2017-06-02 16:43:32'),(144,119,'iclogo','85cca2f8-47dc-11e7-8809-080027955c00','infineon.png','image/png',4511,'png',NULL,'2017-06-02 16:43:32'),(145,120,'iclogo','85ccec0e-47dc-11e7-85e6-080027955c00','inmos.png','image/png',3365,'png',NULL,'2017-06-02 16:43:32'),(146,121,'iclogo','85cd23fe-47dc-11e7-a4a3-080027955c00','intel2.png','image/png',2010,'png',NULL,'2017-06-02 16:43:32'),(147,122,'iclogo','85cd525c-47dc-11e7-9e32-080027955c00','intresil4.png','image/png',2614,'png',NULL,'2017-06-02 16:43:32'),(148,122,'iclogo','85cde096-47dc-11e7-9782-080027955c00','intrsil1.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(149,122,'iclogo','85cdfc70-47dc-11e7-8e70-080027955c00','intrsil2.png','image/png',2520,'png',NULL,'2017-06-02 16:43:32'),(150,122,'iclogo','85ce180e-47dc-11e7-8443-080027955c00','intrsil3.png','image/png',3295,'png',NULL,'2017-06-02 16:43:32'),(151,123,'iclogo','85ce446e-47dc-11e7-9378-080027955c00','ir.png','image/png',2729,'png',NULL,'2017-06-02 16:43:32'),(152,124,'iclogo','85ce6fb6-47dc-11e7-a654-080027955c00','isd.png','image/png',2554,'png',NULL,'2017-06-02 16:43:32'),(153,125,'iclogo','85ce9f7c-47dc-11e7-a5e8-080027955c00','issi.png','image/png',3030,'png',NULL,'2017-06-02 16:43:32'),(154,126,'iclogo','85ceca06-47dc-11e7-9aed-080027955c00','ite.png','image/png',3302,'png',NULL,'2017-06-02 16:43:32'),(155,127,'iclogo','85cef684-47dc-11e7-bdb4-080027955c00','itt.png','image/png',2483,'png',NULL,'2017-06-02 16:43:32'),(156,128,'iclogo','85cf2082-47dc-11e7-93dd-080027955c00','ixys.png','image/png',3575,'png',NULL,'2017-06-02 16:43:32'),(157,129,'iclogo','85cf4774-47dc-11e7-9b37-080027955c00','kec.png','image/png',2567,'png',NULL,'2017-06-02 16:43:32'),(158,130,'iclogo','85d019ce-47dc-11e7-a31c-080027955c00','kota.png','image/png',1552,'png',NULL,'2017-06-02 16:43:32'),(159,131,'iclogo','85d054f2-47dc-11e7-bcd4-080027955c00','lattice1.png','image/png',1768,'png',NULL,'2017-06-02 16:43:32'),(160,131,'iclogo','85d07446-47dc-11e7-9825-080027955c00','lattice2.png','image/png',1519,'png',NULL,'2017-06-02 16:43:32'),(161,131,'iclogo','85d0914c-47dc-11e7-b919-080027955c00','lattice3.png','image/png',1216,'png',NULL,'2017-06-02 16:43:32'),(162,132,'iclogo','85d0bc6c-47dc-11e7-add1-080027955c00','lds1.png','image/png',2136,'png',NULL,'2017-06-02 16:43:32'),(163,132,'iclogo','85d0d9d6-47dc-11e7-90cf-080027955c00','lds.png','image/png',1959,'png',NULL,'2017-06-02 16:43:32'),(164,133,'iclogo','85d10212-47dc-11e7-9b65-080027955c00','levone.png','image/png',4189,'png',NULL,'2017-06-02 16:43:32'),(165,134,'iclogo','85d12c1a-47dc-11e7-a20b-080027955c00','lgs1.png','image/png',2417,'png',NULL,'2017-06-02 16:43:32'),(166,134,'iclogo','85d14a38-47dc-11e7-aaa3-080027955c00','lgs.png','image/png',737,'png',NULL,'2017-06-02 16:43:32'),(167,135,'iclogo','85d16e78-47dc-11e7-b4c1-080027955c00','linear.png','image/png',2486,'png',NULL,'2017-06-02 16:43:32'),(168,136,'iclogo','85d19934-47dc-11e7-92b5-080027955c00','linfin.png','image/png',4844,'png',NULL,'2017-06-02 16:43:32'),(169,137,'iclogo','85d1c85a-47dc-11e7-99eb-080027955c00','liteon.png','image/png',2388,'png',NULL,'2017-06-02 16:43:32'),(170,138,'iclogo','85d1f0b4-47dc-11e7-9b7e-080027955c00','lucent.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(171,139,'iclogo','85d2185a-47dc-11e7-b56d-080027955c00','macronix.png','image/png',2324,'png',NULL,'2017-06-02 16:43:32'),(172,140,'iclogo','85d243fc-47dc-11e7-a1a7-080027955c00','marvell.png','image/png',3131,'png',NULL,'2017-06-02 16:43:32'),(173,141,'iclogo','85d26f80-47dc-11e7-a61b-080027955c00','matsush1.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(174,141,'iclogo','85d28ef2-47dc-11e7-9d81-080027955c00','matsushi.png','image/png',2029,'png',NULL,'2017-06-02 16:43:32'),(175,142,'iclogo','85d2b7e2-47dc-11e7-87a3-080027955c00','maxim.png','image/png',2690,'png',NULL,'2017-06-02 16:43:32'),(176,143,'iclogo','85d384a6-47dc-11e7-9a27-080027955c00','mediavi1.png','image/png',2189,'png',NULL,'2017-06-02 16:43:32'),(177,143,'iclogo','85d3b124-47dc-11e7-a3fe-080027955c00','mediavi2.png','image/png',2487,'png',NULL,'2017-06-02 16:43:32'),(178,144,'iclogo','85d3ef68-47dc-11e7-8930-080027955c00','me.png','image/png',2411,'png',NULL,'2017-06-02 16:43:32'),(179,144,'iclogo','85d4a26e-47dc-11e7-ae36-080027955c00','microchp.png','image/png',2814,'png',NULL,'2017-06-02 16:43:32'),(180,145,'iclogo','85d4d2ca-47dc-11e7-8ae2-080027955c00','mhs2.png','image/png',2036,'png',NULL,'2017-06-02 16:43:32'),(181,145,'iclogo','85d4ee90-47dc-11e7-9f97-080027955c00','mhs.png','image/png',1870,'png',NULL,'2017-06-02 16:43:32'),(182,146,'iclogo','85d514e2-47dc-11e7-ae75-080027955c00','micrel1.png','image/png',9695,'png',NULL,'2017-06-02 16:43:32'),(183,146,'iclogo','85d53670-47dc-11e7-a285-080027955c00','micrel2.png','image/png',9695,'png',NULL,'2017-06-02 16:43:32'),(184,147,'iclogo','85d56f28-47dc-11e7-81e1-080027955c00','micronas.png','image/png',1871,'png',NULL,'2017-06-02 16:43:32'),(185,148,'iclogo','85d59dea-47dc-11e7-aadb-080027955c00','micronix.png','image/png',1856,'png',NULL,'2017-06-02 16:43:32'),(186,149,'iclogo','85d5c6bc-47dc-11e7-a247-080027955c00','micron.png','image/png',1763,'png',NULL,'2017-06-02 16:43:32'),(187,150,'iclogo','85d5ee62-47dc-11e7-bb04-080027955c00','microsemi1.png','image/png',3714,'png',NULL,'2017-06-02 16:43:32'),(188,150,'iclogo','85d60bf4-47dc-11e7-90d8-080027955c00','microsemi2.png','image/png',11992,'png',NULL,'2017-06-02 16:43:32'),(189,151,'iclogo','85d63796-47dc-11e7-b8fa-080027955c00','minicirc.png','image/png',1391,'png',NULL,'2017-06-02 16:43:32'),(190,152,'iclogo','85d65f32-47dc-11e7-afaa-080027955c00','mitel.png','image/png',2819,'png',NULL,'2017-06-02 16:43:32'),(191,153,'iclogo','85d68f3e-47dc-11e7-8a12-080027955c00','mitsubis.png','image/png',2311,'png',NULL,'2017-06-02 16:43:32'),(192,154,'iclogo','85d6b630-47dc-11e7-b955-080027955c00','mlinear.png','image/png',3377,'png',NULL,'2017-06-02 16:43:32'),(193,155,'iclogo','85d6df0c-47dc-11e7-a559-080027955c00','mmi.png','image/png',2692,'png',NULL,'2017-06-02 16:43:32'),(194,156,'iclogo','85d705d6-47dc-11e7-8332-080027955c00','mosaic.png','image/png',2959,'png',NULL,'2017-06-02 16:43:32'),(195,157,'iclogo','85d72cfa-47dc-11e7-8b32-080027955c00','moselvit.png','image/png',2504,'png',NULL,'2017-06-02 16:43:32'),(196,158,'iclogo','85d7561c-47dc-11e7-9118-080027955c00','mos.png','image/png',2857,'png',NULL,'2017-06-02 16:43:32'),(197,159,'iclogo','85d77cd2-47dc-11e7-8e47-080027955c00','mostek1.png','image/png',7502,'png',NULL,'2017-06-02 16:43:32'),(198,159,'iclogo','85d79c9e-47dc-11e7-9dde-080027955c00','mostek2.png','image/png',7502,'png',NULL,'2017-06-02 16:43:32'),(199,159,'iclogo','85d7b846-47dc-11e7-bd7f-080027955c00','mostek3.png','image/png',2514,'png',NULL,'2017-06-02 16:43:32'),(200,160,'iclogo','85d7df56-47dc-11e7-aceb-080027955c00','mosys.png','image/png',2321,'png',NULL,'2017-06-02 16:43:32'),(201,161,'iclogo','85d80f3a-47dc-11e7-b7e3-080027955c00','motorol1.png','image/png',999,'png',NULL,'2017-06-02 16:43:32'),(202,161,'iclogo','85d82ec0-47dc-11e7-94c6-080027955c00','motorol2.png','image/png',2417,'png',NULL,'2017-06-02 16:43:32'),(203,162,'iclogo','85d86610-47dc-11e7-b07a-080027955c00','mpd.png','image/png',2663,'png',NULL,'2017-06-02 16:43:32'),(204,163,'iclogo','85d89e0a-47dc-11e7-b8a1-080027955c00','msystem.png','image/png',1670,'png',NULL,'2017-06-02 16:43:32'),(205,164,'iclogo','85d8cdda-47dc-11e7-ac68-080027955c00','murata1.png','image/png',4874,'png',NULL,'2017-06-02 16:43:32'),(206,164,'iclogo','85d8ed6a-47dc-11e7-a03b-080027955c00','murata.png','image/png',4777,'png',NULL,'2017-06-02 16:43:32'),(207,165,'iclogo','85d919e8-47dc-11e7-93c9-080027955c00','mwave.png','image/png',3370,'png',NULL,'2017-06-02 16:43:32'),(208,166,'iclogo','85d945d0-47dc-11e7-bf20-080027955c00','myson.png','image/png',1932,'png',NULL,'2017-06-02 16:43:32'),(209,167,'iclogo','85d96f10-47dc-11e7-8a3d-080027955c00','nec1.png','image/png',3166,'png',NULL,'2017-06-02 16:43:32'),(210,167,'iclogo','85d98a9a-47dc-11e7-8918-080027955c00','nec2.png','image/png',3071,'png',NULL,'2017-06-02 16:43:32'),(211,168,'iclogo','85d9b574-47dc-11e7-88fd-080027955c00','nexflash.png','image/png',7789,'png',NULL,'2017-06-02 16:43:32'),(212,169,'iclogo','85d9e45e-47dc-11e7-8e23-080027955c00','njr.png','image/png',3419,'png',NULL,'2017-06-02 16:43:32'),(213,170,'iclogo','85da1244-47dc-11e7-9b48-080027955c00','ns1.png','image/png',1959,'png',NULL,'2017-06-02 16:43:32'),(214,170,'iclogo','85da358a-47dc-11e7-aad8-080027955c00','ns2.png','image/png',1952,'png',NULL,'2017-06-02 16:43:32'),(215,171,'iclogo','85da6d7a-47dc-11e7-8f85-080027955c00','nvidia.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(216,172,'iclogo','85daa556-47dc-11e7-845a-080027955c00','oak.png','image/png',2614,'png',NULL,'2017-06-02 16:43:32'),(217,173,'iclogo','85dad24c-47dc-11e7-b227-080027955c00','oki1.png','image/png',2267,'png',NULL,'2017-06-02 16:43:32'),(218,173,'iclogo','85daf0ce-47dc-11e7-9ef5-080027955c00','oki.png','image/png',2546,'png',NULL,'2017-06-02 16:43:32'),(219,174,'iclogo','85db1806-47dc-11e7-a95b-080027955c00','opti.png','image/png',1684,'png',NULL,'2017-06-02 16:43:32'),(220,175,'iclogo','85db4114-47dc-11e7-a6d6-080027955c00','orbit.png','image/png',3347,'png',NULL,'2017-06-02 16:43:32'),(221,176,'iclogo','85db6e00-47dc-11e7-ab9c-080027955c00','oren.png','image/png',3497,'png',NULL,'2017-06-02 16:43:32'),(222,177,'iclogo','85db966e-47dc-11e7-b19e-080027955c00','perform.png','image/png',3284,'png',NULL,'2017-06-02 16:43:32'),(223,178,'iclogo','85dbbe46-47dc-11e7-8bc5-080027955c00','pericom.png','image/png',2311,'png',NULL,'2017-06-02 16:43:32'),(224,179,'iclogo','85dbe664-47dc-11e7-86dc-080027955c00','phaslink.png','image/png',2669,'png',NULL,'2017-06-02 16:43:32'),(225,180,'iclogo','85dc124c-47dc-11e7-8a1e-080027955c00','philips.png','image/png',8690,'png',NULL,'2017-06-02 16:43:32'),(226,181,'iclogo','85dc4028-47dc-11e7-bc6b-080027955c00','plx.png','image/png',4749,'png',NULL,'2017-06-02 16:43:32'),(227,182,'iclogo','85dc69c2-47dc-11e7-adc1-080027955c00','pmc.png','image/png',3497,'png',NULL,'2017-06-02 16:43:32'),(228,183,'iclogo','85dc9c3a-47dc-11e7-a4a1-080027955c00','pmi.png','image/png',3807,'png',NULL,'2017-06-02 16:43:32'),(229,184,'iclogo','85dcf04a-47dc-11e7-8c31-080027955c00','ptc.png','image/png',2669,'png',NULL,'2017-06-02 16:43:32'),(230,185,'iclogo','85dd1b7e-47dc-11e7-8c6b-080027955c00','pwrsmart.png','image/png',1389,'png',NULL,'2017-06-02 16:43:32'),(231,186,'iclogo','85dd4518-47dc-11e7-83dd-080027955c00','qlogic.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(232,187,'iclogo','85dd6a0c-47dc-11e7-bbde-080027955c00','qualcomm.png','image/png',3326,'png',NULL,'2017-06-02 16:43:32'),(233,188,'iclogo','85dd9176-47dc-11e7-9ab5-080027955c00','quality.png','image/png',1309,'png',NULL,'2017-06-02 16:43:32'),(234,189,'iclogo','85ddb656-47dc-11e7-80d3-080027955c00','rabbit.png','image/png',2857,'png',NULL,'2017-06-02 16:43:32'),(235,190,'iclogo','85ddd9ec-47dc-11e7-a4aa-080027955c00','ramtron.png','image/png',1573,'png',NULL,'2017-06-02 16:43:32'),(236,191,'iclogo','85de9954-47dc-11e7-b202-080027955c00','raytheon.png','image/png',4303,'png',NULL,'2017-06-02 16:43:32'),(237,192,'iclogo','85dec6ea-47dc-11e7-8619-080027955c00','rca.png','image/png',1860,'png',NULL,'2017-06-02 16:43:32'),(238,193,'iclogo','85def21e-47dc-11e7-9544-080027955c00','realtek.png','image/png',2993,'png',NULL,'2017-06-02 16:43:32'),(239,194,'iclogo','85df2324-47dc-11e7-8575-080027955c00','rectron.png','image/png',1691,'png',NULL,'2017-06-02 16:43:32'),(240,195,'iclogo','85df59ca-47dc-11e7-8735-080027955c00','rendit.png','image/png',1370,'png',NULL,'2017-06-02 16:43:32'),(241,196,'iclogo','85e064c8-47dc-11e7-8113-080027955c00','renesas.png','image/png',8761,'png',NULL,'2017-06-02 16:43:32'),(242,197,'iclogo','85e0b52c-47dc-11e7-a67a-080027955c00','rockwell.png','image/png',1704,'png',NULL,'2017-06-02 16:43:32'),(243,198,'iclogo','85e0f1c2-47dc-11e7-b69b-080027955c00','rohm.png','image/png',2693,'png',NULL,'2017-06-02 16:43:32'),(244,199,'iclogo','85e11d1e-47dc-11e7-8646-080027955c00','s3.png','image/png',2189,'png',NULL,'2017-06-02 16:43:32'),(245,200,'iclogo','85e1476c-47dc-11e7-ab60-080027955c00','sage.png','image/png',2735,'png',NULL,'2017-06-02 16:43:32'),(246,201,'iclogo','85e17278-47dc-11e7-9023-080027955c00','saifun.png','image/png',19242,'png',NULL,'2017-06-02 16:43:32'),(247,202,'iclogo','85e1b332-47dc-11e7-ab6e-080027955c00','sames.png','image/png',2614,'png',NULL,'2017-06-02 16:43:32'),(248,203,'iclogo','85e22cb8-47dc-11e7-a8d9-080027955c00','samsung.png','image/png',1841,'png',NULL,'2017-06-02 16:43:32'),(249,204,'iclogo','85e2f0e4-47dc-11e7-9f9f-080027955c00','sanken1.png','image/png',2214,'png',NULL,'2017-06-02 16:43:32'),(250,204,'iclogo','85e314fc-47dc-11e7-9264-080027955c00','sanken.png','image/png',5309,'png',NULL,'2017-06-02 16:43:32'),(251,205,'iclogo','85e345a8-47dc-11e7-ad42-080027955c00','sanyo1.png','image/png',2228,'png',NULL,'2017-06-02 16:43:32'),(252,205,'iclogo','85e362d6-47dc-11e7-9d50-080027955c00','sanyo.png','image/png',2455,'png',NULL,'2017-06-02 16:43:32'),(253,206,'iclogo','85e39008-47dc-11e7-be1f-080027955c00','scenix.png','image/png',1869,'png',NULL,'2017-06-02 16:43:32'),(254,207,'iclogo','85e3bccc-47dc-11e7-8352-080027955c00','sec1.png','image/png',9392,'png',NULL,'2017-06-02 16:43:32'),(255,207,'iclogo','85e3e562-47dc-11e7-8119-080027955c00','sec.png','image/png',2051,'png',NULL,'2017-06-02 16:43:32'),(256,208,'iclogo','85e41f0a-47dc-11e7-a36d-080027955c00','seeq.png','image/png',2903,'png',NULL,'2017-06-02 16:43:32'),(257,209,'iclogo','85e44f7a-47dc-11e7-a5c4-080027955c00','seikoi.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(258,209,'iclogo','85e471da-47dc-11e7-b990-080027955c00','semelab.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(259,210,'iclogo','85e4a5a6-47dc-11e7-a9a2-080027955c00','semtech.png','image/png',1431,'png',NULL,'2017-06-02 16:43:32'),(260,211,'iclogo','85e4cdce-47dc-11e7-94cd-080027955c00','sgs1.png','image/png',2339,'png',NULL,'2017-06-02 16:43:32'),(261,212,'iclogo','85e4f79a-47dc-11e7-a607-080027955c00','sgs2.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(262,213,'iclogo','85e51cac-47dc-11e7-a06a-080027955c00','sharp.png','image/png',2258,'png',NULL,'2017-06-02 16:43:32'),(263,214,'iclogo','85e5834a-47dc-11e7-a26a-080027955c00','shindgen.png','image/png',1629,'png',NULL,'2017-06-02 16:43:32'),(264,215,'iclogo','85e5b1bc-47dc-11e7-b643-080027955c00','siemens1.png','image/png',1216,'png',NULL,'2017-06-02 16:43:32'),(265,215,'iclogo','85e5cfa8-47dc-11e7-a5f9-080027955c00','siemens2.png','image/png',2916,'png',NULL,'2017-06-02 16:43:32'),(266,216,'iclogo','85e5f69a-47dc-11e7-82ad-080027955c00','sierra.png','image/png',2321,'png',NULL,'2017-06-02 16:43:32'),(267,217,'iclogo','85e618e6-47dc-11e7-b332-080027955c00','sigmatel.png','image/png',1790,'png',NULL,'2017-06-02 16:43:32'),(268,218,'iclogo','85e63ea2-47dc-11e7-abf1-080027955c00','signetic.png','image/png',1519,'png',NULL,'2017-06-02 16:43:32'),(269,219,'iclogo','85e66792-47dc-11e7-84f9-080027955c00','siliconlabs.png','image/png',5540,'png',NULL,'2017-06-02 16:43:32'),(270,220,'iclogo','85e69032-47dc-11e7-8b1e-080027955c00','siliconm.png','image/png',3817,'png',NULL,'2017-06-02 16:43:32'),(271,221,'iclogo','85e6b896-47dc-11e7-8884-080027955c00','silicons.png','image/png',2320,'png',NULL,'2017-06-02 16:43:32'),(272,221,'iclogo','85e6d6b4-47dc-11e7-bb69-080027955c00','simtek.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(273,222,'iclogo','85e70030-47dc-11e7-9abc-080027955c00','siliconx.png','image/png',2464,'png',NULL,'2017-06-02 16:43:32'),(274,223,'iclogo','85e72d76-47dc-11e7-adec-080027955c00','silnans.png','image/png',1549,'png',NULL,'2017-06-02 16:43:32'),(275,224,'iclogo','85e763ae-47dc-11e7-ac87-080027955c00','sipex.png','image/png',4029,'png',NULL,'2017-06-02 16:43:32'),(276,225,'iclogo','85e78ea6-47dc-11e7-bb44-080027955c00','sis.png','image/png',3608,'png',NULL,'2017-06-02 16:43:32'),(277,226,'iclogo','85e7bc3c-47dc-11e7-a0a5-080027955c00','smc1.png','image/png',1763,'png',NULL,'2017-06-02 16:43:32'),(278,227,'iclogo','85e7e8d8-47dc-11e7-baa5-080027955c00','smsc1.png','image/png',1781,'png',NULL,'2017-06-02 16:43:32'),(279,227,'iclogo','85e8064c-47dc-11e7-8c3a-080027955c00','smsc.png','image/png',2117,'png',NULL,'2017-06-02 16:43:32'),(280,228,'iclogo','85e83504-47dc-11e7-987a-080027955c00','sony.png','image/png',2476,'png',NULL,'2017-06-02 16:43:32'),(281,229,'iclogo','85e862f4-47dc-11e7-84ae-080027955c00','space.png','image/png',3377,'png',NULL,'2017-06-02 16:43:32'),(282,230,'iclogo','85e88c7a-47dc-11e7-b87e-080027955c00','spectek.png','image/png',2228,'png',NULL,'2017-06-02 16:43:32'),(283,231,'iclogo','85e8bc2c-47dc-11e7-b103-080027955c00','spt.png','image/png',3419,'png',NULL,'2017-06-02 16:43:32'),(284,232,'iclogo','85e98b2a-47dc-11e7-b2d2-080027955c00','sss.png','image/png',1871,'png',NULL,'2017-06-02 16:43:32'),(285,233,'iclogo','85e9b9e2-47dc-11e7-bc33-080027955c00','sst.png','image/png',3072,'png',NULL,'2017-06-02 16:43:32'),(286,234,'iclogo','85e9e958-47dc-11e7-8d66-080027955c00','st.png','image/png',1604,'png',NULL,'2017-06-02 16:43:32'),(287,235,'iclogo','85ea13d8-47dc-11e7-b62e-080027955c00','summit.png','image/png',11440,'png',NULL,'2017-06-02 16:43:32'),(288,236,'iclogo','85ea43e4-47dc-11e7-bac4-080027955c00','synergy.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(289,237,'iclogo','85ea6ebe-47dc-11e7-9ed3-080027955c00','synertek.png','image/png',1789,'png',NULL,'2017-06-02 16:43:32'),(290,238,'iclogo','85ea9ea2-47dc-11e7-93f1-080027955c00','taiwsemi.png','image/png',1475,'png',NULL,'2017-06-02 16:43:32'),(291,239,'iclogo','85ead8f4-47dc-11e7-902a-080027955c00','tdk.png','image/png',3687,'png',NULL,'2017-06-02 16:43:32'),(292,240,'iclogo','85eb0996-47dc-11e7-93f8-080027955c00','teccor.png','image/png',1869,'png',NULL,'2017-06-02 16:43:32'),(293,241,'iclogo','85eb4154-47dc-11e7-a901-080027955c00','telcom.png','image/png',2555,'png',NULL,'2017-06-02 16:43:32'),(294,242,'iclogo','85eb71ce-47dc-11e7-89d7-080027955c00','teledyne.png','image/png',1904,'png',NULL,'2017-06-02 16:43:32'),(295,243,'iclogo','85eba37e-47dc-11e7-9293-080027955c00','telefunk.png','image/png',2715,'png',NULL,'2017-06-02 16:43:32'),(296,244,'iclogo','85ebdae2-47dc-11e7-b5af-080027955c00','teltone.png','image/png',4303,'png',NULL,'2017-06-02 16:43:32'),(297,245,'iclogo','85ec1dfe-47dc-11e7-8609-080027955c00','thomscsf.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(298,246,'iclogo','85ec5cc4-47dc-11e7-89c2-080027955c00','ti1.png','image/png',1869,'png',NULL,'2017-06-02 16:43:32'),(299,246,'iclogo','85ec82e4-47dc-11e7-be6e-080027955c00','ti.png','image/png',1789,'png',NULL,'2017-06-02 16:43:32'),(300,247,'iclogo','85ecd992-47dc-11e7-a853-080027955c00','toko.png','image/png',1907,'png',NULL,'2017-06-02 16:43:32'),(301,248,'iclogo','85ed2d8e-47dc-11e7-a964-080027955c00','toshiba1.png','image/png',1922,'png',NULL,'2017-06-02 16:43:32'),(302,248,'iclogo','85ed5818-47dc-11e7-8f5b-080027955c00','toshiba2.png','image/png',1309,'png',NULL,'2017-06-02 16:43:32'),(303,248,'iclogo','85ed8644-47dc-11e7-8bb2-080027955c00','toshiba3.png','image/png',2269,'png',NULL,'2017-06-02 16:43:32'),(304,249,'iclogo','85edd9dc-47dc-11e7-8a1c-080027955c00','trident.png','image/png',1414,'png',NULL,'2017-06-02 16:43:32'),(305,250,'iclogo','85ee0a88-47dc-11e7-8e0b-080027955c00','triquint.png','image/png',2294,'png',NULL,'2017-06-02 16:43:32'),(306,251,'iclogo','85ee3f30-47dc-11e7-872d-080027955c00','triscend.png','image/png',4521,'png',NULL,'2017-06-02 16:43:32'),(307,252,'iclogo','85ee70a4-47dc-11e7-b025-080027955c00','tseng.png','image/png',1466,'png',NULL,'2017-06-02 16:43:32'),(308,253,'iclogo','85eea59c-47dc-11e7-b4bc-080027955c00','tundra.png','image/png',1709,'png',NULL,'2017-06-02 16:43:32'),(309,254,'iclogo','85eed1c0-47dc-11e7-815a-080027955c00','turbo_ic.png','image/png',7784,'png',NULL,'2017-06-02 16:43:32'),(310,255,'iclogo','85ef1572-47dc-11e7-9cb6-080027955c00','ubicom.png','image/png',2047,'png',NULL,'2017-06-02 16:43:32'),(311,256,'iclogo','85ef4394-47dc-11e7-b74f-080027955c00','umc.png','image/png',3032,'png',NULL,'2017-06-02 16:43:32'),(312,257,'iclogo','85ef70e4-47dc-11e7-80a4-080027955c00','unitrode.png','image/png',1309,'png',NULL,'2017-06-02 16:43:32'),(313,258,'iclogo','85ef9ce0-47dc-11e7-b4f6-080027955c00','usar1.png','image/png',2771,'png',NULL,'2017-06-02 16:43:32'),(314,258,'iclogo','85efbbf8-47dc-11e7-b214-080027955c00','usar.png','image/png',2793,'png',NULL,'2017-06-02 16:43:32'),(315,259,'iclogo','85efe6be-47dc-11e7-9d60-080027955c00','utmc.png','image/png',2047,'png',NULL,'2017-06-02 16:43:32'),(316,260,'iclogo','85f0121a-47dc-11e7-9344-080027955c00','utron.png','image/png',2047,'png',NULL,'2017-06-02 16:43:32'),(317,261,'iclogo','85f0397a-47dc-11e7-a675-080027955c00','v3.png','image/png',3248,'png',NULL,'2017-06-02 16:43:32'),(318,262,'iclogo','85f065f8-47dc-11e7-bd42-080027955c00','vadem.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(319,263,'iclogo','85f08ce0-47dc-11e7-b55b-080027955c00','vanguard.png','image/png',1454,'png',NULL,'2017-06-02 16:43:32'),(320,264,'iclogo','85f0b71a-47dc-11e7-ad3e-080027955c00','vantis.png','image/png',1475,'png',NULL,'2017-06-02 16:43:32'),(321,265,'iclogo','85f0e29e-47dc-11e7-8f4e-080027955c00','via.png','image/png',1922,'png',NULL,'2017-06-02 16:43:32'),(322,266,'iclogo','85f10c60-47dc-11e7-a299-080027955c00','virata.png','image/png',3764,'png',NULL,'2017-06-02 16:43:32'),(323,267,'iclogo','85f138ca-47dc-11e7-9949-080027955c00','vishay.png','image/png',4410,'png',NULL,'2017-06-02 16:43:32'),(324,268,'iclogo','85f16fa2-47dc-11e7-8ef0-080027955c00','vistech.png','image/png',1942,'png',NULL,'2017-06-02 16:43:32'),(325,269,'iclogo','85f19fea-47dc-11e7-a16b-080027955c00','vitelic.png','image/png',1691,'png',NULL,'2017-06-02 16:43:32'),(326,270,'iclogo','85f1ca6a-47dc-11e7-8424-080027955c00','vlsi.png','image/png',1874,'png',NULL,'2017-06-02 16:43:32'),(327,271,'iclogo','85f1f4a4-47dc-11e7-ae4d-080027955c00','volterra.png','image/png',2029,'png',NULL,'2017-06-02 16:43:32'),(328,272,'iclogo','85f22258-47dc-11e7-890d-080027955c00','vtc.png','image/png',2223,'png',NULL,'2017-06-02 16:43:32'),(329,273,'iclogo','85f24c1a-47dc-11e7-ab78-080027955c00','wafscale.png','image/png',2985,'png',NULL,'2017-06-02 16:43:32'),(330,274,'iclogo','85f276ae-47dc-11e7-9531-080027955c00','wdc1.png','image/png',1784,'png',NULL,'2017-06-02 16:43:32'),(331,274,'iclogo','85f29328-47dc-11e7-ad35-080027955c00','wdc2.png','image/png',1403,'png',NULL,'2017-06-02 16:43:32'),(332,275,'iclogo','85f2b9d4-47dc-11e7-815e-080027955c00','weitek.png','image/png',1468,'png',NULL,'2017-06-02 16:43:32'),(333,276,'iclogo','85f2e4cc-47dc-11e7-b91e-080027955c00','winbond.png','image/png',5402,'png',NULL,'2017-06-02 16:43:32'),(334,277,'iclogo','85f31082-47dc-11e7-886e-080027955c00','wolf.png','image/png',2343,'png',NULL,'2017-06-02 16:43:32'),(335,278,'iclogo','85f33e40-47dc-11e7-90f5-080027955c00','xemics.png','image/png',2029,'png',NULL,'2017-06-02 16:43:32'),(336,279,'iclogo','85f36898-47dc-11e7-a66a-080027955c00','xicor1.png','image/png',1259,'png',NULL,'2017-06-02 16:43:32'),(337,279,'iclogo','85f38936-47dc-11e7-969c-080027955c00','xicor.png','image/png',3389,'png',NULL,'2017-06-02 16:43:32'),(338,280,'iclogo','85f3b550-47dc-11e7-8717-080027955c00','xilinx.png','image/png',4186,'png',NULL,'2017-06-02 16:43:32'),(339,281,'iclogo','85f3e2b4-47dc-11e7-95a1-080027955c00','yamaha.png','image/png',1779,'png',NULL,'2017-06-02 16:43:32'),(340,282,'iclogo','85f40e06-47dc-11e7-8b71-080027955c00','zetex.png','image/png',1255,'png',NULL,'2017-06-02 16:43:32'),(341,283,'iclogo','85f43bb0-47dc-11e7-8161-080027955c00','zilog1.png','image/png',1958,'png',NULL,'2017-06-02 16:43:32'),(342,283,'iclogo','85f45b7c-47dc-11e7-b480-080027955c00','zilog2.png','image/png',2204,'png',NULL,'2017-06-02 16:43:32'),(343,283,'iclogo','85f474a4-47dc-11e7-9e7f-080027955c00','zilog3.png','image/png',2614,'png',NULL,'2017-06-02 16:43:32'),(344,283,'iclogo','85f48ba6-47dc-11e7-9c3a-080027955c00','zilog4.png','image/png',2405,'png',NULL,'2017-06-02 16:43:32'),(345,284,'iclogo','85f52c5a-47dc-11e7-a19e-080027955c00','zmda.png','image/png',3709,'png',NULL,'2017-06-02 16:43:32'),(346,285,'iclogo','85f55a5e-47dc-11e7-8eb5-080027955c00','zoran.png','image/png',2784,'png',NULL,'2017-06-02 16:43:32');
/*!40000 ALTER TABLE `ManufacturerICLogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MetaPartParameterCriteria`
--

DROP TABLE IF EXISTS `MetaPartParameterCriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MetaPartParameterCriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `partParameterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double DEFAULT NULL,
  `normalizedValue` double DEFAULT NULL,
  `stringValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valueType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siPrefix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6EE1D3924CE34BEC` (`part_id`),
  KEY `IDX_6EE1D39219187357` (`siPrefix_id`),
  KEY `IDX_6EE1D392F8BD700D` (`unit_id`),
  CONSTRAINT `FK_6EE1D39219187357` FOREIGN KEY (`siPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_6EE1D3924CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_6EE1D392F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MetaPartParameterCriteria`
--

LOCK TABLES `MetaPartParameterCriteria` WRITE;
/*!40000 ALTER TABLE `MetaPartParameterCriteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `MetaPartParameterCriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Part`
--

DROP TABLE IF EXISTS `Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `footprint_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `stockLevel` int(11) NOT NULL,
  `minStockLevel` int(11) NOT NULL,
  `averagePrice` decimal(13,4) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `needsReview` tinyint(1) NOT NULL,
  `partCondition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productionRemarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `internalPartNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `removals` tinyint(1) NOT NULL,
  `lowStock` tinyint(1) NOT NULL,
  `metaPart` tinyint(1) NOT NULL,
  `partUnit_id` int(11) DEFAULT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E93DDFF812469DE2` (`category_id`),
  KEY `IDX_E93DDFF851364C98` (`footprint_id`),
  KEY `IDX_E93DDFF8F7A36E87` (`partUnit_id`),
  KEY `IDX_E93DDFF873CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_E93DDFF812469DE2` FOREIGN KEY (`category_id`) REFERENCES `PartCategory` (`id`),
  CONSTRAINT `FK_E93DDFF851364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`),
  CONSTRAINT `FK_E93DDFF873CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`),
  CONSTRAINT `FK_E93DDFF8F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part`
--

LOCK TABLES `Part` WRITE;
/*!40000 ALTER TABLE `Part` DISABLE KEYS */;
INSERT INTO `Part` VALUES (1,2,NULL,'Laptop (parts only) ','','',50,0,50.0000,'',0,'','','2017-06-02 17:40:41','',0,0,0,1,2),(2,2,NULL,'Internal/External power supply and/or charger','','',100,0,20.0000,'',0,'','','2017-06-02 17:41:56','',0,0,0,1,2),(3,2,NULL,'Docking Station','','',50,0,20.0000,'',0,'','','2017-06-02 17:42:54','',0,0,0,1,2),(4,2,NULL,'Laptop','','',25,0,100.0000,'',0,'','','2017-06-02 17:45:29','',0,0,0,1,2),(5,3,NULL,'Desktop/Tower','','',300,0,50.0000,'',0,'','','2017-06-02 18:11:01','',0,0,0,1,2),(6,3,NULL,'ATX Power Supply','','',100,0,10.0000,'',0,'','','2017-06-02 18:22:04','',0,0,0,1,2),(7,3,NULL,'ATX Power Supply (Modular)','','',100,0,20.0000,'',0,'','','2017-06-02 18:27:04','',0,0,0,1,2),(8,3,NULL,'Desktop Case Only','','',200,0,20.0000,'',0,'','','2017-06-02 18:27:42','',0,0,0,1,2),(9,3,NULL,'Desktop for Parts','','',100,0,30.0000,'',0,'','','2017-06-02 18:28:26','',0,0,0,1,2),(11,4,NULL,'Motherboards (Desktop)','','',100,0,10.0000,'',0,'','','2017-06-02 20:55:50','',0,0,0,1,2),(12,4,NULL,'Motherboards (Desktop w/ PCIe slot)','','',100,0,20.0000,'',0,'','','2017-06-02 21:01:35','',0,0,0,1,2),(13,5,NULL,'Processors','','',100,0,10.0000,'',0,'','','2017-06-02 21:02:18','',0,0,0,1,2),(14,5,NULL,'Dual Core Processor ','','',100,0,30.0000,'',0,'','','2017-06-02 21:04:28','',0,0,0,1,2),(15,5,NULL,'Tri Core','','',100,0,40.0000,'',0,'','','2017-06-02 21:08:48','',0,0,0,1,2),(16,5,NULL,'Quad Core','','',100,0,50.0000,'',0,'','','2017-06-02 21:10:14','',0,0,0,1,2),(17,6,NULL,'1GB RAM','','',50,0,5.0000,'',0,'','','2017-06-02 21:23:53','',0,0,0,1,2),(18,6,NULL,'2GB RAM','','',50,0,10.0000,'',0,'','','2017-06-02 21:24:34','',0,0,0,1,2),(19,6,NULL,'4GB RAM','','',0,0,0.0000,'',0,'','','2017-06-02 21:25:37','',0,0,0,1,2),(20,6,NULL,'8GB RAM','','',4,0,10.0000,'',0,'','','2017-06-02 21:26:40','',0,0,0,1,2),(21,6,NULL,'16GB RAM','','',2,0,80.0000,'',0,'','','2017-06-02 21:27:22','',0,0,0,1,2),(22,7,NULL,'40GB or below Hard Drive','','',5,0,1.0000,'',0,'','','2017-06-02 21:29:15','',0,0,0,1,2),(23,7,NULL,'41 - 250GB Hard Drive','','',10,0,10.0000,'',0,'','','2017-06-02 21:30:06','',0,0,0,1,2),(24,7,NULL,'251 - 500GB Hard Drive','','',10,0,15.0000,'',0,'','','2017-06-02 21:31:15','',0,0,0,1,2),(25,7,NULL,'501GB - 1TB Hard Drive','','',4,0,20.0000,'',0,'','','2017-06-02 21:32:21','',0,0,0,1,2),(26,7,NULL,'1TB and over Hard Drive','','',2,0,25.0000,'',0,'','','2017-06-02 21:33:13','',0,0,0,1,2),(27,7,NULL,'Laptop: 40GB or below Hard Drive','','',2,0,6.0000,'',0,'','','2017-06-02 21:34:47','',0,0,0,1,2),(28,7,NULL,'Laptop: 41 - 250GB Hard Drive','','',5,0,15.0000,'',0,'','','2017-06-02 21:35:51','',0,0,0,1,2),(29,7,NULL,'Laptop: 251 - 500GB Hard Drive','','',4,0,20.0000,'',0,'','','2017-06-02 21:36:56','',0,0,0,1,2),(30,7,NULL,'Laptop 501GB - 1TB Hard Drive','','',2,0,25.0000,'',0,'','','2017-06-02 21:37:43','',0,0,0,1,2),(31,7,NULL,'Laptop: 1TB and over Hard Drive','','',1,0,30.0000,'',0,'','','2017-06-02 21:38:25','',0,0,0,1,2),(32,8,NULL,'Fan','','',100,0,1.0000,'',0,'','','2017-06-02 21:39:07','',0,0,0,1,2),(33,8,NULL,'Fan w/ light','','',10,0,2.0000,'',0,'','','2017-06-02 21:39:46','',0,0,0,1,2),(34,8,NULL,'Heat Sink w/ Fan','','',20,0,4.0000,'',0,'','','2017-06-02 21:40:25','',0,0,0,1,2),(35,8,NULL,'SLI Bridge','','',2,0,10.0000,'',0,'','','2017-06-02 21:41:38','',0,0,0,1,2),(36,9,NULL,'Sound Card','','',10,0,5.0000,'',0,'','','2017-06-02 21:44:02','',0,0,0,1,2),(37,9,NULL,'Graphics Card','','',1,0,5.0000,'',0,'','','2017-06-02 21:48:33','',0,0,0,1,2),(38,9,NULL,'PCI/AGP card','','',30,0,5.0000,'',0,'','','2017-06-02 21:49:20','',0,0,0,1,2),(39,9,NULL,'PCI wireless adapter','','',20,0,5.0000,'',0,'','','2017-06-02 21:49:49','',0,0,0,1,2),(40,9,NULL,'TV Tuner','','',5,0,5.0000,'',0,'','','2017-06-02 21:50:22','',0,0,0,1,2),(41,9,NULL,'PCI Network card','','',20,0,5.0000,'',0,'','','2017-06-02 21:51:40','',0,0,0,1,2),(42,9,NULL,'PCIe card','','',30,0,15.0000,'',0,'','','2017-06-02 21:52:41','',0,0,0,1,2),(43,10,NULL,'Earbuds/Headphones','','',20,0,0.0500,'',0,'','','2017-06-02 21:53:35','',0,0,0,1,1),(44,10,NULL,'PC Speakers (no power)','','',10,0,2.0000,'',0,'','','2017-06-02 21:54:19','',0,0,0,1,1),(45,10,NULL,'Keyboard (PS/2)','','',100,0,3.0000,'',0,'','','2017-06-02 21:55:33','',0,0,0,1,1),(46,10,NULL,'Mouse (PS/2)','','',100,0,3.0000,'',0,'','','2017-06-02 21:56:23','',0,0,0,1,1),(47,10,NULL,'PC Speakers (powered)','','',12,0,5.0000,'',0,'','','2017-06-02 21:57:13','',0,0,0,1,1),(48,10,NULL,'Keyboard (USB)','','',100,0,5.0000,'',0,'','','2017-06-02 21:57:49','',0,0,0,1,1),(49,10,NULL,'Mouse (USB)','','',101,0,0.0990,'',0,'','','2017-06-02 21:58:17','',0,0,0,1,1),(50,10,NULL,'Headset','','',3,0,5.0000,'',0,'','','2017-06-02 22:02:28','',0,0,0,1,1),(51,10,NULL,'CD/RW','','',80,0,5.0000,'',0,'','','2017-06-02 22:03:02','',0,0,0,1,2),(52,10,NULL,'DVD/RW','','',30,0,10.0000,'',0,'','','2017-06-02 22:03:36','',0,0,0,1,2),(53,10,NULL,'KVM Switch','','',10,0,10.0000,'',0,'','','2017-06-02 22:04:16','',0,0,0,1,1),(54,10,NULL,'Modem','','',13,0,10.0000,'',0,'','','2017-06-02 22:04:43','',0,0,0,1,1),(55,10,NULL,'Fax','','',4,0,10.0000,'',0,'','','2017-06-02 22:06:05','',0,0,0,1,1),(56,10,NULL,'Scanner','','',2,0,10.0000,'',0,'','','2017-06-02 22:06:46','',0,0,0,1,1),(57,10,NULL,'Printer','','',12,0,10.0000,'',0,'','','2017-06-02 22:07:19','',0,0,0,1,1),(58,11,NULL,'15\" - 17\" Monitor','','',14,0,20.0000,'',0,'','','2017-06-02 22:08:07','',0,0,0,1,1),(59,11,NULL,'18\" - 21\" Monitor','','',15,0,30.0000,'',0,'','','2017-06-02 22:08:46','',0,0,0,1,1),(60,11,NULL,'22\" - 24\" Monitor','','',8,0,50.0000,'',0,'','','2017-06-02 22:09:25','',0,0,0,1,1),(61,12,NULL,'Wired Router','','',4,0,5.0000,'',0,'','','2017-06-02 22:11:15','',0,0,0,1,1),(62,12,NULL,'Wireless Router','','',13,0,10.0000,'',0,'','','2017-06-02 22:11:47','',0,0,0,1,1),(63,13,NULL,'12 Port Switch','','',100,0,10.0000,'',0,'','','2017-06-02 22:31:34','',0,0,0,1,1),(64,13,NULL,'24 Port Switch','','',100,0,25.0000,'',0,'','','2017-06-02 22:32:07','',0,0,0,1,1),(65,13,NULL,'48 Port Switch','','',100,0,50.0000,'',0,'','','2017-06-02 22:32:41','',0,0,0,1,1),(66,14,NULL,'Printer','','',15,0,10.0000,'',0,'','','2017-06-02 22:33:29','',0,0,0,1,1),(67,14,NULL,'Cell Phone ','','',15,0,2.0000,'',0,'','','2017-06-02 22:34:08','',0,0,0,1,1),(68,14,NULL,'Tablet','','',15,0,2.0000,'',0,'','','2017-06-02 22:34:33','',0,0,0,1,1),(69,14,NULL,'AC/DC Adapter ','','',15,0,5.0000,'',0,'','','2017-06-02 22:35:12','',0,0,0,1,1),(70,14,NULL,'Car Adaptor  ','','',18,0,5.0000,'',0,'','','2017-06-02 22:35:57','',0,0,0,1,1),(71,15,NULL,'Telephone (Any Length)','','',25,0,0.0400,'',0,'','','2017-06-02 22:36:37','',0,0,0,1,1),(72,15,NULL,'A/C 2or 3 Prong 15 Amp Power','','',50,0,1.0000,'',0,'','','2017-06-02 22:37:31','',0,0,0,1,1),(73,15,NULL,'PATA/Floppy','','',45,0,1.0000,'',0,'','','2017-06-02 22:38:01','',0,0,0,1,1),(74,15,NULL,'SATA','','',55,0,1.0000,'',0,'','','2017-06-02 22:38:34','',0,0,0,1,1),(75,15,NULL,'COAX (Any Length)','','',75,0,2.0000,'',0,'','','2017-06-02 22:39:27','',0,0,0,1,1),(76,15,NULL,'A/V (Any Length)','','',55,0,2.0000,'',0,'','','2017-06-02 22:41:34','',0,0,0,1,1),(77,15,NULL,'Extention Cords','','',65,0,2.0000,'',0,'','','2017-06-02 22:42:38','',0,0,0,1,1),(78,15,NULL,'Printer Data Cables (Parallel) ','','',75,0,2.0000,'',0,'','','2017-06-02 22:43:20','',0,0,0,1,1),(79,15,NULL,'CAT 5 (<101)','','',100,0,2.0000,'',0,'','','2017-06-02 22:45:29','',0,0,0,1,1),(80,15,NULL,'Cell Phone/Tablet (Data)','','',150,0,3.0000,'',0,'','','2017-06-02 22:52:07','',0,0,0,1,1),(81,15,NULL,'Surge Protectors','','',150,0,3.0000,'',0,'','','2017-06-02 22:53:01','',0,0,0,1,1),(82,15,NULL,'DVI/VGA','','',100,0,3.0000,'',0,'','','2017-06-02 22:55:39','',0,0,0,1,1),(83,15,NULL,'USB (Any)','','',65,0,3.0000,'',0,'','','2017-06-02 22:59:00','',0,0,0,1,1),(84,15,NULL,'SCSI Cable','','',65,0,3.0000,'',0,'','','2017-06-02 22:59:55','',0,0,0,1,1),(85,15,NULL,'DB 25 Cable (Male/Male)','','',75,0,25.0000,'',0,'','','2017-06-02 23:02:15','',0,0,0,1,1),(86,15,NULL,'A/C 3 Prong 20 Amp Power','','',65,0,5.0000,'',0,'','','2017-06-02 23:07:02','',0,0,0,1,1),(87,15,NULL,'HDMI','','',50,0,10.0000,'',0,'','','2017-06-02 23:08:20','',0,0,0,1,1),(88,15,NULL,'Display Port','','',55,0,10.0000,'',0,'','','2017-06-02 23:09:42','',0,0,0,1,1),(89,16,NULL,'Cable Splitter','','',1,0,3.0000,'',0,'','','2017-06-02 23:47:59','',0,0,0,1,1),(90,16,NULL,'DVI cable','','',1,0,3.0000,'',0,'','','2017-06-02 23:49:02','',0,0,0,1,1),(91,16,NULL,'VGA cable','','',1,0,3.0000,'',0,'','','2017-06-02 23:49:30','',0,0,0,1,1),(92,17,NULL,'DVD Player','','',4,0,10.0000,'',0,'','','2017-06-02 23:50:22','',0,0,0,1,1),(93,17,NULL,'VHS Player','','',2,0,10.0000,'',0,'','','2017-06-02 23:50:51','',0,0,0,1,1),(94,17,NULL,'Cassette Player','','',4,0,10.0000,'',0,'','','2017-06-02 23:51:32','',0,0,0,1,1),(95,17,NULL,'8-Track','','',2,0,10.0000,'',0,'','','2017-06-02 23:52:12','',0,0,0,1,1),(96,17,NULL,'Turntable','','',2,0,20.0000,'',0,'','','2017-06-02 23:53:09','',0,0,0,1,1),(97,17,NULL,'TIVO','','',1,0,20.0000,'',0,'','','2017-06-02 23:53:43','',0,0,0,1,1),(98,17,NULL,'Stereo Speakers','','',1,0,10.0000,'',0,'','','2017-06-02 23:54:13','',0,0,0,1,1),(99,17,NULL,'Blu-Ray Player','','',2,0,30.0000,'',0,'','','2017-06-02 23:54:52','',0,0,0,1,1),(100,18,NULL,'Double Server Rack','','',11,0,500.0000,'',0,'','','2017-06-02 23:57:06','',0,0,0,1,1),(101,18,NULL,'Glass Cabinet','','',0,0,0.0000,'',0,'','','2017-06-02 23:59:26','',0,0,0,1,1);
/*!40000 ALTER TABLE `Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartAttachment`
--

DROP TABLE IF EXISTS `PartAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `isImage` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_76D73D864CE34BEC` (`part_id`),
  CONSTRAINT `FK_76D73D864CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartAttachment`
--

LOCK TABLES `PartAttachment` WRITE;
/*!40000 ALTER TABLE `PartAttachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartCategory`
--

DROP TABLE IF EXISTS `PartCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_131FB619727ACA70` (`parent_id`),
  KEY `IDX_131FB619DA439252` (`lft`),
  KEY `IDX_131FB619D5E02D69` (`rgt`),
  CONSTRAINT `FK_131FB619727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `PartCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartCategory`
--

LOCK TABLES `PartCategory` WRITE;
/*!40000 ALTER TABLE `PartCategory` DISABLE KEYS */;
INSERT INTO `PartCategory` VALUES (1,NULL,1,36,0,1,'Root Category',NULL,'Root Category'),(2,1,2,3,1,1,'Laptop','Laptops and Parts','Root Category ➤ Laptop'),(3,1,4,5,1,1,'Desktop/Tower','Desktops/Towers and Parts','Root Category ➤ Desktop/Tower'),(4,1,6,7,1,1,'Motherboards (Desktop)','Motherboards and Parts ','Root Category ➤ Motherboards (Desktop)'),(5,1,8,9,1,1,'Processors','Processors and Processor parts. ','Root Category ➤ Processors'),(6,1,10,11,1,1,'Memory','Memory and Parts','Root Category ➤ Memory'),(7,1,12,13,1,1,'Hard Drive','Hard Drives and Hard Drive parts. ','Root Category ➤ Hard Drive'),(8,1,14,15,1,1,'Accessories','Fans, Fans w/light, Heat Sink & Fan, and SLI Bridge','Root Category ➤ Accessories'),(9,1,16,17,1,1,'Expansion Cards','Expansion Cards and Parts.','Root Category ➤ Expansion Cards'),(10,1,18,19,1,1,'Peripherals','Peripherals and Parts','Root Category ➤ Peripherals'),(11,1,20,21,1,1,'Monitors','Monitors and parts. ','Root Category ➤ Monitors'),(12,1,22,23,1,1,'Home Router','Wired, and Wireless Routers','Root Category ➤ Home Router'),(13,1,24,25,1,1,'Switches','Switches and assorted numbered port Switches. ','Root Category ➤ Switches'),(14,1,26,27,1,1,'Chargers/Power Supplies','Chargers/Power Supplies and parts. ','Root Category ➤ Chargers/Power Supplies'),(15,1,28,29,1,1,'Data Cables and Wires','Data Cables, Wires and parts. ','Root Category ➤ Data Cables and Wires'),(16,1,30,31,1,1,'Adaptors','Adapters and Adapter parts.','Root Category ➤ Adaptors'),(17,1,32,33,1,1,'A/V Players','Audio Visual (A/V) Players and parts. ','Root Category ➤ A/V Players'),(18,1,34,35,1,1,'Server Racks','Server Racks and parts. ','Root Category ➤ Server Racks');
/*!40000 ALTER TABLE `PartCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartDistributor`
--

DROP TABLE IF EXISTS `PartDistributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartDistributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `orderNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packagingUnit` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBA293844CE34BEC` (`part_id`),
  KEY `IDX_FBA293842D863A58` (`distributor_id`),
  CONSTRAINT `FK_FBA293842D863A58` FOREIGN KEY (`distributor_id`) REFERENCES `Distributor` (`id`),
  CONSTRAINT `FK_FBA293844CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartDistributor`
--

LOCK TABLES `PartDistributor` WRITE;
/*!40000 ALTER TABLE `PartDistributor` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartDistributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartImage`
--

DROP TABLE IF EXISTS `PartImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A180A76E4CE34BEC` (`part_id`),
  CONSTRAINT `FK_A180A76E4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartImage`
--

LOCK TABLES `PartImage` WRITE;
/*!40000 ALTER TABLE `PartImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartKeeprUser`
--

DROP TABLE IF EXISTS `PartKeeprUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartKeeprUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  `legacy` tinyint(1) NOT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `protected` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_provider` (`username`,`provider_id`),
  KEY `IDX_7572D706A53A8AA` (`provider_id`),
  CONSTRAINT `FK_7572D706A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `UserProvider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartKeeprUser`
--

LOCK TABLES `PartKeeprUser` WRITE;
/*!40000 ALTER TABLE `PartKeeprUser` DISABLE KEYS */;
INSERT INTO `PartKeeprUser` VALUES (1,1,'root','',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `PartKeeprUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartManufacturer`
--

DROP TABLE IF EXISTS `PartManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `partNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F085878B4CE34BEC` (`part_id`),
  KEY `IDX_F085878BA23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_F085878B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_F085878BA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartManufacturer`
--

LOCK TABLES `PartManufacturer` WRITE;
/*!40000 ALTER TABLE `PartManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartParameter`
--

DROP TABLE IF EXISTS `PartParameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartParameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double DEFAULT NULL,
  `normalizedValue` double DEFAULT NULL,
  `maximumValue` double DEFAULT NULL,
  `normalizedMaxValue` double DEFAULT NULL,
  `minimumValue` double DEFAULT NULL,
  `normalizedMinValue` double DEFAULT NULL,
  `stringValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valueType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siPrefix_id` int(11) DEFAULT NULL,
  `minSiPrefix_id` int(11) DEFAULT NULL,
  `maxSiPrefix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A28A98594CE34BEC` (`part_id`),
  KEY `IDX_A28A9859F8BD700D` (`unit_id`),
  KEY `IDX_A28A985919187357` (`siPrefix_id`),
  KEY `IDX_A28A9859569AA479` (`minSiPrefix_id`),
  KEY `IDX_A28A9859EFBC3F08` (`maxSiPrefix_id`),
  CONSTRAINT `FK_A28A985919187357` FOREIGN KEY (`siPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A98594CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_A28A9859569AA479` FOREIGN KEY (`minSiPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A9859EFBC3F08` FOREIGN KEY (`maxSiPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A9859F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartParameter`
--

LOCK TABLES `PartParameter` WRITE;
/*!40000 ALTER TABLE `PartParameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartParameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartUnit`
--

DROP TABLE IF EXISTS `PartUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartUnit`
--

LOCK TABLES `PartUnit` WRITE;
/*!40000 ALTER TABLE `PartUnit` DISABLE KEYS */;
INSERT INTO `PartUnit` VALUES (1,'Pieces','pcs',1);
/*!40000 ALTER TABLE `PartUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E00EE972A76ED395` (`user_id`),
  CONSTRAINT `FK_E00EE972A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectAttachment`
--

DROP TABLE IF EXISTS `ProjectAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_44010C5B166D1F9C` (`project_id`),
  CONSTRAINT `FK_44010C5B166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectAttachment`
--

LOCK TABLES `ProjectAttachment` WRITE;
/*!40000 ALTER TABLE `ProjectAttachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectPart`
--

DROP TABLE IF EXISTS `ProjectPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overageType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `overage` int(11) NOT NULL,
  `lotNumber` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0B193364CE34BEC` (`part_id`),
  KEY `IDX_B0B19336166D1F9C` (`project_id`),
  CONSTRAINT `FK_B0B19336166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`),
  CONSTRAINT `FK_B0B193364CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectPart`
--

LOCK TABLES `ProjectPart` WRITE;
/*!40000 ALTER TABLE `ProjectPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectRun`
--

DROP TABLE IF EXISTS `ProjectRun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectRun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `runDateTime` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_574A3B5C166D1F9C` (`project_id`),
  CONSTRAINT `FK_574A3B5C166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectRun`
--

LOCK TABLES `ProjectRun` WRITE;
/*!40000 ALTER TABLE `ProjectRun` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectRun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectRunPart`
--

DROP TABLE IF EXISTS `ProjectRunPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectRunPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `lotNumber` longtext COLLATE utf8_unicode_ci NOT NULL,
  `projectRun_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF41064B1A221EF0` (`projectRun_id`),
  KEY `IDX_BF41064B4CE34BEC` (`part_id`),
  CONSTRAINT `FK_BF41064B1A221EF0` FOREIGN KEY (`projectRun_id`) REFERENCES `ProjectRun` (`id`),
  CONSTRAINT `FK_BF41064B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectRunPart`
--

LOCK TABLES `ProjectRunPart` WRITE;
/*!40000 ALTER TABLE `ProjectRunPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectRunPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SchemaVersions`
--

DROP TABLE IF EXISTS `SchemaVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SchemaVersions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SchemaVersions`
--

LOCK TABLES `SchemaVersions` WRITE;
/*!40000 ALTER TABLE `SchemaVersions` DISABLE KEYS */;
INSERT INTO `SchemaVersions` VALUES ('20150608120000'),('20150708120022'),('20150724174030'),('20151001180120'),('20151002183125'),('20151031163951'),('20151208162723'),('20160103145302'),('20170108122512'),('20170108143802'),('20170113203042');
/*!40000 ALTER TABLE `SchemaVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiPrefix`
--

DROP TABLE IF EXISTS `SiPrefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiPrefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `exponent` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiPrefix`
--

LOCK TABLES `SiPrefix` WRITE;
/*!40000 ALTER TABLE `SiPrefix` DISABLE KEYS */;
INSERT INTO `SiPrefix` VALUES (1,'yotta','Y',24,10),(2,'zetta','Z',21,10),(3,'exa','E',18,10),(4,'peta','P',15,10),(5,'tera','T',12,10),(6,'giga','G',9,10),(7,'mega','M',6,10),(8,'kilo','k',3,10),(9,'hecto','h',2,10),(10,'deca','da',1,10),(11,'-','',0,10),(12,'deci','d',-1,10),(13,'centi','c',-2,10),(14,'milli','m',-3,10),(15,'micro','μ',-6,10),(16,'nano','n',-9,10),(17,'pico','p',-12,10),(18,'femto','f',-15,10),(19,'atto','a',-18,10),(20,'zepto','z',-21,10),(21,'yocto','y',-24,10),(22,'kibi','Ki',1,1024),(23,'mebi','Mi',2,1024),(24,'gibi','Gi',3,1024),(25,'tebi','Ti',4,1024),(26,'pebi','Pi',5,1024),(27,'exbi','Ei',6,1024),(28,'zebi','Zi',7,1024),(29,'yobi','Yi',8,1024);
/*!40000 ALTER TABLE `SiPrefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshot`
--

DROP TABLE IF EXISTS `StatisticSnapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `parts` int(11) NOT NULL,
  `categories` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshot`
--

LOCK TABLES `StatisticSnapshot` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshot` DISABLE KEYS */;
INSERT INTO `StatisticSnapshot` VALUES (1,'2017-06-02 16:44:54',0,1);
/*!40000 ALTER TABLE `StatisticSnapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshotUnit`
--

DROP TABLE IF EXISTS `StatisticSnapshotUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshotUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockLevel` int(11) NOT NULL,
  `statisticSnapshot_id` int(11) DEFAULT NULL,
  `partUnit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_368BD669A16DD05F` (`statisticSnapshot_id`),
  KEY `IDX_368BD669F7A36E87` (`partUnit_id`),
  CONSTRAINT `FK_368BD669A16DD05F` FOREIGN KEY (`statisticSnapshot_id`) REFERENCES `StatisticSnapshot` (`id`),
  CONSTRAINT `FK_368BD669F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshotUnit`
--

LOCK TABLES `StatisticSnapshotUnit` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshotUnit` DISABLE KEYS */;
INSERT INTO `StatisticSnapshotUnit` VALUES (1,0,1,1);
/*!40000 ALTER TABLE `StatisticSnapshotUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockEntry`
--

DROP TABLE IF EXISTS `StockEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockEntry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stockLevel` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `dateTime` datetime NOT NULL,
  `correction` tinyint(1) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E182997B4CE34BEC` (`part_id`),
  KEY `IDX_E182997BA76ED395` (`user_id`),
  CONSTRAINT `FK_E182997B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_E182997BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockEntry`
--

LOCK TABLES `StockEntry` WRITE;
/*!40000 ALTER TABLE `StockEntry` DISABLE KEYS */;
INSERT INTO `StockEntry` VALUES (1,1,NULL,50,50.0000,'2017-06-02 17:40:41',0,NULL),(2,2,NULL,100,20.0000,'2017-06-02 17:41:56',0,NULL),(3,3,NULL,50,20.0000,'2017-06-02 17:42:54',0,NULL),(4,4,NULL,25,100.0000,'2017-06-02 17:45:29',0,NULL),(5,5,NULL,300,50.0000,'2017-06-02 18:11:01',0,NULL),(6,6,NULL,100,10.0000,'2017-06-02 18:22:04',0,NULL),(7,7,NULL,100,20.0000,'2017-06-02 18:27:04',0,NULL),(8,8,NULL,200,20.0000,'2017-06-02 18:27:42',0,NULL),(9,9,NULL,100,30.0000,'2017-06-02 18:28:26',0,NULL),(11,11,NULL,100,10.0000,'2017-06-02 20:55:50',0,NULL),(12,12,NULL,100,20.0000,'2017-06-02 21:01:35',0,NULL),(13,13,NULL,100,10.0000,'2017-06-02 21:02:18',0,NULL),(14,14,NULL,100,30.0000,'2017-06-02 21:04:28',0,NULL),(15,15,NULL,100,40.0000,'2017-06-02 21:08:48',0,NULL),(16,16,NULL,100,50.0000,'2017-06-02 21:10:14',0,NULL),(17,17,NULL,50,5.0000,'2017-06-02 21:23:53',0,NULL),(18,18,NULL,50,10.0000,'2017-06-02 21:24:34',0,NULL),(19,20,NULL,4,10.0000,'2017-06-02 21:26:40',0,NULL),(20,21,NULL,2,80.0000,'2017-06-02 21:27:22',0,NULL),(21,22,NULL,5,1.0000,'2017-06-02 21:29:15',0,NULL),(22,23,NULL,10,10.0000,'2017-06-02 21:30:06',0,NULL),(23,24,NULL,10,15.0000,'2017-06-02 21:31:15',0,NULL),(24,25,NULL,4,20.0000,'2017-06-02 21:32:22',0,NULL),(25,26,NULL,2,25.0000,'2017-06-02 21:33:13',0,NULL),(26,27,NULL,2,6.0000,'2017-06-02 21:34:48',0,NULL),(27,28,NULL,5,15.0000,'2017-06-02 21:35:51',0,NULL),(28,29,NULL,4,20.0000,'2017-06-02 21:36:56',0,NULL),(29,30,NULL,2,25.0000,'2017-06-02 21:37:44',0,NULL),(30,31,NULL,1,30.0000,'2017-06-02 21:38:25',0,NULL),(31,32,NULL,100,1.0000,'2017-06-02 21:39:07',0,NULL),(32,33,NULL,10,2.0000,'2017-06-02 21:39:46',0,NULL),(33,34,NULL,20,4.0000,'2017-06-02 21:40:25',0,NULL),(34,35,NULL,2,10.0000,'2017-06-02 21:41:38',0,NULL),(35,36,NULL,10,5.0000,'2017-06-02 21:44:02',0,NULL),(36,37,NULL,1,5.0000,'2017-06-02 21:48:33',0,NULL),(37,38,NULL,30,5.0000,'2017-06-02 21:49:20',0,NULL),(38,39,NULL,20,5.0000,'2017-06-02 21:49:49',0,NULL),(39,40,NULL,5,5.0000,'2017-06-02 21:50:22',0,NULL),(40,41,NULL,20,5.0000,'2017-06-02 21:51:40',0,NULL),(41,42,NULL,30,15.0000,'2017-06-02 21:52:41',0,NULL),(42,43,NULL,20,0.0500,'2017-06-02 21:53:35',0,NULL),(43,44,NULL,10,2.0000,'2017-06-02 21:54:19',0,NULL),(44,45,NULL,100,3.0000,'2017-06-02 21:55:33',0,NULL),(45,46,NULL,100,3.0000,'2017-06-02 21:56:23',0,NULL),(46,47,NULL,12,5.0000,'2017-06-02 21:57:13',0,NULL),(47,48,NULL,100,5.0000,'2017-06-02 21:57:50',0,NULL),(48,49,NULL,100,0.0500,'2017-06-02 21:58:17',0,NULL),(49,49,1,1,5.0000,'2017-06-02 22:00:14',0,''),(50,50,NULL,3,5.0000,'2017-06-02 22:02:28',0,NULL),(51,51,NULL,80,5.0000,'2017-06-02 22:03:02',0,NULL),(52,52,NULL,30,10.0000,'2017-06-02 22:03:36',0,NULL),(53,53,NULL,10,10.0000,'2017-06-02 22:04:16',0,NULL),(54,54,NULL,13,10.0000,'2017-06-02 22:04:43',0,NULL),(55,55,NULL,4,10.0000,'2017-06-02 22:06:05',0,NULL),(56,56,NULL,2,10.0000,'2017-06-02 22:06:46',0,NULL),(57,57,NULL,12,10.0000,'2017-06-02 22:07:19',0,NULL),(58,58,NULL,14,20.0000,'2017-06-02 22:08:07',0,NULL),(59,59,NULL,15,30.0000,'2017-06-02 22:08:46',0,NULL),(60,60,NULL,8,50.0000,'2017-06-02 22:09:25',0,NULL),(61,61,NULL,4,5.0000,'2017-06-02 22:11:15',0,NULL),(62,62,NULL,13,10.0000,'2017-06-02 22:11:47',0,NULL),(63,63,NULL,100,10.0000,'2017-06-02 22:31:34',0,NULL),(64,64,NULL,100,25.0000,'2017-06-02 22:32:07',0,NULL),(65,65,NULL,100,50.0000,'2017-06-02 22:32:41',0,NULL),(66,66,NULL,15,10.0000,'2017-06-02 22:33:29',0,NULL),(67,67,NULL,15,2.0000,'2017-06-02 22:34:08',0,NULL),(68,68,NULL,15,2.0000,'2017-06-02 22:34:33',0,NULL),(69,69,NULL,15,5.0000,'2017-06-02 22:35:13',0,NULL),(70,70,NULL,18,5.0000,'2017-06-02 22:35:57',0,NULL),(71,71,NULL,25,0.0400,'2017-06-02 22:36:37',0,NULL),(72,72,NULL,50,1.0000,'2017-06-02 22:37:31',0,NULL),(73,73,NULL,45,1.0000,'2017-06-02 22:38:01',0,NULL),(74,74,NULL,55,1.0000,'2017-06-02 22:38:34',0,NULL),(75,75,NULL,75,2.0000,'2017-06-02 22:39:27',0,NULL),(76,76,NULL,55,2.0000,'2017-06-02 22:41:34',0,NULL),(77,77,NULL,65,2.0000,'2017-06-02 22:42:39',0,NULL),(78,78,NULL,75,2.0000,'2017-06-02 22:43:20',0,NULL),(79,79,NULL,100,2.0000,'2017-06-02 22:45:29',0,NULL),(80,80,NULL,150,3.0000,'2017-06-02 22:52:07',0,NULL),(81,81,NULL,150,3.0000,'2017-06-02 22:53:01',0,NULL),(82,82,NULL,100,3.0000,'2017-06-02 22:55:39',0,NULL),(83,83,NULL,65,3.0000,'2017-06-02 22:59:01',0,NULL),(84,84,NULL,65,3.0000,'2017-06-02 22:59:55',0,NULL),(85,85,NULL,75,25.0000,'2017-06-02 23:02:15',0,NULL),(86,86,NULL,65,5.0000,'2017-06-02 23:07:02',0,NULL),(87,87,NULL,50,10.0000,'2017-06-02 23:08:20',0,NULL),(88,88,NULL,55,10.0000,'2017-06-02 23:09:43',0,NULL),(89,89,NULL,1,3.0000,'2017-06-02 23:47:59',0,NULL),(90,90,NULL,1,3.0000,'2017-06-02 23:49:02',0,NULL),(91,91,NULL,1,3.0000,'2017-06-02 23:49:30',0,NULL),(92,92,NULL,4,10.0000,'2017-06-02 23:50:22',0,NULL),(93,93,NULL,2,10.0000,'2017-06-02 23:50:51',0,NULL),(94,94,NULL,4,10.0000,'2017-06-02 23:51:32',0,NULL),(95,95,NULL,2,10.0000,'2017-06-02 23:52:12',0,NULL),(96,96,NULL,2,20.0000,'2017-06-02 23:53:10',0,NULL),(97,97,NULL,1,20.0000,'2017-06-02 23:53:43',0,NULL),(98,98,NULL,1,10.0000,'2017-06-02 23:54:13',0,NULL),(99,99,NULL,2,30.0000,'2017-06-02 23:54:53',0,NULL),(100,100,NULL,11,500.0000,'2017-06-02 23:57:06',0,NULL);
/*!40000 ALTER TABLE `StockEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocation`
--

DROP TABLE IF EXISTS `StorageLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2C59071C5E237E06` (`name`),
  KEY `IDX_2C59071C12469DE2` (`category_id`),
  CONSTRAINT `FK_2C59071C12469DE2` FOREIGN KEY (`category_id`) REFERENCES `StorageLocationCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocation`
--

LOCK TABLES `StorageLocation` WRITE;
/*!40000 ALTER TABLE `StorageLocation` DISABLE KEYS */;
INSERT INTO `StorageLocation` VALUES (1,1,'Front of Building'),(2,1,'Shop Area');
/*!40000 ALTER TABLE `StorageLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocationCategory`
--

DROP TABLE IF EXISTS `StorageLocationCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocationCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_3E39FA47727ACA70` (`parent_id`),
  KEY `IDX_3E39FA47DA439252` (`lft`),
  KEY `IDX_3E39FA47D5E02D69` (`rgt`),
  CONSTRAINT `FK_3E39FA47727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `StorageLocationCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocationCategory`
--

LOCK TABLES `StorageLocationCategory` WRITE;
/*!40000 ALTER TABLE `StorageLocationCategory` DISABLE KEYS */;
INSERT INTO `StorageLocationCategory` VALUES (1,NULL,1,2,0,1,'Root Category',NULL,'Root Category');
/*!40000 ALTER TABLE `StorageLocationCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocationImage`
--

DROP TABLE IF EXISTS `StorageLocationImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocationImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_666717F073CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_666717F073CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocationImage`
--

LOCK TABLES `StorageLocationImage` WRITE;
/*!40000 ALTER TABLE `StorageLocationImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `StorageLocationImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotice`
--

DROP TABLE IF EXISTS `SystemNotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `acknowledged` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotice`
--

LOCK TABLES `SystemNotice` WRITE;
/*!40000 ALTER TABLE `SystemNotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemPreference`
--

DROP TABLE IF EXISTS `SystemPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemPreference` (
  `preferenceKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preferenceValue` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`preferenceKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemPreference`
--

LOCK TABLES `SystemPreference` WRITE;
/*!40000 ALTER TABLE `SystemPreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemPreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempImage`
--

DROP TABLE IF EXISTS `TempImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempImage`
--

LOCK TABLES `TempImage` WRITE;
/*!40000 ALTER TABLE `TempImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `TempImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempUploadedFile`
--

DROP TABLE IF EXISTS `TempUploadedFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempUploadedFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempUploadedFile`
--

LOCK TABLES `TempUploadedFile` WRITE;
/*!40000 ALTER TABLE `TempUploadedFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `TempUploadedFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDay`
--

DROP TABLE IF EXISTS `TipOfTheDay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDay`
--

LOCK TABLES `TipOfTheDay` WRITE;
/*!40000 ALTER TABLE `TipOfTheDay` DISABLE KEYS */;
INSERT INTO `TipOfTheDay` VALUES (1,'Grid Configuration'),(2,'Inline Stock Editing'),(3,'Move Categories'),(4,'Move Parts'),(5,'Quickly closing obsolete tabs');
/*!40000 ALTER TABLE `TipOfTheDay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDayHistory`
--

DROP TABLE IF EXISTS `TipOfTheDayHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDayHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3177BC2A76ED395` (`user_id`),
  CONSTRAINT `FK_3177BC2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDayHistory`
--

LOCK TABLES `TipOfTheDayHistory` WRITE;
/*!40000 ALTER TABLE `TipOfTheDayHistory` DISABLE KEYS */;
INSERT INTO `TipOfTheDayHistory` VALUES (1,1,'Grid Configuration'),(2,1,'Inline Stock Editing'),(3,1,'Move Categories'),(4,1,'Move Parts'),(5,1,'Quickly closing obsolete tabs');
/*!40000 ALTER TABLE `TipOfTheDayHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unit`
--

DROP TABLE IF EXISTS `Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unit`
--

LOCK TABLES `Unit` WRITE;
/*!40000 ALTER TABLE `Unit` DISABLE KEYS */;
INSERT INTO `Unit` VALUES (1,'Meter','m'),(2,'Gram','g'),(3,'Second','s'),(4,'Kelvin','K'),(5,'Mol','mol'),(6,'Candela','cd'),(7,'Ampere','A'),(8,'Ohm','Ω'),(9,'Volt','V'),(10,'Hertz','Hz'),(11,'Newton','N'),(12,'Pascal','Pa'),(13,'Joule','J'),(14,'Watt','W'),(15,'Coulomb','C'),(16,'Farad','F'),(17,'Siemens','S'),(18,'Weber','Wb'),(19,'Tesla','T'),(20,'Henry','H'),(21,'Celsius','°C'),(22,'Lumen','lm'),(23,'Lux','lx'),(24,'Becquerel','Bq'),(25,'Gray','Gy'),(26,'Sievert','Sv'),(27,'Katal','kat'),(28,'Ampere Hour','Ah');
/*!40000 ALTER TABLE `Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitSiPrefixes`
--

DROP TABLE IF EXISTS `UnitSiPrefixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitSiPrefixes` (
  `unit_id` int(11) NOT NULL,
  `siprefix_id` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`,`siprefix_id`),
  KEY `IDX_72356740F8BD700D` (`unit_id`),
  KEY `IDX_723567409BE9F1F4` (`siprefix_id`),
  CONSTRAINT `FK_723567409BE9F1F4` FOREIGN KEY (`siprefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_72356740F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitSiPrefixes`
--

LOCK TABLES `UnitSiPrefixes` WRITE;
/*!40000 ALTER TABLE `UnitSiPrefixes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UnitSiPrefixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPreference`
--

DROP TABLE IF EXISTS `UserPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPreference` (
  `user_id` int(11) NOT NULL,
  `preferenceKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preferenceValue` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`preferenceKey`,`user_id`),
  KEY `IDX_922CE7A2A76ED395` (`user_id`),
  CONSTRAINT `FK_922CE7A2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPreference`
--

LOCK TABLES `UserPreference` WRITE;
/*!40000 ALTER TABLE `UserPreference` DISABLE KEYS */;
INSERT INTO `UserPreference` VALUES (1,'partkeepr.tipoftheday.showtips','s:4:\"true\";');
/*!40000 ALTER TABLE `UserPreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserProvider`
--

DROP TABLE IF EXISTS `UserProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserProvider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserProvider`
--

LOCK TABLES `UserProvider` WRITE;
/*!40000 ALTER TABLE `UserProvider` DISABLE KEYS */;
INSERT INTO `UserProvider` VALUES (1,'Builtin',1);
/*!40000 ALTER TABLE `UserProvider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 17:45:35
